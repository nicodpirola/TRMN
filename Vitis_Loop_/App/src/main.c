#include "xparameters.h"
#include "xgpio.h"
#include "xil_printf.h"
#include "sleep.h"
#include "xil_io.h"
#include "xiltimer.h"
#include "xil_mmu.h"
#include "ipc.h"
#include "fx_hardware.h"

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
//Corrección color y renderizado
void my_flush_cb(lv_display_t * display, const lv_area_t * area, uint8_t * px_map) { 
    xil_printf("DEBUG: my_flush_cb llamado.\r\n");
    uint32_t px_count = (area->x2 - area->x1 + 1) * (area->y2 - area->y1 + 1);
    uint16_t * buf16 = (uint16_t *)px_map;
    for(uint32_t i = 0; i < px_count; i++) {
        buf16[i] = (buf16[i] << 8) | (buf16[i] >> 8);
    }
    
    xil_printf("DEBUG: Enviando pixeles a SPI...\r\n");
    ili9341_flush_region(area->x1, area->y1, area->x2, area->y2, px_map);
    xil_printf("DEBUG: Pixeles enviados.\r\n");
    lv_display_flush_ready(display);
}

// ---------------------------------------------------------
// DESPERTADOR DEL NÚCLEO 1 (Ensamblador Baremetal)
// ---------------------------------------------------------
#define A9_CPU1_START_ADDR 0xFFFFFFF0

void WakeUpCore1() {
    xil_printf("CORE 0: Despertando al Nucleo 1...\r\n");

    /* PARCHE ANTIGRAVITY PARA ARRANQUE QSPI: 
       El FSBL dejo al nucleo 1 en un bucle en 0xFFFFFF00.
       Sobrescribimos ese bucle con un salto directo a 0x10000000.
       0xE51FF004 = 'ldr pc, [pc, #-4]' (Carga el PC con el valor que esta en 0xFFFFFF04) */
    Xil_Out32(0xFFFFFF00, 0xE51FF004); 
    Xil_Out32(0xFFFFFF04, 0x10000000); 

    /* Mantenemos el buzon original para cuando arrancamos por JTAG */
    Xil_Out32(A9_CPU1_START_ADDR, 0x10000000);  
    dmb();
    
    __asm__("sev"); // Instrucción en ensamblador SEV (Send Event)
    while(IPC->core1_ready == 0) { // Esperar a que el Núcleo 1 avise por OCM que ya terminó de encender
        usleep(1000);
    }
    xil_printf("CORE 0: Nucleo 1 prendido\r\n");
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

    // --- 3.5 Inicializar Hardware DSP (PL) ---
    hw_dsp_init();

    // --- 4. ENCENDER NÚCLEO 1 ---
    WakeUpCore1();

    // --- 5. INICIALIZAR LVGL Y UI (¡SIEMPRE DESPUÉS DEL NÚCLEO 1!) ---
    lv_init();
    lv_tick_set_cb(lvgl_time_get);

    lv_display_t * disp = lv_display_create(240, 320); // Tamaño físico nativo (Vertical)
    lv_display_set_flush_cb(disp, my_flush_cb);
    lv_display_set_rotation(disp, LV_DISPLAY_ROTATION_270); // Lo giramos a horizontal

    static uint8_t buf1[240 * 10 * 2] __attribute__((aligned(32))); // 10 líneas del lado corto alineadas a 32 bytes
    lv_display_set_buffers(disp, buf1, NULL, sizeof(buf1), LV_DISPLAY_RENDER_MODE_PARTIAL);

    ui_init();
    xil_printf("UI Lista.\r\n");

    // ==========================================================
    // BUCLE PRINCIPAL CORE 0 (EXCLUSIVO PARA LA INTERFAZ)
    // ==========================================================
    int switches_init = XGpio_DiscreteRead(&GpioPedal, 1);
    int last_pedal = (switches_init & 0x02) ? PRESIONADO : SOLTADO;
    
    static uint32_t pedal_debounce_time = 0;
    
    // Variables para activar grabación SD mediante Long Press (Encoder 3)
    static uint32_t enc2_press_start = 0;
    static int enc2_is_pressed = 0;
    static int enc2_action_done = 0;

    while (1) {
        uint32_t now = lvgl_time_get();

        // LECTURA DE BOTONES
        int switches = XGpio_DiscreteRead(&GpioPedal, 1);
        xil_printf("Valor RAW de switches: %d\r\n", switches);
        
        int pedal = (switches & 0x02) ? PRESIONADO : SOLTADO; // Bit 1
        int enc2_raw = ((switches & (1 << 4)) == 0) ? 1 : 0; // Bit 4 es el Encoder 2 (Active Low)

        // Maquina de estados del pedal (memoria compartida)
        if (pedal != last_pedal && (now - pedal_debounce_time > 200)) { 
            pedal_debounce_time = now;
            
            if (pedal == PRESIONADO) {
                if (IPC->hw_mode == 0) { //IDLE -> REC
                    IPC->hw_mode = 1;
                    xil_printf("CORE 0: [REC] Enviado al Nucleo 1\r\n");
                } else if (IPC->hw_mode == 2) { //PLAY -> OVERDUB
                    IPC->hw_mode = 3;
                    xil_printf("CORE 0: [OVERDUB] Enviado al Nucleo 1\r\n");
                } else if (IPC->hw_mode == 3) { //OVERDUB -> PLAY
                    IPC->hw_mode = 2;
                    xil_printf("CORE 0: [PLAY] Enviado al Nucleo 1\r\n");
                }
            } else { // SOLTADO
                if (IPC->hw_mode == 1) { //REC -> PLAY
                    IPC->hw_mode = 2;
                    xil_printf("CORE 0: [PLAY] Enviado al Nucleo 1\r\n");
                }
            }
            last_pedal = pedal;
        }

        // Grabar a SD activado por pulsación larga del Encoder 2 (1 segundo)
        if (enc2_raw == 1) { // Está presionado
            if (!enc2_is_pressed) {
                enc2_is_pressed = 1;
                enc2_press_start = now;
                enc2_action_done = 0;
            } else {
                if (!enc2_action_done && (now - enc2_press_start >= 1000)) { // 1000 ms
                    enc2_action_done = 1; 
                    if (IPC->sd_recording == 0) {
                        xil_printf("CORE 0: Iniciar grabado SD (Pulsacion Larga)\r\n");
                        IPC->sd_recording = 1;
                    } else {
                        xil_printf("CORE 0: Detener grabado SD (Pulsacion Larga)\r\n");
                        IPC->sd_recording = 0;
                    }
                }
            }
        } else {
            // Soltado
            enc2_is_pressed = 0;
        }

        //MANEJO DE LA INTERFAZ GRÁFICA
        ui_update_status(IPC->hw_mode, (IPC->sd_recording == 1)); 
        ui_update_progress(IPC->loop_index, IPC->loop_length);

        xil_printf("DEBUG: Leyendo encoders...\r\n");
        int e0_d = enc_delta(0); int e0_c = enc_button_clicked(0);
        int e1_d = enc_delta(1); int e1_c = enc_button_clicked(1);
        ui_handle_input(e0_d, e0_c, e1_d, e1_c);
        
        xil_printf("DEBUG: Entrando a lv_timer_handler()...\r\n");
        lv_timer_handler();
        xil_printf("DEBUG: Saliendo de lv_timer_handler()...\r\n");
    }
    return XST_SUCCESS;
}