#include <stdio.h>
#include "xparameters.h"
#include "xil_io.h"
#include "xil_printf.h"
#include "sleep.h"
#include "xuartps_hw.h"
#include "params.h"
#include "curvas.h"

#define I2S_RX_BASE XPAR_I2S_RECEIVER_0_BASEADDR
#define I2S_TX_BASE XPAR_I2S_TRANSMITTER_0_BASEADDR
#define I2S_REG_CORE_CTRL  0x08
#define I2S_REG_TIMING     0x20
#define I2S_REG_CH_CTRL    0x30
#define I2S_TX_REG_CH_EN   0x0C

static params_t g_params;
static uint32_t g_fxen  = 0;
static uint32_t g_ctrl  = CTRLB_ENABLE;
static int      g_curva = 0;
static int      g_preset = 0;

extern int g_tone_order;   // arriba, con las globales


void i2s_init(void) {
    Xil_Out32(I2S_RX_BASE + I2S_REG_CORE_CTRL, 0x00);
    Xil_Out32(I2S_TX_BASE + I2S_REG_CORE_CTRL, 0x00);
    xil_printf("Configurando temporizaciones I2S...\r\n");
    Xil_Out32(I2S_RX_BASE + I2S_REG_TIMING, 0x02);
    Xil_Out32(I2S_TX_BASE + I2S_REG_TIMING, 0x02);
    Xil_Out32(I2S_TX_BASE + I2S_TX_REG_CH_EN, 0x01);
    Xil_Out32(I2S_RX_BASE + I2S_REG_CH_CTRL, 0x01);
    Xil_Out32(I2S_TX_BASE + I2S_REG_CH_CTRL, 0x01);
    xil_printf("Encendiendo modulos I2S...\r\n");
    Xil_Out32(I2S_RX_BASE + I2S_REG_CORE_CTRL, 0x01);
    usleep(1000);
    Xil_Out32(I2S_TX_BASE + I2S_REG_CORE_CTRL, 0x01);
}

static int16_t enc_prev[NUM_ENCODERS] = {0};
static int16_t enc_delta(int n) {
    int16_t now = (int16_t)(Xil_In32(FX_BASE + FX_OFF_ENC(n)) & 0xFFFF);
    int16_t d   = (int16_t)(now - enc_prev[n]);
    enc_prev[n] = now;
    return d;
}

static int uart_getc(void) {
    if (XUartPs_IsReceiveData(STDIN_BASEADDRESS))
        return (int)XUartPs_RecvByte(STDIN_BASEADDRESS);
    return -1;
}

static void fx_toggle(const char *nom, uint32_t bit) {
    g_fxen ^= bit;
    Xil_Out32(FX_BASE + FX_OFF_FX_EN, g_fxen);
    xil_printf("fx_en=0x%04x  (%s %s)\r\n", (unsigned)g_fxen, nom, (g_fxen & bit) ? "ON" : "off");
}

// Cargar una wavetable en la distorsion (256 escrituras, auto-incremento)
static void dist_load_curve(int idx) {
    const u32 *t = curvas_tabla[idx];
    Xil_Out32(FX_BASE + FX_OFF_WT_ADDR, 0);
    for (int i = 0; i < 256; i++)
        Xil_Out32(FX_BASE + FX_OFF_WT_DATA, t[i]);
    xil_printf("curva: %s\r\n", curvas_nombre[idx]);
}

static void ayuda(void) {
    xil_printf("\r\n--- EFECTOS ---\r\n");
    xil_printf(" [1]DIST [2]CHORUS [3]FLANGER [4]TREMOLO [5]DELAY\r\n");
    xil_printf(" [6]TONE-BLEND [7]PEAK [8]HPF-pre [9]DCB-in [0]DCB-post [l]CHORUS-LPF\r\n");
    xil_printf("--- DISTORSION ---\r\n");
    xil_printf(" [c]=ciclar curva   [w]=preset de tone (BigMuff/TS/Fuzz/Neutral)\r\n");
    xil_printf("--- SYNTH ---\r\n");
    xil_printf(" [s]=SYNTH  [x]=SYNTH ONLY  [z]=filtro synth\r\n");
    xil_printf(" forma: [q]OSC1 [e]OSC2 [r]OSC3   octava: [y]OSC1 [u]OSC2 [i]OSC3\r\n");
    xil_printf(" niveles/detune/mezcla: pantallas SYN-MIX y SYN-VOICE (encoders)\r\n");
    xil_printf("--- DIAGNOSTICO ---\r\n");
    xil_printf(" [t]=tono test  [a]=snoop  [p]=estado  [h]=ayuda\r\n");
    xil_printf("--- PANTALLAS ---  [n]=sig [m]=ant   (encoders editan la activa)\r\n");
}

int main(void) {
    xil_printf("\r\n=== THEREMIN FX - SISTEMA COMPLETO ===\r\n");

    i2s_init();
    usleep(50000);

    params_init(&g_params);

    Xil_Out32(FX_BASE + FX_OFF_CTRL,  g_ctrl);
    Xil_Out32(FX_BASE + FX_OFF_FX_EN, g_fxen);   // todo en bypass
    usleep(10000);
    params_push_to_pl(&g_params);                // incluye los coefs del tone

    ayuda();
    params_print(&g_params);

    while (1) {
        int c = uart_getc();
        if      (c == '1') fx_toggle("DIST",      FXB_DIST);
        else if (c == '2') fx_toggle("CHORUS",    FXB_CHORUS);
        else if (c == '3') fx_toggle("FLANGER",   FXB_FLANG);
        else if (c == '4') fx_toggle("TREMOLO",   FXB_TREM);
        else if (c == '5') fx_toggle("DELAY",     FXB_DELAY);
        else if (c == '6') fx_toggle("TONE-BLEND",FXB_BLEND);
        else if (c == '7') fx_toggle("PEAK",      FXB_PEAK);
        else if (c == '8') fx_toggle("HPF-pre",   FXB_HPF);
        else if (c == '9') fx_toggle("DCB-in",    FXB_DCB_IN);
        else if (c == '0') fx_toggle("DCB-post",  FXB_DCB_POST);
        else if (c == 'l') fx_toggle("CHORUS-LPF",FXB_CHO_LPF);
        else if (c == 'j') fx_toggle("PHASER", FXB_PHASER);
        else if (c == 'k') fx_toggle("CAB-SIM", FXB_CAB);
        else if (c == 's') fx_toggle("SYNTH", FXB_SYNTH);
        else if (c == 'x') fx_toggle("SYNTH-ONLY", FXB_SYNTH_ONLY);
        else if (c == 'z') fx_toggle("SYNTH-FILT", FXB_SYNTH_FILT);
        // formas de onda del synth (ciclan las 6 posiciones Minimoog)
        else if (c == 'q') synth_cycle_wave(&g_params, 1);
        else if (c == 'e') synth_cycle_wave(&g_params, 2);
        else if (c == 'r') synth_cycle_wave(&g_params, 3);
        // octavas (RANGE) del synth
        else if (c == 'y') synth_cycle_range(&g_params, 1);
        else if (c == 'u') synth_cycle_range(&g_params, 2);
        else if (c == 'i') synth_cycle_range(&g_params, 3);
        else if (c == 'c') {
            g_curva = (g_curva + 1) % NUM_CURVAS;
            dist_load_curve(g_curva);
        }
        else if (c == 'w') {
            g_preset = (g_preset + 1) % NUM_PRESETS_TONE;
            params_preset_tone(&g_params, g_preset);
            xil_printf("tone preset: %s (fLPF=%dHz fHPF=%dHz)\r\n",
                params_preset_name(g_preset),
                (int)g_params.tone_lpf_hz, (int)g_params.tone_hpf_hz);
        }
        else if (c == 't') {
            g_ctrl ^= CTRLB_TONO;
            Xil_Out32(FX_BASE + FX_OFF_CTRL, g_ctrl);
            xil_printf("tono test %s\r\n", (g_ctrl & CTRLB_TONO) ? "ON" : "off");
        }
        else if (c == 'a') {
            xil_printf("--- SNOOP ---\r\n");
            for (int i = 0; i < 10; i++) {
                xil_printf("  %08x\r\n", (unsigned)Xil_In32(FX_BASE + FX_OFF_SNOOP));
                usleep(30000);
            }
        }
        else if (c == 'n') { params_screen_next(); params_print(&g_params); }
        else if (c == 'm') { params_screen_prev(); params_print(&g_params); }
        else if (c == 'h') ayuda();
        else if (c == 'p') {
            params_print(&g_params);
            xil_printf("fx_en=0x%04x curva=%s tone=%s\r\n",
                (unsigned)g_fxen, curvas_nombre[g_curva], params_preset_name(g_preset));
        }
        else if (c == 'o') {
            g_tone_order = (g_tone_order == 1) ? 2 : 1;
            params_push_tone(&g_params);
            xil_printf("tone: %d polo(s) = %d dB/oct\r\n", g_tone_order, 6*g_tone_order);
        }

        for (int e = 0; e < NUM_ENCODERS; e++) {
            int16_t d = enc_delta(e);
            if (d) {
                params_handle_encoder(&g_params, e, d);
                params_print(&g_params);
            }
        }
        usleep(2000);
    }
    return 0;
}