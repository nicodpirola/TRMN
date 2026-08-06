#ifndef SYNTH_DELAY_CONTROL_H
#define SYNTH_DELAY_CONTROL_H

#include "xil_types.h"
#include "xil_io.h"

#ifdef __cplusplus
extern "C" {
#endif

#define SD_FS_HZ 48000.0f

// Registros existentes
#define SD_OFF_CTRL               0x00u
#define SD_OFF_FX_EN              0x04u

#define SD_FXB_DELAY              (1u << 4)
#define SD_FXB_SYNTH              (1u << 13)
#define SD_FXB_SYNTH_ONLY         (1u << 14)

// Delay
#define SD_OFF_DELAY_TIME         0xB0u
#define SD_OFF_DELAY_FB           0xB4u
#define SD_OFF_DELAY_WET          0xB8u

// Synth
#define SD_OFF_OSC1_CFG           0xC0u
#define SD_OFF_OSC1_LEVEL         0xC4u
#define SD_OFF_OSC2_CFG           0xC8u
#define SD_OFF_OSC2_TUNE          0xCCu
#define SD_OFF_OSC2_LEVEL         0xD0u
#define SD_OFF_OSC3_CFG           0xD4u
#define SD_OFF_OSC3_TUNE          0xD8u
#define SD_OFF_OSC3_LEVEL         0xDCu
#define SD_OFF_NOISE_LEVEL        0xE0u

// Diagnostico
#define SD_OFF_STATUS             0xE4u
#define SD_OFF_PERIOD             0xE8u
#define SD_OFF_PHASE_INC          0xECu
#define SD_OFF_ENVELOPE           0xF0u

typedef enum {
    SD_WAVE_TRIANGLE = 0,
    SD_WAVE_TRI_SAW  = 1, // reverse saw en OSC3
    SD_WAVE_SAW      = 2,
    SD_WAVE_SQUARE   = 3,
    SD_WAVE_WIDE_PULSE = 4,
    SD_WAVE_NARROW_PULSE = 5
} sd_wave_t;

typedef struct {
    int wave;       // sd_wave_t
    int range;      // -2=32', -1=16', 0=8', +1=4', +2=2'
    float cents;    // OSC2/OSC3; OSC1 lo ignora
    float level;    // 0..1
} sd_osc_t;

typedef struct {
    sd_osc_t osc1;
    sd_osc_t osc2;
    sd_osc_t osc3;
    float noise_level;
} sd_patch_t;

typedef struct {
    u32 raw;
    int gate;
    int pitch_locked;
    int synth_active;
    int synth_only;
    int delay_active;
    int config_pending;
    int chain_idle;
    int delay_clearing;
} sd_status_t;

u32 sd_q1_31(float v);
u32 sd_delay_ms_q16_16(float ms);
u32 sd_tune_cents_uq2_30(float cents);
u32 sd_osc_cfg(int wave, int range);

void sd_master_enable(UINTPTR base, int on);
void sd_set_mode(UINTPTR base, int synth_on, int synth_only, int delay_on);
void sd_set_patch(UINTPTR base, const sd_patch_t *patch);
void sd_set_delay(UINTPTR base, float time_ms, float feedback, float wet);

void sd_load_single_saw(UINTPTR base);
void sd_load_minimoog_patch(UINTPTR base);
void sd_load_three_saw_patch(UINTPTR base);
void sd_load_sub_patch(UINTPTR base);

sd_status_t sd_read_status(UINTPTR base);
void sd_print_status(UINTPTR base);

#ifdef __cplusplus
}
#endif

#endif
