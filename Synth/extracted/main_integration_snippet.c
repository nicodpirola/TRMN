/*
 * EJEMPLO MINIMO PARA main.c
 *
 * Requisitos:
 *   #include "synth_delay_control.h"
 *
 * FX_BASE debe ser la base AXI real del proyecto.
 */

static void synth_delay_test_init(void)
{
    sd_master_enable(FX_BASE, 1);

    // Empezar de la forma mas simple posible.
    sd_load_single_saw(FX_BASE);
    sd_set_delay(FX_BASE, 250.0f, 0.35f, 0.25f);

    // Primero: synth solo, sin delay.
    sd_set_mode(FX_BASE, 1, 1, 0);
}

/*
 * Comandos UART sugeridos:
 *
 * 'q' -> dry: synth OFF, delay OFF
 * 's' -> synth solo, delay OFF
 * 'm' -> dry+synth 50/50, delay OFF
 * 'd' -> synth solo + delay
 * 'e' -> dry+synth + delay
 * '1' -> single saw
 * '2' -> patch Minimoog
 * '3' -> tres sierras
 * '4' -> square + sub
 * 'p' -> diagnostico
 */
static void synth_delay_uart_command(int c)
{
    switch (c) {
    case 'q':
        sd_set_mode(FX_BASE, 0, 0, 0);
        break;
    case 's':
        sd_set_mode(FX_BASE, 1, 1, 0);
        break;
    case 'm':
        sd_set_mode(FX_BASE, 1, 0, 0);
        break;
    case 'd':
        sd_set_mode(FX_BASE, 1, 1, 1);
        break;
    case 'e':
        sd_set_mode(FX_BASE, 1, 0, 1);
        break;
    case '1':
        sd_load_single_saw(FX_BASE);
        break;
    case '2':
        sd_load_minimoog_patch(FX_BASE);
        break;
    case '3':
        sd_load_three_saw_patch(FX_BASE);
        break;
    case '4':
        sd_load_sub_patch(FX_BASE);
        break;
    case 'p':
        sd_print_status(FX_BASE);
        break;
    default:
        break;
    }
}
