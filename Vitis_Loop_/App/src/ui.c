#include "ui.h"
#include <stdio.h>
#include "fx_hardware.h"
#include "synth_delay_control.h"
#include "params.h"
#include "xil_io.h"

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
const int num_effects = 6;
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
        .name = "Delay",
        .param_count = 4,
        .params = {
            {"Status", 0, 1, 0},
            {"Time(ms)", 10, 680, 250},
            {"FB(%)", 0, 90, 35},
            {"Wet(%)", 0, 100, 25}
        }
    },
    {
        .name = "Chorus",
        .param_count = 4,
        .params = {
            {"Status", 0, 1, 0},
            {"Depth(ms)", 0, 20, 2},
            {"Rate(Hz*10)", 1, 50, 4},
            {"Wet(%)", 0, 100, 50}
        }
    },
    {
        .name = "Flanger",
        .param_count = 4,
        .params = {
            {"Status", 0, 1, 0},
            {"Depth(ms)", 0, 10, 2},
            {"Rate(Hz*10)", 1, 50, 4},
            {"FB(%)", 0, 90, 50}
        }
    },
    {
        .name = "Tremolo",
        .param_count = 3,
        .params = {
            {"Status", 0, 1, 0},
            {"Depth(%)", 0, 100, 50},
            {"Rate(Hz*10)", 1, 100, 50}
        }
    },
    {
        .name = "Distorsion",
        .param_count = 4,
        .params = {
            {"Status", 0, 1, 0},
            {"Drive", 1, 20, 5},
            {"Tone(%)", 0, 100, 50},
            {"Level(%)", 0, 100, 20}
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
            // Obligar a la columna a scrollear para mostrar este elemento
            lv_obj_scroll_to_view(fx_items[i], LV_ANIM_ON);
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
                
                // Obligar a la columna derecha a scrollear
                lv_obj_scroll_to_view(param_items[i], LV_ANIM_ON);
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
            
            // --- Actualización de Hardware AXI V3 ---
            uint32_t fx_en = 0;
            
            // Configurar Bitmask de Estados
            if (effects_list[0].params[0].current_val) fx_en |= FXB_SYNTH;
            if (effects_list[0].params[1].current_val == 0) fx_en |= FXB_SYNTH_ONLY;
            
            if (effects_list[1].params[0].current_val) fx_en |= FXB_DELAY;
            if (effects_list[2].params[0].current_val) fx_en |= FXB_CHORUS;
            if (effects_list[3].params[0].current_val) fx_en |= FXB_FLANG;
            if (effects_list[4].params[0].current_val) fx_en |= FXB_TREM;
            if (effects_list[5].params[0].current_val) fx_en |= FXB_DIST;
            
            // Mantener siempre prendido filtros escenciales (Tone blend, Cab sim, Bloqueadores DC)
            fx_en |= FXB_DCB_IN | FXB_DCB_POST | FXB_CHO_LPF | FXB_BLEND | FXB_CAB;
            
            Xil_Out32(FX_BASE + FX_OFF_FX_EN, fx_en);
            
            // Cargar parametros base por defecto y sobreescribir con la pantalla
            params_t p;
            params_init(&p);
            
            // Synth
            int patch = effects_list[0].params[2].current_val;
            if (patch == 0)      { p.syn_w1=WAVE_SAW; p.syn_w2=WAVE_SAW; p.syn_w3=WAVE_SAW; p.syn_r1=0; p.syn_r2=0; p.syn_r3=0; p.syn_o2_cents=0; p.syn_o3_cents=0; }
            else if (patch == 1) { p.syn_w1=WAVE_TRISAW; p.syn_w2=WAVE_SAW; p.syn_w3=WAVE_SQUARE; p.syn_r1=-1; p.syn_r2=-1; p.syn_r3=0; p.syn_o2_cents=-5; p.syn_o3_cents=5; }
            else if (patch == 2) { p.syn_w1=WAVE_SAW; p.syn_w2=WAVE_SAW; p.syn_w3=WAVE_SAW; p.syn_r1=0; p.syn_r2=0; p.syn_r3=0; p.syn_o2_cents=-12; p.syn_o3_cents=12; }
            else                 { p.syn_w1=WAVE_SQUARE; p.syn_w2=WAVE_SQUARE; p.syn_w3=WAVE_SQUARE; p.syn_r1=-2; p.syn_r2=-1; p.syn_r3=0; p.syn_o2_cents=-2; p.syn_o3_cents=2; }
            
            // Delay
            p.dly_time = (float)effects_list[1].params[1].current_val;
            p.dly_fb = (float)effects_list[1].params[2].current_val / 100.0f;
            p.dly_wet = (float)effects_list[1].params[3].current_val / 100.0f;
            
            // Chorus
            p.cho_depth = (float)effects_list[2].params[1].current_val;
            p.cho_rate = (float)effects_list[2].params[2].current_val / 10.0f;
            p.cho_wet = (float)effects_list[2].params[3].current_val / 100.0f;
            
            // Flanger
            p.fl_depth = (float)effects_list[3].params[1].current_val;
            p.fl_rate = (float)effects_list[3].params[2].current_val / 10.0f;
            p.fl_fb = (float)effects_list[3].params[3].current_val / 100.0f;
            p.fl_wet = 0.5f; // Fijo para Flanger tipico
            
            // Tremolo
            p.trem_depth = (float)effects_list[4].params[1].current_val / 100.0f;
            p.trem_rate = (float)effects_list[4].params[2].current_val / 10.0f;
            
            // Distorsion
            p.dist_drive = (float)effects_list[5].params[1].current_val;
            p.dist_tone = (float)effects_list[5].params[2].current_val / 100.0f;
            p.dist_level = (float)effects_list[5].params[3].current_val / 100.0f;
            
            // Enviar a la FPGA
            params_push_to_pl(&p);
            params_push_synth(&p);
            
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