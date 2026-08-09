#ifndef UI_H
#define UI_H

#include "lvgl/lvgl.h"

// Estados de foco de la Interfaz
typedef enum {
    FOCUS_MAIN_MENU = 0,
    FOCUS_PARAM_MENU
} ui_focus_state_t;

// API de Inicializacion
void ui_init(void);

// API de Actualizacion del Sistema (Llamados desde el while de main.c)
// hw_mode: 0=IDLE, 1=RECORD, 2=PLAY, 3=OVERDUB
void ui_update_status(int hw_mode, int sd_recording);
void ui_update_progress(uint32_t loop_index, uint32_t loop_length);

// API de Manejo de Hardware (Encoders)
void ui_handle_input(int enc0_delta, int enc0_click, int enc1_delta, int enc1_click);

// --- ESTRUCTURAS DE DATOS DE EFECTOS ---
#define MAX_FX_PARAMS 6
#define MAX_EFFECTS 8

typedef struct {
    const char * name;
    int min_val;
    int max_val;
    int current_val;
} fx_param_t;

typedef struct {
    const char * name;
    int param_count;
    fx_param_t params[MAX_FX_PARAMS];
} effect_module_t;

// Exponemos el arreglo para que el main.c pueda aplicar el DSP de audio leyendo estos valores en tiempo real
extern effect_module_t effects_list[MAX_EFFECTS];
extern const int num_effects;

#endif