#include "xparameters.h"
#include "xaxidma.h"
#include "xgpio.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "xil_types.h"
#include "xil_io.h"

// ==========================================================
// DEFINICIONES DE HARDWARE
// ==========================================================
#ifndef XPAR_AXIDMA_0_DEVICE_ID
#define XPAR_AXIDMA_0_DEVICE_ID 0
#endif

#ifndef XPAR_GPIO_0_DEVICE_ID
#define XPAR_GPIO_0_DEVICE_ID 0
#endif

#ifndef XPAR_GPIO_1_DEVICE_ID
#define XPAR_GPIO_1_DEVICE_ID 1
#endif

#define DMA_DEV_ID      XPAR_AXIDMA_0_DEVICE_ID
#define GPIO_DEV_ID     XPAR_GPIO_0_DEVICE_ID // Salida al Mixer
#define GPIO_SW_DEV_ID  XPAR_GPIO_1_DEVICE_ID // Entrada de Switches

#ifdef SDT
#define GPIO_SW_INIT_VAL XPAR_XGPIO_1_BASEADDR
#else
#define GPIO_SW_INIT_VAL GPIO_SW_DEV_ID
#endif

// Direcciones Base
#define I2S_RX_BASE     0x43C00000
#define I2S_TX_BASE     0x43C10000
#define GPIO_MIXER_BASE 0x41200000

// Modos del Hardware Mixer (axi_stream_looper_mixer.v)
#define HW_MODE_IDLE    0  // Bypass puro en hardware
#define HW_MODE_RECORD  1  // Guarda en RAM, TX DMA apagado
#define HW_MODE_PLAY    2  // Mezcla hardware, guarda en RAM lo mismo
#define HW_MODE_OVERDUB 3  // Mezcla hardware, guarda en RAM la mezcla

// ==========================================================
// CONFIGURACION DEL LOOPER
// ==========================================================
#define AUDIO_BUFFER_BASEADDR 0x10000000 
#define MAX_SAMPLES           2880000 // 60 segundos a 48kHz (11.5 MB). Multiplo exacto de 512.
#define PACKET_SIZE           512    // Muestras por transferencia DMA

// TEST: Descomentar UNO para diagnosticar
//#define TEST_SILENCE     // DMA envia ceros (ya probado: sin ruido)
//#define TEST_OFFSET1     // DMA desfasa 1 muestra
//#define TEST_SYNTH         // Genera onda senoidal por software (bypassa grabacion)

#define PRESIONADO            1
#define SOLTADO               0

XAxiDma AxiDma;     
XGpio GpioPedal;    

// Buffers Ping-Pong alineados para cache
u32 rx_ping[PACKET_SIZE] __attribute__((aligned(32)));
u32 rx_pong[PACKET_SIZE] __attribute__((aligned(32)));
u32 tx_ping[PACKET_SIZE] __attribute__((aligned(32)));
u32 tx_pong[PACKET_SIZE] __attribute__((aligned(32)));

// Gran buffer circular en DDR
u32 *LoopBuffer = (u32 *)AUDIO_BUFFER_BASEADDR; 

int main() {
    int status;
    xil_printf("\r\n--- Iniciando Sistema Looper (Hardware Mixer V2) ---\r\n");

    // 1. Configurar IP I2S
    xil_printf("Configurando divisores I2S para ~48kHz...\r\n");
    Xil_Out32(I2S_RX_BASE + 0x20, 0x00000002);
    Xil_Out32(I2S_TX_BASE + 0x20, 0x00000002);
    Xil_Out32(I2S_TX_BASE + 0x0C, 0x00000001); 
    Xil_Out32(I2S_RX_BASE + 0x30, 0x00000001); 
    Xil_Out32(I2S_TX_BASE + 0x30, 0x00000001); 

    // 2. Inicializar Hardware Mixer en IDLE (Bypass total)
    Xil_Out32(GPIO_MIXER_BASE + 0x00, HW_MODE_IDLE);

    // 3. Inicializar GPIO del Pedal (El nuevo GPIO para leer los botones físicos)
    status = XGpio_Initialize(&GpioPedal, GPIO_SW_INIT_VAL);
    if (status != XST_SUCCESS) {
        xil_printf("Advertencia: No se encontro el GPIO de los switches. Usando teclado como respaldo.\r\n");
    } else {
        XGpio_SetDataDirection(&GpioPedal, 1, 0xFFFFFFFF); // Todo entradas
    }

    // 4. Inicializar DMA
    XAxiDma_Config *CfgPtr = XAxiDma_LookupConfig(DMA_DEV_ID);
    status = XAxiDma_CfgInitialize(&AxiDma, CfgPtr);
    if (status != XST_SUCCESS) return XST_FAILURE;
    
    XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
    XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

    // Llenar buffers TX con ceros por si acaso
    for(int i = 0; i < PACKET_SIZE; i++) {
        tx_ping[i] = 0;
        tx_pong[i] = 0;
    }
    Xil_DCacheFlushRange((UINTPTR)tx_ping, PACKET_SIZE * sizeof(u32));
    Xil_DCacheFlushRange((UINTPTR)tx_pong, PACKET_SIZE * sizeof(u32));

    // 5. Encender modulos I2S
    xil_printf("Encendiendo modulos I2S...\r\n");
    Xil_Out32(I2S_TX_BASE + 0x08, 0x00000001);
    Xil_Out32(I2S_RX_BASE + 0x08, 0x00000001);

    // Limpiar toda la memoria RAM para evitar ruido blanco (basura de DDR) al final del loop
    xil_printf("Limpiando memoria RAM...\r\n");
    memset(LoopBuffer, 0, MAX_SAMPLES * sizeof(u32));

    int hw_mode = HW_MODE_IDLE;
    int last_pedal = SOLTADO;
    u32 loop_length = 0;
    u32 loop_index = 0;
    int dma_started = 0;

    // Control de volumen por software para la pista grabada
    // Expresado como shift derecho: 0 = volumen completo (x1), 1 = mitad (x0.5), 2 = cuarto (x0.25)
    // IMPORTANTE: NO usar float. Un float tiene solo 24 bits de mantisa, lo cual destruye
    // los 8 bits inferiores de muestras de 32 bits, generando ruido de cuantización audible.
    int volume_shift = 0;


    xil_printf("Hardware Inicializado. Sistema en BYPASS PERFECTO.\r\n");
    xil_printf("Usa las teclas '+' y '-' para ajustar el volumen del loop.\r\n");

    while(1) {
        // --- LECTURA DE PEDAL FÍSICO (NUEVO GPIO 1) ---
        int switches = XGpio_DiscreteRead(&GpioPedal, 1);
        int global_enable = (switches & 0x01);
        int pedal = (switches & 0x02) ? PRESIONADO : SOLTADO;

        // Reset global a BYPASS
        if (global_enable == 0 && hw_mode != HW_MODE_IDLE) {
            hw_mode = HW_MODE_IDLE;
            xil_printf(">>> BYPASS GLOBAL (Switch 0 Abajo)\r\n");
        } 
        else if (global_enable) {
            // Maquina de estados del pedal
            if (pedal == PRESIONADO && last_pedal == SOLTADO) {
                if (hw_mode == HW_MODE_IDLE) {
                    hw_mode = HW_MODE_RECORD;
                    loop_index = 0; // Iniciar grabacion
                    memset(LoopBuffer, 0, MAX_SAMPLES * sizeof(u32)); // Limpiar basura anterior
                    xil_printf(">>> RECORDING... (Pedal Pisado)\r\n");
                } else if (hw_mode == HW_MODE_PLAY) {
                    hw_mode = HW_MODE_OVERDUB;
                    xil_printf(">>> OVERDUBBING... (Pedal Pisado)\r\n");
                } else if (hw_mode == HW_MODE_OVERDUB) {
                    hw_mode = HW_MODE_PLAY;
                    xil_printf("<<< PLAYING... (Pedal Pisado)\r\n");
                }
            } else if (pedal == SOLTADO && last_pedal == PRESIONADO) {
                if (hw_mode == HW_MODE_RECORD) {
                    loop_length = loop_index; // Sellar tamaño
                    loop_index = 0; 
                    xil_printf("<<< PLAYING... [Loop: %d muestras]\r\n", (int)loop_length);


                    // PRE-CARGA DE TRANSICIÓN:
                    if (loop_length > 0) {
                        for(int i=0; i<PACKET_SIZE; i++) {
#ifdef TEST_SILENCE
                            tx_ping[i] = 0;
                            tx_pong[i] = 0;
#elif defined(TEST_OFFSET1)
                            tx_ping[i] = LoopBuffer[(i + 1) % loop_length];
                            tx_pong[i] = LoopBuffer[(PACKET_SIZE + i + 1) % loop_length];
#else
                            tx_ping[i] = LoopBuffer[i % loop_length];
                            tx_pong[i] = LoopBuffer[(PACKET_SIZE + i) % loop_length];
#endif
                        }
                        Xil_DCacheFlushRange((UINTPTR)tx_ping, PACKET_SIZE * sizeof(u32));
                        Xil_DCacheFlushRange((UINTPTR)tx_pong, PACKET_SIZE * sizeof(u32));
                        
                        // Lanzar el primer paquete (tx_ping) al DMA MM2S inmediatamente
                        XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)tx_ping, PACKET_SIZE * sizeof(u32), XAXIDMA_DMA_TO_DEVICE);
                    }
                    
                    // Ahora sí, cambiamos el modo en hardware de forma segura
                    hw_mode = HW_MODE_PLAY;

#ifdef TEST_SYNTH
                    // Generar onda senoidal perfecta por software (1kHz @ 48kHz = periodo 48 muestras estéreo = 96 words)
                    // Tabla seno 48 puntos, amplitud = 0x600000 (~75% de 24-bit full scale)
                    {
                        // Seno pre-calculado: 48 puntos, escalado a 24-bit signed (max ±0x600000)
                        static const int32_t sine48[48] = {
                            0x000000, 0x0C8BD3, 0x18F8B8, 0x251EB1, 0x30FBC5, 0x3C56BA,
                            0x471CEC, 0x5133CC, 0x5A8279, 0x62F201, 0x6A6D98, 0x70E2C5,
                            0x7641AF, 0x7A7D05, 0x7D8A5E, 0x7F6213, 0x7FFFFF, 0x7F6213,
                            0x7D8A5E, 0x7A7D05, 0x7641AF, 0x70E2C5, 0x6A6D98, 0x62F201,
                            0x5A8279, 0x5133CC, 0x471CEC, 0x3C56BA, 0x30FBC5, 0x251EB1,
                            0x18F8B8, 0x0C8BD3, 0x000000,-0x0C8BD3,-0x18F8B8,-0x251EB1,
                           -0x30FBC5,-0x3C56BA,-0x471CEC,-0x5133CC,-0x5A8279,-0x62F201,
                           -0x6A6D98,-0x70E2C5,-0x7641AF,-0x7A7D05,-0x7D8A5E,-0x7F6213
                        };
                        int period = 96; // 48 muestras estéreo = 96 words (L,R,L,R,...)
                        loop_length = period * 100; // ~200ms de loop
                        for(int i = 0; i < loop_length; i++) {
                            int phase = (i / 2) % 48; // L y R usan la misma fase
                            int32_t audio = sine48[phase] >> 1; // Reducir a ~37% de full scale
                            u32 preamble = (i & 1) ? 0x2 : 0x3; // R=2, L=3
                            // Formato: [31]=P, [30:28]=CUV=000, [27:4]=audio, [3:0]=preamble
                            u32 frame = ((audio & 0xFFFFFF) << 4) | preamble;
                            frame |= (__builtin_parity(frame) << 31); // P = paridad
                            LoopBuffer[i] = frame;
                        }
                        // Re-cargar tx buffers con datos sintéticos
                        for(int i=0; i<PACKET_SIZE; i++) {
                            tx_ping[i] = LoopBuffer[i % loop_length];
                            tx_pong[i] = LoopBuffer[(PACKET_SIZE + i) % loop_length];
                        }
                        Xil_DCacheFlushRange((UINTPTR)tx_ping, PACKET_SIZE * sizeof(u32));
                        Xil_DCacheFlushRange((UINTPTR)tx_pong, PACKET_SIZE * sizeof(u32));
                        xil_printf("TEST_SYNTH: Onda sintetica 1kHz cargada (%d muestras)\r\n", (int)loop_length);
                    }
#endif
                }
            }
        }
        last_pedal = pedal;

        // Actualizar el modo en el Mixer de Hardware (Crucial!)
        Xil_Out32(GPIO_MIXER_BASE + 0x00, hw_mode);

        // --- MANEJO DEL DMA SEGÚN EL MODO ---
        
        if (hw_mode == HW_MODE_IDLE) {
            // En BYPASS, el hardware no intercambia datos con el DMA.
            if (dma_started) {
                XAxiDma_Reset(&AxiDma);
                while (!XAxiDma_ResetIsDone(&AxiDma)) {}
                dma_started = 0;
            }
            continue;
        }

        // Si entramos a RECORD, PLAY o OVERDUB, necesitamos el DMA circulando
        if (!dma_started) {
            // Cargar la primera rafaga de TX si vamos a PLAY/OVERDUB directo
            if (hw_mode == HW_MODE_PLAY || hw_mode == HW_MODE_OVERDUB) {
                for(int i=0; i<PACKET_SIZE; i++) {
#ifdef TEST_SILENCE
                    tx_ping[i] = 0;
                    tx_pong[i] = 0;
#elif defined(TEST_OFFSET1)
                    tx_ping[i] = LoopBuffer[(loop_index + i + 1) % loop_length];
                    tx_pong[i] = LoopBuffer[(loop_index + PACKET_SIZE + i + 1) % loop_length];
#else
                    tx_ping[i] = LoopBuffer[(loop_index + i) % loop_length];
                    tx_pong[i] = LoopBuffer[(loop_index + PACKET_SIZE + i) % loop_length];
#endif
                }
                Xil_DCacheFlushRange((UINTPTR)tx_ping, PACKET_SIZE * sizeof(u32));
                Xil_DCacheFlushRange((UINTPTR)tx_pong, PACKET_SIZE * sizeof(u32));
                XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)tx_ping, PACKET_SIZE * sizeof(u32), XAXIDMA_DMA_TO_DEVICE);
            }
            // Arrancar RX PING (siempre, en todos los modos activos)
            XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)rx_ping, PACKET_SIZE * sizeof(u32), XAXIDMA_DEVICE_TO_DMA);
            dma_started = 1;
        }

        // ==========================================================
        // MITAD PING
        // ==========================================================
        // 1. Esperar PING RX y lanzar PONG RX
        while (XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA)) {}
        XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)rx_pong, PACKET_SIZE * sizeof(u32), XAXIDMA_DEVICE_TO_DMA);

        // 1b. Esperar PING TX y lanzar PONG TX
        if (hw_mode == HW_MODE_PLAY || hw_mode == HW_MODE_OVERDUB) {
            while (XAxiDma_Busy(&AxiDma, XAXIDMA_DMA_TO_DEVICE)) {}
            XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)tx_pong, PACKET_SIZE * sizeof(u32), XAXIDMA_DMA_TO_DEVICE);
        }

        // 2. Procesar PING
        Xil_DCacheInvalidateRange((UINTPTR)rx_ping, PACKET_SIZE * sizeof(u32));


        if (hw_mode == HW_MODE_RECORD || hw_mode == HW_MODE_OVERDUB) {
            for(int i=0; i<PACKET_SIZE; i++) {
                if (loop_index + i < MAX_SAMPLES) LoopBuffer[loop_index + i] = rx_ping[i];
            }
        }
        
        // 3. Avanzar tiempo
        loop_index += PACKET_SIZE;
        if (hw_mode == HW_MODE_RECORD && loop_index >= MAX_SAMPLES - PACKET_SIZE) {
            loop_length = loop_index;
            hw_mode = HW_MODE_PLAY;
            xil_printf("<<< AUTO-PLAY... (Memoria Llena) [Loop: %d]\r\n", (int)loop_length);
        }
        if (hw_mode != HW_MODE_RECORD && loop_length > 0) {
            loop_index %= loop_length;
        }

        // 4. Pre-calcular TX PING para la SIGUIENTE pasada
        if (hw_mode == HW_MODE_PLAY || hw_mode == HW_MODE_OVERDUB) {
            int tx_idx = (loop_index + PACKET_SIZE) % loop_length;
            for(int i=0; i<PACKET_SIZE; i++) {
#ifdef TEST_SILENCE
                tx_ping[i] = 0;
#elif defined(TEST_OFFSET1)
                tx_ping[i] = LoopBuffer[((tx_idx + 1) >= loop_length ? 0 : tx_idx + 1)];
#else
                tx_ping[i] = LoopBuffer[tx_idx++];
#endif
                if (tx_idx >= loop_length) tx_idx = 0;
            }
            Xil_DCacheFlushRange((UINTPTR)tx_ping, PACKET_SIZE * sizeof(u32));
        }

        // ==========================================================
        // MITAD PONG
        // ==========================================================
        // 1. Esperar PONG RX y lanzar PING RX
        while (XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA)) {}
        XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)rx_ping, PACKET_SIZE * sizeof(u32), XAXIDMA_DEVICE_TO_DMA);

        // 1b. Esperar PONG TX y lanzar PING TX
        if (hw_mode == HW_MODE_PLAY || hw_mode == HW_MODE_OVERDUB) {
            while (XAxiDma_Busy(&AxiDma, XAXIDMA_DMA_TO_DEVICE)) {}
            XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)tx_ping, PACKET_SIZE * sizeof(u32), XAXIDMA_DMA_TO_DEVICE);
        }

        // 2. Procesar PONG
        Xil_DCacheInvalidateRange((UINTPTR)rx_pong, PACKET_SIZE * sizeof(u32));
        if (hw_mode == HW_MODE_RECORD || hw_mode == HW_MODE_OVERDUB) {
            for(int i=0; i<PACKET_SIZE; i++) {
                if (loop_index + i < MAX_SAMPLES) LoopBuffer[loop_index + i] = rx_pong[i];
            }
        }
        
        // 3. Avanzar tiempo
        loop_index += PACKET_SIZE;
        if (hw_mode == HW_MODE_RECORD && loop_index >= MAX_SAMPLES - PACKET_SIZE) {
            loop_length = loop_index;
            hw_mode = HW_MODE_PLAY;
            xil_printf("<<< AUTO-PLAY... (Memoria Llena) [Loop: %d]\r\n", (int)loop_length);
        }
        if (hw_mode != HW_MODE_RECORD && loop_length > 0) {
            loop_index %= loop_length;
        }

        // 4. Pre-calcular TX PONG para la SIGUIENTE pasada
        if (hw_mode == HW_MODE_PLAY || hw_mode == HW_MODE_OVERDUB) {
            int tx_idx = (loop_index + PACKET_SIZE) % loop_length;
            for(int i=0; i<PACKET_SIZE; i++) {
#ifdef TEST_SILENCE
                tx_pong[i] = 0;
#elif defined(TEST_OFFSET1)
                tx_pong[i] = LoopBuffer[((tx_idx + 1) >= loop_length ? 0 : tx_idx + 1)];
#else
                tx_pong[i] = LoopBuffer[tx_idx++];
#endif
                if (tx_idx >= loop_length) tx_idx = 0;
            }
            Xil_DCacheFlushRange((UINTPTR)tx_pong, PACKET_SIZE * sizeof(u32));
        }
    }

    return XST_SUCCESS;
}