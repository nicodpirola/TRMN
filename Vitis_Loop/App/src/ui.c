#include "ui.h"

void ui_init(void) {
    // Crear una pantalla base
    lv_obj_t * screen = lv_screen_active();
    lv_obj_set_style_bg_color(screen, lv_color_hex(0x000000), 0); // Fondo negro

    // Crear un título
    lv_obj_t * label = lv_label_create(screen);
    lv_label_set_text(label, "Theremin FPGA No Funciona");
    lv_obj_align(label, LV_ALIGN_TOP_MID, 0, 10);

    // Crear un Slider para el volumen o frecuencia (ejemplo de interacción)
    lv_obj_t * slider = lv_slider_create(screen);
    lv_obj_set_size(slider, 200, 20);
    lv_obj_align(slider, LV_ALIGN_CENTER, 0, 0);
}