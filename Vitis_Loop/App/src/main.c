#include "xparameters.h"
#include "xaxidma.h"
#include "xgpio.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "xil_types.h"
#include "xil_io.h"

// ==========================================================
// DEFINICIONES DE HARDWARE (Ajustar segun tu diseno de Vivado)
// ==========================================================
// Busca estos nombres exactos en tu xparameters.h si el compilador se queja.
// Usualmente se llaman XPAR_AXI_DMA_0_DEVICE_ID y XPAR_AXI_GPIO_0_DEVICE_ID
#define DMA_DEV_ID      XPAR_XAXIDMA_0_BASEADDR
#define GPIO_DEV_ID     XPAR_XGPIO_0_BASEADDR

// Direcciones Base (Desde tb_zynq.sv)
#define I2S_RX_BASE     0x43C00000
#define I2S_TX_BASE     0x43C10000
#define GPIO_MIXER_BASE 0x41200000
#define DMA_BASE        0x40400000

// ==========================================================
// CONFIGURACION DEL LOOPER
// ==========================================================
// Direccion en la RAM DDR para guardar audio (Ej: 16MB de offset para estar seguros)
// La DDR en Zynq-7000 usualmente empieza en 0x00100000.
#define AUDIO_BUFFER_BASEADDR 0x10000000 
#define MAX_SAMPLES           441000 // Aprox 10 segundos a 44.1kHz
#define PRESIONADO            1      // Ajustar si tu boton es pull-up (0) o pull-down (1)
#define SOLTADO               0

// ==========================================================
// VARIABLES GLOBALES (Handles de los IPs)
// ==========================================================
XAxiDma AxiDma;     // Controlador del DMA
XGpio GpioPedal;    // Controlador del Boton/Pedal
u32 *AudioBuffer = (u32 *)AUDIO_BUFFER_BASEADDR; 

// ==========================================================
// FUNCION PRINCIPAL
// ==========================================================
int main() {
    int status;
    int estado = 0; // 0: Reposo, 1: Grabando, 2: Reproduciendo
    u32 muestras_grabadas = 0;

    xil_printf("\r\n--- Iniciando Sistema Looper ---\r\n");

    // =========================================================================
    // TRADUCCION DE CONFIGURACIONES AXI LITE (Desde tb_zynq.sv)
    // =========================================================================

    // 1. Configurar IP I2S (Timing y Canales)
    xil_printf("Configurando divisores I2S para ~52kHz...\r\n");
    Xil_Out32(I2S_RX_BASE + 0x20, 0x00400002); // RX Timing
    Xil_Out32(I2S_TX_BASE + 0x20, 0x00400002); // TX Timing
    Xil_Out32(I2S_RX_BASE + 0x0C, 0x00000001); // RX Ctrl
    Xil_Out32(I2S_TX_BASE + 0x0C, 0x00000001); // TX Ctrl

    // 2. Configurar AXI GPIO (Looper Mixer)
    xil_printf("Inicializando Looper Mixer en MODO IDLE...\r\n");
    Xil_Out32(GPIO_MIXER_BASE + 0x00, 0x00000000);

    // 3. Configurar AXI DMA (Soft Reset y Arranque S2MM/MM2S)
    xil_printf("Inicializando AXI DMA (Reset y Start)...\r\n");
    Xil_Out32(DMA_BASE + 0x30, 0x00000004); // S2MM Reset
    for(volatile int i = 0; i < 5000; i++); // Breve espera
    Xil_Out32(DMA_BASE + 0x30, 0x00000001); // S2MM Start

    Xil_Out32(DMA_BASE + 0x00, 0x00000004); // MM2S Reset
    for(volatile int i = 0; i < 5000; i++); // Breve espera
    Xil_Out32(DMA_BASE + 0x00, 0x00000001); // MM2S Start

    // 4. Encender modulos I2S
    xil_printf("Encendiendo modulos I2S...\r\n");
    Xil_Out32(I2S_TX_BASE + 0x08, 0x00000001); // TX Core Enable
    Xil_Out32(I2S_RX_BASE + 0x08, 0x00000001); // RX Core Enable

    // =========================================================================

    // 1. Inicializar el GPIO del Pedal
    status = XGpio_Initialize(&GpioPedal, GPIO_DEV_ID);
    if (status != XST_SUCCESS) {
        xil_printf("Fallo al inicializar GPIO.\r\n");
        return XST_FAILURE;
    }
    XGpio_SetDataDirection(&GpioPedal, 1, 0xFFFFFFFF); // Canal 1 como Entrada

    // 2. Inicializar DMA
    XAxiDma_Config *CfgPtr;
    CfgPtr = XAxiDma_LookupConfig(DMA_DEV_ID);
    if (!CfgPtr) {
        xil_printf("No se encontro configuracion para el DMA.\r\n");
        return XST_FAILURE;
    }

    status = XAxiDma_CfgInitialize(&AxiDma, CfgPtr);
    if (status != XST_SUCCESS) {
        xil_printf("Fallo al inicializar DMA.\r\n");
        return XST_FAILURE;
    }

    // Int del DMA deshabilitadas (polling, a cambiar)
    XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
    XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

    xil_printf("Hardware Inicializado. Esperando pedal...\r\n");

    // 3. Bucle Principal (El Looper)
    while(1) {
        // Leer el estado del boton/pedal (Canal 1 de nuestro GPIO)
        int pedal = XGpio_DiscreteRead(&GpioPedal, 1); 

        // Transicion: Reposo -> Grabando
        if (pedal == PRESIONADO && estado == 0) {
            xil_printf(">>> GRABANDO...\r\n");
            estado = 1;
            
            // Vaciar cache antes de que el DMA escriba en la RAM (Crucial en procesadores ARM con Cache)
            Xil_DCacheInvalidateRange((UINTPTR)AudioBuffer, MAX_SAMPLES * sizeof(u32));

            // Ordenar al DMA que empiece a recibir (S2MM - Stream to Memory Map)
            XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)AudioBuffer, MAX_SAMPLES * sizeof(u32), XAXIDMA_DEVICE_TO_DMA);
        } 
        
        // Transicion: Grabando -> Reproduciendo
        else if (pedal == SOLTADO && estado == 1) {
            xil_printf("<<< REPRODUCIENDO LOOP...\r\n");
            estado = 2;
            
            // Pausar/Abortar transferencia actual del DMA si la solto antes del maximo
            // Nota: En un sistema robusto, aqui se calcula cuantos bytes reales llegaron usando los registros del DMA.
            // Para simplificar, asumiremos un valor fijo de prueba por ahora.
            muestras_grabadas = MAX_SAMPLES / 2; // (Simulamos que grabo la mitad)
        }
        
        // Estado: Reproduccion Continua
        if (estado == 2) {
            // Revisar si el DMA esta ocupado enviando la reproduccion actual
            if (!XAxiDma_Busy(&AxiDma, XAXIDMA_DMA_TO_DEVICE)) {
                
                // Vaciar cache de la CPU hacia la RAM por si el procesador toco el buffer
                Xil_DCacheFlushRange((UINTPTR)AudioBuffer, muestras_grabadas * sizeof(u32));

                // Iniciar nueva transferencia hacia la salida de audio (MM2S)
                XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)AudioBuffer, muestras_grabadas * sizeof(u32), XAXIDMA_DMA_TO_DEVICE);
            }
        }
    }

    return XST_SUCCESS;
}