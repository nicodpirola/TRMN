#include "fx_hardware.h"
#include "xil_io.h"
#include "xparameters.h"
#include <stdio.h>

// Dirección base definida en xparameters.h para fx_system_wrapper_0
#define FX_BASE_ADDR 0x60000000

void hw_dsp_init(void) {
    // Escribir 1 en reg_ctrl (Offset 0x00) para habilitar el procesamiento en el PL
    Xil_Out32(FX_BASE_ADDR + 0x00, 1);
    printf("DSP AXI FX_SYSTEM habilitado.\n");
}

void hw_dsp_update_delay(int param_idx, int ui_val) {
    // Limitar seguridad
    if (ui_val < 0) ui_val = 0;
    if (ui_val > 100) ui_val = 100;

    if (param_idx == 0) {
        // Param 0: Time (Q16.16, máx 32767 muestras de RAM)
        uint32_t samples = (ui_val * 32767) / 100;
        uint32_t val_q16_16 = samples << 16;
        Xil_Out32(FX_BASE_ADDR + 0x04, val_q16_16);
    } 
    else if (param_idx == 1) {
        // Param 1: Feedback (Q1.31 fraccional puro de 0.0 a 1.0)
        // 100% = 0x7FFFFFFF (2147483647)
        uint64_t val_q1_31 = (ui_val * 2147483647ULL) / 100;
        Xil_Out32(FX_BASE_ADDR + 0x08, (uint32_t)val_q1_31);
    }
    else if (param_idx == 2) {
        // Param 2: Mix / Wet (Q1.31)
        uint64_t val_q1_31 = (ui_val * 2147483647ULL) / 100;
        Xil_Out32(FX_BASE_ADDR + 0x0C, (uint32_t)val_q1_31);
    }
}
