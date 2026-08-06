// =============================================================================
// fx_regmap.sv - VERSION FINAL-2 (definitiva)
//
// Decodifica addr[9:2]. MAPA (offsets en bytes):
//   0x00 CTRL   [0]=master enable   [3]=tono test
//   0x04 FX_EN  [0]DIST [1]CHORUS [2]FLANGER [3]TREMOLO [4]DELAY
//               [5]TONE_BLEND [6]PEAK [7]HPF_PRE [8]DCB_IN [9]DCB_POST
//               [10]CHORUS_LPF
//   0x08 SNOOP (RO)
//   -- DIST --   0x10 DRIVE(Q16.16) 0x14 LEVEL(Q1.31) 0x18 MIX(Q1.31)
//                0x1C WT_ADDR  0x20 WT_DATA (carga y auto-incrementa)
//                0x24 TONE_BLEND(Q1.31)
//                0x28..0x38 coefs LPF del tone (b0,b1,b2,a1,a2) Q2.30
//                0x3C..0x4C coefs HPF del tone (b0,b1,b2,a1,a2) Q2.30
//   -- CHORUS -- 0x50 CENTER 0x54 DEPTH (muestras Q16.16) 0x58 RATE 0x5C WET
//                0x60 LPF_G (Q1.31, TPT)
//   -- FLANGER - 0x70 DEPTH 0x74 RATE 0x78 FB 0x7C WET (center fijo en RTL)
//   -- TREMOLO - 0x90 RATE 0x94 DEPTH
//   -- DELAY --  0xB0 TIME(muestras Q16.16) 0xB4 FB 0xB8 WET
//   -- SYNTH -- 0xC0 O1_CFG 0xC4 O1_LEVEL 0xC8 O2_CFG 0xCC O2_TUNE
//               0xD0 O2_LEVEL 0xD4 O3_CFG 0xD8 O3_TUNE 0xDC O3_LEVEL
//               0xE0 NOISE_LEVEL
//               0xE4 STATUS(RO) 0xE8 PERIOD(RO) 0xEC PHASE_INC(RO)
//               0xF0 ENVELOPE(RO)
//   0x100..0x114 ENCODERS (RO)
// =============================================================================
module fx_regmap (
  input  logic        clk,
  input  logic        rst_n,

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

  // Global
  output logic        o_enable,
  output logic        o_tone_test,
  output logic [15:0] o_fx_en,

  // Distorsion
  output logic [31:0] o_dist_drive_16_16,
  output logic [31:0] o_dist_level_q1_31,
  output logic [31:0] o_dist_mix_q1_31,
  output logic [31:0] o_dist_tone_q1_31,
  output logic [7:0]  o_wt_addr,
  output logic [31:0] o_wt_data,
  output logic        o_wt_wr,
  // coeficientes del tone blend (Q2.30, calculados en el PS)
  output logic signed [31:0] o_tl_l_b0,
  output logic signed [31:0] o_tl_l_b1,
  output logic signed [31:0] o_tl_l_b2,
  output logic signed [31:0] o_tl_l_a1,
  output logic signed [31:0] o_tl_l_a2,
  output logic signed [31:0] o_tl_h_b0,
  output logic signed [31:0] o_tl_h_b1,
  output logic signed [31:0] o_tl_h_b2,
  output logic signed [31:0] o_tl_h_a1,
  output logic signed [31:0] o_tl_h_a2,

  // Chorus
  output logic [31:0] o_cho_center_16_16,
  output logic [31:0] o_cho_depth_16_16,
  output logic [31:0] o_cho_rate_inc_u32,
  output logic [31:0] o_cho_wet_q1_31,
  output logic [31:0] o_cho_lpf_g_q1_31,

  // Flanger
  output logic [31:0] o_fl_depth_16_16,
  output logic [31:0] o_fl_rate_inc_u32,
  output logic [31:0] o_fl_fb_q1_31,
  output logic [31:0] o_fl_wet_q1_31,

  // Tremolo
  output logic [31:0] o_trem_rate_inc_u32,
  output logic [31:0] o_trem_depth_q1_31,

  // Delay (fx_delay_simple: sin LPF interno)
  output logic [31:0] o_dly_time_16_16,
  output logic [31:0] o_dly_fb_q1_31,
  output logic [31:0] o_dly_wet_q1_31,

  // Synth (0xC0..0xE0)
  // CFG: wave[2:0], range signed[7:4].
  output logic [31:0] o_syn_osc1_cfg,
  output logic [31:0] o_syn_osc1_level_q1_31,
  output logic [31:0] o_syn_osc2_cfg,
  output logic [31:0] o_syn_osc2_tune_uq2_30,
  output logic [31:0] o_syn_osc2_level_q1_31,
  output logic [31:0] o_syn_osc3_cfg,
  output logic [31:0] o_syn_osc3_tune_uq2_30,
  output logic [31:0] o_syn_osc3_level_q1_31,
  output logic [31:0] o_syn_noise_level_q1_31,

  // Read-only desde el PL
  input  logic [31:0] i_audio_snoop,
  input  logic [31:0] i_syn_status,
  input  logic [31:0] i_syn_period_16_16,
  input  logic [31:0] i_syn_phase_inc,
  input  logic [31:0] i_syn_env_q3_29,
  input  logic signed [15:0] i_enc_count [0:5]
);

  logic [31:0] r_ctrl, r_fx_en;
  logic [31:0] r_drive, r_level, r_mix, r_tone;
  logic [7:0]  r_wt_addr;
  logic signed [31:0] r_l_b0, r_l_b1, r_l_b2, r_l_a1, r_l_a2;
  logic signed [31:0] r_h_b0, r_h_b1, r_h_b2, r_h_a1, r_h_a2;
  logic [31:0] r_cho_c, r_cho_d, r_cho_r, r_cho_w, r_cho_g;
  logic [31:0] r_fl_d,  r_fl_r,  r_fl_fb, r_fl_w;
  logic [31:0] r_tr_r,  r_tr_d;
  logic [31:0] r_dl_t,  r_dl_fb, r_dl_w;
  logic [31:0] r_syn_o1_cfg, r_syn_o1_lvl;
  logic [31:0] r_syn_o2_cfg, r_syn_o2_tune, r_syn_o2_lvl;
  logic [31:0] r_syn_o3_cfg, r_syn_o3_tune, r_syn_o3_lvl;
  logic [31:0] r_syn_noise_lvl;

  assign o_enable    = r_ctrl[0];
  assign o_tone_test = r_ctrl[3];
  assign o_fx_en     = r_fx_en[15:0];
  assign o_dist_drive_16_16 = r_drive;
  assign o_dist_level_q1_31 = r_level;
  assign o_dist_mix_q1_31   = r_mix;
  assign o_dist_tone_q1_31  = r_tone;
  assign o_tl_l_b0 = r_l_b0;
  assign o_tl_l_b1 = r_l_b1;
  assign o_tl_l_b2 = r_l_b2;
  assign o_tl_l_a1 = r_l_a1;
  assign o_tl_l_a2 = r_l_a2;
  assign o_tl_h_b0 = r_h_b0;
  assign o_tl_h_b1 = r_h_b1;
  assign o_tl_h_b2 = r_h_b2;
  assign o_tl_h_a1 = r_h_a1;
  assign o_tl_h_a2 = r_h_a2;
  assign o_cho_center_16_16 = r_cho_c;
  assign o_cho_depth_16_16  = r_cho_d;
  assign o_cho_rate_inc_u32 = r_cho_r;
  assign o_cho_wet_q1_31    = r_cho_w;
  assign o_cho_lpf_g_q1_31  = r_cho_g;
  assign o_fl_depth_16_16   = r_fl_d;
  assign o_fl_rate_inc_u32  = r_fl_r;
  assign o_fl_fb_q1_31      = r_fl_fb;
  assign o_fl_wet_q1_31     = r_fl_w;
  assign o_trem_rate_inc_u32 = r_tr_r;
  assign o_trem_depth_q1_31  = r_tr_d;
  assign o_dly_time_16_16 = r_dl_t;
  assign o_dly_fb_q1_31   = r_dl_fb;
  assign o_dly_wet_q1_31  = r_dl_w;

  assign o_syn_osc1_cfg          = r_syn_o1_cfg;
  assign o_syn_osc1_level_q1_31  = r_syn_o1_lvl;
  assign o_syn_osc2_cfg          = r_syn_o2_cfg;
  assign o_syn_osc2_tune_uq2_30  = r_syn_o2_tune;
  assign o_syn_osc2_level_q1_31  = r_syn_o2_lvl;
  assign o_syn_osc3_cfg          = r_syn_o3_cfg;
  assign o_syn_osc3_tune_uq2_30  = r_syn_o3_tune;
  assign o_syn_osc3_level_q1_31  = r_syn_o3_lvl;
  assign o_syn_noise_level_q1_31 = r_syn_noise_lvl;

  // ---- Write path ----
  logic [7:0] wr_addr_lat;
  logic       aw_done, w_done;

  always_ff @(posedge clk) begin
    if (!rst_n) begin
      r_ctrl  <= 32'h0000_0001;   // master enable ON
      r_fx_en <= 32'h0000_0000;   // TODO en bypass al arrancar
      r_drive <= 32'h0003_0000;   // 3.0
      r_level <= 32'h2000_0000;   // 0.25  (gain staging!)
      r_mix   <= 32'h7FFF_FFFF;   // 1.0
      r_tone  <= 32'h4000_0000;   // blend 0.5
      // tone blend default: LPF/HPF 900Hz Q=0.707 (el PS los pisa)
      r_l_b0 <= 32'sh00346CE6; r_l_b1 <= 32'sh0068D9CD; r_l_b2 <= 32'sh00346CE6;
      r_l_a1 <= 32'sh8AA478E9; r_l_a2 <= 32'sh362D3AB1;
      r_h_b0 <= 32'sh3AE23072; r_h_b1 <= 32'sh8A3B9F1C; r_h_b2 <= 32'sh3AE23072;
      r_h_a1 <= 32'sh8AA478E9; r_h_a2 <= 32'sh362D3AB1;
      r_wt_addr <= 8'd0;
      r_cho_c <= 32'h02D0_0000;   // 15ms  = 720 muestras
      r_cho_d <= 32'h0048_0000;   // 1.5ms = 72
      r_cho_r <= 32'd35791;       // ~0.4 Hz
      r_cho_w <= 32'h4000_0000;   // 0.5
      r_cho_g <= 32'h2070_4E2B;   // LPF TPT ~5kHz
      r_fl_d  <= 32'h0060_0000;   // 2ms = 96
      r_fl_r  <= 32'd35791;
      r_fl_fb <= 32'h4000_0000;
      r_fl_w  <= 32'h4000_0000;
      r_tr_r  <= 32'd447392;      // ~5 Hz
      r_tr_d  <= 32'h4000_0000;
      r_dl_t  <= 32'h3840_0000;   // 300ms = 14400
      r_dl_fb <= 32'h3333_3333;   // 0.4
      r_dl_w  <= 32'h4000_0000;

      // Patch inicial estilo Minimoog
      r_syn_o1_cfg  <= 32'h0000_0002; // saw, 8'
      r_syn_o1_lvl  <= 32'h3999_9999; // 0.45
      r_syn_o2_cfg  <= 32'h0000_0002; // saw, 8'
      r_syn_o2_tune <= 32'h4042_6168; // +7 cents, UQ2.30
      r_syn_o2_lvl  <= 32'h2666_6666; // 0.30
      r_syn_o3_cfg  <= 32'h0000_00F3; // square, 16' (range=-1)
      r_syn_o3_tune <= 32'h4000_0000; // unison
      r_syn_o3_lvl  <= 32'h1999_999A; // 0.20
      r_syn_noise_lvl <= 32'h0000_0000;
      s_axi_awready <= 1'b0; s_axi_wready <= 1'b0;
      s_axi_bvalid  <= 1'b0; s_axi_bresp  <= 2'b00;
      aw_done <= 1'b0; w_done <= 1'b0; wr_addr_lat <= '0;
      o_wt_wr <= 1'b0; o_wt_addr <= 8'd0; o_wt_data <= 32'd0;
    end else begin
      o_wt_wr <= 1'b0;   // pulso de 1 ciclo

      if (s_axi_awvalid && !aw_done) begin
        s_axi_awready <= 1'b1;
        wr_addr_lat   <= s_axi_awaddr[9:2];
        aw_done       <= 1'b1;
      end else
        s_axi_awready <= 1'b0;

      if (s_axi_wvalid && !w_done) begin
        s_axi_wready <= 1'b1;
        w_done       <= 1'b1;
      end else
        s_axi_wready <= 1'b0;

      if (aw_done && w_done) begin
        case (wr_addr_lat)
          8'h00: r_ctrl  <= s_axi_wdata;          // 0x00
          8'h01: r_fx_en <= s_axi_wdata;          // 0x04
          // SYNTH (espacio reservado 0xC0..0xE0)
          8'h30: r_syn_o1_cfg  <= s_axi_wdata;    // 0xC0
          8'h31: r_syn_o1_lvl  <= s_axi_wdata;    // 0xC4
          8'h32: r_syn_o2_cfg  <= s_axi_wdata;    // 0xC8
          8'h33: r_syn_o2_tune <= s_axi_wdata;    // 0xCC
          8'h34: r_syn_o2_lvl  <= s_axi_wdata;    // 0xD0
          8'h35: r_syn_o3_cfg  <= s_axi_wdata;    // 0xD4
          8'h36: r_syn_o3_tune <= s_axi_wdata;    // 0xD8
          8'h37: r_syn_o3_lvl  <= s_axi_wdata;    // 0xDC
          8'h38: r_syn_noise_lvl <= s_axi_wdata;  // 0xE0

          // DIST
          8'h04: r_drive <= s_axi_wdata;          // 0x10
          8'h05: r_level <= s_axi_wdata;          // 0x14
          8'h06: r_mix   <= s_axi_wdata;          // 0x18
          8'h07: r_wt_addr <= s_axi_wdata[7:0];   // 0x1C
          8'h08: begin                            // 0x20 WT_DATA
            o_wt_addr <= r_wt_addr;
            o_wt_data <= s_axi_wdata;
            o_wt_wr   <= 1'b1;
            r_wt_addr <= r_wt_addr + 8'd1;
          end
          8'h09: r_tone <= s_axi_wdata;           // 0x24
          8'h0A: r_l_b0 <= s_axi_wdata;           // 0x28
          8'h0B: r_l_b1 <= s_axi_wdata;           // 0x2C
          8'h0C: r_l_b2 <= s_axi_wdata;           // 0x30
          8'h0D: r_l_a1 <= s_axi_wdata;           // 0x34
          8'h0E: r_l_a2 <= s_axi_wdata;           // 0x38
          8'h0F: r_h_b0 <= s_axi_wdata;           // 0x3C
          8'h10: r_h_b1 <= s_axi_wdata;           // 0x40
          8'h11: r_h_b2 <= s_axi_wdata;           // 0x44
          8'h12: r_h_a1 <= s_axi_wdata;           // 0x48
          8'h13: r_h_a2 <= s_axi_wdata;           // 0x4C
          // CHORUS
          8'h14: r_cho_c <= s_axi_wdata;          // 0x50
          8'h15: r_cho_d <= s_axi_wdata;          // 0x54
          8'h16: r_cho_r <= s_axi_wdata;          // 0x58
          8'h17: r_cho_w <= s_axi_wdata;          // 0x5C
          8'h18: r_cho_g <= s_axi_wdata;          // 0x60
          // FLANGER
          8'h1C: r_fl_d  <= s_axi_wdata;          // 0x70
          8'h1D: r_fl_r  <= s_axi_wdata;          // 0x74
          8'h1E: r_fl_fb <= s_axi_wdata;          // 0x78
          8'h1F: r_fl_w  <= s_axi_wdata;          // 0x7C
          // TREMOLO
          8'h24: r_tr_r  <= s_axi_wdata;          // 0x90
          8'h25: r_tr_d  <= s_axi_wdata;          // 0x94
          // DELAY
          8'h2C: r_dl_t  <= s_axi_wdata;          // 0xB0
          8'h2D: r_dl_fb <= s_axi_wdata;          // 0xB4
          8'h2E: r_dl_w  <= s_axi_wdata;          // 0xB8
          default: ;
        endcase
        s_axi_bvalid <= 1'b1;
        aw_done <= 1'b0; w_done <= 1'b0;
      end

      if (s_axi_bvalid && s_axi_bready)
        s_axi_bvalid <= 1'b0;
    end
  end

  // ---- Read path ----
  always_ff @(posedge clk) begin
    if (!rst_n) begin
      s_axi_arready <= 1'b0; s_axi_rvalid <= 1'b0;
      s_axi_rdata <= '0; s_axi_rresp <= 2'b00;
    end else begin
      s_axi_arready <= 1'b0;
      if (s_axi_arvalid && !s_axi_rvalid) begin
        s_axi_arready <= 1'b1;
        s_axi_rvalid  <= 1'b1;
        case (s_axi_araddr[9:2])
          8'h00: s_axi_rdata <= r_ctrl;
          8'h01: s_axi_rdata <= r_fx_en;
          8'h02: s_axi_rdata <= i_audio_snoop;
          8'h04: s_axi_rdata <= r_drive;
          8'h05: s_axi_rdata <= r_level;
          8'h06: s_axi_rdata <= r_mix;
          8'h09: s_axi_rdata <= r_tone;
          8'h0A: s_axi_rdata <= r_l_b0;
          8'h0B: s_axi_rdata <= r_l_b1;
          8'h0C: s_axi_rdata <= r_l_b2;
          8'h0D: s_axi_rdata <= r_l_a1;
          8'h0E: s_axi_rdata <= r_l_a2;
          8'h0F: s_axi_rdata <= r_h_b0;
          8'h10: s_axi_rdata <= r_h_b1;
          8'h11: s_axi_rdata <= r_h_b2;
          8'h12: s_axi_rdata <= r_h_a1;
          8'h13: s_axi_rdata <= r_h_a2;
          8'h14: s_axi_rdata <= r_cho_c;
          8'h15: s_axi_rdata <= r_cho_d;
          8'h16: s_axi_rdata <= r_cho_r;
          8'h17: s_axi_rdata <= r_cho_w;
          8'h18: s_axi_rdata <= r_cho_g;
          8'h1C: s_axi_rdata <= r_fl_d;
          8'h1D: s_axi_rdata <= r_fl_r;
          8'h1E: s_axi_rdata <= r_fl_fb;
          8'h1F: s_axi_rdata <= r_fl_w;
          8'h24: s_axi_rdata <= r_tr_r;
          8'h25: s_axi_rdata <= r_tr_d;
          8'h2C: s_axi_rdata <= r_dl_t;
          8'h2D: s_axi_rdata <= r_dl_fb;
          8'h2E: s_axi_rdata <= r_dl_w;

          // Synth config
          8'h30: s_axi_rdata <= r_syn_o1_cfg;     // 0xC0
          8'h31: s_axi_rdata <= r_syn_o1_lvl;     // 0xC4
          8'h32: s_axi_rdata <= r_syn_o2_cfg;     // 0xC8
          8'h33: s_axi_rdata <= r_syn_o2_tune;    // 0xCC
          8'h34: s_axi_rdata <= r_syn_o2_lvl;     // 0xD0
          8'h35: s_axi_rdata <= r_syn_o3_cfg;     // 0xD4
          8'h36: s_axi_rdata <= r_syn_o3_tune;    // 0xD8
          8'h37: s_axi_rdata <= r_syn_o3_lvl;     // 0xDC
          8'h38: s_axi_rdata <= r_syn_noise_lvl;  // 0xE0

          // Synth diagnostics
          8'h39: s_axi_rdata <= i_syn_status;       // 0xE4
          8'h3A: s_axi_rdata <= i_syn_period_16_16; // 0xE8
          8'h3B: s_axi_rdata <= i_syn_phase_inc;    // 0xEC
          8'h3C: s_axi_rdata <= i_syn_env_q3_29;    // 0xF0

          8'h40: s_axi_rdata <= {{16{i_enc_count[0][15]}}, i_enc_count[0]};
          8'h41: s_axi_rdata <= {{16{i_enc_count[1][15]}}, i_enc_count[1]};
          8'h42: s_axi_rdata <= {{16{i_enc_count[2][15]}}, i_enc_count[2]};
          8'h43: s_axi_rdata <= {{16{i_enc_count[3][15]}}, i_enc_count[3]};
          8'h44: s_axi_rdata <= {{16{i_enc_count[4][15]}}, i_enc_count[4]};
          8'h45: s_axi_rdata <= {{16{i_enc_count[5][15]}}, i_enc_count[5]};
          default: s_axi_rdata <= 32'hDEAD_BEEF;
        endcase
      end
      if (s_axi_rvalid && s_axi_rready)
        s_axi_rvalid <= 1'b0;
    end
  end
endmodule