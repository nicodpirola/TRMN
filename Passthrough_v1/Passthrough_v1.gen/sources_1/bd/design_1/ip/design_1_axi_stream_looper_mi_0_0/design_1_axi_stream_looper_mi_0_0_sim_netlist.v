// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Thu Apr  9 21:49:54 2026
// Host        : DESKTOP-FLN9N0C running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/Tesis/Passthrough_v1/Passthrough_v1.gen/sources_1/bd/design_1/ip/design_1_axi_stream_looper_mi_0_0/design_1_axi_stream_looper_mi_0_0_sim_netlist.v
// Design      : design_1_axi_stream_looper_mi_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axi_stream_looper_mi_0_0,axi_stream_looper_mixer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axi_stream_looper_mixer,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module design_1_axi_stream_looper_mi_0_0
   (clk,
    resetn,
    mode,
    s0_axis_tdata,
    s0_axis_tvalid,
    s0_axis_tlast,
    s0_axis_tready,
    s1_axis_tdata,
    s1_axis_tvalid,
    s1_axis_tlast,
    s1_axis_tready,
    m_i2s_axis_tdata,
    m_i2s_axis_tvalid,
    m_i2s_axis_tlast,
    m_i2s_axis_tready,
    m_dma_axis_tdata,
    m_dma_axis_tvalid,
    m_dma_axis_tlast,
    m_dma_axis_tready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_dma_axis:m_i2s_axis:s0_axis:s1_axis, ASSOCIATED_RESET resetn, FREQ_HZ 12288013, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  input [1:0]mode;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s0_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 12288013, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s0_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TVALID" *) input s0_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TLAST" *) input s0_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TREADY" *) output s0_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s1_axis TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s1_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 12288013, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s1_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s1_axis TVALID" *) input s1_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s1_axis TLAST" *) input s1_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s1_axis TREADY" *) output s1_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_i2s_axis TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_i2s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 12288013, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]m_i2s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_i2s_axis TVALID" *) output m_i2s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_i2s_axis TLAST" *) output m_i2s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_i2s_axis TREADY" *) input m_i2s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_dma_axis TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_dma_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 12288013, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]m_dma_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_dma_axis TVALID" *) output m_dma_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_dma_axis TLAST" *) output m_dma_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_dma_axis TREADY" *) input m_dma_axis_tready;

  wire clk;
  wire [31:0]m_dma_axis_tdata;
  wire m_dma_axis_tready;
  wire m_dma_axis_tvalid;
  wire [31:0]m_i2s_axis_tdata;
  wire m_i2s_axis_tready;
  wire [1:0]mode;
  wire resetn;
  wire [31:0]s0_axis_tdata;
  wire s0_axis_tlast;
  wire s0_axis_tready;
  wire s0_axis_tvalid;
  wire [31:0]s1_axis_tdata;
  wire s1_axis_tready;
  wire s1_axis_tvalid;

  assign m_dma_axis_tlast = s0_axis_tlast;
  assign m_i2s_axis_tlast = s0_axis_tlast;
  assign m_i2s_axis_tvalid = s0_axis_tvalid;
  design_1_axi_stream_looper_mi_0_0_axi_stream_looper_mixer inst
       (.clk(clk),
        .m_dma_axis_tdata(m_dma_axis_tdata),
        .m_dma_axis_tready(m_dma_axis_tready),
        .m_dma_axis_tvalid(m_dma_axis_tvalid),
        .m_i2s_axis_tdata(m_i2s_axis_tdata),
        .m_i2s_axis_tready(m_i2s_axis_tready),
        .mode(mode),
        .resetn(resetn),
        .s0_axis_tdata(s0_axis_tdata),
        .s0_axis_tready(s0_axis_tready),
        .s0_axis_tvalid(s0_axis_tvalid),
        .s1_axis_tdata(s1_axis_tdata),
        .s1_axis_tready(s1_axis_tready),
        .s1_axis_tvalid(s1_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axi_stream_looper_mixer" *) 
module design_1_axi_stream_looper_mi_0_0_axi_stream_looper_mixer
   (s0_axis_tready,
    m_dma_axis_tvalid,
    m_dma_axis_tdata,
    s1_axis_tready,
    m_i2s_axis_tdata,
    s1_axis_tdata,
    s1_axis_tvalid,
    s0_axis_tdata,
    mode,
    clk,
    m_i2s_axis_tready,
    m_dma_axis_tready,
    s0_axis_tvalid,
    resetn);
  output s0_axis_tready;
  output m_dma_axis_tvalid;
  output [31:0]m_dma_axis_tdata;
  output s1_axis_tready;
  output [31:0]m_i2s_axis_tdata;
  input [31:0]s1_axis_tdata;
  input s1_axis_tvalid;
  input [31:0]s0_axis_tdata;
  input [1:0]mode;
  input clk;
  input m_i2s_axis_tready;
  input m_dma_axis_tready;
  input s0_axis_tvalid;
  input resetn;

  wire clk;
  wire full_sum_carry__0_i_1_n_0;
  wire full_sum_carry__0_i_2_n_0;
  wire full_sum_carry__0_i_3_n_0;
  wire full_sum_carry__0_i_4_n_0;
  wire full_sum_carry__0_n_0;
  wire full_sum_carry__0_n_1;
  wire full_sum_carry__0_n_2;
  wire full_sum_carry__0_n_3;
  wire full_sum_carry__0_n_4;
  wire full_sum_carry__0_n_5;
  wire full_sum_carry__0_n_6;
  wire full_sum_carry__0_n_7;
  wire full_sum_carry__1_i_1_n_0;
  wire full_sum_carry__1_i_2_n_0;
  wire full_sum_carry__1_i_3_n_0;
  wire full_sum_carry__1_i_4_n_0;
  wire full_sum_carry__1_n_0;
  wire full_sum_carry__1_n_1;
  wire full_sum_carry__1_n_2;
  wire full_sum_carry__1_n_3;
  wire full_sum_carry__1_n_4;
  wire full_sum_carry__1_n_5;
  wire full_sum_carry__1_n_6;
  wire full_sum_carry__1_n_7;
  wire full_sum_carry__2_i_1_n_0;
  wire full_sum_carry__2_i_2_n_0;
  wire full_sum_carry__2_i_3_n_0;
  wire full_sum_carry__2_i_4_n_0;
  wire full_sum_carry__2_n_0;
  wire full_sum_carry__2_n_1;
  wire full_sum_carry__2_n_2;
  wire full_sum_carry__2_n_3;
  wire full_sum_carry__2_n_4;
  wire full_sum_carry__2_n_5;
  wire full_sum_carry__2_n_6;
  wire full_sum_carry__2_n_7;
  wire full_sum_carry__3_i_1_n_0;
  wire full_sum_carry__3_i_2_n_0;
  wire full_sum_carry__3_i_3_n_0;
  wire full_sum_carry__3_i_4_n_0;
  wire full_sum_carry__3_n_0;
  wire full_sum_carry__3_n_1;
  wire full_sum_carry__3_n_2;
  wire full_sum_carry__3_n_3;
  wire full_sum_carry__3_n_4;
  wire full_sum_carry__3_n_5;
  wire full_sum_carry__3_n_6;
  wire full_sum_carry__3_n_7;
  wire full_sum_carry__4_i_1_n_0;
  wire full_sum_carry__4_i_2_n_0;
  wire full_sum_carry__4_i_3_n_0;
  wire full_sum_carry__4_i_4_n_0;
  wire full_sum_carry__4_n_0;
  wire full_sum_carry__4_n_1;
  wire full_sum_carry__4_n_2;
  wire full_sum_carry__4_n_3;
  wire full_sum_carry__4_n_4;
  wire full_sum_carry__4_n_5;
  wire full_sum_carry__4_n_6;
  wire full_sum_carry__4_n_7;
  wire full_sum_carry__5_i_1_n_0;
  wire full_sum_carry__5_i_2_n_0;
  wire full_sum_carry__5_i_3_n_0;
  wire full_sum_carry__5_i_4_n_0;
  wire full_sum_carry__5_n_0;
  wire full_sum_carry__5_n_1;
  wire full_sum_carry__5_n_2;
  wire full_sum_carry__5_n_3;
  wire full_sum_carry__5_n_4;
  wire full_sum_carry__5_n_5;
  wire full_sum_carry__5_n_6;
  wire full_sum_carry__5_n_7;
  wire full_sum_carry__6_i_1_n_0;
  wire full_sum_carry__6_i_2_n_0;
  wire full_sum_carry__6_i_3_n_0;
  wire full_sum_carry__6_i_4_n_0;
  wire full_sum_carry__6_i_5_n_0;
  wire full_sum_carry__6_n_0;
  wire full_sum_carry__6_n_1;
  wire full_sum_carry__6_n_2;
  wire full_sum_carry__6_n_3;
  wire full_sum_carry__6_n_4;
  wire full_sum_carry__6_n_5;
  wire full_sum_carry__6_n_6;
  wire full_sum_carry__6_n_7;
  wire full_sum_carry_i_1_n_0;
  wire full_sum_carry_i_2_n_0;
  wire full_sum_carry_i_3_n_0;
  wire full_sum_carry_i_4_n_0;
  wire full_sum_carry_n_0;
  wire full_sum_carry_n_1;
  wire full_sum_carry_n_2;
  wire full_sum_carry_n_3;
  wire full_sum_carry_n_4;
  wire full_sum_carry_n_5;
  wire full_sum_carry_n_6;
  wire full_sum_carry_n_7;
  wire [31:0]m_dma_axis_tdata;
  wire \m_dma_axis_tdata[0]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[0]_INST_0_i_2_n_0 ;
  wire \m_dma_axis_tdata[10]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[10]_INST_0_i_2_n_0 ;
  wire \m_dma_axis_tdata[11]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[11]_INST_0_i_2_n_0 ;
  wire \m_dma_axis_tdata[12]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[12]_INST_0_i_2_n_0 ;
  wire \m_dma_axis_tdata[13]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[13]_INST_0_i_2_n_0 ;
  wire \m_dma_axis_tdata[14]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[14]_INST_0_i_2_n_0 ;
  wire \m_dma_axis_tdata[15]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[15]_INST_0_i_2_n_0 ;
  wire \m_dma_axis_tdata[16]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[16]_INST_0_i_2_n_0 ;
  wire \m_dma_axis_tdata[17]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[17]_INST_0_i_2_n_0 ;
  wire \m_dma_axis_tdata[18]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[18]_INST_0_i_2_n_0 ;
  wire \m_dma_axis_tdata[19]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[19]_INST_0_i_2_n_0 ;
  wire \m_dma_axis_tdata[1]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[1]_INST_0_i_2_n_0 ;
  wire \m_dma_axis_tdata[20]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[20]_INST_0_i_2_n_0 ;
  wire \m_dma_axis_tdata[21]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[21]_INST_0_i_2_n_0 ;
  wire \m_dma_axis_tdata[22]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[22]_INST_0_i_2_n_0 ;
  wire \m_dma_axis_tdata[23]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[23]_INST_0_i_2_n_0 ;
  wire \m_dma_axis_tdata[24]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[24]_INST_0_i_2_n_0 ;
  wire \m_dma_axis_tdata[25]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[25]_INST_0_i_2_n_0 ;
  wire \m_dma_axis_tdata[26]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[26]_INST_0_i_2_n_0 ;
  wire \m_dma_axis_tdata[27]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[27]_INST_0_i_2_n_0 ;
  wire \m_dma_axis_tdata[28]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[28]_INST_0_i_2_n_0 ;
  wire \m_dma_axis_tdata[29]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[29]_INST_0_i_2_n_0 ;
  wire \m_dma_axis_tdata[2]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[2]_INST_0_i_2_n_0 ;
  wire \m_dma_axis_tdata[30]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[30]_INST_0_i_2_n_0 ;
  wire \m_dma_axis_tdata[31]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[31]_INST_0_i_2_n_0 ;
  wire \m_dma_axis_tdata[3]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[3]_INST_0_i_2_n_0 ;
  wire \m_dma_axis_tdata[4]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[4]_INST_0_i_2_n_0 ;
  wire \m_dma_axis_tdata[5]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[5]_INST_0_i_2_n_0 ;
  wire \m_dma_axis_tdata[6]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[6]_INST_0_i_2_n_0 ;
  wire \m_dma_axis_tdata[7]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[7]_INST_0_i_2_n_0 ;
  wire \m_dma_axis_tdata[8]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[8]_INST_0_i_2_n_0 ;
  wire \m_dma_axis_tdata[9]_INST_0_i_1_n_0 ;
  wire \m_dma_axis_tdata[9]_INST_0_i_2_n_0 ;
  wire m_dma_axis_tready;
  wire m_dma_axis_tvalid;
  wire [31:0]m_i2s_axis_tdata;
  wire m_i2s_axis_tready;
  wire mixed_audio1;
  wire mixed_audio1_carry_i_1_n_3;
  wire mixed_audio1_carry_i_2_n_0;
  wire mixed_audio1_carry_n_3;
  wire mixed_audio2;
  wire mixed_audio2_carry_i_1_n_0;
  wire mixed_audio2_carry_i_2_n_0;
  wire mixed_audio2_carry_i_3_n_0;
  wire mixed_audio2_carry_n_3;
  wire [1:0]mode;
  wire [1:0]mode_sync_1;
  wire \mode_sync_1[1]_i_1_n_0 ;
  wire [1:0]mode_sync_2;
  wire resetn;
  wire [31:0]s0_axis_tdata;
  wire s0_axis_tready;
  wire s0_axis_tvalid;
  wire [31:0]s1_axis_tdata;
  wire s1_axis_tready;
  wire s1_axis_tvalid;
  wire [3:2]NLW_mixed_audio1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_mixed_audio1_carry_O_UNCONNECTED;
  wire [3:1]NLW_mixed_audio1_carry_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_mixed_audio1_carry_i_1_O_UNCONNECTED;
  wire [3:2]NLW_mixed_audio2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_mixed_audio2_carry_O_UNCONNECTED;

  CARRY4 full_sum_carry
       (.CI(1'b0),
        .CO({full_sum_carry_n_0,full_sum_carry_n_1,full_sum_carry_n_2,full_sum_carry_n_3}),
        .CYINIT(1'b0),
        .DI(s0_axis_tdata[3:0]),
        .O({full_sum_carry_n_4,full_sum_carry_n_5,full_sum_carry_n_6,full_sum_carry_n_7}),
        .S({full_sum_carry_i_1_n_0,full_sum_carry_i_2_n_0,full_sum_carry_i_3_n_0,full_sum_carry_i_4_n_0}));
  CARRY4 full_sum_carry__0
       (.CI(full_sum_carry_n_0),
        .CO({full_sum_carry__0_n_0,full_sum_carry__0_n_1,full_sum_carry__0_n_2,full_sum_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(s0_axis_tdata[7:4]),
        .O({full_sum_carry__0_n_4,full_sum_carry__0_n_5,full_sum_carry__0_n_6,full_sum_carry__0_n_7}),
        .S({full_sum_carry__0_i_1_n_0,full_sum_carry__0_i_2_n_0,full_sum_carry__0_i_3_n_0,full_sum_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry__0_i_1
       (.I0(s0_axis_tdata[7]),
        .I1(s1_axis_tdata[7]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry__0_i_2
       (.I0(s0_axis_tdata[6]),
        .I1(s1_axis_tdata[6]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry__0_i_3
       (.I0(s0_axis_tdata[5]),
        .I1(s1_axis_tdata[5]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry__0_i_4
       (.I0(s0_axis_tdata[4]),
        .I1(s1_axis_tdata[4]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry__0_i_4_n_0));
  CARRY4 full_sum_carry__1
       (.CI(full_sum_carry__0_n_0),
        .CO({full_sum_carry__1_n_0,full_sum_carry__1_n_1,full_sum_carry__1_n_2,full_sum_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(s0_axis_tdata[11:8]),
        .O({full_sum_carry__1_n_4,full_sum_carry__1_n_5,full_sum_carry__1_n_6,full_sum_carry__1_n_7}),
        .S({full_sum_carry__1_i_1_n_0,full_sum_carry__1_i_2_n_0,full_sum_carry__1_i_3_n_0,full_sum_carry__1_i_4_n_0}));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry__1_i_1
       (.I0(s0_axis_tdata[11]),
        .I1(s1_axis_tdata[11]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry__1_i_2
       (.I0(s0_axis_tdata[10]),
        .I1(s1_axis_tdata[10]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry__1_i_3
       (.I0(s0_axis_tdata[9]),
        .I1(s1_axis_tdata[9]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry__1_i_4
       (.I0(s0_axis_tdata[8]),
        .I1(s1_axis_tdata[8]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry__1_i_4_n_0));
  CARRY4 full_sum_carry__2
       (.CI(full_sum_carry__1_n_0),
        .CO({full_sum_carry__2_n_0,full_sum_carry__2_n_1,full_sum_carry__2_n_2,full_sum_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(s0_axis_tdata[15:12]),
        .O({full_sum_carry__2_n_4,full_sum_carry__2_n_5,full_sum_carry__2_n_6,full_sum_carry__2_n_7}),
        .S({full_sum_carry__2_i_1_n_0,full_sum_carry__2_i_2_n_0,full_sum_carry__2_i_3_n_0,full_sum_carry__2_i_4_n_0}));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry__2_i_1
       (.I0(s0_axis_tdata[15]),
        .I1(s1_axis_tdata[15]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry__2_i_2
       (.I0(s0_axis_tdata[14]),
        .I1(s1_axis_tdata[14]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry__2_i_3
       (.I0(s0_axis_tdata[13]),
        .I1(s1_axis_tdata[13]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry__2_i_4
       (.I0(s0_axis_tdata[12]),
        .I1(s1_axis_tdata[12]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry__2_i_4_n_0));
  CARRY4 full_sum_carry__3
       (.CI(full_sum_carry__2_n_0),
        .CO({full_sum_carry__3_n_0,full_sum_carry__3_n_1,full_sum_carry__3_n_2,full_sum_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(s0_axis_tdata[19:16]),
        .O({full_sum_carry__3_n_4,full_sum_carry__3_n_5,full_sum_carry__3_n_6,full_sum_carry__3_n_7}),
        .S({full_sum_carry__3_i_1_n_0,full_sum_carry__3_i_2_n_0,full_sum_carry__3_i_3_n_0,full_sum_carry__3_i_4_n_0}));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry__3_i_1
       (.I0(s0_axis_tdata[19]),
        .I1(s1_axis_tdata[19]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry__3_i_1_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry__3_i_2
       (.I0(s0_axis_tdata[18]),
        .I1(s1_axis_tdata[18]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry__3_i_2_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry__3_i_3
       (.I0(s0_axis_tdata[17]),
        .I1(s1_axis_tdata[17]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry__3_i_3_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry__3_i_4
       (.I0(s0_axis_tdata[16]),
        .I1(s1_axis_tdata[16]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry__3_i_4_n_0));
  CARRY4 full_sum_carry__4
       (.CI(full_sum_carry__3_n_0),
        .CO({full_sum_carry__4_n_0,full_sum_carry__4_n_1,full_sum_carry__4_n_2,full_sum_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(s0_axis_tdata[23:20]),
        .O({full_sum_carry__4_n_4,full_sum_carry__4_n_5,full_sum_carry__4_n_6,full_sum_carry__4_n_7}),
        .S({full_sum_carry__4_i_1_n_0,full_sum_carry__4_i_2_n_0,full_sum_carry__4_i_3_n_0,full_sum_carry__4_i_4_n_0}));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry__4_i_1
       (.I0(s0_axis_tdata[23]),
        .I1(s1_axis_tdata[23]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry__4_i_1_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry__4_i_2
       (.I0(s0_axis_tdata[22]),
        .I1(s1_axis_tdata[22]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry__4_i_2_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry__4_i_3
       (.I0(s0_axis_tdata[21]),
        .I1(s1_axis_tdata[21]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry__4_i_3_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry__4_i_4
       (.I0(s0_axis_tdata[20]),
        .I1(s1_axis_tdata[20]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry__4_i_4_n_0));
  CARRY4 full_sum_carry__5
       (.CI(full_sum_carry__4_n_0),
        .CO({full_sum_carry__5_n_0,full_sum_carry__5_n_1,full_sum_carry__5_n_2,full_sum_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(s0_axis_tdata[27:24]),
        .O({full_sum_carry__5_n_4,full_sum_carry__5_n_5,full_sum_carry__5_n_6,full_sum_carry__5_n_7}),
        .S({full_sum_carry__5_i_1_n_0,full_sum_carry__5_i_2_n_0,full_sum_carry__5_i_3_n_0,full_sum_carry__5_i_4_n_0}));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry__5_i_1
       (.I0(s0_axis_tdata[27]),
        .I1(s1_axis_tdata[27]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry__5_i_1_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry__5_i_2
       (.I0(s0_axis_tdata[26]),
        .I1(s1_axis_tdata[26]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry__5_i_2_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry__5_i_3
       (.I0(s0_axis_tdata[25]),
        .I1(s1_axis_tdata[25]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry__5_i_3_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry__5_i_4
       (.I0(s0_axis_tdata[24]),
        .I1(s1_axis_tdata[24]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry__5_i_4_n_0));
  CARRY4 full_sum_carry__6
       (.CI(full_sum_carry__5_n_0),
        .CO({full_sum_carry__6_n_0,full_sum_carry__6_n_1,full_sum_carry__6_n_2,full_sum_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({full_sum_carry__6_i_1_n_0,s0_axis_tdata[30:28]}),
        .O({full_sum_carry__6_n_4,full_sum_carry__6_n_5,full_sum_carry__6_n_6,full_sum_carry__6_n_7}),
        .S({full_sum_carry__6_i_2_n_0,full_sum_carry__6_i_3_n_0,full_sum_carry__6_i_4_n_0,full_sum_carry__6_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    full_sum_carry__6_i_1
       (.I0(s0_axis_tdata[31]),
        .O(full_sum_carry__6_i_1_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry__6_i_2
       (.I0(s0_axis_tdata[31]),
        .I1(s1_axis_tdata[31]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry__6_i_2_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry__6_i_3
       (.I0(s0_axis_tdata[30]),
        .I1(s1_axis_tdata[30]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry__6_i_3_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry__6_i_4
       (.I0(s0_axis_tdata[29]),
        .I1(s1_axis_tdata[29]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry__6_i_4_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry__6_i_5
       (.I0(s0_axis_tdata[28]),
        .I1(s1_axis_tdata[28]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry__6_i_5_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry_i_1
       (.I0(s0_axis_tdata[3]),
        .I1(s1_axis_tdata[3]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry_i_2
       (.I0(s0_axis_tdata[2]),
        .I1(s1_axis_tdata[2]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry_i_3
       (.I0(s0_axis_tdata[1]),
        .I1(s1_axis_tdata[1]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    full_sum_carry_i_4
       (.I0(s0_axis_tdata[0]),
        .I1(s1_axis_tdata[0]),
        .I2(s1_axis_tvalid),
        .O(full_sum_carry_i_4_n_0));
  MUXF7 \m_dma_axis_tdata[0]_INST_0 
       (.I0(\m_dma_axis_tdata[0]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[0]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[0]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[0]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[0]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \m_dma_axis_tdata[0]_INST_0_i_2 
       (.I0(mixed_audio1),
        .I1(mixed_audio2),
        .I2(full_sum_carry_n_7),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[0]),
        .O(\m_dma_axis_tdata[0]_INST_0_i_2_n_0 ));
  MUXF7 \m_dma_axis_tdata[10]_INST_0 
       (.I0(\m_dma_axis_tdata[10]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[10]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[10]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[10]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[10]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \m_dma_axis_tdata[10]_INST_0_i_2 
       (.I0(mixed_audio1),
        .I1(mixed_audio2),
        .I2(full_sum_carry__1_n_5),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[10]),
        .O(\m_dma_axis_tdata[10]_INST_0_i_2_n_0 ));
  MUXF7 \m_dma_axis_tdata[11]_INST_0 
       (.I0(\m_dma_axis_tdata[11]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[11]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[11]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[11]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[11]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[11]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \m_dma_axis_tdata[11]_INST_0_i_2 
       (.I0(mixed_audio1),
        .I1(mixed_audio2),
        .I2(full_sum_carry__1_n_4),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[11]),
        .O(\m_dma_axis_tdata[11]_INST_0_i_2_n_0 ));
  MUXF7 \m_dma_axis_tdata[12]_INST_0 
       (.I0(\m_dma_axis_tdata[12]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[12]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[12]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[12]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[12]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \m_dma_axis_tdata[12]_INST_0_i_2 
       (.I0(mixed_audio1),
        .I1(mixed_audio2),
        .I2(full_sum_carry__2_n_7),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[12]),
        .O(\m_dma_axis_tdata[12]_INST_0_i_2_n_0 ));
  MUXF7 \m_dma_axis_tdata[13]_INST_0 
       (.I0(\m_dma_axis_tdata[13]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[13]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[13]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[13]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[13]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \m_dma_axis_tdata[13]_INST_0_i_2 
       (.I0(mixed_audio1),
        .I1(mixed_audio2),
        .I2(full_sum_carry__2_n_6),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[13]),
        .O(\m_dma_axis_tdata[13]_INST_0_i_2_n_0 ));
  MUXF7 \m_dma_axis_tdata[14]_INST_0 
       (.I0(\m_dma_axis_tdata[14]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[14]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[14]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[14]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[14]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \m_dma_axis_tdata[14]_INST_0_i_2 
       (.I0(mixed_audio1),
        .I1(mixed_audio2),
        .I2(full_sum_carry__2_n_5),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[14]),
        .O(\m_dma_axis_tdata[14]_INST_0_i_2_n_0 ));
  MUXF7 \m_dma_axis_tdata[15]_INST_0 
       (.I0(\m_dma_axis_tdata[15]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[15]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[15]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[15]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[15]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[15]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \m_dma_axis_tdata[15]_INST_0_i_2 
       (.I0(mixed_audio1),
        .I1(mixed_audio2),
        .I2(full_sum_carry__2_n_4),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[15]),
        .O(\m_dma_axis_tdata[15]_INST_0_i_2_n_0 ));
  MUXF7 \m_dma_axis_tdata[16]_INST_0 
       (.I0(\m_dma_axis_tdata[16]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[16]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[16]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[16]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[16]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[16]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \m_dma_axis_tdata[16]_INST_0_i_2 
       (.I0(mixed_audio1),
        .I1(mixed_audio2),
        .I2(full_sum_carry__3_n_7),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[16]),
        .O(\m_dma_axis_tdata[16]_INST_0_i_2_n_0 ));
  MUXF7 \m_dma_axis_tdata[17]_INST_0 
       (.I0(\m_dma_axis_tdata[17]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[17]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[17]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[17]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[17]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[17]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \m_dma_axis_tdata[17]_INST_0_i_2 
       (.I0(mixed_audio1),
        .I1(mixed_audio2),
        .I2(full_sum_carry__3_n_6),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[17]),
        .O(\m_dma_axis_tdata[17]_INST_0_i_2_n_0 ));
  MUXF7 \m_dma_axis_tdata[18]_INST_0 
       (.I0(\m_dma_axis_tdata[18]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[18]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[18]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[18]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[18]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[18]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \m_dma_axis_tdata[18]_INST_0_i_2 
       (.I0(mixed_audio1),
        .I1(mixed_audio2),
        .I2(full_sum_carry__3_n_5),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[18]),
        .O(\m_dma_axis_tdata[18]_INST_0_i_2_n_0 ));
  MUXF7 \m_dma_axis_tdata[19]_INST_0 
       (.I0(\m_dma_axis_tdata[19]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[19]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[19]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[19]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[19]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[19]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \m_dma_axis_tdata[19]_INST_0_i_2 
       (.I0(mixed_audio1),
        .I1(mixed_audio2),
        .I2(full_sum_carry__3_n_4),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[19]),
        .O(\m_dma_axis_tdata[19]_INST_0_i_2_n_0 ));
  MUXF7 \m_dma_axis_tdata[1]_INST_0 
       (.I0(\m_dma_axis_tdata[1]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[1]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[1]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[1]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[1]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \m_dma_axis_tdata[1]_INST_0_i_2 
       (.I0(mixed_audio1),
        .I1(mixed_audio2),
        .I2(full_sum_carry_n_6),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[1]),
        .O(\m_dma_axis_tdata[1]_INST_0_i_2_n_0 ));
  MUXF7 \m_dma_axis_tdata[20]_INST_0 
       (.I0(\m_dma_axis_tdata[20]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[20]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[20]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[20]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[20]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[20]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \m_dma_axis_tdata[20]_INST_0_i_2 
       (.I0(mixed_audio1),
        .I1(mixed_audio2),
        .I2(full_sum_carry__4_n_7),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[20]),
        .O(\m_dma_axis_tdata[20]_INST_0_i_2_n_0 ));
  MUXF7 \m_dma_axis_tdata[21]_INST_0 
       (.I0(\m_dma_axis_tdata[21]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[21]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[21]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[21]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[21]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[21]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \m_dma_axis_tdata[21]_INST_0_i_2 
       (.I0(mixed_audio1),
        .I1(mixed_audio2),
        .I2(full_sum_carry__4_n_6),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[21]),
        .O(\m_dma_axis_tdata[21]_INST_0_i_2_n_0 ));
  MUXF7 \m_dma_axis_tdata[22]_INST_0 
       (.I0(\m_dma_axis_tdata[22]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[22]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[22]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[22]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[22]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[22]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \m_dma_axis_tdata[22]_INST_0_i_2 
       (.I0(mixed_audio1),
        .I1(mixed_audio2),
        .I2(full_sum_carry__4_n_5),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[22]),
        .O(\m_dma_axis_tdata[22]_INST_0_i_2_n_0 ));
  MUXF7 \m_dma_axis_tdata[23]_INST_0 
       (.I0(\m_dma_axis_tdata[23]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[23]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[23]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[23]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[23]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[23]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \m_dma_axis_tdata[23]_INST_0_i_2 
       (.I0(mixed_audio1),
        .I1(mixed_audio2),
        .I2(full_sum_carry__4_n_4),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[23]),
        .O(\m_dma_axis_tdata[23]_INST_0_i_2_n_0 ));
  MUXF7 \m_dma_axis_tdata[24]_INST_0 
       (.I0(\m_dma_axis_tdata[24]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[24]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[24]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[24]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[24]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[24]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \m_dma_axis_tdata[24]_INST_0_i_2 
       (.I0(mixed_audio1),
        .I1(mixed_audio2),
        .I2(full_sum_carry__5_n_7),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[24]),
        .O(\m_dma_axis_tdata[24]_INST_0_i_2_n_0 ));
  MUXF7 \m_dma_axis_tdata[25]_INST_0 
       (.I0(\m_dma_axis_tdata[25]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[25]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[25]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[25]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[25]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[25]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \m_dma_axis_tdata[25]_INST_0_i_2 
       (.I0(mixed_audio1),
        .I1(mixed_audio2),
        .I2(full_sum_carry__5_n_6),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[25]),
        .O(\m_dma_axis_tdata[25]_INST_0_i_2_n_0 ));
  MUXF7 \m_dma_axis_tdata[26]_INST_0 
       (.I0(\m_dma_axis_tdata[26]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[26]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[26]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[26]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[26]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[26]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \m_dma_axis_tdata[26]_INST_0_i_2 
       (.I0(mixed_audio1),
        .I1(mixed_audio2),
        .I2(full_sum_carry__5_n_5),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[26]),
        .O(\m_dma_axis_tdata[26]_INST_0_i_2_n_0 ));
  MUXF7 \m_dma_axis_tdata[27]_INST_0 
       (.I0(\m_dma_axis_tdata[27]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[27]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[27]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[27]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[27]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[27]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \m_dma_axis_tdata[27]_INST_0_i_2 
       (.I0(mixed_audio1),
        .I1(mixed_audio2),
        .I2(full_sum_carry__5_n_4),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[27]),
        .O(\m_dma_axis_tdata[27]_INST_0_i_2_n_0 ));
  MUXF7 \m_dma_axis_tdata[28]_INST_0 
       (.I0(\m_dma_axis_tdata[28]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[28]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[28]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[28]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[28]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[28]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \m_dma_axis_tdata[28]_INST_0_i_2 
       (.I0(mixed_audio1),
        .I1(mixed_audio2),
        .I2(full_sum_carry__6_n_7),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[28]),
        .O(\m_dma_axis_tdata[28]_INST_0_i_2_n_0 ));
  MUXF7 \m_dma_axis_tdata[29]_INST_0 
       (.I0(\m_dma_axis_tdata[29]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[29]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[29]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[29]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[29]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[29]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \m_dma_axis_tdata[29]_INST_0_i_2 
       (.I0(mixed_audio1),
        .I1(mixed_audio2),
        .I2(full_sum_carry__6_n_6),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[29]),
        .O(\m_dma_axis_tdata[29]_INST_0_i_2_n_0 ));
  MUXF7 \m_dma_axis_tdata[2]_INST_0 
       (.I0(\m_dma_axis_tdata[2]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[2]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[2]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[2]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[2]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \m_dma_axis_tdata[2]_INST_0_i_2 
       (.I0(mixed_audio1),
        .I1(mixed_audio2),
        .I2(full_sum_carry_n_5),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[2]),
        .O(\m_dma_axis_tdata[2]_INST_0_i_2_n_0 ));
  MUXF7 \m_dma_axis_tdata[30]_INST_0 
       (.I0(\m_dma_axis_tdata[30]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[30]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[30]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[30]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[30]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[30]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \m_dma_axis_tdata[30]_INST_0_i_2 
       (.I0(mixed_audio1),
        .I1(mixed_audio2),
        .I2(full_sum_carry__6_n_5),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[30]),
        .O(\m_dma_axis_tdata[30]_INST_0_i_2_n_0 ));
  MUXF7 \m_dma_axis_tdata[31]_INST_0 
       (.I0(\m_dma_axis_tdata[31]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[31]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[31]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[31]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[31]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[31]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0EFF0E00)) 
    \m_dma_axis_tdata[31]_INST_0_i_2 
       (.I0(full_sum_carry__6_n_4),
        .I1(mixed_audio2),
        .I2(mixed_audio1),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[31]),
        .O(\m_dma_axis_tdata[31]_INST_0_i_2_n_0 ));
  MUXF7 \m_dma_axis_tdata[3]_INST_0 
       (.I0(\m_dma_axis_tdata[3]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[3]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[3]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[3]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[3]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \m_dma_axis_tdata[3]_INST_0_i_2 
       (.I0(mixed_audio1),
        .I1(mixed_audio2),
        .I2(full_sum_carry_n_4),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[3]),
        .O(\m_dma_axis_tdata[3]_INST_0_i_2_n_0 ));
  MUXF7 \m_dma_axis_tdata[4]_INST_0 
       (.I0(\m_dma_axis_tdata[4]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[4]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[4]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[4]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[4]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \m_dma_axis_tdata[4]_INST_0_i_2 
       (.I0(mixed_audio1),
        .I1(mixed_audio2),
        .I2(full_sum_carry__0_n_7),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[4]),
        .O(\m_dma_axis_tdata[4]_INST_0_i_2_n_0 ));
  MUXF7 \m_dma_axis_tdata[5]_INST_0 
       (.I0(\m_dma_axis_tdata[5]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[5]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[5]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[5]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[5]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \m_dma_axis_tdata[5]_INST_0_i_2 
       (.I0(mixed_audio1),
        .I1(mixed_audio2),
        .I2(full_sum_carry__0_n_6),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[5]),
        .O(\m_dma_axis_tdata[5]_INST_0_i_2_n_0 ));
  MUXF7 \m_dma_axis_tdata[6]_INST_0 
       (.I0(\m_dma_axis_tdata[6]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[6]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[6]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[6]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[6]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \m_dma_axis_tdata[6]_INST_0_i_2 
       (.I0(mixed_audio1),
        .I1(mixed_audio2),
        .I2(full_sum_carry__0_n_5),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[6]),
        .O(\m_dma_axis_tdata[6]_INST_0_i_2_n_0 ));
  MUXF7 \m_dma_axis_tdata[7]_INST_0 
       (.I0(\m_dma_axis_tdata[7]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[7]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[7]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[7]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[7]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \m_dma_axis_tdata[7]_INST_0_i_2 
       (.I0(mixed_audio1),
        .I1(mixed_audio2),
        .I2(full_sum_carry__0_n_4),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[7]),
        .O(\m_dma_axis_tdata[7]_INST_0_i_2_n_0 ));
  MUXF7 \m_dma_axis_tdata[8]_INST_0 
       (.I0(\m_dma_axis_tdata[8]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[8]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[8]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[8]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[8]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \m_dma_axis_tdata[8]_INST_0_i_2 
       (.I0(mixed_audio1),
        .I1(mixed_audio2),
        .I2(full_sum_carry__1_n_7),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[8]),
        .O(\m_dma_axis_tdata[8]_INST_0_i_2_n_0 ));
  MUXF7 \m_dma_axis_tdata[9]_INST_0 
       (.I0(\m_dma_axis_tdata[9]_INST_0_i_1_n_0 ),
        .I1(\m_dma_axis_tdata[9]_INST_0_i_2_n_0 ),
        .O(m_dma_axis_tdata[9]),
        .S(mode_sync_2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \m_dma_axis_tdata[9]_INST_0_i_1 
       (.I0(mode_sync_2[1]),
        .I1(s1_axis_tdata[9]),
        .I2(s1_axis_tvalid),
        .O(\m_dma_axis_tdata[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \m_dma_axis_tdata[9]_INST_0_i_2 
       (.I0(mixed_audio1),
        .I1(mixed_audio2),
        .I2(full_sum_carry__1_n_6),
        .I3(mode_sync_2[1]),
        .I4(s0_axis_tdata[9]),
        .O(\m_dma_axis_tdata[9]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    m_dma_axis_tvalid_INST_0
       (.I0(s0_axis_tvalid),
        .I1(mode_sync_2[0]),
        .I2(mode_sync_2[1]),
        .O(m_dma_axis_tvalid));
  LUT5 #(
    .INIT(32'hFF0CAAAA)) 
    \m_i2s_axis_tdata[0]_INST_0 
       (.I0(s0_axis_tdata[0]),
        .I1(full_sum_carry_n_7),
        .I2(mixed_audio2),
        .I3(mixed_audio1),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[0]));
  LUT5 #(
    .INIT(32'hFF0CAAAA)) 
    \m_i2s_axis_tdata[10]_INST_0 
       (.I0(s0_axis_tdata[10]),
        .I1(full_sum_carry__1_n_5),
        .I2(mixed_audio2),
        .I3(mixed_audio1),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[10]));
  LUT5 #(
    .INIT(32'hFF0CAAAA)) 
    \m_i2s_axis_tdata[11]_INST_0 
       (.I0(s0_axis_tdata[11]),
        .I1(full_sum_carry__1_n_4),
        .I2(mixed_audio2),
        .I3(mixed_audio1),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[11]));
  LUT5 #(
    .INIT(32'hFF0CAAAA)) 
    \m_i2s_axis_tdata[12]_INST_0 
       (.I0(s0_axis_tdata[12]),
        .I1(full_sum_carry__2_n_7),
        .I2(mixed_audio2),
        .I3(mixed_audio1),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[12]));
  LUT5 #(
    .INIT(32'hFF0CAAAA)) 
    \m_i2s_axis_tdata[13]_INST_0 
       (.I0(s0_axis_tdata[13]),
        .I1(full_sum_carry__2_n_6),
        .I2(mixed_audio2),
        .I3(mixed_audio1),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[13]));
  LUT5 #(
    .INIT(32'hFF0CAAAA)) 
    \m_i2s_axis_tdata[14]_INST_0 
       (.I0(s0_axis_tdata[14]),
        .I1(full_sum_carry__2_n_5),
        .I2(mixed_audio2),
        .I3(mixed_audio1),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[14]));
  LUT5 #(
    .INIT(32'hFF0CAAAA)) 
    \m_i2s_axis_tdata[15]_INST_0 
       (.I0(s0_axis_tdata[15]),
        .I1(full_sum_carry__2_n_4),
        .I2(mixed_audio2),
        .I3(mixed_audio1),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[15]));
  LUT5 #(
    .INIT(32'hFF0CAAAA)) 
    \m_i2s_axis_tdata[16]_INST_0 
       (.I0(s0_axis_tdata[16]),
        .I1(full_sum_carry__3_n_7),
        .I2(mixed_audio2),
        .I3(mixed_audio1),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[16]));
  LUT5 #(
    .INIT(32'hFF0CAAAA)) 
    \m_i2s_axis_tdata[17]_INST_0 
       (.I0(s0_axis_tdata[17]),
        .I1(full_sum_carry__3_n_6),
        .I2(mixed_audio2),
        .I3(mixed_audio1),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[17]));
  LUT5 #(
    .INIT(32'hFF0CAAAA)) 
    \m_i2s_axis_tdata[18]_INST_0 
       (.I0(s0_axis_tdata[18]),
        .I1(full_sum_carry__3_n_5),
        .I2(mixed_audio2),
        .I3(mixed_audio1),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[18]));
  LUT5 #(
    .INIT(32'hFF0CAAAA)) 
    \m_i2s_axis_tdata[19]_INST_0 
       (.I0(s0_axis_tdata[19]),
        .I1(full_sum_carry__3_n_4),
        .I2(mixed_audio2),
        .I3(mixed_audio1),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[19]));
  LUT5 #(
    .INIT(32'hFF0CAAAA)) 
    \m_i2s_axis_tdata[1]_INST_0 
       (.I0(s0_axis_tdata[1]),
        .I1(full_sum_carry_n_6),
        .I2(mixed_audio2),
        .I3(mixed_audio1),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[1]));
  LUT5 #(
    .INIT(32'hFF0CAAAA)) 
    \m_i2s_axis_tdata[20]_INST_0 
       (.I0(s0_axis_tdata[20]),
        .I1(full_sum_carry__4_n_7),
        .I2(mixed_audio2),
        .I3(mixed_audio1),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[20]));
  LUT5 #(
    .INIT(32'hFF0CAAAA)) 
    \m_i2s_axis_tdata[21]_INST_0 
       (.I0(s0_axis_tdata[21]),
        .I1(full_sum_carry__4_n_6),
        .I2(mixed_audio2),
        .I3(mixed_audio1),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[21]));
  LUT5 #(
    .INIT(32'hFF0CAAAA)) 
    \m_i2s_axis_tdata[22]_INST_0 
       (.I0(s0_axis_tdata[22]),
        .I1(full_sum_carry__4_n_5),
        .I2(mixed_audio2),
        .I3(mixed_audio1),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[22]));
  LUT5 #(
    .INIT(32'hFF0CAAAA)) 
    \m_i2s_axis_tdata[23]_INST_0 
       (.I0(s0_axis_tdata[23]),
        .I1(full_sum_carry__4_n_4),
        .I2(mixed_audio2),
        .I3(mixed_audio1),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[23]));
  LUT5 #(
    .INIT(32'hFF0CAAAA)) 
    \m_i2s_axis_tdata[24]_INST_0 
       (.I0(s0_axis_tdata[24]),
        .I1(full_sum_carry__5_n_7),
        .I2(mixed_audio2),
        .I3(mixed_audio1),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[24]));
  LUT5 #(
    .INIT(32'hFF0CAAAA)) 
    \m_i2s_axis_tdata[25]_INST_0 
       (.I0(s0_axis_tdata[25]),
        .I1(full_sum_carry__5_n_6),
        .I2(mixed_audio2),
        .I3(mixed_audio1),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[25]));
  LUT5 #(
    .INIT(32'hFF0CAAAA)) 
    \m_i2s_axis_tdata[26]_INST_0 
       (.I0(s0_axis_tdata[26]),
        .I1(full_sum_carry__5_n_5),
        .I2(mixed_audio2),
        .I3(mixed_audio1),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[26]));
  LUT5 #(
    .INIT(32'hFF0CAAAA)) 
    \m_i2s_axis_tdata[27]_INST_0 
       (.I0(s0_axis_tdata[27]),
        .I1(full_sum_carry__5_n_4),
        .I2(mixed_audio2),
        .I3(mixed_audio1),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[27]));
  LUT5 #(
    .INIT(32'hFF0CAAAA)) 
    \m_i2s_axis_tdata[28]_INST_0 
       (.I0(s0_axis_tdata[28]),
        .I1(full_sum_carry__6_n_7),
        .I2(mixed_audio2),
        .I3(mixed_audio1),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[28]));
  LUT5 #(
    .INIT(32'hFF0CAAAA)) 
    \m_i2s_axis_tdata[29]_INST_0 
       (.I0(s0_axis_tdata[29]),
        .I1(full_sum_carry__6_n_6),
        .I2(mixed_audio2),
        .I3(mixed_audio1),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[29]));
  LUT5 #(
    .INIT(32'hFF0CAAAA)) 
    \m_i2s_axis_tdata[2]_INST_0 
       (.I0(s0_axis_tdata[2]),
        .I1(full_sum_carry_n_5),
        .I2(mixed_audio2),
        .I3(mixed_audio1),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[2]));
  LUT5 #(
    .INIT(32'hFF0CAAAA)) 
    \m_i2s_axis_tdata[30]_INST_0 
       (.I0(s0_axis_tdata[30]),
        .I1(full_sum_carry__6_n_5),
        .I2(mixed_audio2),
        .I3(mixed_audio1),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[30]));
  LUT5 #(
    .INIT(32'h3330AAAA)) 
    \m_i2s_axis_tdata[31]_INST_0 
       (.I0(s0_axis_tdata[31]),
        .I1(mixed_audio1),
        .I2(mixed_audio2),
        .I3(full_sum_carry__6_n_4),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[31]));
  LUT5 #(
    .INIT(32'hFF0CAAAA)) 
    \m_i2s_axis_tdata[3]_INST_0 
       (.I0(s0_axis_tdata[3]),
        .I1(full_sum_carry_n_4),
        .I2(mixed_audio2),
        .I3(mixed_audio1),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[3]));
  LUT5 #(
    .INIT(32'hFF0CAAAA)) 
    \m_i2s_axis_tdata[4]_INST_0 
       (.I0(s0_axis_tdata[4]),
        .I1(full_sum_carry__0_n_7),
        .I2(mixed_audio2),
        .I3(mixed_audio1),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[4]));
  LUT5 #(
    .INIT(32'hFF0CAAAA)) 
    \m_i2s_axis_tdata[5]_INST_0 
       (.I0(s0_axis_tdata[5]),
        .I1(full_sum_carry__0_n_6),
        .I2(mixed_audio2),
        .I3(mixed_audio1),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[5]));
  LUT5 #(
    .INIT(32'hFF0CAAAA)) 
    \m_i2s_axis_tdata[6]_INST_0 
       (.I0(s0_axis_tdata[6]),
        .I1(full_sum_carry__0_n_5),
        .I2(mixed_audio2),
        .I3(mixed_audio1),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[6]));
  LUT5 #(
    .INIT(32'hFF0CAAAA)) 
    \m_i2s_axis_tdata[7]_INST_0 
       (.I0(s0_axis_tdata[7]),
        .I1(full_sum_carry__0_n_4),
        .I2(mixed_audio2),
        .I3(mixed_audio1),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[7]));
  LUT5 #(
    .INIT(32'hFF0CAAAA)) 
    \m_i2s_axis_tdata[8]_INST_0 
       (.I0(s0_axis_tdata[8]),
        .I1(full_sum_carry__1_n_7),
        .I2(mixed_audio2),
        .I3(mixed_audio1),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[8]));
  LUT5 #(
    .INIT(32'hFF0CAAAA)) 
    \m_i2s_axis_tdata[9]_INST_0 
       (.I0(s0_axis_tdata[9]),
        .I1(full_sum_carry__1_n_6),
        .I2(mixed_audio2),
        .I3(mixed_audio1),
        .I4(mode_sync_2[1]),
        .O(m_i2s_axis_tdata[9]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 mixed_audio1_carry
       (.CI(1'b0),
        .CO({NLW_mixed_audio1_carry_CO_UNCONNECTED[3:2],mixed_audio1,mixed_audio1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,full_sum_carry__6_n_4}),
        .O(NLW_mixed_audio1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,mixed_audio1_carry_i_1_n_3,mixed_audio1_carry_i_2_n_0}));
  CARRY4 mixed_audio1_carry_i_1
       (.CI(full_sum_carry__6_n_0),
        .CO({NLW_mixed_audio1_carry_i_1_CO_UNCONNECTED[3:1],mixed_audio1_carry_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_mixed_audio1_carry_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h2)) 
    mixed_audio1_carry_i_2
       (.I0(full_sum_carry__6_n_5),
        .I1(full_sum_carry__6_n_4),
        .O(mixed_audio1_carry_i_2_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 mixed_audio2_carry
       (.CI(1'b0),
        .CO({NLW_mixed_audio2_carry_CO_UNCONNECTED[3:2],mixed_audio2,mixed_audio2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,mixed_audio2_carry_i_1_n_0}),
        .O(NLW_mixed_audio2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,mixed_audio2_carry_i_2_n_0,mixed_audio2_carry_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    mixed_audio2_carry_i_1
       (.I0(full_sum_carry__6_n_4),
        .O(mixed_audio2_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mixed_audio2_carry_i_2
       (.I0(mixed_audio1_carry_i_1_n_3),
        .O(mixed_audio2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    mixed_audio2_carry_i_3
       (.I0(full_sum_carry__6_n_4),
        .I1(full_sum_carry__6_n_5),
        .O(mixed_audio2_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \mode_sync_1[1]_i_1 
       (.I0(resetn),
        .O(\mode_sync_1[1]_i_1_n_0 ));
  FDCE \mode_sync_1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\mode_sync_1[1]_i_1_n_0 ),
        .D(mode[0]),
        .Q(mode_sync_1[0]));
  FDCE \mode_sync_1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\mode_sync_1[1]_i_1_n_0 ),
        .D(mode[1]),
        .Q(mode_sync_1[1]));
  FDCE \mode_sync_2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\mode_sync_1[1]_i_1_n_0 ),
        .D(mode_sync_1[0]),
        .Q(mode_sync_2[0]));
  FDCE \mode_sync_2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\mode_sync_1[1]_i_1_n_0 ),
        .D(mode_sync_1[1]),
        .Q(mode_sync_2[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hAA02)) 
    s0_axis_tready_INST_0
       (.I0(m_i2s_axis_tready),
        .I1(mode_sync_2[1]),
        .I2(mode_sync_2[0]),
        .I3(m_dma_axis_tready),
        .O(s0_axis_tready));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    s1_axis_tready_INST_0
       (.I0(s0_axis_tvalid),
        .I1(m_i2s_axis_tready),
        .I2(mode_sync_2[1]),
        .I3(m_dma_axis_tready),
        .O(s1_axis_tready));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
