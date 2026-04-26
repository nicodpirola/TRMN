#include "xparameters.h"
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
// MAIN
// ==========================================================
int main() {
    int status;
    xil_printf("\r\n--- Iniciando Sistema Looper (Ping-Pong Polling) ---\r\n");

    // 1. Configurar IP I2S
    xil_printf("Configurando divisores I2S para ~48kHz...\r\n");
    // Divisor = 1 -> SCLK = 12.288M / (2 * (1+1)) = 3.072 MHz -> 48 kHz con 64 bits/frame
    Xil_Out32(I2S_RX_BASE + 0x20, 0x00000001);
    Xil_Out32(I2S_TX_BASE + 0x20, 0x00000001);
    Xil_Out32(I2S_TX_BASE + 0x0C, 0x00000001); // Validez para TX

    // Habilitar canales de audio 0 (0x30)
    Xil_Out32(I2S_RX_BASE + 0x30, 0x00000001); // RX: Mux = 1 (Rutea I2S Ch0 a AXI Stream)
    Xil_Out32(I2S_TX_BASE + 0x30, 0x00000001); // TX: En algunos IPs esto habilita el canal

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

}