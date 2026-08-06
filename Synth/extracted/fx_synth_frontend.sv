// =============================================================================
// fx_synth_frontend.sv - Frontend monofonico optimizado para THEREMIN
//
// Cambios v0.2:
//   * LPF de pitch subido de 2 kHz a 7 kHz: permite seguir ~4-5 kHz.
//   * Histeresis ZC reducida a 0.0025 FS.
//   * Pitch-lock timeout dependiente del ultimo periodo:
//       max(4 ms, ~3 periodos), limitado a ~85 ms.
//     Si se pierden cruces, el VCA se cierra en vez de sostener eternamente
//     la ultima frecuencia.
//   * GLIDE recomendado = 8 (~5.3 ms a 48 kHz).
//
// Rango del ZCD:
//   PERIOD_MIN=8 muestras  -> max teorico ~6 kHz
//   PERIOD_MAX=1200        -> min teorico ~40 Hz
//
// Esta version esta pensada para la salida casi monofonica del theremin.
// La guitarra puede producir saltos de octava por sus armonicos; eso no se
// considera un fallo bloqueante de esta version.
// =============================================================================
module fx_synth_frontend #(
  parameter int GLIDE = 8,

  // Q3.29 -> Q1.31 requiere <<2. ENV_VCA_SHIFT=4 agrega ganancia x4.
  parameter int ENV_VCA_SHIFT = 4,

  // Timeout minimo: 192 muestras = 4 ms @ 48 kHz.
  parameter int LOCK_TIMEOUT_MIN_SAMPLES = 192,

  // Timeout maximo: 4095 muestras = 85.3 ms @ 48 kHz.
  parameter int LOCK_TIMEOUT_MAX_SAMPLES = 4095
)(
  input  logic               clk,
  input  logic               rst_n,
  input  logic               sample_valid,
  input  logic signed [31:0] sample_data_q3_29,

  output logic signed [31:0] env_q3_29,
  output logic signed [31:0] env_vca_q1_31,
  output logic               gate,
  output logic               pitch_locked,
  output logic [31:0]        period_16_16,
  output logic               period_valid,
  output logic [31:0]        base_phase_inc,
  output logic               inc_valid
);

  // ---------------------------------------------------------------------------
  // Envelope: 5 ms attack, 150 ms release @ 48 kHz
  // ---------------------------------------------------------------------------
  logic env_update;

  fx_envelope u_env (
    .clk                    (clk),
    .rst_n                  (rst_n),
    .sample_valid           (sample_valid),
    .sample_data            (sample_data_q3_29),
    .env_out                (env_q3_29),
    .gate                   (gate),
    .env_update             (env_update),
    .a_atk_q1_31            (32'sh7F77_C02F),
    .a_rel_q1_31            (32'sh7FFB_72FF),
    .gate_on_thr_q3_29      (32'sh0051_EB85), // 0.010
    .gate_off_thr_q3_29     (32'sh0028_F5C3)  // 0.005
  );

  // ---------------------------------------------------------------------------
  // LPF Butterworth 2º orden, fc=7 kHz @ 48 kHz, Q=0.7071
  //
  // El LPF anterior de 2 kHz atenuaba demasiado una fundamental de 4-5 kHz.
  // Coeficientes Q2.30:
  //   b0=0.125317809, b1=0.250635617, b2=0.125317809
  //   a1=-0.779970626, a2=0.281241860
  // ---------------------------------------------------------------------------
  logic               pitch_lpf_ready;
  logic               pitch_lpf_valid;
  logic signed [31:0] pitch_lpf_data;

  fx_biquad u_pitch_lpf (
    .clk       (clk),
    .rst_n     (rst_n),
    .state_clear(!gate),
    .enable    (1'b1),
    .in_valid  (sample_valid),
    .in_ready  (pitch_lpf_ready),
    .in_data   (sample_data_q3_29),
    .out_valid (pitch_lpf_valid),
    .out_ready (1'b1),
    .out_data  (pitch_lpf_data),
    .b0_q2_30  (32'sh0805_34FC),
    .b1_q2_30  (32'sh100A_69F9),
    .b2_q2_30  (32'sh0805_34FC),
    .a1_q2_30  (32'shCE14_F616),
    .a2_q2_30  (32'sh11FF_DDDC)
  );

  // ---------------------------------------------------------------------------
  // Detector de periodo
  // ---------------------------------------------------------------------------
  fx_pitch_zcd #(
    .PERIOD_MIN_Q16(32'd8    << 16),
    .PERIOD_MAX_Q16(32'd1200 << 16)
  ) u_pitch (
    .clk             (clk),
    .rst_n           (rst_n),
    .sample_valid    (pitch_lpf_valid),
    .sample_data     (pitch_lpf_data),
    .gate            (gate),
    .zc_hyst_q3_29   (32'sh0014_7AE1), // 0.0025
    .period_16_16    (period_16_16),
    .period_valid    (period_valid)
  );

  // ---------------------------------------------------------------------------
  // Periodo -> DDS phase increment
  // ---------------------------------------------------------------------------
  fx_period_to_inc #(
    .GLIDE(GLIDE)
  ) u_period_to_inc (
    .clk          (clk),
    .rst_n        (rst_n),
    .period_16_16 (period_16_16),
    .period_valid (period_valid),
    .gate         (gate),
    .sample_tick  (sample_valid),
    .phase_inc    (base_phase_inc),
    .inc_valid    (inc_valid)
  );

  // ---------------------------------------------------------------------------
  // Pitch lock con timeout
  //
  // Recarga:
  //   timeout = clamp(3 * periodo_entero, MIN, MAX)
  //
  // Frecuencias altas: al menos 4 ms para tolerar una perdida breve.
  // Frecuencias bajas: aproximadamente tres ciclos completos.
  // ---------------------------------------------------------------------------
  localparam int LOCK_CNT_W =
      (LOCK_TIMEOUT_MAX_SAMPLES < 2)
        ? 1
        : $clog2(LOCK_TIMEOUT_MAX_SAMPLES + 1);

  logic [LOCK_CNT_W-1:0] lock_timeout;
  logic                  have_inc;

  function automatic logic [LOCK_CNT_W-1:0] timeout_from_period(
    input logic [31:0] p_q16_16
  );
    logic [15:0] p_int;
    logic [17:0] p_times_3;
    begin
      p_int = p_q16_16[31:16];
      if (p_int == 16'd0)
        p_int = 16'd1;

      p_times_3 = {2'd0, p_int} + ({2'd0, p_int} << 1);

      if (p_times_3 < LOCK_TIMEOUT_MIN_SAMPLES)
        timeout_from_period = LOCK_TIMEOUT_MIN_SAMPLES[LOCK_CNT_W-1:0];
      else if (p_times_3 > LOCK_TIMEOUT_MAX_SAMPLES)
        timeout_from_period = LOCK_TIMEOUT_MAX_SAMPLES[LOCK_CNT_W-1:0];
      else
        timeout_from_period = p_times_3[LOCK_CNT_W-1:0];
    end
  endfunction

  always_ff @(posedge clk) begin
    if (!rst_n) begin
      pitch_locked <= 1'b0;
      lock_timeout <= '0;
      have_inc     <= 1'b0;
    end else begin
      if (inc_valid)
        have_inc <= 1'b1;

      if (!gate) begin
        pitch_locked <= 1'b0;
        lock_timeout <= '0;
      end else begin
        // Cada periodo valido prueba que el detector sigue vivo.
        if (period_valid) begin
          lock_timeout <= timeout_from_period(period_16_16);

          // En la primera nota se abre al terminar la conversion.
          // En reacquisiciones posteriores se puede abrir de inmediato.
          if (have_inc || inc_valid)
            pitch_locked <= 1'b1;
        end else if (inc_valid) begin
          pitch_locked <= 1'b1;
        end else if (sample_valid && pitch_locked) begin
          if (lock_timeout > 0)
            lock_timeout <= lock_timeout - 1'b1;

          if (lock_timeout == 1)
            pitch_locked <= 1'b0;
        end
      end
    end
  end

  // ---------------------------------------------------------------------------
  // Envelope Q3.29 -> VCA Q1.31, con ganancia y clamp [0, 1)
  // ---------------------------------------------------------------------------
  always_comb begin
    logic [63:0] scaled;

    env_vca_q1_31 = 32'sd0;
    scaled         = 64'd0;

    if (gate && pitch_locked && (env_q3_29 > 0)) begin
      scaled = $unsigned(env_q3_29) << ENV_VCA_SHIFT;

      if (scaled >= 64'h0000_0000_7FFF_FFFF)
        env_vca_q1_31 = 32'sh7FFF_FFFF;
      else
        env_vca_q1_31 = $signed(scaled[31:0]);
    end
  end

`ifndef SYNTHESIS
  initial begin
    if (LOCK_TIMEOUT_MIN_SAMPLES < 1)
      $error("fx_synth_frontend: LOCK_TIMEOUT_MIN_SAMPLES invalido");

    if (LOCK_TIMEOUT_MAX_SAMPLES < LOCK_TIMEOUT_MIN_SAMPLES)
      $error("fx_synth_frontend: timeout MAX menor que MIN");
  end

  // A 50 MHz / 48 kHz el biquad debe estar libre antes de otra muestra.
  always_ff @(posedge clk) begin
    if (rst_n && sample_valid && !pitch_lpf_ready)
      $error("fx_synth_frontend: overrun en LPF de pitch");
  end
`endif

endmodule
