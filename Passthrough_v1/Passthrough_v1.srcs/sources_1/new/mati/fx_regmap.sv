module fx_regmap (
  input  logic        clk,
  input  logic        rst_n,

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

  // Salidas hacia fx_core
  output logic        o_enable,
  output logic [31:0] o_D_16_16,
  output logic [31:0] o_fb_q1_31,
  output logic [31:0] o_wet_q1_31,

  // Encoders (read-only) desde el PL
  input  logic signed [15:0] i_enc_count [0:5]
);

  logic [31:0] reg_ctrl;
  logic [31:0] reg_delay;
  logic [31:0] reg_fb;
  logic [31:0] reg_wet;

  assign o_enable    = reg_ctrl[0];
  assign o_D_16_16   = reg_delay;
  assign o_fb_q1_31  = reg_fb;
  assign o_wet_q1_31 = reg_wet;

  // --- Write path (decode ensanchado a [7:2]) ---
  logic [5:0] wr_addr_lat;
  logic       aw_done, w_done;

  always_ff @(posedge clk) begin
    if (!rst_n) begin
      reg_ctrl  <= 32'h0000_0001;
      reg_delay <= 32'h5DC0_0000;
      reg_fb    <= 32'h3333_3333;
      reg_wet   <= 32'h4000_0000;
      s_axi_awready <= 1'b0;
      s_axi_wready  <= 1'b0;
      s_axi_bvalid  <= 1'b0;
      s_axi_bresp   <= 2'b00;
      aw_done <= 1'b0;
      w_done  <= 1'b0;
      wr_addr_lat <= '0;
    end else begin
      if (s_axi_awvalid && !aw_done) begin
        s_axi_awready <= 1'b1;
        wr_addr_lat   <= s_axi_awaddr[7:2];
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
          6'd0: reg_ctrl  <= s_axi_wdata;
          6'd1: reg_delay <= s_axi_wdata;
          6'd2: reg_fb    <= s_axi_wdata;
          6'd3: reg_wet   <= s_axi_wdata;
          default: ;
        endcase
        s_axi_bvalid <= 1'b1;
        aw_done <= 1'b0;
        w_done  <= 1'b0;
      end

      if (s_axi_bvalid && s_axi_bready)
        s_axi_bvalid <= 1'b0;
    end
  end

  // --- Read path ---
  always_ff @(posedge clk) begin
    if (!rst_n) begin
      s_axi_arready <= 1'b0;
      s_axi_rvalid  <= 1'b0;
      s_axi_rdata   <= '0;
      s_axi_rresp   <= 2'b00;
    end else begin
      s_axi_arready <= 1'b0;
      if (s_axi_arvalid && !s_axi_rvalid) begin
        s_axi_arready <= 1'b1;
        s_axi_rvalid  <= 1'b1;
        case (s_axi_araddr[7:2])
          6'h00: s_axi_rdata <= reg_ctrl;
          6'h01: s_axi_rdata <= reg_delay;
          6'h02: s_axi_rdata <= reg_fb;
          6'h03: s_axi_rdata <= reg_wet;
          // Encoders RO en 0x40..0x54 (sign-extend a 32b)
          6'h10: s_axi_rdata <= {{16{i_enc_count[0][15]}}, i_enc_count[0]};
          6'h11: s_axi_rdata <= {{16{i_enc_count[1][15]}}, i_enc_count[1]};
          6'h12: s_axi_rdata <= {{16{i_enc_count[2][15]}}, i_enc_count[2]};
          6'h13: s_axi_rdata <= {{16{i_enc_count[3][15]}}, i_enc_count[3]};
          6'h14: s_axi_rdata <= {{16{i_enc_count[4][15]}}, i_enc_count[4]};
          6'h15: s_axi_rdata <= {{16{i_enc_count[5][15]}}, i_enc_count[5]};
          default: s_axi_rdata <= 32'hDEAD_BEEF;
        endcase
      end
      if (s_axi_rvalid && s_axi_rready)
        s_axi_rvalid <= 1'b0;
    end
  end
endmodule