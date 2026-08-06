# Entrega de prueba: Theremin Synth + Delay

## Arquitectura

```text
I²S RX
  ↓
fx_system_wrapper
  ↓
fx_core
  ├─ tap pasivo: envelope + pitch detector
  └─ synth insert → delay simple
  ↓
M_AXIS
  ↓
LOOPER DEL COMPAÑERO
  ↓
I²S TX
```

El looper no se toca. Sigue usando la salida de `fx_system_wrapper`.

## Por qué esta versión es segura al conmutar

La configuración AXI y el switch físico se reciben como valores `requested`.
El audio usa valores `active`.

La copia `requested → active` ocurre solamente cuando:

```systemverilog
adapter_idle && synth_idle && delay_idle
```

Así no se puede apagar un efecto mientras conserva una muestra interna.

## Archivos que debe reemplazar

- `fx_core.sv`
- `fx_regmap.sv`
- `fx_delay_simple.sv`

## Archivos que debe agregar

- `fx_synth_frontend.sv`
- `fx_synth_insert.sv`
- `fx_synth.sv`
- `fx_period_to_inc.sv`
- `delay_line.sv`
- `delay_bram.sv`
- `delay_frac_read.sv`

## Dependencias

El paquete incluye:

- `fx_axis_mono_adapter.sv`
- `fx_biquad.sv`
- `fx_dsp_pkg.sv` con `abs32()` corregido
- `fx_system_wrapper.v` de referencia

Debe copiar desde la rama funcional de Matías:

- `fx_envelope.sv`
- `fx_pitch_zcd.sv`
- `tick_gen.sv`
- `quad_decoder.sv`

Es importante usar las versiones de envelope y pitch que ya pasaron sus
testbenches.

## Vivado

1. Crear una rama:
   `feature/theremin-synth-delay-test`
2. Hacer backup de sus archivos actuales.
3. Reemplazar los tres archivos indicados.
4. Agregar los nuevos como **Design Sources**.
5. No agregar testbenches como Design Sources.
6. Mantener un solo módulo llamado `fx_core`.
7. `fx_system_wrapper.v` conserva exactamente los mismos puertos.
8. Abrir el Block Design y usar `Refresh Module` si Vivado lo solicita.
9. `Validate Design`.
10. `Open Elaborated Design`.
11. `Run Synthesis`.
12. Revisar:
    - módulos sin resolver;
    - multiple drivers;
    - timing;
    - BRAM;
    - DSP48.
13. `Run Implementation`.
14. `Generate Bitstream`.
15. Exportar el XSA incluyendo el bitstream.

## Vitis

Agregar:

- `synth_delay_control.h`
- `synth_delay_control.c`

`main_integration_snippet.c` muestra cómo integrarlo sin reemplazar su `main`.

La base usada debe ser la base AXI real de su proyecto, por ejemplo `FX_BASE`.

Al iniciar:

```c
sd_master_enable(FX_BASE, 1);
sd_load_single_saw(FX_BASE);
sd_set_delay(FX_BASE, 250.0f, 0.35f, 0.25f);
sd_set_mode(FX_BASE, 1, 1, 0);
```

El switch físico `fx_enable` debe estar encendido.

## Qué puede configurar

### Modo global

- Synth apagado.
- Synth solo.
- Entrada + synth 50/50.
- Delay apagado/encendido.

### Cada oscilador

- Forma:
  - `0` triangle
  - `1` triangle-saw; en OSC3 es reverse saw
  - `2` saw
  - `3` square
  - `4` wide pulse
  - `5` narrow pulse
- Range:
  - `-2` = 32'
  - `-1` = 16'
  - `0` = 8'
  - `+1` = 4'
  - `+2` = 2'
- Nivel `0..1`.
- OSC2 y OSC3: tune continuo recomendado `-700..+700 cents`.

OSC1 es la referencia y no tiene tune individual.

### Ruido

- Nivel `0..1`.

### Delay

- Tiempo: aproximadamente `1..682 ms`.
- Feedback: `0..0.90` recomendado.
- Wet: `0..1`; empezar en `0.20..0.30`.

Al habilitar el delay, la BRAM se limpia. Durante unos 0,66 ms la señal pasa
en bypass; no debería ser audible.

## Orden de prueba obligatorio

### Etapa 1 — verificar que no se rompió el flujo

```c
sd_set_mode(FX_BASE, 0, 0, 0);
```

Debe oírse audio dry normal y el looper debe seguir funcionando.

Alternar el switch físico muchas veces. El audio no debe quedar muerto.

### Etapa 2 — tracking puro

```c
sd_load_single_saw(FX_BASE);
sd_set_mode(FX_BASE, 1, 1, 0);
```

Probar el theremin sin delay y con un único oscilador.

Registrar:

- frecuencia mínima;
- frecuencia máxima;
- zonas donde pierde lock;
- saltos de octava;
- sensación del glissando;
- reacción de volumen.

Leer periódicamente:

```c
sd_print_status(FX_BASE);
```

### Etapa 3 — timbre Minimoog

```c
sd_load_minimoog_patch(FX_BASE);
```

Comparar con single saw. No evaluar todavía el delay.

### Etapa 4 — rangos y afinación

Probar por separado:

- OSC1 a 8';
- OSC1 a 16';
- OSC1 a 4';
- OSC2 `+7 cents`;
- OSC2 alrededor de `+700 cents`;
- OSC3 a 16'.

Buscar clipping y saltos que provengan del detector, no del selector RANGE.

### Etapa 5 — delay

```c
sd_set_delay(FX_BASE, 250.0f, 0.35f, 0.25f);
sd_set_mode(FX_BASE, 1, 1, 1);
```

Después probar:

- 120 ms, feedback 0.20, wet 0.20;
- 250 ms, feedback 0.35, wet 0.25;
- 450 ms, feedback 0.50, wet 0.30.

No superar inicialmente feedback 0.70.

### Etapa 6 — mezcla

```c
sd_set_mode(FX_BASE, 1, 0, 1);
```

Esto produce:

```text
entrada + synth 50/50 → delay
```

### Etapa 7 — prueba de conmutación

Con audio continuo:

1. Encender y apagar synth 30 veces.
2. Encender y apagar delay 30 veces.
3. Alternar synth-only 30 veces.
4. Alternar el switch físico 30 veces.
5. Operar el looper durante estas pruebas.

Puede existir un clic corto. Nunca debe quedar el stream detenido ni requerir
reprogramación.

## Registros

### Global

- `0x00`: CTRL, bit 0 master.
- `0x04`: FX_EN:
  - bit 4 delay;
  - bit 13 synth;
  - bit 14 synth-only.

### Delay

- `0xB0`: tiempo, muestras Q16.16.
- `0xB4`: feedback Q1.31.
- `0xB8`: wet Q1.31.

### Synth

- `0xC0`: OSC1 config.
- `0xC4`: OSC1 level.
- `0xC8`: OSC2 config.
- `0xCC`: OSC2 tune UQ2.30.
- `0xD0`: OSC2 level.
- `0xD4`: OSC3 config.
- `0xD8`: OSC3 tune UQ2.30.
- `0xDC`: OSC3 level.
- `0xE0`: noise level.

Config de oscilador:

```text
bits [2:0] waveform
bits [7:4] range signed de cuatro bits
```

### Diagnóstico

- `0xE4`: status:
  - bit 0 gate;
  - bit 1 pitch locked;
  - bit 2 synth active;
  - bit 3 synth only;
  - bit 4 delay active;
  - bit 5 config pending;
  - bit 6 chain idle;
  - bit 7 delay clearing;
  - bit 8 physical enable active;
  - bit 9 master active;
  - bit 10 synth idle;
  - bit 11 delay idle;
  - bit 12 adapter idle.
- `0xE8`: período Q16.16.
- `0xEC`: phase increment.
- `0xF0`: envelope Q3.29.

## Qué debe devolver después de probar

1. Rango mínimo y máximo seguido correctamente.
2. Frecuencias aproximadas donde aparecen saltos de octava.
3. Captura de `status`, `period` y `phase_inc` durante un salto.
4. Opinión sobre el glide.
5. Si la envolvente de volumen sigue bien a la antena.
6. Si el delay altera el tracking.
7. Si alguna conmutación deja muerto el audio.
8. Si el looper sigue funcionando sin cambios.

No agregar todavía filtro ladder, PolyBLEP ni más efectos. Primero validar el
instrumento real y separar problemas de tracking, timbre, envelope y flujo.
