// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Mar 29 14:01:17 2026
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
    s0_axis_tdata,
    s0_axis_tvalid,
    s0_axis_tlast,
    s0_axis_tready,
    s1_axis_tdata,
    s1_axis_tvalid,
    s1_axis_tlast,
    s1_axis_tready,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tlast,
    m_axis_tready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:s0_axis:s1_axis, ASSOCIATED_RESET resetn, FREQ_HZ 12288013, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s0_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 12288013, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s0_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TVALID" *) input s0_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TLAST" *) input s0_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TREADY" *) output s0_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s1_axis TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s1_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 12288013, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s1_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s1_axis TVALID" *) input s1_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s1_axis TLAST" *) input s1_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s1_axis TREADY" *) output s1_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 12288013, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;

  wire [31:0]m_axis_tdata;
  wire m_axis_tready;
  wire [31:0]s0_axis_tdata;
  wire s0_axis_tlast;
  wire s0_axis_tvalid;
  wire [31:0]s1_axis_tdata;
  wire s1_axis_tready;
  wire s1_axis_tvalid;

  assign m_axis_tlast = s0_axis_tlast;
  assign m_axis_tvalid = s0_axis_tvalid;
  assign s0_axis_tready = m_axis_tready;
  design_1_axi_stream_looper_mi_0_0_axi_stream_looper_mixer inst
       (.m_axis_tdata(m_axis_tdata),
        .s0_axis_tdata(s0_axis_tdata),
        .s1_axis_tdata(s1_axis_tdata),
        .s1_axis_tvalid(s1_axis_tvalid));
  LUT2 #(
    .INIT(4'h8)) 
    s1_axis_tready_INST_0
       (.I0(s0_axis_tvalid),
        .I1(m_axis_tready),
        .O(s1_axis_tready));
endmodule

(* ORIG_REF_NAME = "axi_stream_looper_mixer" *) 
module design_1_axi_stream_looper_mi_0_0_axi_stream_looper_mixer
   (m_axis_tdata,
    s0_axis_tdata,
    s1_axis_tdata,
    s1_axis_tvalid);
  output [31:0]m_axis_tdata;
  input [31:0]s0_axis_tdata;
  input [31:0]s1_axis_tdata;
  input s1_axis_tvalid;

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
  wire [31:0]m_axis_tdata;
  wire m_axis_tdata1;
  wire m_axis_tdata1_carry_i_1_n_3;
  wire m_axis_tdata1_carry_i_2_n_0;
  wire m_axis_tdata1_carry_n_3;
  wire m_axis_tdata2;
  wire m_axis_tdata2_carry_i_1_n_0;
  wire m_axis_tdata2_carry_i_2_n_0;
  wire m_axis_tdata2_carry_i_3_n_0;
  wire m_axis_tdata2_carry_n_3;
  wire [31:0]s0_axis_tdata;
  wire [31:0]s1_axis_tdata;
  wire s1_axis_tvalid;
  wire [3:2]NLW_m_axis_tdata1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_m_axis_tdata1_carry_O_UNCONNECTED;
  wire [3:1]NLW_m_axis_tdata1_carry_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_m_axis_tdata1_carry_i_1_O_UNCONNECTED;
  wire [3:2]NLW_m_axis_tdata2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_m_axis_tdata2_carry_O_UNCONNECTED;

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
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 m_axis_tdata1_carry
       (.CI(1'b0),
        .CO({NLW_m_axis_tdata1_carry_CO_UNCONNECTED[3:2],m_axis_tdata1,m_axis_tdata1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,full_sum_carry__6_n_4}),
        .O(NLW_m_axis_tdata1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,m_axis_tdata1_carry_i_1_n_3,m_axis_tdata1_carry_i_2_n_0}));
  CARRY4 m_axis_tdata1_carry_i_1
       (.CI(full_sum_carry__6_n_0),
        .CO({NLW_m_axis_tdata1_carry_i_1_CO_UNCONNECTED[3:1],m_axis_tdata1_carry_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_m_axis_tdata1_carry_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h2)) 
    m_axis_tdata1_carry_i_2
       (.I0(full_sum_carry__6_n_5),
        .I1(full_sum_carry__6_n_4),
        .O(m_axis_tdata1_carry_i_2_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 m_axis_tdata2_carry
       (.CI(1'b0),
        .CO({NLW_m_axis_tdata2_carry_CO_UNCONNECTED[3:2],m_axis_tdata2,m_axis_tdata2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,m_axis_tdata2_carry_i_1_n_0}),
        .O(NLW_m_axis_tdata2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,m_axis_tdata2_carry_i_2_n_0,m_axis_tdata2_carry_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tdata2_carry_i_1
       (.I0(full_sum_carry__6_n_4),
        .O(m_axis_tdata2_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tdata2_carry_i_2
       (.I0(m_axis_tdata1_carry_i_1_n_3),
        .O(m_axis_tdata2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    m_axis_tdata2_carry_i_3
       (.I0(full_sum_carry__6_n_4),
        .I1(full_sum_carry__6_n_5),
        .O(m_axis_tdata2_carry_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(m_axis_tdata1),
        .I1(m_axis_tdata2),
        .I2(full_sum_carry_n_7),
        .O(m_axis_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[10]_INST_0 
       (.I0(m_axis_tdata1),
        .I1(m_axis_tdata2),
        .I2(full_sum_carry__1_n_5),
        .O(m_axis_tdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[11]_INST_0 
       (.I0(m_axis_tdata1),
        .I1(m_axis_tdata2),
        .I2(full_sum_carry__1_n_4),
        .O(m_axis_tdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[12]_INST_0 
       (.I0(m_axis_tdata1),
        .I1(m_axis_tdata2),
        .I2(full_sum_carry__2_n_7),
        .O(m_axis_tdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[13]_INST_0 
       (.I0(m_axis_tdata1),
        .I1(m_axis_tdata2),
        .I2(full_sum_carry__2_n_6),
        .O(m_axis_tdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[14]_INST_0 
       (.I0(m_axis_tdata1),
        .I1(m_axis_tdata2),
        .I2(full_sum_carry__2_n_5),
        .O(m_axis_tdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[15]_INST_0 
       (.I0(m_axis_tdata1),
        .I1(m_axis_tdata2),
        .I2(full_sum_carry__2_n_4),
        .O(m_axis_tdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[16]_INST_0 
       (.I0(m_axis_tdata1),
        .I1(m_axis_tdata2),
        .I2(full_sum_carry__3_n_7),
        .O(m_axis_tdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[17]_INST_0 
       (.I0(m_axis_tdata1),
        .I1(m_axis_tdata2),
        .I2(full_sum_carry__3_n_6),
        .O(m_axis_tdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[18]_INST_0 
       (.I0(m_axis_tdata1),
        .I1(m_axis_tdata2),
        .I2(full_sum_carry__3_n_5),
        .O(m_axis_tdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[19]_INST_0 
       (.I0(m_axis_tdata1),
        .I1(m_axis_tdata2),
        .I2(full_sum_carry__3_n_4),
        .O(m_axis_tdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(m_axis_tdata1),
        .I1(m_axis_tdata2),
        .I2(full_sum_carry_n_6),
        .O(m_axis_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[20]_INST_0 
       (.I0(m_axis_tdata1),
        .I1(m_axis_tdata2),
        .I2(full_sum_carry__4_n_7),
        .O(m_axis_tdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[21]_INST_0 
       (.I0(m_axis_tdata1),
        .I1(m_axis_tdata2),
        .I2(full_sum_carry__4_n_6),
        .O(m_axis_tdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[22]_INST_0 
       (.I0(m_axis_tdata1),
        .I1(m_axis_tdata2),
        .I2(full_sum_carry__4_n_5),
        .O(m_axis_tdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[23]_INST_0 
       (.I0(m_axis_tdata1),
        .I1(m_axis_tdata2),
        .I2(full_sum_carry__4_n_4),
        .O(m_axis_tdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[24]_INST_0 
       (.I0(m_axis_tdata1),
        .I1(m_axis_tdata2),
        .I2(full_sum_carry__5_n_7),
        .O(m_axis_tdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[25]_INST_0 
       (.I0(m_axis_tdata1),
        .I1(m_axis_tdata2),
        .I2(full_sum_carry__5_n_6),
        .O(m_axis_tdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[26]_INST_0 
       (.I0(m_axis_tdata1),
        .I1(m_axis_tdata2),
        .I2(full_sum_carry__5_n_5),
        .O(m_axis_tdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[27]_INST_0 
       (.I0(m_axis_tdata1),
        .I1(m_axis_tdata2),
        .I2(full_sum_carry__5_n_4),
        .O(m_axis_tdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[28]_INST_0 
       (.I0(m_axis_tdata1),
        .I1(m_axis_tdata2),
        .I2(full_sum_carry__6_n_7),
        .O(m_axis_tdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[29]_INST_0 
       (.I0(m_axis_tdata1),
        .I1(m_axis_tdata2),
        .I2(full_sum_carry__6_n_6),
        .O(m_axis_tdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(m_axis_tdata1),
        .I1(m_axis_tdata2),
        .I2(full_sum_carry_n_5),
        .O(m_axis_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[30]_INST_0 
       (.I0(m_axis_tdata1),
        .I1(m_axis_tdata2),
        .I2(full_sum_carry__6_n_5),
        .O(m_axis_tdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \m_axis_tdata[31]_INST_0 
       (.I0(full_sum_carry__6_n_4),
        .I1(m_axis_tdata2),
        .I2(m_axis_tdata1),
        .O(m_axis_tdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(m_axis_tdata1),
        .I1(m_axis_tdata2),
        .I2(full_sum_carry_n_4),
        .O(m_axis_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(m_axis_tdata1),
        .I1(m_axis_tdata2),
        .I2(full_sum_carry__0_n_7),
        .O(m_axis_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(m_axis_tdata1),
        .I1(m_axis_tdata2),
        .I2(full_sum_carry__0_n_6),
        .O(m_axis_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(m_axis_tdata1),
        .I1(m_axis_tdata2),
        .I2(full_sum_carry__0_n_5),
        .O(m_axis_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(m_axis_tdata1),
        .I1(m_axis_tdata2),
        .I2(full_sum_carry__0_n_4),
        .O(m_axis_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[8]_INST_0 
       (.I0(m_axis_tdata1),
        .I1(m_axis_tdata2),
        .I2(full_sum_carry__1_n_7),
        .O(m_axis_tdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \m_axis_tdata[9]_INST_0 
       (.I0(m_axis_tdata1),
        .I1(m_axis_tdata2),
        .I2(full_sum_carry__1_n_6),
        .O(m_axis_tdata[9]));
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
