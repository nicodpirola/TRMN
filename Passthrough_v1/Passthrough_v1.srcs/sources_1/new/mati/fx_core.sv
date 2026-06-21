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

  // AXIS in
  input logic [31:0]  s_axis_tdata,
  input logic [2:0]   s_axis_tid,
  input logic         s_axis_tvalid,
  output logic        s_axis_tready,

  // AXIS out
  output logic [31:0] m_axis_tdata,
  output logic [2:0]  m_axis_tid,
  output logic        m_axis_tvalid,
  input logic         m_axis_tready,

  // Encoders (pines crudos del PL)
  input  logic [5:0]  enc_a,
  input  logic [5:0]  enc_b
);

  // Signals mono adapter <-> efecto
  logic               mono_valid;
  logic signed [31:0] mono_data;
  logic               mono_ready;
  logic               ret_valid;
  logic signed [31:0] ret_data;
  logic               ret_ready;
  logic               adapter_idle;

  // Signals regmap
  logic               reg_enable;
  logic [31:0]        reg_D_16_16;
  logic [31:0]        reg_fb_q1_31;
  logic [31:0]        reg_wet_q1_31;

  // ---- Encoders ----
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

  // ---- Regmap ----
  fx_regmap u_regmap (
    .clk            (clk),
    .rst_n          (rst_n),
    .s_axi_awaddr   (s_axi_awaddr),
    .s_axi_awvalid  (s_axi_awvalid),
    .s_axi_awready  (s_axi_awready),
    .s_axi_wdata    (s_axi_wdata),
    .s_axi_wstrb    (s_axi_wstrb),
    .s_axi_wvalid   (s_axi_wvalid),
    .s_axi_wready   (s_axi_wready),
    .s_axi_bresp    (s_axi_bresp),
    .s_axi_bvalid   (s_axi_bvalid),
    .s_axi_bready   (s_axi_bready),
    .s_axi_araddr   (s_axi_araddr),
    .s_axi_arvalid  (s_axi_arvalid),
    .s_axi_arready  (s_axi_arready),
    .s_axi_rdata    (s_axi_rdata),
    .s_axi_rresp    (s_axi_rresp),
    .s_axi_rvalid   (s_axi_rvalid),
    .s_axi_rready   (s_axi_rready),
    .o_enable       (reg_enable),
    .o_D_16_16      (reg_D_16_16),
    .o_fb_q1_31     (reg_fb_q1_31),
    .o_wet_q1_31    (reg_wet_q1_31),
    .i_enc_count    (enc_count)
  );

  // ---- Adapter ----
  fx_axis_mono_adapter u_adapter (
    .clk          (clk),
    .rst_n        (rst_n),
    .s_axis_tdata (s_axis_tdata),
    .s_axis_tid   (s_axis_tid),
    .s_axis_tvalid(s_axis_tvalid),
    .s_axis_tready(s_axis_tready),
    .m_axis_tdata (m_axis_tdata),
    .m_axis_tid   (m_axis_tid),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tready(m_axis_tready),
    .in_valid     (mono_valid),
    .in_data      (mono_data),
    .in_ready     (mono_ready),
    .out_valid    (ret_valid),
    .out_data     (ret_data),
    .out_ready    (ret_ready),
    .idle         (adapter_idle)
  );

  // ---- Efecto delay ----
  fx_delay_simple #(.ADDR_W(15)) u_delay (
    .clk(clk), .rst_n(rst_n),
    .enable(reg_enable && fx_enable),
    .in_valid(mono_valid), .in_ready(mono_ready), .in_data(mono_data),
    .out_valid(ret_valid), .out_ready(ret_ready), .out_data(ret_data),
    .D_16_16(reg_D_16_16),
    .fb_q1_31(reg_fb_q1_31),
    .wet_q1_31(reg_wet_q1_31)
  );

endmodule