#include "xparameters.h"
#include "xgpio.h"
#include "xil_printf.h"
#include "sleep.h"
#include "xil_io.h"
#include "xiltimer.h"
#include "xil_mmu.h"
#include "ipc.h"

// LVGL & UI
#include "ili9341.h"
#include "lvgl/lvgl.h"
#include "lvgl/include/lvgl/core/lv_init.h"
#include "lvgl/include/lvgl/core/lv_timer.h"
#include "lvgl/include/lvgl/display/lv_display.h"
#include "lvgl/include/lvgl/tick/lv_tick.h"
#include "ui.h"

#define GPIO_SW_DEV_ID      XPAR_XGPIO_1_BASEADDR

#define PRESIONADO          1
#define SOLTADO             0

XGpio GpioPedal;    

// Funciones para LVGL y Encoders
static int16_t enc_prev[3] = {0, 0, 0};
static int16_t enc_delta(int n) {
    int16_t now = (int16_t)(Xil_In32(0x60000000 + 0x40 + (n)*4) & 0xFFFF);
    int16_t d   = (int16_t)(now - enc_prev[n]);
    enc_prev[n] = now;
    return d;
}

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

// ---------------------------------------------------------
// DESPERTADOR DEL NÚCLEO 1 (Ensamblador Baremetal)
// ---------------------------------------------------------
#define A9_CPU1_START_ADDR 0xFFFFFFF0

void WakeUpCore1() {
    xil_printf("CORE 0: Despertando al Nucleo 1...\r\n");
    
    // El Núcleo 1 arrancará ejecutando el código desde la dirección de su DDR (0x10000000)
    Xil_Out32(A9_CPU1_START_ADDR, 0x10000000);
    
    // Instrucción en ensamblador: SEV (Send Event) para despertar el procesador dormido
    __asm__("sev");
    
    // Esperar a que el Núcleo 1 avise por OCM que ya terminó de encender
    while(IPC->core1_ready == 0) {
        usleep(1000);
    }
    xil_printf("CORE 0: Nucleo 1 Confirmado! El sistema Dual-Core esta vivo.\r\n");
}

int main() {
    int Status;

    // Deshabilitar caché para la región OCM (0xFFFF0000) - 0x14de2 = Strongly Ordered / Non-Cacheable
    Xil_SetTlbAttributes(0xFFFF0000, 0x14de2);

    // --- 1. Inicializar IPC (Dejarlo en cero) ---
    IPC->hw_mode = 0;
    IPC->sd_recording = 0;
    IPC->loop_index = 0;
    IPC->loop_length = 0;
    IPC->core1_ready = 0;

    // --- 2. Inicializar GPIO (Botones Locales) ---
    Status = XGpio_Initialize(&GpioPedal, GPIO_SW_DEV_ID);
    if (Status != XST_SUCCESS) {
        xil_printf("Fallo GPIO\r\n");
        return XST_FAILURE;
    }
    XGpio_SetDataDirection(&GpioPedal, 1, 0xFFFFFFFF);

    // --- 3. Init Pantalla y LVGL ---
    xil_printf("Init Pantalla...\r\n");
    if (ili9341_init() != 0) return XST_FAILURE;

    lv_init();
    lv_tick_set_cb(lvgl_time_get);

    lv_display_t * disp = lv_display_create(240, 320); // Tamaño físico nativo (Vertical)
    lv_display_set_flush_cb(disp, my_flush_cb);
    lv_display_set_rotation(disp, LV_DISPLAY_ROTATION_270); // Lo giramos a horizontal

    static uint8_t buf1[240 * 10 * 2]; // 10 líneas del lado corto
    lv_display_set_buffers(disp, buf1, NULL, sizeof(buf1), LV_DISPLAY_RENDER_MODE_PARTIAL);

    ui_init();
    xil_printf("UI Lista.\r\n");

    // --- 4. ENCENDER NÚCLEO 1 ---
    WakeUpCore1();

    // ==========================================================
    // BUCLE PRINCIPAL CORE 0 (EXCLUSIVO PARA LA INTERFAZ)
    // ==========================================================
    int switches_init = XGpio_DiscreteRead(&GpioPedal, 1);
    int last_pedal = (switches_init & 0x02) ? PRESIONADO : SOLTADO;
    int last_sd_button = (switches_init & 0x01) ? 1 : 0;
    
    static uint32_t pedal_debounce_time = 0;
    static uint32_t sd_debounce_time = 0;

    while (1) {
        uint32_t now = lvgl_time_get();

        // --- LECTURA DE BOTONES ---
        int switches = XGpio_DiscreteRead(&GpioPedal, 1);
        int pedal = (switches & 0x02) ? PRESIONADO : SOLTADO; // Bit 1
        int sd_button = (switches & 0x01) ? 1 : 0; // Bit 0

        // Maquina de estados del pedal (SW1) - Actualiza memoria compartida
        if (pedal != last_pedal && (now - pedal_debounce_time > 200)) { 
            pedal_debounce_time = now;
            
            if (pedal == PRESIONADO) {
                if (IPC->hw_mode == 0) { // IDLE -> REC
                    IPC->hw_mode = 1;
                    xil_printf("CORE 0: [REC] Enviado al Nucleo 1\r\n");
                } else if (IPC->hw_mode == 2) { // PLAY -> OVERDUB
                    IPC->hw_mode = 3;
                    xil_printf("CORE 0: [OVERDUB] Enviado al Nucleo 1\r\n");
                } else if (IPC->hw_mode == 3) { // OVERDUB -> PLAY
                    IPC->hw_mode = 2;
                    xil_printf("CORE 0: [PLAY] Enviado al Nucleo 1\r\n");
                }
            } else { // SOLTADO
                if (IPC->hw_mode == 1) { // REC -> PLAY
                    IPC->hw_mode = 2;
                    xil_printf("CORE 0: [PLAY] Enviado al Nucleo 1\r\n");
                }
            }
            last_pedal = pedal;
        }

        // Grabar a SD activado por Switch físico
        if (sd_button != last_sd_button && (now - sd_debounce_time > 200)) {
            sd_debounce_time = now;
            if (sd_button == 1 && IPC->sd_recording == 0) {
                xil_printf("CORE 0: Comando iniciar grabado enviado al Nucleo 1\r\n");
                IPC->sd_recording = 1;
            } else if (sd_button == 0 && IPC->sd_recording == 1) {
                xil_printf("CORE 0: Comando detener grabado enviado al Nucleo 1\r\n");
                IPC->sd_recording = 0;
            }
            last_sd_button = sd_button;
        }

        // --- MANEJO DE LA INTERFAZ GRÁFICA ---
        // Extraemos variables seguras desde la RAM compartida del Núcleo 1
        ui_update_status(IPC->hw_mode, (IPC->sd_recording == 1));
        ui_update_progress(IPC->loop_index, IPC->loop_length);

        int e0_d = enc_delta(0); int e0_c = enc_button_clicked(0);
        int e1_d = enc_delta(1); int e1_c = enc_button_clicked(1);
        ui_handle_input(e0_d, e0_c, e1_d, e1_c);
        
        lv_timer_handler();

    } // Fin while(1)

    return XST_SUCCESS;
}