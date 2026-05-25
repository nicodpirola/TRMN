#include "xparameters.h"
#include "xaxidma.h"
#include "xgpio.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "ff.h"
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
// ESTRUCTURA WAV HEADER
// ==========================================================
#pragma pack(push, 1)
typedef struct {
    char riff_tag[4];      // "RIFF"
    u32  riff_length;      // file length - 8
    char wave_tag[4];      // "WAVE"
    char fmt_tag[4];       // "fmt "
    u32  fmt_length;       // 16
    u16  audio_format;     // 1 (PCM)
    u16  num_channels;     // 2 (Stereo)
    u32  sample_rate;      // 48000
    u32  byte_rate;        // sample_rate * num_channels * byte_per_sample (48000 * 2 * 3 = 288000)
    u16  block_align;      // num_channels * byte_per_sample (2 * 3 = 6)
    u16  bits_per_sample;  // 24
    char data_tag[4];      // "data"
    u32  data_length;      // num_samples * block_align
} WavHeader;
#pragma pack(pop)

// ==========================================================
// CONFIGURACION DEL LOOPER
// ==========================================================
#define AUDIO_BUFFER_BASEADDR 0x10000000 
#define MAX_SAMPLES           2880000 // 60 segundos a 48kHz (11.5 MB). Multiplo exacto de 512.
#define PACKET_SIZE           512    // Muestras por transferencia DMA

// Buffer gigante independiente para grabar en la MicroSD (5 minutos)
#define SD_RECORD_BASEADDR    0x11000000
#define MAX_SD_SAMPLES        (48000 * 2 * 60 * 5) // 5 minutos a 48kHz (57.6 MB)

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

// Gran buffer circular en DDR para el Looper
u32 *LoopBuffer = (u32 *)AUDIO_BUFFER_BASEADDR; 

// Gran buffer lineal en DDR para grabar hacia la SD
u32 *SdRecordBuffer = (u32 *)SD_RECORD_BASEADDR; 

// ==========================================================
// GUARDAR WAV EN SD CARD
// ==========================================================
void SaveWavToSD(u32* buffer, u32 num_frames) {
    FATFS fatfs;
    FIL wav_file;
    FRESULT res;
    UINT bytes_written;

    xil_printf("\r\n--- INICIANDO GUARDADO EN SD ---\r\n");

    // 1. Montar tarjeta SD
    res = f_mount(&fatfs, "0:/", 1);
    if (res != FR_OK) {
        xil_printf("ERROR: No se pudo montar la SD (Error %d)\r\n", res);
        return;
    }

    // 2. Crear archivo
    res = f_open(&wav_file, "0:/LOOP.WAV", FA_CREATE_ALWAYS | FA_WRITE);
    if (res != FR_OK) {
        xil_printf("ERROR: No se pudo crear LOOP.WAV (Error %d).\r\n", res);
        return;
    }

    // 3. Escribir Header WAV (24-bit PCM Stereo, 48000Hz)
    u32 data_size = num_frames * 6; // 6 bytes por frame estéreo a 24 bits (3L + 3R)
    WavHeader header = {
        .riff_tag = {'R','I','F','F'},
        .riff_length = data_size + sizeof(WavHeader) - 8,
        .wave_tag = {'W','A','V','E'},
        .fmt_tag = {'f','m','t',' '},
        .fmt_length = 16,
        .audio_format = 1,
        .num_channels = 2,
        .sample_rate = 48000,
        .byte_rate = 48000 * 2 * 3,
        .block_align = 6,
        .bits_per_sample = 24,
        .data_tag = {'d','a','t','a'},
        .data_length = data_size
    };
    f_write(&wav_file, &header, sizeof(WavHeader), &bytes_written);

    // 4. Escribir datos de audio
    xil_printf("Guardando %d frames... por favor espera.\r\n", (int)num_frames);
    u8 pcm_buffer[6000]; // Buffer intermedio (1000 frames)
    int pcm_idx = 0;

    for (u32 i = 0; i < num_frames; i++) {
        // Extraer audio 24-bit del formato I2S: (buffer[i] >> 4) & 0xFFFFFF
        u32 sample = (buffer[i] >> 4) & 0xFFFFFF;
        
        // Empaquetar en 3 bytes Little-Endian
        pcm_buffer[pcm_idx++] = (u8)(sample & 0xFF);
        pcm_buffer[pcm_idx++] = (u8)((sample >> 8) & 0xFF);
        pcm_buffer[pcm_idx++] = (u8)((sample >> 16) & 0xFF);

        // Volcar a SD cuando el buffer intermedio se llena
        if (pcm_idx >= sizeof(pcm_buffer)) {
            f_write(&wav_file, pcm_buffer, pcm_idx, &bytes_written);
            pcm_idx = 0;
        }
    }
    // Volcar remanente
    if (pcm_idx > 0) {
        f_write(&wav_file, pcm_buffer, pcm_idx, &bytes_written);
    }

    // 5. Cerrar archivo
    f_close(&wav_file);
    xil_printf("EXITO: Archivo LOOP.WAV guardado correctamente en la SD.\r\n");
}

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
    int last_sd_switch = 0;
    u32 loop_length = 0;
    u32 loop_index = 0;
    u32 sd_length = 0; // Cantidad de muestras grabadas para la SD
    int dma_started = 0;

    // Control de volumen por software para la pista grabada
    // Expresado como shift derecho: 0 = volumen completo (x1), 1 = mitad (x0.5), 2 = cuarto (x0.25)
    // IMPORTANTE: NO usar float. Un float tiene solo 24 bits de mantisa, lo cual destruye
    // los 8 bits inferiores de muestras de 32 bits, generando ruido de cuantización audible.
    int volume_shift = 0;


    xil_printf("Hardware Inicializado. Sistema en BYPASS PERFECTO.\r\n");
    xil_printf("Usa las teclas '+' y '-' para ajustar el volumen del loop.\r\n");

    while(1) {
        // --- LECTURA DE SWITCHES FÍSICOS ---
        int switches = XGpio_DiscreteRead(&GpioPedal, 1);
        int sd_switch = (switches & 0x01); // SW0: Switch para guardar SD
        int pedal = (switches & 0x02) ? PRESIONADO : SOLTADO; // SW1: Pedal Looper

        // Disparador de inicio de grabación SD (Flanco ascendente en SW0)
        if (sd_switch == 1 && last_sd_switch == 0) {
            sd_length = 0; // Reiniciar contador de grabacion SD
            xil_printf(">>> INICIANDO GRABACION PARA SD EN RAM...\r\n");
        }

        // Disparador de guardado SD (Flanco descendente en SW0)
        if (sd_switch == 0 && last_sd_switch == 1) {
            if (sd_length > 0) {
                // Detener temporalmente el DMA para evitar corrupción de memoria mientras escribimos a la SD
                if (dma_started) {
                    XAxiDma_Reset(&AxiDma);
                    while (!XAxiDma_ResetIsDone(&AxiDma)) {}
                    dma_started = 0;
                }
                
                SaveWavToSD(SdRecordBuffer, sd_length);
                
            } else {
                xil_printf("ERROR: No hay audio grabado para guardar.\r\n");
            }
        }
        last_sd_switch = sd_switch;

        // Maquina de estados del pedal (SW1)
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
        
        last_pedal = pedal;

        // Actualizar el modo en el Mixer de Hardware (Crucial!)
        Xil_Out32(GPIO_MIXER_BASE + 0x00, hw_mode);

        // --- MANEJO DEL DMA SEGÚN EL MODO ---
        
        // El DMA corre SIEMPRE. Es la forma más segura de evitar que las FIFOs de hardware 
        // se llenen y bloqueen el flujo de audio I2S.
        // Si no necesitamos los datos (IDLE), simplemente los descartamos.
        
        // Si entramos a un modo activo, necesitamos el DMA circulando
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

        // Procesamiento Looper
        if (hw_mode == HW_MODE_RECORD || hw_mode == HW_MODE_OVERDUB) {
            for(int i=0; i<PACKET_SIZE; i++) {
                if (loop_index + i < MAX_SAMPLES) LoopBuffer[loop_index + i] = rx_ping[i];
            }
        }
        
        // Procesamiento Grabacion SD (Independiente del Looper)
        if (sd_switch == 1) {
            for(int i=0; i<PACKET_SIZE; i++) {
                if (sd_length + i < MAX_SD_SAMPLES) SdRecordBuffer[sd_length + i] = rx_ping[i];
            }
            sd_length += PACKET_SIZE;
            if (sd_length >= MAX_SD_SAMPLES) {
                xil_printf("AVISO: Memoria RAM de grabacion SD LLENA (5 minutos limite).\r\n");
            }
        }
        
        // 3. Avanzar tiempo Looper
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
        
        // Procesamiento Looper
        if (hw_mode == HW_MODE_RECORD || hw_mode == HW_MODE_OVERDUB) {
            for(int i=0; i<PACKET_SIZE; i++) {
                if (loop_index + i < MAX_SAMPLES) LoopBuffer[loop_index + i] = rx_pong[i];
            }
        }
        
        // Procesamiento Grabacion SD (Independiente del Looper)
        if (sd_switch == 1) {
            for(int i=0; i<PACKET_SIZE; i++) {
                if (sd_length + i < MAX_SD_SAMPLES) SdRecordBuffer[sd_length + i] = rx_pong[i];
            }
            sd_length += PACKET_SIZE;
            if (sd_length >= MAX_SD_SAMPLES) {
                xil_printf("AVISO: Memoria RAM de grabacion SD LLENA (5 minutos limite).\r\n");
            }
        }
        
        // 3. Avanzar tiempo Looper
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