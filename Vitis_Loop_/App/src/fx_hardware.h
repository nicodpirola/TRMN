#ifndef FX_HARDWARE_H
#define FX_HARDWARE_H

#include <stdint.h>

// Inicializa el bloque de DSP en hardware (habilita el reloj/bypass)
void hw_dsp_init(void);

// Actualiza los parámetros del Delay en la PL (AXI)
// param_idx: 0 = Time, 1 = Feedback, 2 = Mix
// ui_val: 0 a 100
void hw_dsp_update_delay(int param_idx, int ui_val);

#endif // FX_HARDWARE_H
