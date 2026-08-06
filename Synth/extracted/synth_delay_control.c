#include "synth_delay_control.h"

#include "xil_printf.h"
#include <math.h>

static float clampf_local(float v, float lo, float hi)
{
    return (v < lo) ? lo : ((v > hi) ? hi : v);
}

u32 sd_q1_31(float v)
{
    double s;

    v = clampf_local(v, 0.0f, 0.99999994f);
    s = (double)v * 2147483648.0;

    if (s >= 2147483647.0)
        return 0x7FFFFFFFu;

    return (u32)s;
}

u32 sd_delay_ms_q16_16(float ms)
{
    double samples;

    // ADDR_W=15: maximo util menor que 32768 muestras.
    ms = clampf_local(ms, 0.021f, 682.0f);
    samples = ((double)ms * 48.0) * 65536.0;

    if (samples > 4294901760.0)
        samples = 4294901760.0;

    return (u32)samples;
}

u32 sd_tune_cents_uq2_30(float cents)
{
    double ratio;
    double scaled;

    // Rango musical recomendado para la perilla tipo Minimoog.
    cents = clampf_local(cents, -700.0f, 700.0f);

    ratio  = pow(2.0, (double)cents / 1200.0);
    scaled = ratio * 1073741824.0; // 2^30

    if (scaled < 1.0)
        scaled = 1.0;
    if (scaled > 2147483647.0)
        scaled = 2147483647.0;

    return (u32)(scaled + 0.5);
}

u32 sd_osc_cfg(int wave, int range)
{
    if (wave < 0) wave = 0;
    if (wave > 5) wave = 5;
    if (range < -2) range = -2;
    if (range >  2) range =  2;

    return ((u32)wave & 0x7u) | (((u32)range & 0xFu) << 4);
}

void sd_master_enable(UINTPTR base, int on)
{
    u32 ctrl = Xil_In32(base + SD_OFF_CTRL);

    if (on)
        ctrl |= 1u;
    else
        ctrl &= ~1u;

    Xil_Out32(base + SD_OFF_CTRL, ctrl);
}

void sd_set_mode(UINTPTR base, int synth_on, int synth_only, int delay_on)
{
    u32 fxen = Xil_In32(base + SD_OFF_FX_EN);

    fxen &= ~(SD_FXB_SYNTH | SD_FXB_SYNTH_ONLY | SD_FXB_DELAY);

    if (synth_on)
        fxen |= SD_FXB_SYNTH;
    if (synth_on && synth_only)
        fxen |= SD_FXB_SYNTH_ONLY;
    if (delay_on)
        fxen |= SD_FXB_DELAY;

    Xil_Out32(base + SD_OFF_FX_EN, fxen);
}

void sd_set_patch(UINTPTR base, const sd_patch_t *p)
{
    if (p == 0)
        return;

    Xil_Out32(base + SD_OFF_OSC1_CFG,
              sd_osc_cfg(p->osc1.wave, p->osc1.range));
    Xil_Out32(base + SD_OFF_OSC1_LEVEL, sd_q1_31(p->osc1.level));

    Xil_Out32(base + SD_OFF_OSC2_CFG,
              sd_osc_cfg(p->osc2.wave, p->osc2.range));
    Xil_Out32(base + SD_OFF_OSC2_TUNE,
              sd_tune_cents_uq2_30(p->osc2.cents));
    Xil_Out32(base + SD_OFF_OSC2_LEVEL, sd_q1_31(p->osc2.level));

    Xil_Out32(base + SD_OFF_OSC3_CFG,
              sd_osc_cfg(p->osc3.wave, p->osc3.range));
    Xil_Out32(base + SD_OFF_OSC3_TUNE,
              sd_tune_cents_uq2_30(p->osc3.cents));
    Xil_Out32(base + SD_OFF_OSC3_LEVEL, sd_q1_31(p->osc3.level));

    Xil_Out32(base + SD_OFF_NOISE_LEVEL, sd_q1_31(p->noise_level));
}

void sd_set_delay(UINTPTR base, float time_ms, float feedback, float wet)
{
    Xil_Out32(base + SD_OFF_DELAY_TIME, sd_delay_ms_q16_16(time_ms));
    Xil_Out32(base + SD_OFF_DELAY_FB,   sd_q1_31(feedback));
    Xil_Out32(base + SD_OFF_DELAY_WET,  sd_q1_31(wet));
}

void sd_load_single_saw(UINTPTR base)
{
    const sd_patch_t p = {
        { SD_WAVE_SAW, 0, 0.0f, 0.70f },
        { SD_WAVE_SAW, 0, 0.0f, 0.00f },
        { SD_WAVE_SAW, 0, 0.0f, 0.00f },
        0.0f
    };
    sd_set_patch(base, &p);
}

void sd_load_minimoog_patch(UINTPTR base)
{
    const sd_patch_t p = {
        { SD_WAVE_SAW,    0,  0.0f, 0.45f },
        { SD_WAVE_SAW,    0, +7.0f, 0.30f },
        { SD_WAVE_SQUARE, -1, 0.0f, 0.20f },
        0.0f
    };
    sd_set_patch(base, &p);
}

void sd_load_three_saw_patch(UINTPTR base)
{
    const sd_patch_t p = {
        { SD_WAVE_SAW, 0,  0.0f, 0.36f },
        { SD_WAVE_SAW, 0, +7.0f, 0.30f },
        { SD_WAVE_SAW, 0, -7.0f, 0.24f },
        0.0f
    };
    sd_set_patch(base, &p);
}

void sd_load_sub_patch(UINTPTR base)
{
    const sd_patch_t p = {
        { SD_WAVE_SQUARE, 0, 0.0f, 0.55f },
        { SD_WAVE_SAW,    0, 0.0f, 0.00f },
        { SD_WAVE_SQUARE,-1, 0.0f, 0.30f },
        0.0f
    };
    sd_set_patch(base, &p);
}

sd_status_t sd_read_status(UINTPTR base)
{
    sd_status_t s;

    s.raw            = Xil_In32(base + SD_OFF_STATUS);
    s.gate           = (s.raw >> 0) & 1u;
    s.pitch_locked   = (s.raw >> 1) & 1u;
    s.synth_active   = (s.raw >> 2) & 1u;
    s.synth_only     = (s.raw >> 3) & 1u;
    s.delay_active   = (s.raw >> 4) & 1u;
    s.config_pending = (s.raw >> 5) & 1u;
    s.chain_idle     = (s.raw >> 6) & 1u;
    s.delay_clearing = (s.raw >> 7) & 1u;

    return s;
}

void sd_print_status(UINTPTR base)
{
    sd_status_t s = sd_read_status(base);
    u32 period = Xil_In32(base + SD_OFF_PERIOD);
    u32 inc    = Xil_In32(base + SD_OFF_PHASE_INC);
    u32 env    = Xil_In32(base + SD_OFF_ENVELOPE);

    // Frecuencia en mili-Hz, sin printf de punto flotante.
    unsigned long long mhz =
        (((unsigned long long)inc * 48000000ULL) + 0x80000000ULL) >> 32;

    xil_printf(
        "st=%08x gate=%d lock=%d syn=%d only=%d dly=%d pend=%d idle=%d clr=%d\r\n",
        (unsigned)s.raw,
        s.gate, s.pitch_locked, s.synth_active, s.synth_only,
        s.delay_active, s.config_pending, s.chain_idle, s.delay_clearing);

    xil_printf(
        "period=%08x inc=%08x env=%08x f=%u.%03u Hz\r\n",
        (unsigned)period,
        (unsigned)inc,
        (unsigned)env,
        (unsigned)(mhz / 1000ULL),
        (unsigned)(mhz % 1000ULL));
}
