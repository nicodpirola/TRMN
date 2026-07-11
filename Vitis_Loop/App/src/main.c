#include "xparameters.h"
#include "xaxidma.h"
#include "xgpio.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "ff.h"
#include "xil_types.h"
#include "xil_io.h"
#include "sleep.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "xinterrupt_wrap.h"
#include "xscutimer.h" // NUEVO: SCU Timer (Temporizador Privado)

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

// ---------------------------------------------------------
// CONSTANTES Y HARDWARE
// ---------------------------------------------------------
#ifdef SDT
#define GPIO_SW_DEV_ID      XPAR_XGPIO_1_BASEADDR
#define DMA_DEV_ID          XPAR_XAXIDMA_0_BASEADDR
#define INTC_DEVICE_ID      XPAR_XSCUGIC_0_BASEADDR
#else
#define GPIO_SW_DEV_ID      XPAR_GPIO_1_DEVICE_ID
#define DMA_DEV_ID          XPAR_AXIDMA_0_DEVICE_ID
#define INTC_DEVICE_ID      XPAR_SCUGIC_SINGLE_DEVICE_ID
#endif

#define PACKET_SIZE         512     // Muestras por paquete DMA
#define MAX_SAMPLES         1440000 // Memoria Looper (30s aprox)
#define MAX_SD_SAMPLES      (48000 * 300) 

#define PRESIONADO          1
#define SOLTADO             0

XAxiDma AxiDma;     
XGpio GpioPedal;    
XScuTimer ScuTimer; // Instancia global del temporizador privado

u32 rx_ping[PACKET_SIZE] __attribute__((aligned(32)));
u32 rx_pong[PACKET_SIZE] __attribute__((aligned(32)));
u32 tx_ping[PACKET_SIZE] __attribute__((aligned(32)));
u32 tx_pong[PACKET_SIZE] __attribute__((aligned(32)));

u32 LoopBuffer[MAX_SAMPLES] __attribute__((aligned(32)));
u32 SdRecordBuffer[MAX_SD_SAMPLES] __attribute__((aligned(32)));

// ---------------------------------------------------------
// VARIABLES DE ESTADO (Volátiles para acceso desde ISR)
// ---------------------------------------------------------
volatile int hw_mode = 0; // 0=IDLE, 1=REC, 2=PLAY, 3=OVERDUB
volatile u32 loop_index = 0;
volatile u32 loop_length = 0;
volatile u32 sd_length = 0;
volatile int sd_switch = 0;
volatile int sd_recording = 0;
volatile int dma_started = 0;

// Direcciones Base
#define I2S_RX_BASE     0x43C00000
#define I2S_TX_BASE     0x43C10000
#define GPIO_MIXER_BASE 0x41200000
#define FX_BASE         0x60000000 
#define REG_ENC(n)      (0x40 + (n)*4)

// Funciones para LVGL y Encoderss

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
    if (btn_debounce[n] > 0) {
        btn_debounce[n]--;
        return 0; 
    }
    int switches = XGpio_DiscreteRead(&GpioPedal, 1);
    int current = ((switches & (1 << (n + 2))) == 0) ? 1 : 0;
    int clicked = 0;
    if (current == 1 && btn_prev[n] == 0) {
        clicked = 1;
        btn_debounce[n] = 40; 
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

#pragma pack(push, 1)
typedef struct {
    char riff_tag[4];      
    u32  riff_length;      
    char wave_tag[4];      
    char fmt_tag[4];       
    u32  fmt_length;       
    u16  audio_format;     
    u16  num_channels;     
    u32  sample_rate;      
    u32  byte_rate;        
    u16  block_align;      
    u16  bits_per_sample;  
    char data_tag[4];      
    u32  data_length;      
} WavHeader;
#pragma pack(pop)

void SaveWavToSD(u32* buffer, u32 num_frames) {
    FIL wav_file;
    FRESULT res;
    UINT bytes_written;

    res = f_open(&wav_file, "0:/LOOP.WAV", FA_CREATE_ALWAYS | FA_WRITE);
    if (res != FR_OK) return;

    u32 data_size = num_frames * 6;
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

    u8 pcm_buffer[6000];
    int pcm_idx = 0;
    for (u32 i = 0; i < num_frames; i++) {
        u32 sample = (buffer[i] >> 4) & 0xFFFFFF;
        pcm_buffer[pcm_idx++] = (u8)(sample & 0xFF);
        pcm_buffer[pcm_idx++] = (u8)((sample >> 8) & 0xFF);
        pcm_buffer[pcm_idx++] = (u8)((sample >> 16) & 0xFF);
        if (pcm_idx >= (int)sizeof(pcm_buffer)) {
            f_write(&wav_file, pcm_buffer, pcm_idx, &bytes_written);
            pcm_idx = 0;
        }
    }
    if (pcm_idx > 0) f_write(&wav_file, pcm_buffer, pcm_idx, &bytes_written);
    f_close(&wav_file);
}

// ---------------------------------------------------------
// RUTINA DE SERVICIO DE INTERRUPCIÓN (ISR) - DMA RX
// ---------------------------------------------------------
static void dma_rx_isr(void *CallbackRef) {
    static int ping_pong_state = 0; // 0 = Ping, 1 = Pong
    XAxiDma *AxiDmaInst = (XAxiDma *)CallbackRef;

    // Limpiar posibles interrupciones del canal TX (por si se disparó esta línea)
    u32 TxIrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DMA_TO_DEVICE);
    if (TxIrqStatus) {
        XAxiDma_IntrAckIrq(AxiDmaInst, TxIrqStatus, XAXIDMA_DMA_TO_DEVICE);
    }

    u32 IrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DEVICE_TO_DMA);
    XAxiDma_IntrAckIrq(AxiDmaInst, IrqStatus, XAXIDMA_DEVICE_TO_DMA);
    if (!(IrqStatus & XAXIDMA_IRQ_IOC_MASK)) return;

    if (ping_pong_state == 0) { 
        // === MITAD PING ===
        XAxiDma_SimpleTransfer(AxiDmaInst, (UINTPTR)rx_pong, PACKET_SIZE * sizeof(u32), XAXIDMA_DEVICE_TO_DMA);
        if (hw_mode == 2 || hw_mode == 3) {
            XAxiDma_SimpleTransfer(AxiDmaInst, (UINTPTR)tx_pong, PACKET_SIZE * sizeof(u32), XAXIDMA_DMA_TO_DEVICE);
        }

        Xil_DCacheInvalidateRange((UINTPTR)rx_ping, PACKET_SIZE * sizeof(u32));

        if (hw_mode == 1 || hw_mode == 3) {
            for(int i=0; i<PACKET_SIZE; i++) {
                if (loop_index + i < MAX_SAMPLES) LoopBuffer[loop_index + i] = rx_ping[i];
            }
        }
        if (sd_recording == 1) {
            for(int i=0; i<PACKET_SIZE; i++) {
                if (sd_length + i < MAX_SD_SAMPLES) SdRecordBuffer[sd_length + i] = rx_ping[i];
            }
            sd_length += PACKET_SIZE;
        }

        loop_index += PACKET_SIZE;
        if (hw_mode == 1 && loop_index >= MAX_SAMPLES - PACKET_SIZE) {
            loop_length = loop_index;
            hw_mode = 2; // Auto-Play
        }
        if (hw_mode != 1 && loop_length > 0) loop_index %= loop_length;

        if (hw_mode == 2 || hw_mode == 3) {
            u32 tx_idx = (loop_index + PACKET_SIZE) % loop_length;
            for(int i=0; i<PACKET_SIZE; i++) {
                tx_ping[i] = LoopBuffer[tx_idx++];
                if (tx_idx >= loop_length) tx_idx = 0;
            }
            Xil_DCacheFlushRange((UINTPTR)tx_ping, PACKET_SIZE * sizeof(u32));
        }
        ping_pong_state = 1;

    } else { 
        // === MITAD PONG ===
        XAxiDma_SimpleTransfer(AxiDmaInst, (UINTPTR)rx_ping, PACKET_SIZE * sizeof(u32), XAXIDMA_DEVICE_TO_DMA);
        if (hw_mode == 2 || hw_mode == 3) {
            XAxiDma_SimpleTransfer(AxiDmaInst, (UINTPTR)tx_ping, PACKET_SIZE * sizeof(u32), XAXIDMA_DMA_TO_DEVICE);
        }

        Xil_DCacheInvalidateRange((UINTPTR)rx_pong, PACKET_SIZE * sizeof(u32));

        if (hw_mode == 1 || hw_mode == 3) {
            for(int i=0; i<PACKET_SIZE; i++) {
                if (loop_index + i < MAX_SAMPLES) LoopBuffer[loop_index + i] = rx_pong[i];
            }
        }
        if (sd_recording == 1) {
            for(int i=0; i<PACKET_SIZE; i++) {
                if (sd_length + i < MAX_SD_SAMPLES) SdRecordBuffer[sd_length + i] = rx_pong[i];
            }
            sd_length += PACKET_SIZE;
        }

        loop_index += PACKET_SIZE;
        if (hw_mode == 1 && loop_index >= MAX_SAMPLES - PACKET_SIZE) {
            loop_length = loop_index;
            hw_mode = 2; // Auto-Play
        }
        if (hw_mode != 1 && loop_length > 0) loop_index %= loop_length;

        if (hw_mode == 2 || hw_mode == 3) {
            u32 tx_idx = (loop_index + PACKET_SIZE) % loop_length;
            for(int i=0; i<PACKET_SIZE; i++) {
                tx_pong[i] = LoopBuffer[tx_idx++];
                if (tx_idx >= loop_length) tx_idx = 0;
            }
            Xil_DCacheFlushRange((UINTPTR)tx_pong, PACKET_SIZE * sizeof(u32));
        }
        ping_pong_state = 0;
    }
}

// ---------------------------------------------------------
// RUTINA DE SERVICIO DEL TEMPORIZADOR PRIVADO (1 kHz)
// ---------------------------------------------------------
static void scu_timer_isr(void *CallBackRef) {
    XScuTimer *TimerInstancePtr = (XScuTimer *)CallBackRef;
    
    // Limpiar flag de interrupción del timer para que vuelva a disparar
    XScuTimer_ClearInterruptStatus(TimerInstancePtr);
    
    // Polling del DMA (Ultra-rápido, no bloqueante, pero con PREEMPTION gracias al timer)
    u32 rx_sr = XAxiDma_IntrGetIrq(&AxiDma, XAXIDMA_DEVICE_TO_DMA);
    if (rx_sr & XAXIDMA_IRQ_IOC_MASK) {
        dma_rx_isr(&AxiDma); 
    }
}

// ---------------------------------------------------------
// CONFIGURACIÓN DE INTERRUPCIONES (VIA SCU TIMER - BULLETPROOF)
// ---------------------------------------------------------
int SetupInterruptSystem(XAxiDma *AxiDmaPtr) {
    int Status;

    // Inicializar SCU Timer
    XScuTimer_Config *TMRConfigPtr = XScuTimer_LookupConfig(XPAR_XSCUTIMER_0_BASEADDR);
    if (TMRConfigPtr == NULL) return XST_FAILURE;
    
    Status = XScuTimer_CfgInitialize(&ScuTimer, TMRConfigPtr, TMRConfigPtr->BaseAddr);
    if (Status != XST_SUCCESS) return XST_FAILURE;

    // Conectar el SCU Timer al GIC (usando SDT wrapper)
    Status = XSetupInterruptSystem(&ScuTimer, (void *)scu_timer_isr, 
                                   XPAR_XSCUTIMER_0_INTERRUPTS, 
                                   XPAR_XSCUTIMER_0_INTERRUPT_PARENT, 0xA0);
    if (Status != XST_SUCCESS) return XST_FAILURE;

    // Cargar 1 milisegundo (CPU_CLOCK / 2 / 1000)
    XScuTimer_LoadTimer(&ScuTimer, XPAR_CPU_CORE_CLOCK_FREQ_HZ / 2000);
    XScuTimer_EnableAutoReload(&ScuTimer);
    XScuTimer_EnableInterrupt(&ScuTimer);
    XScuTimer_Start(&ScuTimer);

    // Habilitar interrupción de RX y TX en el DMA (para que el bit IOC se levante)
    XAxiDma_IntrEnable(AxiDmaPtr, XAXIDMA_IRQ_IOC_MASK | XAXIDMA_IRQ_ERROR_MASK, XAXIDMA_DEVICE_TO_DMA);
    XAxiDma_IntrEnable(AxiDmaPtr, XAXIDMA_IRQ_IOC_MASK | XAXIDMA_IRQ_ERROR_MASK, XAXIDMA_DMA_TO_DEVICE);

    return XST_SUCCESS;
}

// ---------------------------------------------------------
// MAIN MAIN MAIN
// ---------------------------------------------------------
int main(void) {
    int Status;
    FATFS FS_instance;
    
    // --- 1. Init I2S y Mixer ---
    Xil_Out32(I2S_RX_BASE + 0x08, 0); // RX reset
    Xil_Out32(I2S_TX_BASE + 0x08, 0); // TX reset
    Xil_Out32(GPIO_MIXER_BASE + 0x00, 0); // hw_mode = IDLE

    // Configurar divisores I2S para ~48kHz
    Xil_Out32(I2S_RX_BASE + 0x20, 0x00000002);
    Xil_Out32(I2S_TX_BASE + 0x20, 0x00000002);
    Xil_Out32(I2S_TX_BASE + 0x0C, 0x00000001); 
    Xil_Out32(I2S_RX_BASE + 0x30, 0x00000001); 
    Xil_Out32(I2S_TX_BASE + 0x30, 0x00000001); 

    // --- 2. Init GPIO ---
    Status = XGpio_Initialize(&GpioPedal, GPIO_SW_DEV_ID);
    if (Status != XST_SUCCESS) { xil_printf("Fallo GPIO\r\n"); return XST_FAILURE; }
    XGpio_SetDataDirection(&GpioPedal, 1, 0xFFFFFFFF); 

    // --- 3. Init DMA ---
    XAxiDma_Config *CfgPtr = XAxiDma_LookupConfig(DMA_DEV_ID);
    Status = XAxiDma_CfgInitialize(&AxiDma, CfgPtr);
    if (Status != XST_SUCCESS) { xil_printf("Fallo DMA\r\n"); return XST_FAILURE; }
    
    // Deshabilitamos interrupciones del DMA por si las dudas antes de configurarlo
    XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
    XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

    // --- 4. Init Pantalla y LVGL ---
    xil_printf("Init Pantalla...\r\n");
    ili9341_init();
    lv_init();
    lv_tick_set_cb(lvgl_time_get);
    lv_display_t * disp = lv_display_create(320, 240);
    lv_display_set_flush_cb(disp, my_flush_cb);
    static lv_color_t buf_1[320 * 24]; 
    lv_display_set_buffers(disp, buf_1, NULL, sizeof(buf_1), LV_DISPLAY_RENDER_MODE_PARTIAL);

    ui_init();
    xil_printf("UI Lista.\r\n");

    // --- 5. Init SD ---
    TCHAR *Path = "0:/";
    Status = f_mount(&FS_instance, Path, 1);
    if (Status == FR_OK) {
        xil_printf("SD Montada OK!\r\n");
    }

    // --- 6. Init DMA Interrupts (Via SCU Timer Dummy-Proof) ---
    Status = SetupInterruptSystem(&AxiDma);
    if (Status != XST_SUCCESS) {
        xil_printf("Fallo setup de interrupciones del Timer\r\n");
        return XST_FAILURE;
    }
    xil_printf("SISTEMA DE INTERRUPCIONES ACTIVO (Timer Aislado)\r\n");

    // --- 7. Arrancar flujo de DMA Inicial e I2S ---
    // Inicia el primer paquete RX para detonar la cadena infinita de interrupciones
    XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)rx_ping, PACKET_SIZE * sizeof(u32), XAXIDMA_DEVICE_TO_DMA);
    dma_started = 1;

    // ¡CRUCIAL! Encender los modulos I2S para que empiecen a generar datos y alimenten al DMA
    Xil_Out32(I2S_TX_BASE + 0x08, 0x00000001);
    Xil_Out32(I2S_RX_BASE + 0x08, 0x00000001);

    int switches_init = XGpio_DiscreteRead(&GpioPedal, 1);
    int last_pedal = (switches_init & 0x02) ? PRESIONADO : SOLTADO;
    int last_sd_button = (switches_init & 0x01) ? 1 : 0;
    int debounced_sd = last_sd_button;
    int sd_debounce_counter = 0;
    
    // ==========================================================
    // BUCLE PRINCIPAL (SUPER LIVIANO)
    // ==========================================================
    static uint32_t pedal_debounce_time = 0;
    static uint32_t sd_debounce_time = 0;

    while (1) {
        
        uint32_t now = lvgl_time_get();

        // --- LECTURA DE HARDWARE ---
        int switches = XGpio_DiscreteRead(&GpioPedal, 1);
        int pedal = (switches & 0x02) ? PRESIONADO : SOLTADO; // Bit 1
        int sd_button = (switches & 0x01) ? 1 : 0; // Bit 0

        // Maquina de estados del pedal (SW1) - CON PROTECCIÓN ATÓMICA Y ANTI-REBOTE TEMPORAL
        if (pedal != last_pedal && (now - pedal_debounce_time > 200)) { // 200ms de gracia
            pedal_debounce_time = now;
            
            if (pedal == PRESIONADO) {
                XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA); 
                if (hw_mode == 0) { // IDLE -> REC
                    hw_mode = 1;
                    loop_index = 0; 
                    xil_printf(">>> RECORDING... (Pedal Pisado)\r\n");
                } else if (hw_mode == 2) { // PLAY -> OVERDUB
                    hw_mode = 3;
                    xil_printf(">>> OVERDUBBING... (Pedal Pisado)\r\n");
                } else if (hw_mode == 3) { // OVERDUB -> PLAY
                    hw_mode = 2;
                    xil_printf("<<< PLAYING... (Pedal Pisado)\r\n");
                }
                XAxiDma_IntrEnable(&AxiDma, XAXIDMA_IRQ_IOC_MASK | XAXIDMA_IRQ_ERROR_MASK, XAXIDMA_DEVICE_TO_DMA);
            } else { // SOLTADO
                if (hw_mode == 1) { // REC -> PLAY
                    XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA); 
                    loop_length = loop_index; 
                    loop_index = 0; 
                    xil_printf("<<< PLAYING... [Loop: %d muestras]\r\n", (int)loop_length);

                    // Pre-carga inmediata
                    if (loop_length > 0) {
                        for(int i=0; i<PACKET_SIZE; i++) {
                            tx_ping[i] = LoopBuffer[i % loop_length];
                            tx_pong[i] = LoopBuffer[(PACKET_SIZE + i) % loop_length];
                        }
                        Xil_DCacheFlushRange((UINTPTR)tx_ping, PACKET_SIZE * sizeof(u32));
                        Xil_DCacheFlushRange((UINTPTR)tx_pong, PACKET_SIZE * sizeof(u32));
                        XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)tx_ping, PACKET_SIZE * sizeof(u32), XAXIDMA_DMA_TO_DEVICE);
                    }
                    hw_mode = 2;
                    XAxiDma_IntrEnable(&AxiDma, XAXIDMA_IRQ_IOC_MASK | XAXIDMA_IRQ_ERROR_MASK, XAXIDMA_DEVICE_TO_DMA);
                }
            }
            last_pedal = pedal;
        }

        // --- Grabar a SD activado por Switch físico (CON ANTI-REBOTE TEMPORAL) ---
        if (sd_button != last_sd_button && (now - sd_debounce_time > 200)) {
            sd_debounce_time = now;
            
            if (sd_button == 1 && sd_recording == 0) {
                xil_printf("Iniciando Grabacion SD...\r\n");
                sd_length = 0;
                sd_recording = 1;
            } else if (sd_button == 0 && sd_recording == 1) {
                sd_recording = 0;
                xil_printf("Deteniendo y Guardando en SD...\r\n");
                
                // Detener temporalmente interrupciones DMA para que el guardado lento en SD no sea interrumpido
                XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
                SaveWavToSD(SdRecordBuffer, sd_length);
                XAxiDma_IntrEnable(&AxiDma, XAXIDMA_IRQ_IOC_MASK | XAXIDMA_IRQ_ERROR_MASK, XAXIDMA_DEVICE_TO_DMA);
                
                // Volvemos a cebar el DMA porque el AXI DMA internamente se frena sin servicio
                XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)rx_ping, PACKET_SIZE * sizeof(u32), XAXIDMA_DEVICE_TO_DMA);
            }
            last_sd_button = sd_button;
        }

        // Actualizar hardware (Crucial!)
        Xil_Out32(GPIO_MIXER_BASE + 0x00, hw_mode);

        // --- MANEJO DE LA INTERFAZ GRÁFICA ---
        ui_update_status(hw_mode, (sd_recording == 1));
        ui_update_progress(loop_index, loop_length);

        int e0_d = enc_delta(0); int e0_c = enc_button_clicked(0);
        int e1_d = enc_delta(1); int e1_c = enc_button_clicked(1);
        // int e2_d = enc_delta(2); int e2_c = enc_button_clicked(2);
        ui_handle_input(e0_d, e0_c, e1_d, e1_c);
        
        // ¡El DMA y el procesador ya no compiten por el tiempo! 
        lv_timer_handler();

    } // Fin while(1)

    return XST_SUCCESS;
}