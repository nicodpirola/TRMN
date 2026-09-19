// Main perteneciente al nucleo 0

#include "xparameters.h"
#include "xgpio.h"
#include "xil_printf.h"
#include "sleep.h"
#include "xil_io.h"
#include "xiltimer.h"
#include "xil_mmu.h"
#include "ipc.h"
#include "params.h"

#define FX_BASE 0x60000000

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
static int16_t enc_prev[6] = {0, 0, 0, 0, 0, 0};
static int16_t enc_delta(int n) {
    if (n < 0 || n >= 6) return 0;
    int16_t now = (int16_t)(Xil_In32(0x60000000 + 0x100 + (n)*4) & 0xFFFF);
    int16_t d   = (int16_t)(now - enc_prev[n]);
    enc_prev[n] = now;
    return d;
}

static int enc_button_clicked(int n) {
    static int btn_prev[6] = {0,0,0,0,0,0};
    static int btn_debounce[6] = {0,0,0,0,0,0};
    if (n < 0 || n >= 6) return 0;
    if (btn_debounce[n] > 0) {
        btn_debounce[n]--;
        return 0; 
    }
    int switches = XGpio_DiscreteRead(&GpioPedal, 1);
    int current = ((switches & (1 << (n + 1))) == 0) ? 1 : 0;
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
//Corrección color y flush renderizado
void my_flush_cb(lv_display_t * display, const lv_area_t * area, uint8_t * px_map) { 
    uint32_t px_count = (area->x2 - area->x1 + 1) * (area->y2 - area->y1 + 1);
    uint16_t * buf16 = (uint16_t *)px_map;
    for(uint32_t i = 0; i < px_count; i++) {
        buf16[i] = (buf16[i] << 8) | (buf16[i] >> 8);
    }
    ili9341_flush_region(area->x1, area->y1, area->x2, area->y2, px_map);
    lv_display_flush_ready(display);
}

// DESPERTADOR DEL NÚCLEO 1 
#define A9_CPU1_START_ADDR 0xFFFFFFF0
void WakeUpCore1() {
    xil_printf("CORE 0: Despertando al Nucleo 1...\r\n");

    // PARCHE QSPI: 
        // El FSBL deja al nucleo 1 en un bucle en 0xFFFFFF00
        // Sobrescribimos ese bucle con un salto directo a 0x10000000
        // 0xE51FF004 = 'ldr pc, [pc, #-4]' (Carga el PC con el valor que esta en 0xFFFFFF04)
    Xil_Out32(0xFFFFFF00, 0xE51FF004); 
    Xil_Out32(0xFFFFFF04, 0x10000000); 

    // Mantenemos el buzon original para cuando arrancamos por JTAG
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

    //Deshabilitar cache para la región OCM (0xFFFF0000)
    Xil_SetTlbAttributes(0xFFFF0000, 0x14de2);

    //Init IPC
    IPC->hw_mode = 0;
    IPC->sd_recording = 0;
    IPC->loop_index = 0;
    IPC->loop_length = 0;
    IPC->core1_ready = 0;

    //Init GPIO
    Status = XGpio_Initialize(&GpioPedal, GPIO_SW_DEV_ID);
    if (Status != XST_SUCCESS) {
        xil_printf("Fallo GPIO\r\n");
        return XST_FAILURE;
    }
    XGpio_SetDataDirection(&GpioPedal, 1, 0xFFFFFFFF);

    //Init Pantalla
    xil_printf("Init Pantalla...\r\n");
    if (ili9341_init() != 0) return XST_FAILURE;

    //Despertar nucleo 1
    WakeUpCore1();

    //Init LVGL y UI
    lv_init();
    lv_tick_set_cb(lvgl_time_get);

    lv_display_t * disp = lv_display_create(240, 320); //resolución (vertical)
    lv_display_set_flush_cb(disp, my_flush_cb);
    lv_display_set_rotation(disp, LV_DISPLAY_ROTATION_270); //se cambia a orientación horizontal

    static uint8_t buf1[240 * 10 * 2] __attribute__((aligned(32))); 
    lv_display_set_buffers(disp, buf1, NULL, sizeof(buf1), LV_DISPLAY_RENDER_MODE_PARTIAL);

    ui_init();
    xil_printf("UI Lista.\r\n");

    //Init Synth
    xil_printf("Encendiendo Sintetizador...\r\n");
    params_master_enable(1);
    params_load_wavetables();
    params_set_mode(1, 0, 0); // Arranca en modo Synth + Dry (Coincide con UI)

    int switches_init = XGpio_DiscreteRead(&GpioPedal, 1);
    int last_pedal = ((switches_init & 0x01) == 0) ? PRESIONADO : SOLTADO;
    
    static uint32_t pedal_debounce_time = 0;
    
    // Control grabado SD (SW1 en IO37 / Bit 7)
    static int sw1_prev = 0;
    static uint32_t sw1_debounce_time = 0;

    while (1) {
        uint32_t now = lvgl_time_get();

        // Lectura botones (PULLUP activo: 0 = PRESIONADO, 1 = SUELTO)
        int switches = XGpio_DiscreteRead(&GpioPedal, 1);
        
        int pedal = ((switches & 0x01) == 0) ? PRESIONADO : SOLTADO; // Bit 0 (IO7) - Activo en Bajo
        int sw1_raw = ((switches & (1 << 7)) == 0) ? 1 : 0; // Bit 7 es SW1 (IO37) - Activo en Bajo

        // Maquina de estados del pedal con retencion (IPC)
        if (pedal != last_pedal && (now - pedal_debounce_time > 200)) { 
            pedal_debounce_time = now;
            
            if (pedal == PRESIONADO) { // GND - Pedal presionado/trabado
                if (IPC->hw_mode == 0) { // IDLE -> REC
                    IPC->hw_mode = 1;
                    xil_printf("CORE 0: [REC] Enviado al Nucleo 1\r\n");
                } else if (IPC->hw_mode == 2) { // PLAY -> OVERDUB
                    IPC->hw_mode = 3;
                    xil_printf("CORE 0: [OVERDUB] Enviado al Nucleo 1\r\n");
                }
            } else { // 3.3V - Pedal suelto/destrabado
                if (IPC->hw_mode == 1 || IPC->hw_mode == 3) { // REC u OVERDUB -> PLAY
                    IPC->hw_mode = 2;
                    xil_printf("CORE 0: [PLAY] Enviado al Nucleo 1\r\n");
                }
            }
            last_pedal = pedal;
        }

        // Grabar a SD con SW1 (IO37)
        if (sw1_raw == 1 && sw1_prev == 0 && (now - sw1_debounce_time > 200)) {
            sw1_debounce_time = now;
            if (IPC->sd_recording == 0) {
                xil_printf("CORE 0: Iniciar grabado SD (SW1)\r\n");
                IPC->sd_recording = 1;
            } else {
                xil_printf("CORE 0: Detener grabado SD (SW1)\r\n");
                IPC->sd_recording = 0;
            }
        }
        sw1_prev = sw1_raw;

        // Reset / Parado de loop y volver a standby (Intercambiado con P2: ahora en Bit 11 / IO33)
        int loop_stop_raw = ((switches & (1 << 11)) == 0) ? 1 : 0; // Bit 11 es Stop - Activo en Bajo
        static int loop_stop_prev = 0;
        static uint32_t loop_stop_debounce_time = 0;
        if (loop_stop_raw == 1 && loop_stop_prev == 0 && (now - loop_stop_debounce_time > 200)) {
            loop_stop_debounce_time = now;
            IPC->hw_mode = 0; // Standby / IDLE
            IPC->loop_length = 0;
            IPC->loop_index = 0;
            xil_printf("CORE 0: [RESET] Loop detenido/vaciado y vuelto a Standby\r\n");
        }
        loop_stop_prev = loop_stop_raw;

        // Presets: Intercambiados P1 <-> P3 y P2 <-> Parado de loop
        // P1 -> Bit 12 (IO38)
        // P2 -> Bit 8  (IO36)
        // P3 -> Bit 10 (IO34)
        static const int preset_bits[3] = {12, 8, 10};
        static int sw_slot_pressed[3] = {0, 0, 0};
        static uint32_t sw_slot_press_time[3] = {0, 0, 0};
        static int sw_slot_action_saved[3] = {0, 0, 0};

        for (int k = 0; k < 3; k++) {
            int bit = preset_bits[k];
            int raw = ((switches & (1 << bit)) == 0) ? 1 : 0; // Activo en Bajo (0 = presionado)
            
            if (raw == 1) {
                if (!sw_slot_pressed[k]) {
                    sw_slot_pressed[k] = 1;
                    sw_slot_press_time[k] = now;
                    sw_slot_action_saved[k] = 0;
                } else {
                    // Mantener presionado >= 1.2s para GUARDAR
                    if (!sw_slot_action_saved[k] && (now - sw_slot_press_time[k] >= 1200)) {
                        sw_slot_action_saved[k] = 1;
                        ui_save_preset(k);
                        xil_printf("CORE 0: [PRESET %d] Guardado (Pulsacion Larga)\r\n", k + 1);
                    }
                }
            } else {
                if (sw_slot_pressed[k]) {
                    // Pulsación simple para CARGAR
                    if (!sw_slot_action_saved[k] && (now - sw_slot_press_time[k] >= 50)) {
                        ui_load_preset(k);
                        xil_printf("CORE 0: [PRESET %d] Cargado (Pulsacion Simple)\r\n", k + 1);
                    }
                    sw_slot_pressed[k] = 0;
                }
            }
        }

        //MANEJO DE LA INTERFAZ GRÁFICA
        ui_update_status(IPC->hw_mode, (IPC->sd_recording == 1)); 
        ui_update_progress(IPC->loop_index, IPC->loop_length);

        int e0_d = enc_delta(0);
        int e1_d = enc_delta(1);
        int e2_d = enc_delta(2);
        int e3_d = enc_delta(3);
        int e4_d = enc_delta(4);
        
        static int debug_tick = 0;
        if (debug_tick++ % 150000 == 0) {
            uint32_t raw_enc0 = Xil_In32(0x60000100);
            uint32_t raw_enc1 = Xil_In32(0x60000104);
            xil_printf("AXI RAW ENC0: %08X, ENC1: %08X\r\n", raw_enc0, raw_enc1);
        }

        ui_handle_input(e0_d, e1_d, e2_d, e3_d, e4_d);
        
        lv_timer_handler();
        
        //Debug AXI HW y GPIO
        static uint32_t last_diag_time = 0;
        if (now - last_diag_time >= 3000) {
            last_diag_time = now;
            xil_printf("\r\n--- REPORTE DE DIAGNOSTICO (Cada 3s) ---\r\n");
            xil_printf("GPIO RAW: 0x%04X | Pedal(b0):%d | SD(b7):%d P2(b8):%d SW3(b9):%d | P3(b10):%d Stop(b11):%d P1(b12):%d\r\n",
                       switches,
                       (switches & 0x01) ? 1 : 0,
                       (switches & (1 << 7)) ? 1 : 0,
                       (switches & (1 << 8)) ? 1 : 0,
                       (switches & (1 << 9)) ? 1 : 0,
                       (switches & (1 << 10)) ? 1 : 0,
                       (switches & (1 << 11)) ? 1 : 0,
                       (switches & (1 << 12)) ? 1 : 0);
            xil_printf("----------------------------------------\r\n\r\n");
        }
        
        usleep(5000);
    }
    return XST_SUCCESS;
}