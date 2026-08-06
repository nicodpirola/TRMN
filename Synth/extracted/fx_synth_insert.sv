// =============================================================================
// fx_synth_insert.sv - Inserto configurable y handshake 1-muestra-en-vuelo.
//
// enable/synth_only y los parametros deben permanecer estables durante una
// transaccion. fx_core_synth_only los actualiza exclusivamente con adapter_idle.
//
// enable=0: bypass.
// enable=1, synth_only=1: solo voz sintetizada.
// enable=1, synth_only=0: mezcla 50% dry + 50% synth.
// =============================================================================
module fx_synth_insert (
  input  logic               clk,
  input  logic               rst_n,
  input  logic               enable,
  input  logic               synth_only,

  input  logic               in_valid,
  output logic               in_ready,
  input  logic signed [31:0] in_data,

  output logic               out_valid,
  input  logic               out_ready,
  output logic signed [31:0] out_data,

  input  logic [31:0]        base_phase_inc,
  input  logic               inc_valid,
  input  logic signed [31:0] env_vca_q1_31,

  input  logic [2:0]         osc1_wave,
  input  logic [2:0]         osc2_wave,
  input  logic [2:0]         osc3_wave,
  input  logic signed [3:0]  osc1_range,
  input  logic signed [3:0]  osc2_range,
  input  logic signed [3:0]  osc3_range,
  input  logic [31:0]        osc2_tune_q2_30,
  input  logic [31:0]        osc3_tune_q2_30,
  input  logic signed [31:0] osc1_level_q1_31,
  input  logic signed [31:0] osc2_level_q1_31,
  input  logic signed [31:0] osc3_level_q1_31,
  input  logic signed [31:0] noise_level_q1_31,

  // Estado para conmutacion segura desde el core
  output logic               idle
);
  import fx_dsp_pkg::*;

  typedef enum logic [1:0] {
    ST_IDLE = 2'd0,
    ST_WAIT = 2'd1,
    ST_OUT  = 2'd2
  } state_t;

  state_t st;
  logic signed [31:0] dry_r;
  logic               synth_tick;
  logic signed [31:0] synth_sample;
  logic               synth_sample_valid;
  logic signed [31:0] out_buf;
  logic               out_buf_valid;

  assign idle      = (st == ST_IDLE) && !out_buf_valid;
  assign in_ready  = enable ? ((st == ST_IDLE) && !out_buf_valid) : out_ready;
  assign out_valid = enable ? out_buf_valid : in_valid;
  assign out_data  = enable ? out_buf       : in_data;

  wire in_fire  = enable && in_valid && in_ready;
  wire out_fire = out_valid && out_ready;

  fx_synth u_synth (
    .clk               (clk),
    .rst_n             (rst_n),
    .sample_tick       (synth_tick),
    .base_phase_inc    (base_phase_inc),
    .inc_valid         (inc_valid),
    .env_vca_q1_31     (env_vca_q1_31),
    .synth_out         (synth_sample),
    .synth_valid       (synth_sample_valid),

    .osc1_wave         (osc1_wave),
    .osc2_wave         (osc2_wave),
    .osc3_wave         (osc3_wave),
    .osc1_range        (osc1_range),
    .osc2_range        (osc2_range),
    .osc3_range        (osc3_range),
    .osc2_tune_q2_30   (osc2_tune_q2_30),
    .osc3_tune_q2_30   (osc3_tune_q2_30),
    .osc1_level        (osc1_level_q1_31),
    .osc2_level        (osc2_level_q1_31),
    .osc3_level        (osc3_level_q1_31),
    .noise_level       (noise_level_q1_31),

    // Filtro del synth reservado para la siguiente etapa.
    .f_b0              (32'sh4000_0000),
    .f_b1              (32'sd0),
    .f_b2              (32'sd0),
    .f_a1              (32'sd0),
    .f_a2              (32'sd0),
    .filter_on         (1'b0)
  );

  always_ff @(posedge clk) begin
    if (!rst_n) begin
      st            <= ST_IDLE;
      dry_r         <= '0;
      synth_tick    <= 1'b0;
      out_buf       <= '0;
      out_buf_valid <= 1'b0;
    end else begin
      synth_tick <= 1'b0;

      if (!enable) begin
        // enable solo cambia cuando la cadena esta vacia.
        st            <= ST_IDLE;
        out_buf_valid <= 1'b0;
      end else begin
        if (out_fire)
          out_buf_valid <= 1'b0;

        case (st)
          ST_IDLE: begin
            if (in_fire) begin
              dry_r      <= in_data;
              synth_tick <= 1'b1;
              st         <= ST_WAIT;
            end
          end

          ST_WAIT: begin
            if (synth_sample_valid) begin
              if (synth_only)
                out_buf <= synth_sample;
              else
                out_buf <= sat_add32(dry_r >>> 1, synth_sample >>> 1);

              out_buf_valid <= 1'b1;
              st            <= ST_OUT;
            end
          end

          ST_OUT: begin
            if (out_fire)
              st <= ST_IDLE;
          end

          default: st <= ST_IDLE;
        endcase
      end
    end
  end

endmodule
