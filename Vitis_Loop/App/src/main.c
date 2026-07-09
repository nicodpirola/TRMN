#include "xparameters.h"
#include "xaxidma.h"
#include "xgpio.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "ff.h"
#include "xil_types.h"
#include "xil_io.h"
#include "sleep.h"

// LVGL & UI
#include "ili9341.h"
#include "lvgl/lvgl.h"
#include "lvgl/include/lvgl/core/lv_init.h"
#include "lvgl/include/lvgl/core/lv_timer.h"
#include "lvgl/include/lvgl/display/lv_display.h"
#include "lvgl/include/lvgl/tick/lv_tick.h"
#include "ui.h"
#include "xiltimer.h"

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

// Modos del Loop (axi_stream_looper_mixer.v)
#define HW_MODE_IDLE    0  // Bypass puro en hardware
#define HW_MODE_RECORD  1  // Guarda en RAM, TX DMA apagado
#define HW_MODE_PLAY    2  // Mezcla hardware, guarda en RAM lo mismo
#define HW_MODE_OVERDUB 3  // Mezcla hardware, guarda en RAM la mezcla

// Direcciones Base Adicionales
#define FX_BASE     0x60000000 // Base del fx_system_wrapper
#define REG_ENC(n)  (0x40 + (n)*4)

// Funciones para LVGL y Encoders
extern XGpio GpioPedal; // Declaración adelantada para poder leer los botones

static int16_t enc_prev[3] = {0, 0, 0};
static int16_t enc_delta(int n) {
    int16_t now = (int16_t)(Xil_In32(FX_BASE + REG_ENC(n)) & 0xFFFF);
    int16_t d   = (int16_t)(now - enc_prev[n]);
    enc_prev[n] = now;
    return d;
}

//leer pulsadores (con Anti-Rebote)
static int enc_button_clicked(int n) {
    static int btn_prev[3] = {0,0,0};
    static int btn_debounce[3] = {0,0,0};
    // Si el contador de rebote está activo, descontar y no hacer nada
    if (btn_debounce[n] > 0) {
        btn_debounce[n]--;
        return 0; 
    }
    // Leemos todo el bloque GPIO (el mismo del pedal)
    int switches = XGpio_DiscreteRead(&GpioPedal, 1);
    
    // Extraer el bit (n=0 es bit 2, n=1 es bit 3, n=2 es bit 4)
    int current = ((switches & (1 << (n + 2))) == 0) ? 1 : 0;
    int clicked = 0;
    // Detección de flanco (solo dispara en el momento exacto que se aprieta)
    if (current == 1 && btn_prev[n] == 0) {
        clicked = 1;
        btn_debounce[n] = 40; // ~200ms de inmunidad anti-rebote por hardware
    }
    btn_prev[n] = current;
    return clicked;
}


uint32_t lvgl_time_get(void){
    XTime t;
    XTime_GetTime(&t);
    return (uint32_t)((t * 1000)/ COUNTS_PER_SECOND); 
}

void my_flush_cb(lv_display_t * display, const lv_area_t * area, uint8_t * px_map) {
    ili9341_flush_region(area->x1, area->y1, area->x2, area->y2, px_map);
    lv_display_flush_ready(display);
}

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
#define MAX_SD_SAMPLES        (48000 * 2 * 60 * 5) // 5 minutos a 48kHz Estereo (109.8 MB)


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
        
        // Empaquetar en 3 bytes
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

    // (El encendido del I2S se movió al final de la inicialización para evitar desbordes)

    // Limpiar toda la memoria RAM para evitar ruido blanco (basura de DDR) al final del loop
    xil_printf("Limpiando memoria RAM...\r\n");
    memset(LoopBuffer, 0, MAX_SAMPLES * sizeof(u32));

    // Inicializar Pantalla y LVGL
    xil_printf("Inicializando Pantalla SPI...\r\n");
    if (ili9341_init() != XST_SUCCESS) {
        xil_printf("[X] Init Pantalla fallido\r\n");
    } else {
        // --- PRUEBA DE FUEGO HARDWARE ---
        // Ya comprobamos que el hardware funciona, pasamos el control a LVGL directo.
        
        xil_printf("Enviando comandos ST7789...\r\n");

        lv_init();
        lv_tick_set_cb(lvgl_time_get);
        
        // Chunking Extremo: Búfer muy pequeño (1/24 de la pantalla)
        lv_display_t * display1 = lv_display_create(ILI9341_WIDTH, ILI9341_HEIGHT);
        static uint8_t buf1[ILI9341_WIDTH * 10 * 2] __attribute__((aligned(8))); 
        lv_display_set_buffers(display1, buf1, NULL, sizeof(buf1), LV_DISPLAY_RENDER_MODE_PARTIAL);
        lv_display_set_flush_cb(display1, my_flush_cb);
        
        ui_init();
        xil_printf("LVGL UI Inicializada (Modo Chunking)\r\n");
    }

    int hw_mode = HW_MODE_IDLE;
    u32 loop_length = 0;
    u32 loop_index = 0;
    u32 sd_length = 0;
    int dma_started = 0;
    u32 debounce_counter = 0;

    int initial_switches = XGpio_DiscreteRead(&GpioPedal, 1);
    int last_sd_switch = (initial_switches & 0x01);
    int last_pedal = (initial_switches & 0x02) ? PRESIONADO : SOLTADO;
    int debounced_pedal = last_pedal;
    int debounced_sd = last_sd_switch;
    u32 sd_debounce_counter = 0;

    // 5. Encender modulos I2S AHORA (Evita que llenen el DMA mientras la pantalla cargaba)
    xil_printf("Encendiendo modulos I2S...\r\n");
    Xil_Out32(I2S_TX_BASE + 0x08, 0x00000001);
    Xil_Out32(I2S_RX_BASE + 0x08, 0x00000001);

    xil_printf("Hardware Inicializado. Sistema en BYPASS PERFECTO.\r\n");

    while(1) {
        // --- PROCESAMIENTO DE ENCODERS PARA LA UI ---
        int d0 = enc_delta(0);
        int c0 = enc_button_clicked(0);
        int d1 = enc_delta(1);
        int c1 = enc_button_clicked(1);
        int d2 = enc_delta(2);
        int c2 = enc_button_clicked(2);
        
        // El encoder 0 y 1 navegan y editan la UI.
        ui_handle_input(d0, c0, d1, c1);
        
        // El encoder 2 (Click) se usa para disparar el guardado SD manualmente si se desea, 
        // emulando la caida del viejo SW0
        if (c2) {
            // Engañamos a la maquina de estados de la SD simulando que el SW0 bajó
            // Solo lo hacemos si estábamos grabando en la SD
            if (sd_length > 0) {
                last_sd_switch = 1; 
                debounced_sd = 0;
            }
        }

        // --- LECTURA DE SWITCHES FÍSICOS ---
        int switches = XGpio_DiscreteRead(&GpioPedal, 1);
        
        int raw_sd = (switches & 0x01); // SW0: Switch para guardar SD
        int raw_pedal = (switches & 0x02) ? PRESIONADO : SOLTADO; // SW1: Pedal Looper

        if (debounce_counter > 0) debounce_counter--;
        if (sd_debounce_counter > 0) sd_debounce_counter--;

        // Anti-rebote para el Pedal (SW1)
        if (raw_pedal != debounced_pedal && debounce_counter == 0) {
            debounced_pedal = raw_pedal;
            debounce_counter = 50; 
        }

        // Anti-rebote para la SD (SW0)
        if (raw_sd != debounced_sd && sd_debounce_counter == 0) {
            debounced_sd = raw_sd;
            sd_debounce_counter = 50; 
        }

        int pedal = debounced_pedal; // Usar estado limpio para la maquina de estados
        int sd_switch = debounced_sd;

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
                    // ELIMINADO PARA EVITAR LAG: memset(LoopBuffer, 0, MAX_SAMPLES * sizeof(u32));
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
                            tx_ping[i] = LoopBuffer[i % loop_length];
                            tx_pong[i] = LoopBuffer[(PACKET_SIZE + i) % loop_length];
                        }
                        Xil_DCacheFlushRange((UINTPTR)tx_ping, PACKET_SIZE * sizeof(u32));
                        Xil_DCacheFlushRange((UINTPTR)tx_pong, PACKET_SIZE * sizeof(u32));
                        
                        // Lanzar el primer paquete (tx_ping) al DMA MM2S inmediatamente
                        XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)tx_ping, PACKET_SIZE * sizeof(u32), XAXIDMA_DMA_TO_DEVICE);
                    }
                    
                    // Ahora sí, cambiamos el modo en hardware de forma segura
                    hw_mode = HW_MODE_PLAY;
                }
            }
        
        last_pedal = pedal;

        // Actualizar el modo en el Mixer de Hardware (Crucial!)
        Xil_Out32(GPIO_MIXER_BASE + 0x00, hw_mode);

        // Actualizar UI con estados actuales
        ui_update_status(hw_mode, (sd_switch == 1));
        ui_update_progress(loop_index, loop_length);

        // --- MANEJO DEL DMA SEGÚN EL MODO ---
        
        // El DMA corre SIEMPRE. Es la forma más segura de evitar que las FIFOs de hardware 
        // se llenen y bloqueen el flujo de audio I2S.
        // Si no necesitamos los datos (IDLE), simplemente los descartamos.
        
        // Si entramos a un modo activo, necesitamos el DMA circulando
        if (!dma_started) {
            // Cargar la primera rafaga de TX si vamos a PLAY/OVERDUB directo
            if (hw_mode == HW_MODE_PLAY || hw_mode == HW_MODE_OVERDUB) {
                for(int i=0; i<PACKET_SIZE; i++) {
                    tx_ping[i] = LoopBuffer[(loop_index + i) % loop_length];
                    tx_pong[i] = LoopBuffer[(loop_index + PACKET_SIZE + i) % loop_length];
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
        // 1a. Esperar PING RX y lanzar PONG RX
        while (XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA)) { lv_timer_handler(); }
        XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)rx_pong, PACKET_SIZE * sizeof(u32), XAXIDMA_DEVICE_TO_DMA);

        // 1b. Esperar PING TX y lanzar PONG TX
        if (hw_mode == HW_MODE_PLAY || hw_mode == HW_MODE_OVERDUB) {
            while (XAxiDma_Busy(&AxiDma, XAXIDMA_DMA_TO_DEVICE)) { lv_timer_handler(); }
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
                tx_ping[i] = LoopBuffer[tx_idx++];
                if (tx_idx >= loop_length) tx_idx = 0;
            }
            Xil_DCacheFlushRange((UINTPTR)tx_ping, PACKET_SIZE * sizeof(u32));
        }

        // ==========================================================
        // MITAD PONG
        // ==========================================================
        // 1. Esperar PONG RX y lanzar PING RX
        while (XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA)) { lv_timer_handler(); }
        XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)rx_ping, PACKET_SIZE * sizeof(u32), XAXIDMA_DEVICE_TO_DMA);

        // 1b. Esperar PONG TX y lanzar PING TX
        if (hw_mode == HW_MODE_PLAY || hw_mode == HW_MODE_OVERDUB) {
            while (XAxiDma_Busy(&AxiDma, XAXIDMA_DMA_TO_DEVICE)) { lv_timer_handler(); }
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
                tx_pong[i] = LoopBuffer[tx_idx++];
                if (tx_idx >= loop_length) tx_idx = 0;
            }
            Xil_DCacheFlushRange((UINTPTR)tx_pong, PACKET_SIZE * sizeof(u32));
        }

        // 5. Garantizar que LVGL siempre se actualice, incluso si el DMA es muy rápido
        lv_timer_handler();

    } // Fin while(1)

    return XST_SUCCESS;
}