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
// IDs de dispositivos en xparameters.h
#ifndef XPAR_AXIDMA_0_DEVICE_ID
#define XPAR_AXIDMA_0_DEVICE_ID 0
#endif

#ifndef XPAR_GPIO_0_DEVICE_ID
#define XPAR_GPIO_0_DEVICE_ID 0
#endif

#define DMA_DEV_ID      XPAR_AXIDMA_0_DEVICE_ID
#define GPIO_DEV_ID     XPAR_GPIO_0_DEVICE_ID

// Direcciones Base (Desde tb_zynq.sv)
#define I2S_RX_BASE     0x43C00000
#define I2S_TX_BASE     0x43C10000
#define GPIO_MIXER_BASE 0x41200000

// ==========================================================
// CONFIGURACION DEL LOOPER Y PING-PONG
// ==========================================================
#define AUDIO_BUFFER_BASEADDR 0x10000000 
#define MAX_SAMPLES           441000 // ~10 segundos a 44.1kHz
#define PACKET_SIZE           512   // Muestras por transferencia DMA (Ajustable)

#define PRESIONADO            1
#define SOLTADO               0

// ==========================================================
// VARIABLES GLOBALES Y BUFFERS
// ==========================================================
XAxiDma AxiDma;     
XGpio GpioPedal;    

// Buffers Ping-Pong alineados para cache (crucial para DMA)
u32 rx_ping[PACKET_SIZE] __attribute__((aligned(32)));
u32 rx_pong[PACKET_SIZE] __attribute__((aligned(32)));
u32 tx_ping[PACKET_SIZE] __attribute__((aligned(32)));
u32 tx_pong[PACKET_SIZE] __attribute__((aligned(32)));

// Gran buffer circular en DDR
u32 *LoopBuffer = (u32 *)AUDIO_BUFFER_BASEADDR; 

// Estado del Looper
typedef enum {
    STATE_BYPASS = 0,
    STATE_RECORD = 1,
    STATE_PLAYBACK = 2
} LooperState;

LooperState current_state = STATE_BYPASS;
u32 loop_length = 0;
u32 loop_index = 0;
int last_pedal_state = SOLTADO;

// ==========================================================
// FUNCION DE PROCESAMIENTO DE AUDIO
// ==========================================================
void process_audio(u32 *rx_buf, u32 *tx_buf, int packet_size) {
    for (int i = 0; i < packet_size; i++) {
        u32 in_sample = rx_buf[i];
        u32 out_sample = in_sample; // Passthrough para testing

        if (current_state == STATE_RECORD) {
            if (loop_index < MAX_SAMPLES) {
                LoopBuffer[loop_index] = in_sample;
                loop_index++;
            }
        } 
        else if (current_state == STATE_PLAYBACK) {
            if (loop_length > 0) {
                // Modo Playback simple (reemplaza el audio entrante con el grabado)
                // Para mezcla (overdub real), se debe manejar la suma de muestras con signo.
                out_sample = LoopBuffer[loop_index];
                
                LoopBuffer[loop_index] = in_sample;

                // Avanzar el indice de forma circular
                loop_index++;
                if (loop_index >= loop_length) {
                    loop_index = 0; 
                }
            }
        }

        tx_buf[i] = out_sample;
    }
}

// ==========================================================
// MAIN
// ==========================================================
int main() {
    int status;
    xil_printf("\r\n--- Iniciando Sistema Looper (Ping-Pong Polling) ---\r\n");

    // 1. Configurar IP I2S
    xil_printf("Configurando divisores I2S para ~48kHz...\r\n");
    // Divisor = 3 -> SCLK = 24.576M / (2 * (3+1)) = 3.072 MHz -> 48 kHz con 64 bits/frame
    Xil_Out32(I2S_RX_BASE + 0x20, 0x00000003);
    Xil_Out32(I2S_TX_BASE + 0x20, 0x00000003);
    Xil_Out32(I2S_TX_BASE + 0x0C, 0x00000001); // Validez para TX

    // Habilitar canales de audio 0 (0x30)
    Xil_Out32(I2S_RX_BASE + 0x30, 0x00000001); // RX: Mux = 1 (Rutea I2S Ch0 a AXI Stream)
    Xil_Out32(I2S_TX_BASE + 0x30, 0x00000001); // TX: En algunos IPs esto habilita el canal

    // 2. Configurar AXI GPIO (Looper Mixer)
    xil_printf("Inicializando Looper Mixer en MODO IDLE...\r\n");
    Xil_Out32(GPIO_MIXER_BASE + 0x00, 0x00000000);

    // 3. Encender modulos I2S
    xil_printf("Encendiendo modulos I2S...\r\n");
    Xil_Out32(I2S_TX_BASE + 0x08, 0x00000001);
    Xil_Out32(I2S_RX_BASE + 0x08, 0x00000001);

    // Diagnóstico I2S
    xil_printf("--- I2S STATUS ---\r\n");
    xil_printf("RX Config (0x04): 0x%08X\r\n", Xil_In32(I2S_RX_BASE + 0x04));
    xil_printf("RX Timing (0x20): 0x%08X\r\n", Xil_In32(I2S_RX_BASE + 0x20));
    xil_printf("RX Status (0x14): 0x%08X\r\n", Xil_In32(I2S_RX_BASE + 0x14));
    xil_printf("TX Status (0x14): 0x%08X\r\n", Xil_In32(I2S_TX_BASE + 0x14));
    xil_printf("------------------\r\n");

    // 4. Inicializar GPIO del Pedal
    status = XGpio_Initialize(&GpioPedal, GPIO_DEV_ID);
    if (status != XST_SUCCESS) {
        xil_printf("Fallo al inicializar GPIO.\r\n");
        return XST_FAILURE;
    }
    XGpio_SetDataDirection(&GpioPedal, 1, 0xFFFFFFFF); // Canal 1 como Entrada

    // 5. Inicializar DMA
    XAxiDma_Config *CfgPtr = XAxiDma_LookupConfig(DMA_DEV_ID);
    if (!CfgPtr) {
        xil_printf("No se encontro configuracion para el DMA.\r\n");
        return XST_FAILURE;
    }
    status = XAxiDma_CfgInitialize(&AxiDma, CfgPtr);
    if (status != XST_SUCCESS) {
        xil_printf("Fallo al inicializar DMA.\r\n");
        return XST_FAILURE;
    }
    
    // Deshabilitar interrupciones porque usaremos Polling
    XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
    XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

    xil_printf("Hardware Inicializado. Iniciando ciclo Ping-Pong...\r\n");

    // Arrancar la primera recepcion en Ping
    XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)rx_ping, PACKET_SIZE * sizeof(u32), XAXIDMA_DEVICE_TO_DMA);

    int last_global_enable = -1;

    while(1) {
        // --- MAQUINA DE ESTADOS (Lectura de Pedal) ---
        int switches = XGpio_DiscreteRead(&GpioPedal, 1);
        int global_enable = (switches & 0x01); // Switch 0
        int pedal = (switches & 0x02) ? PRESIONADO : SOLTADO; // Switch 1

        if (global_enable != last_global_enable) {
            if (global_enable) {
                xil_printf(">>> PEDAL ENCENDIDO\r\n");
            } else {
                xil_printf(">>> PEDAL APAGADO (Bypass general)\r\n");
            }
            last_global_enable = global_enable;
        }

        if (global_enable == 0) {
            current_state = STATE_BYPASS;
        } else {
            if (pedal == PRESIONADO && last_pedal_state == SOLTADO) {
                if (current_state == STATE_BYPASS || current_state == STATE_PLAYBACK) {
                    current_state = STATE_RECORD;
                    loop_index = 0; // Empezar a grabar desde el principio
                    xil_printf(">>> GRABANDO...\r\n");
                }
            } else if (pedal == SOLTADO && last_pedal_state == PRESIONADO) {
                if (current_state == STATE_RECORD) {
                    current_state = STATE_PLAYBACK;
                    loop_length = loop_index; // Guardar la longitud total del loop
                    loop_index = 0;           // Reiniciar indice para reproducir
                    xil_printf("<<< REPRODUCIENDO (Loop de %d muestras)...\r\n", (int)loop_length);
                }
            }
        }
        last_pedal_state = pedal;
        
        xil_printf("Esperando RX DMA...\r\n"); 
        // ==========================================================
        // MITAD PING
        // ==========================================================
        
        // 1. Esperar a que el DMA termine de llenar rx_ping
        while (XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA)) {}
        xil_printf("RX DMA Completado!\r\n");
        Xil_DCacheInvalidateRange((UINTPTR)rx_ping, PACKET_SIZE * sizeof(u32)); // Vaciar cache de lectura
        
        // 2. Iniciar inmediatamente la recepcion en rx_pong para no perder datos del PL
        XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)rx_pong, PACKET_SIZE * sizeof(u32), XAXIDMA_DEVICE_TO_DMA);

        // 3. El CPU procesa los datos recien llegados a rx_ping y prepara tx_ping
        process_audio(rx_ping, tx_ping, PACKET_SIZE);

        // 4. Esperar que el DMA termine de transmitir el TX anterior (si lo hay)
        while (XAxiDma_Busy(&AxiDma, XAXIDMA_DMA_TO_DEVICE)) {}
        Xil_DCacheFlushRange((UINTPTR)tx_ping, PACKET_SIZE * sizeof(u32)); // Forzar escritura a RAM
        
        // 5. Iniciar la transmision de tx_ping hacia el PL
        XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)tx_ping, PACKET_SIZE * sizeof(u32), XAXIDMA_DMA_TO_DEVICE);


        // ==========================================================
        // MITAD PONG
        // ==========================================================
        
        // 1. Esperar a que el DMA termine de llenar rx_pong
        while (XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA)) {}
        Xil_DCacheInvalidateRange((UINTPTR)rx_pong, PACKET_SIZE * sizeof(u32));
        
        // 2. Iniciar inmediatamente la recepcion de vuelta en rx_ping
        XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)rx_ping, PACKET_SIZE * sizeof(u32), XAXIDMA_DEVICE_TO_DMA);

        // 3. El CPU procesa los datos de rx_pong y prepara tx_pong
        process_audio(rx_pong, tx_pong, PACKET_SIZE);

        // 4. Esperar que el DMA termine de transmitir el TX anterior
        while (XAxiDma_Busy(&AxiDma, XAXIDMA_DMA_TO_DEVICE)) {}
        Xil_DCacheFlushRange((UINTPTR)tx_pong, PACKET_SIZE * sizeof(u32));
        
        // 5. Iniciar la transmision de tx_pong hacia el PL
        XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)tx_pong, PACKET_SIZE * sizeof(u32), XAXIDMA_DMA_TO_DEVICE);
    }

    return XST_SUCCESS;
}