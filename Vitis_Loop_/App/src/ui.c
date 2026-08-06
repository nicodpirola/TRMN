#include "ui.h"
#include <stdio.h>
#include "fx_hardware.h"
#include "synth_delay_control.h"

#define FX_BASE 0x60000000

// LVGL objects
static lv_obj_t * header_cont;
static lv_obj_t * label_status;
static lv_obj_t * label_sd;
static lv_obj_t * bar_progress;

static lv_obj_t * col_left;
static lv_obj_t * col_right;

static lv_obj_t * fx_items[MAX_EFFECTS];
static lv_obj_t * param_items[MAX_FX_PARAMS];
static lv_obj_t * param_labels[MAX_FX_PARAMS];
static lv_obj_t * param_bars[MAX_FX_PARAMS];

// State
static ui_focus_state_t ui_focus = FOCUS_MAIN_MENU;
static int selected_fx_idx = 0;
static int selected_param_idx = 0;

// Definición de Efectos y Parámetros Iniciales
const int num_effects = 2;
effect_module_t effects_list[MAX_EFFECTS] = {
    {
        .name = "Synth",
        .param_count = 3,
        .params = {
            {"Status (0=OFF)", 0, 1, 1}, // 0:OFF, 1:ON
            {"Dry (0=Muted)", 0, 1, 1}, // 0:Muted (Synth Only), 1:Active (Synth+Dry)
            {"Patch", 0, 3, 0} // 0:Saw, 1:Minimoog, 2:3 Saws, 3:Sub
        }
    },
    {
        .name = "Eco (Delay)",
        .param_count = 4,
        .params = {
            {"Status (0=OFF)", 0, 1, 0}, // 0:OFF, 1:ON
            {"Time (ms)", 10, 680, 250},
            {"Feedback (%)", 0, 90, 35},
            {"Wet (%)", 0, 100, 25}
        }
    }
};

static void ui_refresh_selection(void) {
    lv_color_t color_bg_idle = lv_color_hex(0x222222);
    lv_color_t color_bg_focused = lv_color_hex(0x444444);
    lv_color_t color_bg_active = lv_color_hex(0xFFFFFF);
    lv_color_t color_bg_active_param = lv_color_hex(0xFFFFFF);

    // Refrescar Lista Principal
    for(int i=0; i<num_effects; i++) {
        if (i == selected_fx_idx) {
            if (ui_focus == FOCUS_MAIN_MENU) {
                lv_obj_set_style_bg_color(fx_items[i], color_bg_active, 0);
                lv_obj_set_style_text_color(fx_items[i], lv_color_hex(0x000000), 0); 
            } else {
                lv_obj_set_style_bg_color(fx_items[i], color_bg_focused, 0); 
                lv_obj_set_style_text_color(fx_items[i], lv_color_hex(0xFFFFFF), 0);
            }
        } else {
            lv_obj_set_style_bg_color(fx_items[i], color_bg_idle, 0);
            lv_obj_set_style_text_color(fx_items[i], lv_color_hex(0xFFFFFF), 0); 
        }
    }

    // Refrescar Parámetros
    int param_count = effects_list[selected_fx_idx].param_count;
    for(int i=0; i<MAX_FX_PARAMS; i++) {
        if (i < param_count) {
            if (i == selected_param_idx && ui_focus == FOCUS_PARAM_MENU) {
                lv_obj_set_style_bg_color(param_items[i], color_bg_active_param, 0);
                lv_obj_set_style_text_color(param_items[i], lv_color_hex(0x000000), 0); 
                // Colores de la barrita seleccionada: Fondo Gris Claro, Relleno Negro
                lv_obj_set_style_bg_color(param_bars[i], lv_color_hex(0xDDDDDD), LV_PART_MAIN);
                lv_obj_set_style_bg_color(param_bars[i], lv_color_hex(0x000000), LV_PART_INDICATOR);
            } else {
                lv_obj_set_style_bg_color(param_items[i], color_bg_idle, 0);
                lv_obj_set_style_text_color(param_items[i], lv_color_hex(0xFFFFFF), 0); 
                // Colores de la barrita inactiva: Fondo Gris Oscuro, Relleno Plata
                lv_obj_set_style_bg_color(param_bars[i], lv_color_hex(0x444444), LV_PART_MAIN);
                lv_obj_set_style_bg_color(param_bars[i], lv_color_hex(0xAAAAAA), LV_PART_INDICATOR);
            }
            
            // Actualizar la barra visual
            lv_bar_set_value(param_bars[i], effects_list[selected_fx_idx].params[i].current_val, LV_ANIM_OFF);
        }
    }
}

static void ui_refresh_param_panel(void) {
    int param_count = effects_list[selected_fx_idx].param_count;
    for(int i=0; i<MAX_FX_PARAMS; i++) {
        if (i < param_count) {
            lv_obj_clear_flag(param_items[i], LV_OBJ_FLAG_HIDDEN);
            char buf[64];
            sprintf(buf, "%s: %d", effects_list[selected_fx_idx].params[i].name, effects_list[selected_fx_idx].params[i].current_val);
            lv_label_set_text(param_labels[i], buf);
            
            lv_bar_set_range(param_bars[i], effects_list[selected_fx_idx].params[i].min_val, effects_list[selected_fx_idx].params[i].max_val);
            lv_bar_set_value(param_bars[i], effects_list[selected_fx_idx].params[i].current_val, LV_ANIM_OFF);
        } else {
            lv_obj_add_flag(param_items[i], LV_OBJ_FLAG_HIDDEN);
        }
    }
    
    // Limitar índice de parámetros
    if (selected_param_idx >= param_count) selected_param_idx = param_count - 1;
    if (selected_param_idx < 0) selected_param_idx = 0;
}

void ui_init(void) {
    lv_obj_t * screen = lv_screen_active();
    lv_obj_set_style_bg_color(screen, lv_color_hex(0x000000), 0); // Fondo negro total

    // --- HEADER ---
    header_cont = lv_obj_create(screen);
    lv_obj_set_size(header_cont, 320, 36);
    lv_obj_set_pos(header_cont, 0, 0);
    lv_obj_set_style_bg_color(header_cont, lv_color_hex(0x111111), 0);
    lv_obj_set_style_border_width(header_cont, 0, 0);
    lv_obj_set_style_radius(header_cont, 0, 0);
    lv_obj_set_style_pad_all(header_cont, 0, 0);
    
    label_status = lv_label_create(header_cont);
    lv_obj_align(label_status, LV_ALIGN_TOP_LEFT, 5, 2);
    lv_label_set_text(label_status, "IDLE");
    lv_obj_set_style_text_color(label_status, lv_color_hex(0xAAAAAA), 0);
    
    label_sd = lv_label_create(header_cont);
    lv_obj_align(label_sd, LV_ALIGN_TOP_RIGHT, -5, 2);
    lv_label_set_text(label_sd, "SD: LISTA");
    lv_obj_set_style_text_color(label_sd, lv_color_hex(0x555555), 0);
    
    bar_progress = lv_bar_create(header_cont);
    lv_obj_set_size(bar_progress, 310, 10);
    lv_obj_align(bar_progress, LV_ALIGN_BOTTOM_MID, 0, -2);
    lv_bar_set_range(bar_progress, 0, 100);
    lv_bar_set_value(bar_progress, 0, LV_ANIM_OFF);
    lv_obj_set_style_bg_color(bar_progress, lv_color_hex(0x333333), LV_PART_MAIN); // Fondo oscuro
    lv_obj_set_style_bg_color(bar_progress, lv_color_hex(0xFFFFFF), LV_PART_INDICATOR); // Progreso blanco
    
    // --- COLUMNA IZQUIERDA (MAIN MENU) ---
    col_left = lv_obj_create(screen);
    lv_obj_set_size(col_left, 110, 204);
    lv_obj_set_pos(col_left, 0, 36);
    lv_obj_set_style_bg_color(col_left, lv_color_hex(0x1A1A1A), 0);
    lv_obj_set_style_border_width(col_left, 0, 0);
    lv_obj_set_style_radius(col_left, 0, 0);
    lv_obj_set_style_pad_all(col_left, 5, 0);
    
    for(int i=0; i<MAX_EFFECTS; i++) {
        fx_items[i] = lv_obj_create(col_left);
        lv_obj_set_size(fx_items[i], 100, 34);
        lv_obj_set_pos(fx_items[i], 0, i * 38);
        lv_obj_set_style_border_width(fx_items[i], 0, 0);
        lv_obj_set_style_radius(fx_items[i], 4, 0);
        lv_obj_set_style_pad_all(fx_items[i], 0, 0);
        
        lv_obj_t * lbl = lv_label_create(fx_items[i]);
        if (i < num_effects) {
            lv_label_set_text(lbl, effects_list[i].name);
        }
        //lv_obj_center(lbl);
        lv_obj_align(lbl, LV_ALIGN_LEFT_MID, 5, 0);
        if (i >= num_effects) {
            lv_obj_add_flag(fx_items[i], LV_OBJ_FLAG_HIDDEN);
        }
    }
    
    // --- COLUMNA DERECHA (PARAM MENU) ---
    col_right = lv_obj_create(screen);
    lv_obj_set_size(col_right, 210, 204);
    lv_obj_set_pos(col_right, 110, 36);
    lv_obj_set_style_bg_color(col_right, lv_color_hex(0x0A0A0A), 0);
    lv_obj_set_style_border_width(col_right, 0, 0);
    lv_obj_set_style_radius(col_right, 0, 0);
    lv_obj_set_style_pad_all(col_right, 5, 0);
    
    for(int i=0; i<MAX_FX_PARAMS; i++) {
        param_items[i] = lv_obj_create(col_right);
        lv_obj_set_size(param_items[i], 200, 36);
        lv_obj_set_pos(param_items[i], 0, i * 40);
        lv_obj_set_style_border_width(param_items[i], 0, 0);
        lv_obj_set_style_radius(param_items[i], 4, 0);
        lv_obj_set_style_pad_all(param_items[i], 0, 0);
        
        param_labels[i] = lv_label_create(param_items[i]);
        lv_obj_align(param_labels[i], LV_ALIGN_TOP_LEFT, 5, 2);
        
        param_bars[i] = lv_bar_create(param_items[i]);
        lv_obj_set_size(param_bars[i], 190, 8);
        lv_obj_align(param_bars[i], LV_ALIGN_BOTTOM_MID, 0, -4);
        lv_obj_set_style_bg_color(param_bars[i], lv_color_hex(0xFFFFFF), LV_PART_INDICATOR);
    }
    
    ui_refresh_param_panel();
    ui_refresh_selection();
}

void ui_update_status(int hw_mode, int sd_recording) { 
    if (hw_mode == 0) {
        lv_label_set_text(label_status, "BYPASS");
        lv_obj_set_style_text_color(label_status, lv_color_hex(0xAAAAAA), 0);
    } else if (hw_mode == 1) {
        lv_label_set_text(label_status, "RECORDING");
        lv_obj_set_style_text_color(label_status, lv_color_hex(0xFF0000), 0); // Rojo
    } else if (hw_mode == 2) {
        lv_label_set_text(label_status, "PLAYING");
        lv_obj_set_style_text_color(label_status, lv_color_hex(0x00FF00), 0); // Verde
    } else if (hw_mode == 3) {
        lv_label_set_text(label_status, "OVERDUB");
        lv_obj_set_style_text_color(label_status, lv_color_hex(0xFF9900), 0); // Naranja
    }

    if (sd_recording) {
        lv_label_set_text(label_sd, "SD: REC...");
        lv_obj_set_style_text_color(label_sd, lv_color_hex(0xFFFFFF), 0);
    } else {
        lv_label_set_text(label_sd, "SD: LISTA");
        lv_obj_set_style_text_color(label_sd, lv_color_hex(0xFFFFFF), 0);
    }
}

void ui_update_progress(uint32_t loop_index, uint32_t loop_length) {
    if (loop_length > 0) {
        // Calcular porcentaje
        uint32_t pct = (loop_index * 100) / loop_length;
        if (pct > 100) pct = 100;
        lv_bar_set_value(bar_progress, pct, LV_ANIM_OFF);
    } else {
        lv_bar_set_value(bar_progress, 0, LV_ANIM_OFF);
    }
}

void ui_handle_input(int enc0_delta, int enc0_click, int enc1_delta, int enc1_click) {
    int needs_refresh = 0;
    
    if (ui_focus == FOCUS_MAIN_MENU) {
        if (enc0_delta != 0) {
            selected_fx_idx += enc0_delta;
            if (selected_fx_idx < 0) selected_fx_idx = 0;
            if (selected_fx_idx >= num_effects) selected_fx_idx = num_effects - 1;
            ui_refresh_param_panel();
            needs_refresh = 1;
        }
        if (enc0_click) {
            ui_focus = FOCUS_PARAM_MENU;
            selected_param_idx = 0; // Al entrar, siempre focusear el primer parametro
            needs_refresh = 1;
        }
    } else if (ui_focus == FOCUS_PARAM_MENU) {
        if (enc0_delta != 0) {
            selected_param_idx += enc0_delta;
            int max_idx = effects_list[selected_fx_idx].param_count - 1;
            if (selected_param_idx < 0) selected_param_idx = 0;
            if (selected_param_idx > max_idx) selected_param_idx = max_idx;
            needs_refresh = 1;
        }
        
        if (enc1_delta != 0) {
            int min_val = effects_list[selected_fx_idx].params[selected_param_idx].min_val;
            int max_val = effects_list[selected_fx_idx].params[selected_param_idx].max_val;
            
            // Adaptar salto según el rango (si es un selector de opciones pequeño, salta de a 1)
            int step = ((max_val - min_val) <= 10) ? 1 : 5;
            
            int val = effects_list[selected_fx_idx].params[selected_param_idx].current_val;
            val += enc1_delta * step;
            
            if (val < min_val) val = min_val;
            if (val > max_val) val = max_val;
            effects_list[selected_fx_idx].params[selected_param_idx].current_val = val;
            
            // --- Actualización de Hardware AXI (Synth & Delay Desacoplados) ---
            
            // 1. Leemos el estado global de todos los parametros ON/OFF
            int synth_on = effects_list[0].params[0].current_val;
            int dry_on   = effects_list[0].params[1].current_val;
            int delay_on = effects_list[1].params[0].current_val;
            
            // 2. Mapeamos a las banderas del hardware
            int s_on = (synth_on == 1) ? 1 : 0;
            int s_only = (dry_on == 0) ? 1 : 0;
            int d_on = (delay_on == 1) ? 1 : 0;
            
            // Si el synth esta apagado, forzamos s_only a 0 para que pase el audio limpio (Bypass)
            if (s_on == 0) s_only = 0; 
            
            // Enviamos el modo global
            sd_set_mode(FX_BASE, s_on, s_only, d_on);
            
            // 3. Procesamos cambios especificos de cada bloque
            if (selected_fx_idx == 0 && selected_param_idx == 2) {
                // Cambió el parche del sintetizador
                if (val == 0) sd_load_single_saw(FX_BASE);
                else if (val == 1) sd_load_minimoog_patch(FX_BASE);
                else if (val == 2) sd_load_three_saw_patch(FX_BASE);
                else if (val == 3) sd_load_sub_patch(FX_BASE);
            } else if (selected_fx_idx == 1) {
                // Cambiaron los parametros del Eco (Time, Feedback o Wet)
                float t = (float)effects_list[1].params[1].current_val;
                float f = (float)effects_list[1].params[2].current_val / 100.0f;
                float w = (float)effects_list[1].params[3].current_val / 100.0f;
                sd_set_delay(FX_BASE, t, f, w);
            }
            
            // Refresco ultra-rápido solo del label y la barra seleccionada
            char buf[64];
            sprintf(buf, "%s: %d", effects_list[selected_fx_idx].params[selected_param_idx].name, val);
            lv_label_set_text(param_labels[selected_param_idx], buf);
            lv_bar_set_value(param_bars[selected_param_idx], val, LV_ANIM_OFF);
        }
        
        // Escape / Atrás
        if (enc1_click) {
            ui_focus = FOCUS_MAIN_MENU;
            needs_refresh = 1;
        }
    }
    
    if (needs_refresh) {
        ui_refresh_selection();
    }
}