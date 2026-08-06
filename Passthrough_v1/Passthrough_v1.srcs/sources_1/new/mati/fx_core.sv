// =============================================================================
// fx_core.sv - ENTREGA PARA PRUEBA CON THEREMIN: SYNTH + DELAY SIMPLE
//
// Cadena mono:
//   AXIS adapter -> synth insert -> delay simple -> AXIS adapter
//
// El looper del compañero queda DESPUES de M_AXIS; no se modifica.
//
// Tap pasivo:
//   muestra realmente aceptada -> envelope -> pitch -> period_to_inc -> synth
//
// Conmutacion segura:
//   switch fisico, CTRL, FX_EN y parametros se aplican solamente cuando:
//     adapter_idle && synth_idle && delay_idle
//
// Esto evita cambiar bypass/efecto con una muestra en vuelo.
// =============================================================================
module fx_core (
  input logic         clk,
  input logic         rst_n,
  input logic         fx_enable,

  // AXI4-Lite slave
  input  logic [31:0] s_axi_awaddr,
  input  logic        s_axi_awvalid,
  output logic        s_axi_awready,
  input  logic [31:0] s_axi_wdata,
  input  logic [3:0]  s_axi_wstrb,
  input  logic        s_axi_wvalid,
  output logic        s_axi_wready,
  output logic [1:0]  s_axi_bresp,
  output logic        s_axi_bvalid,
  input  logic        s_axi_bready,
  input  logic [31:0] s_axi_araddr,
  input  logic        s_axi_arvalid,
  output logic        s_axi_arready,
  output logic [31:0] s_axi_rdata,
  output logic [1:0]  s_axi_rresp,
  output logic        s_axi_rvalid,
  input  logic        s_axi_rready,

  // AXIS
  input  logic [31:0] s_axis_tdata,
  input  logic [2:0]  s_axis_tid,
  input  logic        s_axis_tvalid,
  output logic        s_axis_tready,
  output logic [31:0] m_axis_tdata,
  output logic [2:0]  m_axis_tid,
  output logic        m_axis_tvalid,
  input  logic        m_axis_tready,

  // Encoders
  input  logic [5:0]  enc_a,
  input  logic [5:0]  enc_b
);

  // ---------------------------------------------------------------------------
  // Adapter stereo <-> mono
  // ---------------------------------------------------------------------------
  logic               mono_valid, mono_ready;
  logic signed [31:0] mono_data;
  logic               ret_valid, ret_ready;
  logic signed [31:0] ret_data;
  logic signed [31:0] ret_data_mux;
  logic               adapter_idle;

  fx_axis_mono_adapter u_adapter (
    .clk(clk), .rst_n(rst_n),
    .s_axis_tdata(s_axis_tdata), .s_axis_tid(s_axis_tid),
    .s_axis_tvalid(s_axis_tvalid), .s_axis_tready(s_axis_tready),
    .m_axis_tdata(m_axis_tdata), .m_axis_tid(m_axis_tid),
    .m_axis_tvalid(m_axis_tvalid), .m_axis_tready(m_axis_tready),
    .in_valid(mono_valid), .in_data(mono_data), .in_ready(mono_ready),
    .out_valid(ret_valid), .out_data(ret_data_mux), .out_ready(ret_ready),
    .idle(adapter_idle)
  );

  // Pulso de muestra realmente aceptada por la cadena.
  wire mono_fire = mono_valid && mono_ready;

  // ---------------------------------------------------------------------------
  // Encoders existentes
  // ---------------------------------------------------------------------------
  logic               enc_tick;
  logic signed [15:0] enc_count [0:5];
  logic [5:0]         enc_step;

  tick_gen #(.DIV(2500)) u_tick (
    .clk(clk), .rst_n(rst_n), .tick(enc_tick)
  );

  genvar i;
  generate
    for (i = 0; i < 6; i++) begin : g_enc
      quad_decoder #(.CNT_W(16), .DB_N(8)) u_enc (
        .clk(clk), .rst_n(rst_n), .tick(enc_tick),
        .a_raw(enc_a[i]), .b_raw(enc_b[i]),
        .count(enc_count[i]), .step(enc_step[i])
      );
    end
  endgenerate

  // ---------------------------------------------------------------------------
  // Regmap: valores solicitados por PS
  // ---------------------------------------------------------------------------
  logic        reg_enable_req;
  logic        tone_test_req;
  logic [15:0] fx_en_req;

  logic [31:0] delay_time_req;
  logic [31:0] delay_fb_req;
  logic [31:0] delay_wet_req;

  logic [31:0] o1_cfg_req, o1_lvl_req;
  logic [31:0] o2_cfg_req, o2_tune_req, o2_lvl_req;
  logic [31:0] o3_cfg_req, o3_tune_req, o3_lvl_req;
  logic [31:0] noise_lvl_req;

  logic [31:0] audio_snoop;
  logic [31:0] synth_status;

  logic signed [31:0] synth_env_q3_29;
  logic signed [31:0] synth_env_vca_q1_31;
  logic               synth_gate;
  logic               synth_pitch_locked;
  logic [31:0]        synth_period_16_16;
  logic               synth_period_valid;
  logic [31:0]        synth_base_phase_inc;
  logic               synth_inc_valid;

  fx_regmap u_regmap (
    .clk(clk), .rst_n(rst_n),
    .s_axi_awaddr(s_axi_awaddr), .s_axi_awvalid(s_axi_awvalid),
    .s_axi_awready(s_axi_awready),
    .s_axi_wdata(s_axi_wdata), .s_axi_wstrb(s_axi_wstrb),
    .s_axi_wvalid(s_axi_wvalid), .s_axi_wready(s_axi_wready),
    .s_axi_bresp(s_axi_bresp), .s_axi_bvalid(s_axi_bvalid),
    .s_axi_bready(s_axi_bready),
    .s_axi_araddr(s_axi_araddr), .s_axi_arvalid(s_axi_arvalid),
    .s_axi_arready(s_axi_arready),
    .s_axi_rdata(s_axi_rdata), .s_axi_rresp(s_axi_rresp),
    .s_axi_rvalid(s_axi_rvalid), .s_axi_rready(s_axi_rready),

    .o_enable(reg_enable_req),
    .o_tone_test(tone_test_req),
    .o_fx_en(fx_en_req),

    // Salidas no usadas por esta entrega
    .o_dist_drive_16_16(), .o_dist_level_q1_31(),
    .o_dist_mix_q1_31(), .o_dist_tone_q1_31(),
    .o_wt_addr(), .o_wt_data(), .o_wt_wr(),
    .o_tl_l_b0(), .o_tl_l_b1(), .o_tl_l_b2(),
    .o_tl_l_a1(), .o_tl_l_a2(),
    .o_tl_h_b0(), .o_tl_h_b1(), .o_tl_h_b2(),
    .o_tl_h_a1(), .o_tl_h_a2(),
    .o_cho_center_16_16(), .o_cho_depth_16_16(),
    .o_cho_rate_inc_u32(), .o_cho_wet_q1_31(),
    .o_cho_lpf_g_q1_31(),
    .o_fl_depth_16_16(), .o_fl_rate_inc_u32(),
    .o_fl_fb_q1_31(), .o_fl_wet_q1_31(),
    .o_trem_rate_inc_u32(), .o_trem_depth_q1_31(),

    // Delay
    .o_dly_time_16_16(delay_time_req),
    .o_dly_fb_q1_31(delay_fb_req),
    .o_dly_wet_q1_31(delay_wet_req),

    // Synth
    .o_syn_osc1_cfg(o1_cfg_req),
    .o_syn_osc1_level_q1_31(o1_lvl_req),
    .o_syn_osc2_cfg(o2_cfg_req),
    .o_syn_osc2_tune_uq2_30(o2_tune_req),
    .o_syn_osc2_level_q1_31(o2_lvl_req),
    .o_syn_osc3_cfg(o3_cfg_req),
    .o_syn_osc3_tune_uq2_30(o3_tune_req),
    .o_syn_osc3_level_q1_31(o3_lvl_req),
    .o_syn_noise_level_q1_31(noise_lvl_req),

    // Diagnostico
    .i_audio_snoop(audio_snoop),
    .i_syn_status(synth_status),
    .i_syn_period_16_16(synth_period_16_16),
    .i_syn_phase_inc(synth_base_phase_inc),
    .i_syn_env_q3_29(synth_env_q3_29),
    .i_enc_count(enc_count)
  );

  always_ff @(posedge clk) begin
    if (!rst_n)
      audio_snoop <= 32'd0;
    else if (mono_fire)
      audio_snoop <= mono_data;
  end

  // ---------------------------------------------------------------------------
  // Switch fisico sincronizado
  // ---------------------------------------------------------------------------
  logic [1:0] fx_enable_sync;

  always_ff @(posedge clk) begin
    if (!rst_n)
      fx_enable_sync <= 2'b00;
    else
      fx_enable_sync <= {fx_enable_sync[0], fx_enable};
  end

  // ---------------------------------------------------------------------------
  // Configuracion activa
  // ---------------------------------------------------------------------------
  logic        phy_enable_active;
  logic        reg_enable_active;
  logic        tone_test_active;
  logic [15:0] fx_en_active;

  logic [31:0] delay_time_active;
  logic [31:0] delay_fb_active;
  logic [31:0] delay_wet_active;

  logic [31:0] o1_cfg_active, o1_lvl_active;
  logic [31:0] o2_cfg_active, o2_tune_active, o2_lvl_active;
  logic [31:0] o3_cfg_active, o3_tune_active, o3_lvl_active;
  logic [31:0] noise_lvl_active;

  logic synth_idle;
  logic delay_idle;
  logic delay_clearing;

  wire chain_idle = adapter_idle && synth_idle && delay_idle;

  always_ff @(posedge clk) begin
    if (!rst_n) begin
      phy_enable_active <= 1'b0;
      reg_enable_active <= 1'b0;
      tone_test_active  <= 1'b0;
      fx_en_active      <= 16'd0;

      delay_time_active <= 32'h3840_0000; // 300 ms
      delay_fb_active   <= 32'h3333_3333; // 0.4
      delay_wet_active  <= 32'h4000_0000; // 0.5

      o1_cfg_active     <= 32'h0000_0002;
      o1_lvl_active     <= 32'h3999_9999;
      o2_cfg_active     <= 32'h0000_0002;
      o2_tune_active    <= 32'h4042_6168;
      o2_lvl_active     <= 32'h2666_6666;
      o3_cfg_active     <= 32'h0000_00F3;
      o3_tune_active    <= 32'h4000_0000;
      o3_lvl_active     <= 32'h1999_999A;
      noise_lvl_active  <= 32'd0;
    end else begin // PARCHE ANTIGRAVITY: Forzamos aplicar la configuracion de inmediato sin esperar al chain_idle
      phy_enable_active <= fx_enable_sync[1];
      reg_enable_active <= reg_enable_req;
      tone_test_active  <= tone_test_req;
      fx_en_active      <= fx_en_req;

      delay_time_active <= delay_time_req;
      delay_fb_active   <= delay_fb_req;
      delay_wet_active  <= delay_wet_req;

      o1_cfg_active     <= o1_cfg_req;
      o1_lvl_active     <= o1_lvl_req;
      o2_cfg_active     <= o2_cfg_req;
      o2_tune_active    <= o2_tune_req;
      o2_lvl_active     <= o2_lvl_req;
      o3_cfg_active     <= o3_cfg_req;
      o3_tune_active    <= o3_tune_req;
      o3_lvl_active     <= o3_lvl_req;
      noise_lvl_active  <= noise_lvl_req;
    end
  end

  // Parche Antigravity: Ignoramos el switch fisico porque no esta ruteado en Vivado (pin flotante = 0)
  wire master_active = reg_enable_active;
  wire synth_enable_active = master_active && fx_en_active[13];
  wire synth_only_active   = fx_en_active[14];
  wire delay_enable_active = master_active && fx_en_active[4];

  wire cfg_pending =
      // (phy_enable_active != fx_enable_sync[1]) ||
      (reg_enable_active != reg_enable_req) ||
      (tone_test_active  != tone_test_req) ||
      (fx_en_active      != fx_en_req) ||
      (delay_time_active != delay_time_req) ||
      (delay_fb_active   != delay_fb_req) ||
      (delay_wet_active  != delay_wet_req) ||
      (o1_cfg_active     != o1_cfg_req) ||
      (o1_lvl_active     != o1_lvl_req) ||
      (o2_cfg_active     != o2_cfg_req) ||
      (o2_tune_active    != o2_tune_req) ||
      (o2_lvl_active     != o2_lvl_req) ||
      (o3_cfg_active     != o3_cfg_req) ||
      (o3_tune_active    != o3_tune_req) ||
      (o3_lvl_active     != o3_lvl_req) ||
      (noise_lvl_active  != noise_lvl_req);

  // ---------------------------------------------------------------------------
  // Frontend de pitch/envelope
  // ---------------------------------------------------------------------------
  fx_synth_frontend #(
    .GLIDE(8),
    .ENV_VCA_SHIFT(4)
  ) u_synth_frontend (
    .clk               (clk),
    .rst_n             (rst_n),
    .sample_valid      (mono_fire),
    .sample_data_q3_29 (mono_data),
    
    // El puerto env_gain_q1_31 faltaba y por defecto valia 0, silenciando todo!
    .env_gain_q1_31    (32'sh7FFF_FFFF), // Ganancia 1.0 (Q1.31)

    .env_q3_29         (synth_env_q3_29),
    .env_vca_q1_31     (synth_env_vca_q1_31),
    .gate              (synth_gate),
    .pitch_locked      (synth_pitch_locked),
    .period_16_16      (synth_period_16_16),
    .period_valid      (synth_period_valid),
    .base_phase_inc    (synth_base_phase_inc),
    .inc_valid         (synth_inc_valid)
  );

  // ---------------------------------------------------------------------------
  // Synth
  // ---------------------------------------------------------------------------
  logic               syn_v, syn_r;
  logic signed [31:0] syn_d;

  wire [2:0] osc1_wave = o1_cfg_active[2:0];
  wire [2:0] osc2_wave = o2_cfg_active[2:0];
  wire [2:0] osc3_wave = o3_cfg_active[2:0];
  wire [31:0] p_waves_concat = {23'd0, osc3_wave, osc2_wave, osc1_wave};

  wire signed [3:0] osc1_range = $signed(o1_cfg_active[7:4]);
  wire signed [3:0] osc2_range = $signed(o2_cfg_active[7:4]);
  wire signed [3:0] osc3_range = $signed(o3_cfg_active[7:4]);
  wire [31:0] p_ranges_concat = {20'd0, osc3_range, osc2_range, osc1_range};

  wire synth_idle = 1'b1; // fx_synth_insert V2 no exporta idle, asumimos que nunca traba el pipeline.

  fx_synth_insert u_synth_insert (
    .clk                  (clk),
    .rst_n                (rst_n),
    .enable               (synth_enable_active),
    .synth_only           (synth_only_active),
    .in_valid             (mono_valid),
    .in_ready             (mono_ready),
    .in_data              (mono_data),
    .out_valid            (syn_v),
    .out_ready            (syn_r),
    .out_data             (syn_d),
    .base_phase_inc       (synth_base_phase_inc),
    .inc_valid            (synth_inc_valid),
    .env_vca_q1_31        (synth_env_vca_q1_31),

    .p_waves              (p_waves_concat),
    .p_ranges             (p_ranges_concat),
    .p_osc2_tune          (o2_tune_active),
    .p_osc3_tune          (o3_tune_active),
    .p_osc1_level         ($signed(o1_lvl_active)),
    .p_osc2_level         ($signed(o2_lvl_active)),
    .p_osc3_level         ($signed(o3_lvl_active)),
    .p_noise_level        ($signed(noise_lvl_active)),
    
    // Controles agregados en V2 (Forzados a bypass por defecto)
    .p_synth_level        (32'sh7FFF_FFFF), // Ganancia 1.0 en Q1.31
    .p_dry_level          (32'sh7FFF_FFFF), // Ganancia 1.0 en Q1.31
    .p_f_b0               (32'd0),
    .p_f_b1               (32'd0),
    .p_f_b2               (32'd0),
    .p_f_a1               (32'd0),
    .p_f_a2               (32'd0),
    .p_filter_on          (1'b0)
  );

  // ---------------------------------------------------------------------------
  // Delay simple DESPUES del synth
  // ---------------------------------------------------------------------------
  fx_delay_simple #(
    .ADDR_W(15)
  ) u_delay (
    .clk       (clk),
    .rst_n     (rst_n),
    .enable    (delay_enable_active),
    .in_valid  (syn_v),
    .in_ready  (syn_r),
    .in_data   (syn_d),
    .out_valid (ret_valid),
    .out_ready (ret_ready),
    .out_data  (ret_data),
    .D_16_16   (delay_time_active),
    .fb_q1_31  ($signed(delay_fb_active)),
    .wet_q1_31 ($signed(delay_wet_active)),
    .idle      (delay_idle),
    .clearing  (delay_clearing)
  );

  // ---------------------------------------------------------------------------
  // Diagnostico
  // ---------------------------------------------------------------------------
  always_comb begin
    synth_status = 32'd0;
    synth_status[0]  = synth_gate;
    synth_status[1]  = synth_pitch_locked;
    synth_status[2]  = synth_enable_active;
    synth_status[3]  = synth_only_active;
    synth_status[4]  = delay_enable_active;
    synth_status[5]  = cfg_pending;
    synth_status[6]  = chain_idle;
    synth_status[7]  = delay_clearing;
    synth_status[8]  = phy_enable_active;
    synth_status[9]  = reg_enable_active;
    synth_status[10] = synth_idle;
    synth_status[11] = delay_idle;
    synth_status[12] = adapter_idle;
  end

  // ---------------------------------------------------------------------------
  // Tono de test heredado
  // ---------------------------------------------------------------------------
  logic signed [31:0] tone_sample;
  logic [5:0] tone_cnt;

  always_ff @(posedge clk) begin
    if (!rst_n) begin
      tone_cnt    <= 6'd0;
      tone_sample <= 32'sh0800_0000;
    end else if (ret_valid && ret_ready) begin
      if (tone_cnt == 6'd53) begin
        tone_cnt    <= 6'd0;
        tone_sample <= -tone_sample;
      end else begin
        tone_cnt <= tone_cnt + 1'b1;
      end
    end
  end

  assign ret_data_mux = tone_test_active ? tone_sample : ret_data;

`ifndef SYNTHESIS
  always_ff @(posedge clk) begin
    if (rst_n && mono_valid && !mono_ready)
      $error("fx_core synth+delay: mono_valid sin mono_ready; muestra perdida");
  end
`endif

endmodule
