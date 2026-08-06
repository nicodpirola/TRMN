#include "xparameters.h"
#include "xaxidma.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "ff.h"
#include "sleep.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "xinterrupt_wrap.h"
#include "xscutimer.h"
#include "xil_mmu.h"
#include "ipc.h"

#define DMA_DEV_ID          XPAR_XAXIDMA_0_BASEADDR
#define PACKET_SIZE         512     // Muestras por paquete DMA
#define MAX_SAMPLES         1440000 // Memoria Looper (30s aprox)
#define MAX_SD_SAMPLES      (48000 * 300) 

XAxiDma AxiDma;     
XScuTimer ScuTimer; 

u32 rx_ping[PACKET_SIZE] __attribute__((aligned(32)));
u32 rx_pong[PACKET_SIZE] __attribute__((aligned(32)));
u32 tx_ping[PACKET_SIZE] __attribute__((aligned(32)));
u32 tx_pong[PACKET_SIZE] __attribute__((aligned(32)));

u32 LoopBuffer[MAX_SAMPLES] __attribute__((aligned(32)));
u32 SdRecordBuffer[MAX_SD_SAMPLES] __attribute__((aligned(32)));

volatile u32 sd_length = 0;

#define I2S_RX_BASE     0x43C00000
#define I2S_TX_BASE     0x43C10000
#define GPIO_MIXER_BASE 0x41200000

// --- SD CARD SAVE ---
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
    static int rx_count = 1;
    static int last_hw_mode_isr = 0;
    
    if (rx_count <= 10) {
        xil_printf("CORE 1: [LATIDO] Procesando paquete de audio #%d...\r\n", rx_count);
        rx_count++;
    }
    
    XAxiDma *AxiDmaInst = (XAxiDma *)CallbackRef;

    u32 TxIrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DMA_TO_DEVICE);
    if (TxIrqStatus) {
        XAxiDma_IntrAckIrq(AxiDmaInst, TxIrqStatus, XAXIDMA_DMA_TO_DEVICE);
    }
    u32 IrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DEVICE_TO_DMA);
    XAxiDma_IntrAckIrq(AxiDmaInst, IrqStatus, XAXIDMA_DEVICE_TO_DMA);
    if (!(IrqStatus & XAXIDMA_IRQ_IOC_MASK)) return;

    int hw_mode = IPC->hw_mode;

    // --- MÁQUINA DE ESTADOS SINCRONIZADA CON EL AUDIO ---
    if (hw_mode == 1 && last_hw_mode_isr == 0) {
        IPC->loop_index = 0; // IDLE -> REC
    } else if (hw_mode == 2 && last_hw_mode_isr == 1) {
        IPC->loop_length = IPC->loop_index; // REC -> PLAY
        IPC->loop_index = 0;
        
        // ¡INYECTAR EL PRIMER PAQUETE TX PARA DETONAR LA CADENA!
        if (IPC->loop_length > 0) {
            for(int i=0; i<PACKET_SIZE; i++) {
                tx_ping[i] = LoopBuffer[i % IPC->loop_length];
                tx_pong[i] = LoopBuffer[(PACKET_SIZE + i) % IPC->loop_length];
            }
            Xil_DCacheFlushRange((UINTPTR)tx_ping, PACKET_SIZE * sizeof(u32));
            Xil_DCacheFlushRange((UINTPTR)tx_pong, PACKET_SIZE * sizeof(u32));
            XAxiDma_SimpleTransfer(AxiDmaInst, (UINTPTR)tx_ping, PACKET_SIZE * sizeof(u32), XAXIDMA_DMA_TO_DEVICE);
        }
    }
    last_hw_mode_isr = hw_mode;

    if (ping_pong_state == 0) {  
        // === MITAD PING ===
        XAxiDma_SimpleTransfer(AxiDmaInst, (UINTPTR)rx_pong, PACKET_SIZE * sizeof(u32), XAXIDMA_DEVICE_TO_DMA);
        
        if (hw_mode == 2 || hw_mode == 3) {
            while (XAxiDma_Busy(AxiDmaInst, XAXIDMA_DMA_TO_DEVICE)) { usleep(1); }
            XAxiDma_SimpleTransfer(AxiDmaInst, (UINTPTR)tx_pong, PACKET_SIZE * sizeof(u32), XAXIDMA_DMA_TO_DEVICE);
        }

        Xil_DCacheInvalidateRange((UINTPTR)rx_ping, PACKET_SIZE * sizeof(u32));

        if (hw_mode == 1 || hw_mode == 3) {
            for(int i=0; i<PACKET_SIZE; i++) {
                if (IPC->loop_index + i < MAX_SAMPLES) LoopBuffer[IPC->loop_index + i] = rx_ping[i];
            }
        }
        
        if (IPC->sd_recording == 1) {
            for(int i=0; i<PACKET_SIZE; i++) {
                if (sd_length + i < MAX_SD_SAMPLES) SdRecordBuffer[sd_length + i] = rx_ping[i];
            }
            sd_length += PACKET_SIZE;
        }

        IPC->loop_index += PACKET_SIZE;
        if (hw_mode != 1 && IPC->loop_length > 0) IPC->loop_index %= IPC->loop_length;

        if (hw_mode == 2 || hw_mode == 3) {
            u32 tx_idx = (IPC->loop_index + PACKET_SIZE) % IPC->loop_length;
            for(int i=0; i<PACKET_SIZE; i++) {
                tx_ping[i] = LoopBuffer[tx_idx++];
                if (tx_idx >= IPC->loop_length) tx_idx = 0;
            }
            Xil_DCacheFlushRange((UINTPTR)tx_ping, PACKET_SIZE * sizeof(u32));
        }
        ping_pong_state = 1;
    } else { 
        // === MITAD PONG ===
        XAxiDma_SimpleTransfer(AxiDmaInst, (UINTPTR)rx_ping, PACKET_SIZE * sizeof(u32), XAXIDMA_DEVICE_TO_DMA);
        
        if (hw_mode == 2 || hw_mode == 3) {
            while (XAxiDma_Busy(AxiDmaInst, XAXIDMA_DMA_TO_DEVICE)) { usleep(1); }
            XAxiDma_SimpleTransfer(AxiDmaInst, (UINTPTR)tx_ping, PACKET_SIZE * sizeof(u32), XAXIDMA_DMA_TO_DEVICE);
        }

        Xil_DCacheInvalidateRange((UINTPTR)rx_pong, PACKET_SIZE * sizeof(u32));

        if (hw_mode == 1 || hw_mode == 3) {
            for(int i=0; i<PACKET_SIZE; i++) {
                if (IPC->loop_index + i < MAX_SAMPLES) LoopBuffer[IPC->loop_index + i] = rx_pong[i];
            }
        }

        if (IPC->sd_recording == 1) {
            for(int i=0; i<PACKET_SIZE; i++) {
                if (sd_length + i < MAX_SD_SAMPLES) SdRecordBuffer[sd_length + i] = rx_pong[i];
            }
            sd_length += PACKET_SIZE;
        }

        IPC->loop_index += PACKET_SIZE;
        if (hw_mode != 1 && IPC->loop_length > 0) IPC->loop_index %= IPC->loop_length;

        if (hw_mode == 2 || hw_mode == 3) {
            u32 tx_idx = (IPC->loop_index + PACKET_SIZE) % IPC->loop_length;
            for(int i=0; i<PACKET_SIZE; i++) {
                tx_pong[i] = LoopBuffer[tx_idx++];
                if (tx_idx >= IPC->loop_length) tx_idx = 0;
            }
            Xil_DCacheFlushRange((UINTPTR)tx_pong, PACKET_SIZE * sizeof(u32));
        }
        ping_pong_state = 0;
    }
}

// ELIMINADO: SetupInterruptSystem y scu_timer_isr .

int main() {
    // Deshabilitar caché para la región OCM (0xFFFF0000) - 0x14de2 = Strongly Ordered / Non-Cacheable
    Xil_SetTlbAttributes(0xFFFF0000, 0x14de2);

    xil_printf("CORE 1: Inicializando procesador de Audio...\r\n");

    FATFS fs;
    if (f_mount(&fs, "0:/", 1) == FR_OK) {
        xil_printf("CORE 1: Tarjeta SD Montada y lista.\r\n");
    }

    XAxiDma_Config *CfgPtr = XAxiDma_LookupConfig(DMA_DEV_ID);
    XAxiDma_CfgInitialize(&AxiDma, CfgPtr);

    // Habilitar la generación de banderas de estado en el DMA (No usarán GIC, las leeremos manualmente)
    XAxiDma_IntrEnable(&AxiDma, XAXIDMA_IRQ_IOC_MASK | XAXIDMA_IRQ_ERROR_MASK, XAXIDMA_DEVICE_TO_DMA);
    XAxiDma_IntrEnable(&AxiDma, XAXIDMA_IRQ_IOC_MASK | XAXIDMA_IRQ_ERROR_MASK, XAXIDMA_DMA_TO_DEVICE);

    // 1. Configurar IP I2S (Relojes y Divisores originales)
    Xil_Out32(I2S_RX_BASE + 0x20, 0x00000002);
    Xil_Out32(I2S_TX_BASE + 0x20, 0x00000002);
    Xil_Out32(I2S_TX_BASE + 0x0C, 0x00000001); 
    Xil_Out32(I2S_RX_BASE + 0x30, 0x00000001); 
    Xil_Out32(I2S_TX_BASE + 0x30, 0x00000001); 

    // 2. Encender modulos I2S
    Xil_Out32(I2S_TX_BASE + 0x08, 0x00000001);
    Xil_Out32(I2S_RX_BASE + 0x08, 0x00000001);

    // Iniciar el motor de DMA de Entrada (La salida despertará en la primera interrupción)
    int rx_status = XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)rx_ping, PACKET_SIZE * sizeof(u32), XAXIDMA_DEVICE_TO_DMA);
    
    if (rx_status != 0) {
        xil_printf("CORE 1: [ERROR FATAL] El DMA se nego a arrancar! Codigo: RX=%d\r\n", rx_status);
    } else {
        xil_printf("CORE 1: Motor DMA RX arrancado con exito.\r\n");
    }

    // Avisar al Core 0 que ya estamos vivos y listos
    IPC->core1_ready = 1;
    xil_printf("CORE 1: Esperando comandos por OCM...\r\n");

    static int was_sd_recording = 0;

    while (1) {
        // --- 1. POLLING DEL DMA (Sustituye a la interrupción) ---
        u32 rx_sr = XAxiDma_IntrGetIrq(&AxiDma, XAXIDMA_DEVICE_TO_DMA);
        u32 tx_sr = XAxiDma_IntrGetIrq(&AxiDma, XAXIDMA_DMA_TO_DEVICE);
        
        if (rx_sr & XAXIDMA_IRQ_ERROR_MASK) xil_printf("CORE 1: [ERROR] Fallo de hardware en DMA RX!\r\n");
        if (tx_sr & XAXIDMA_IRQ_ERROR_MASK) xil_printf("CORE 1: [ERROR] Fallo de hardware en DMA TX!\r\n");

        if (rx_sr & XAXIDMA_IRQ_IOC_MASK) {
            dma_rx_isr(&AxiDma);
        }

        // Descanso microscópico para no saturar el bus AXI de la placa
        usleep(100);

        // --- 2. LEER COMANDOS DEL NÚCLEO 0 ---
        int current_mode = IPC->hw_mode;
        
        // Actualizar hardware físico según el modo
        Xil_Out32(GPIO_MIXER_BASE + 0x00, current_mode);

        // Detectar guardado a SD disparado por el Núcleo 0
        if (IPC->sd_recording == 1 && was_sd_recording == 0) {
            sd_length = 0;
            was_sd_recording = 1;
        } else if (IPC->sd_recording == 0 && was_sd_recording == 1) {
            xil_printf("CORE 1: Guardando archivo gigante a SD...\r\n");
            XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
            SaveWavToSD(SdRecordBuffer, sd_length);
            XAxiDma_IntrEnable(&AxiDma, XAXIDMA_IRQ_IOC_MASK | XAXIDMA_IRQ_ERROR_MASK, XAXIDMA_DEVICE_TO_DMA);
            XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)rx_ping, PACKET_SIZE * sizeof(u32), XAXIDMA_DEVICE_TO_DMA);
            xil_printf("CORE 1: SD Guardado exitosamente.\r\n");
            was_sd_recording = 0;
        }
        
    }
    return 0;
}
