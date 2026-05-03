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
#define MAX_SAMPLES           441000 // ~9 segundos a 48kHz
#define PACKET_SIZE           512    // Muestras por transferencia DMA

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

    int hw_mode = HW_MODE_IDLE;
    int last_pedal = SOLTADO;
    u32 loop_length = 0;
    u32 loop_index = 0;
    int dma_started = 0;

    xil_printf("Hardware Inicializado. Sistema en BYPASS PERFECTO.\r\n");

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
                    loop_index = 0; // Iniciar grabación
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

                    // PRE-CARGA CRITICA (FIX DEADLOCK):
                    // En PLAY, el hardware mixer espera datos del DMA inmediatamente.
                    // Si cambiamos el modo antes de darle datos, el hardware se traba (stall),
                    // y el DMA nunca termina. Hay que darle el primer paquete AHORA.
                    if (loop_length > 0) {
                        for(int i=0; i<PACKET_SIZE; i++) {
                            tx_ping[i] = LoopBuffer[i % loop_length];
                        }
                        Xil_DCacheFlushRange((UINTPTR)tx_ping, PACKET_SIZE * sizeof(u32));
                        XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)tx_ping, PACKET_SIZE * sizeof(u32), XAXIDMA_DMA_TO_DEVICE);
                    }
                    
                    // Ahora sí, cambiamos el modo en hardware de forma segura
                    hw_mode = HW_MODE_PLAY;
                }
            }
        }
        last_pedal = pedal;

        // Actualizar el modo en el Mixer de Hardware (Crucial!)
        Xil_Out32(GPIO_MIXER_BASE + 0x00, hw_mode);

        // --- MANEJO DEL DMA SEGÚN EL MODO ---
        
        if (hw_mode == HW_MODE_IDLE) {
            // En BYPASS, el hardware no intercambia datos con el DMA.
            // Si el DMA estaba corriendo, hay que detenerlo (Reset) para que no se trabe la CPU.
            if (dma_started) {
                XAxiDma_Reset(&AxiDma);
                while (!XAxiDma_ResetIsDone(&AxiDma)) {}
                dma_started = 0;
            }
            continue; // Volver al inicio del loop sin esperar al DMA
        }

        // Si entramos a RECORD, PLAY o OVERDUB, necesitamos el DMA circulando
        if (!dma_started) {
            // Cargar la primera rafaga de TX si vamos a PLAY/OVERDUB directo
            if (hw_mode == HW_MODE_PLAY || hw_mode == HW_MODE_OVERDUB) {
                for(int i=0; i<PACKET_SIZE; i++) {
                    tx_ping[i] = LoopBuffer[(loop_index + i) % loop_length];
                }
                Xil_DCacheFlushRange((UINTPTR)tx_ping, PACKET_SIZE * sizeof(u32));
                XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)tx_ping, PACKET_SIZE * sizeof(u32), XAXIDMA_DMA_TO_DEVICE);
            }
            // Arrancar RX
            XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)rx_ping, PACKET_SIZE * sizeof(u32), XAXIDMA_DEVICE_TO_DMA);
            dma_started = 1;
        }

        // ==========================================================
        // MITAD PING
        // ==========================================================
        while (XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA)) {}
        Xil_DCacheInvalidateRange((UINTPTR)rx_ping, PACKET_SIZE * sizeof(u32));
        
        // Iniciar inmediatamente la recepcion PONG
        XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)rx_pong, PACKET_SIZE * sizeof(u32), XAXIDMA_DEVICE_TO_DMA);

        // Procesar PING: Guardar audio entrante (Vivo en RECORD, Mezcla en OVERDUB)
        if (hw_mode == HW_MODE_RECORD || hw_mode == HW_MODE_OVERDUB) {
            for(int i=0; i<PACKET_SIZE; i++) {
                if (loop_index < MAX_SAMPLES) LoopBuffer[loop_index] = rx_ping[i];
                loop_index++;
            }
        } else if (hw_mode == HW_MODE_PLAY) {
            loop_index += PACKET_SIZE; // Solo avanzamos el indice
        }
        
        if (loop_length > 0 && loop_index >= loop_length && hw_mode != HW_MODE_RECORD) {
            loop_index = loop_index % loop_length; // Wrap around
        }

        // Preparar y enviar TX PING (Solo necesario en Play y Overdub)
        if (hw_mode == HW_MODE_PLAY || hw_mode == HW_MODE_OVERDUB) {
            int tx_idx = loop_index;
            for(int i=0; i<PACKET_SIZE; i++) {
                tx_ping[i] = LoopBuffer[tx_idx++];
                if (tx_idx >= loop_length) tx_idx = 0;
            }
            
            while (XAxiDma_Busy(&AxiDma, XAXIDMA_DMA_TO_DEVICE)) {}
            Xil_DCacheFlushRange((UINTPTR)tx_ping, PACKET_SIZE * sizeof(u32));
            XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)tx_ping, PACKET_SIZE * sizeof(u32), XAXIDMA_DMA_TO_DEVICE);
        }

        // ==========================================================
        // MITAD PONG
        // ==========================================================
        while (XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA)) {}
        Xil_DCacheInvalidateRange((UINTPTR)rx_pong, PACKET_SIZE * sizeof(u32));
        
        // Iniciar inmediatamente la recepcion PING
        XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)rx_ping, PACKET_SIZE * sizeof(u32), XAXIDMA_DEVICE_TO_DMA);

        // Procesar PONG
        if (hw_mode == HW_MODE_RECORD || hw_mode == HW_MODE_OVERDUB) {
            for(int i=0; i<PACKET_SIZE; i++) {
                if (loop_index < MAX_SAMPLES) LoopBuffer[loop_index] = rx_pong[i];
                loop_index++;
            }
        } else if (hw_mode == HW_MODE_PLAY) {
            loop_index += PACKET_SIZE;
        }

        if (loop_length > 0 && loop_index >= loop_length && hw_mode != HW_MODE_RECORD) {
            loop_index = loop_index % loop_length; // Wrap around
        }

        // Preparar y enviar TX PONG
        if (hw_mode == HW_MODE_PLAY || hw_mode == HW_MODE_OVERDUB) {
            int tx_idx = loop_index;
            for(int i=0; i<PACKET_SIZE; i++) {
                tx_pong[i] = LoopBuffer[tx_idx++];
                if (tx_idx >= loop_length) tx_idx = 0;
            }
            
            while (XAxiDma_Busy(&AxiDma, XAXIDMA_DMA_TO_DEVICE)) {}
            Xil_DCacheFlushRange((UINTPTR)tx_pong, PACKET_SIZE * sizeof(u32));
            XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)tx_pong, PACKET_SIZE * sizeof(u32), XAXIDMA_DMA_TO_DEVICE);
        }
    }

    return XST_SUCCESS;
}