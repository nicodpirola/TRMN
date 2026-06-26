// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sat Jun 20 22:31:55 2026
// Host        : DESKTOP-FLN9N0C running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/Tesis/Passthrough_v1/Passthrough_v1.gen/sources_1/bd/design_1/ip/design_1_fx_system_wrapper_0_1/design_1_fx_system_wrapper_0_1_sim_netlist.v
// Design      : design_1_fx_system_wrapper_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_fx_system_wrapper_0_1,fx_system_wrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "fx_system_wrapper,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module design_1_fx_system_wrapper_0_1
   (clk,
    rst_n,
    fx_enable,
    enc_a,
    enc_b,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    s_axis_tdata,
    s_axis_tid,
    s_axis_tvalid,
    s_axis_tready,
    m_axis_tdata,
    m_axis_tid,
    m_axis_tvalid,
    m_axis_tready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF S_AXI:S_AXIS:M_AXIS, ASSOCIATED_RESET rst_n, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input fx_enable;
  input [5:0]enc_a;
  input [5:0]enc_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, PROTOCOL AXI4LITE, ADDR_WIDTH 32, DATA_WIDTH 32, READ_WRITE_MODE READ_WRITE, FREQ_HZ 50000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 3, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TID" *) input [2:0]s_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 3, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TID" *) output [2:0]m_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;

  wire \<const0> ;
  wire clk;
  wire [5:0]enc_a;
  wire [5:0]enc_b;
  wire fx_enable;
  wire [27:0]\^m_axis_tdata ;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire rst_n;
  wire [31:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire [31:0]s_axis_tdata;
  wire [2:0]s_axis_tid;
  wire s_axis_tready;
  wire s_axis_tvalid;

  assign m_axis_tdata[31] = \<const0> ;
  assign m_axis_tdata[30] = \<const0> ;
  assign m_axis_tdata[29] = \<const0> ;
  assign m_axis_tdata[28] = \<const0> ;
  assign m_axis_tdata[27:4] = \^m_axis_tdata [27:4];
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1:0] = \^m_axis_tdata [1:0];
  assign m_axis_tid[2] = \<const0> ;
  assign m_axis_tid[1] = \<const0> ;
  assign m_axis_tid[0] = \^m_axis_tdata [1];
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_fx_system_wrapper_0_1_fx_system_wrapper inst
       (.clk(clk),
        .enc_a(enc_a),
        .enc_b(enc_b),
        .fx_enable(fx_enable),
        .inflight_reg(s_axis_tready),
        .m_axis_tdata({\^m_axis_tdata [27:4],\^m_axis_tdata [1:0]}),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .rst_n(rst_n),
        .s_axi_araddr(s_axi_araddr[7:2]),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[7:2]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axis_tdata(s_axis_tdata[27:4]),
        .s_axis_tid(s_axis_tid),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "delay_bram" *) 
module design_1_fx_system_wrapper_0_1_delay_bram
   (bram_rd_valid,
    S,
    bram_doutb,
    mem_reg_0_7_0,
    mem_reg_0_11_0,
    mem_reg_0_15_0,
    mem_reg_0_19_0,
    mem_reg_0_23_0,
    mem_reg_0_27_0,
    mem_reg_0_31_0,
    rd_en,
    clk,
    vld_d2_reg_0,
    Q,
    mem_reg_0_30_0,
    mem_reg_0_11_1,
    ADDRARDADDR,
    ADDRBWRADDR,
    mem_reg_0_31_1,
    WEA,
    mem_reg_0_11_2,
    mem_reg_0_4_0,
    mem_reg_0_6_0,
    mem_reg_0_10_0,
    mem_reg_0_13_0,
    mem_reg_0_21_0,
    mem_reg_0_14_0,
    mem_reg_0_16_0,
    mem_reg_0_20_0,
    mem_reg_0_23_1,
    mem_reg_0_31_2,
    wr_en,
    mem_reg_0_26_0,
    rd_addr);
  output bram_rd_valid;
  output [3:0]S;
  output [31:0]bram_doutb;
  output [3:0]mem_reg_0_7_0;
  output [3:0]mem_reg_0_11_0;
  output [3:0]mem_reg_0_15_0;
  output [3:0]mem_reg_0_19_0;
  output [3:0]mem_reg_0_23_0;
  output [3:0]mem_reg_0_27_0;
  output [3:0]mem_reg_0_31_0;
  input rd_en;
  input clk;
  input vld_d2_reg_0;
  input [31:0]Q;
  input mem_reg_0_30_0;
  input mem_reg_0_11_1;
  input [14:0]ADDRARDADDR;
  input [14:0]ADDRBWRADDR;
  input [31:0]mem_reg_0_31_1;
  input [1:0]WEA;
  input [14:0]mem_reg_0_11_2;
  input mem_reg_0_4_0;
  input [0:0]mem_reg_0_6_0;
  input [14:0]mem_reg_0_10_0;
  input [1:0]mem_reg_0_13_0;
  input [14:0]mem_reg_0_21_0;
  input mem_reg_0_14_0;
  input [0:0]mem_reg_0_16_0;
  input [14:0]mem_reg_0_20_0;
  input [1:0]mem_reg_0_23_1;
  input [14:0]mem_reg_0_31_2;
  input wr_en;
  input [0:0]mem_reg_0_26_0;
  input [14:0]rd_addr;

  wire [14:0]ADDRARDADDR;
  wire [14:0]ADDRBWRADDR;
  wire [31:0]Q;
  wire [3:0]S;
  wire [1:0]WEA;
  wire [31:0]bram_doutb;
  wire bram_rd_valid;
  wire clk;
  wire [14:0]mem_reg_0_10_0;
  wire [3:0]mem_reg_0_11_0;
  wire mem_reg_0_11_1;
  wire [14:0]mem_reg_0_11_2;
  wire [1:0]mem_reg_0_13_0;
  wire mem_reg_0_14_0;
  wire [3:0]mem_reg_0_15_0;
  wire [0:0]mem_reg_0_16_0;
  wire [3:0]mem_reg_0_19_0;
  wire [14:0]mem_reg_0_20_0;
  wire [14:0]mem_reg_0_21_0;
  wire [3:0]mem_reg_0_23_0;
  wire [1:0]mem_reg_0_23_1;
  wire [0:0]mem_reg_0_26_0;
  wire [3:0]mem_reg_0_27_0;
  wire mem_reg_0_30_0;
  wire [3:0]mem_reg_0_31_0;
  wire [31:0]mem_reg_0_31_1;
  wire [14:0]mem_reg_0_31_2;
  wire mem_reg_0_4_0;
  wire [0:0]mem_reg_0_6_0;
  wire [3:0]mem_reg_0_7_0;
  wire [14:0]rd_addr;
  wire rd_en;
  wire vld_d1;
  wire vld_d2_reg_0;
  wire wr_en;
  wire NLW_mem_reg_0_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_0_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_0_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_1_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_1_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_1_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_10_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_10_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_10_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_10_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_10_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_10_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_10_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_10_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_10_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_10_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_10_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_10_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_11_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_11_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_11_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_11_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_11_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_11_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_11_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_11_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_11_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_11_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_11_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_11_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_12_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_12_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_12_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_12_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_12_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_12_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_12_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_12_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_12_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_12_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_12_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_12_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_13_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_13_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_13_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_13_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_13_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_13_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_13_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_13_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_13_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_13_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_13_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_13_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_14_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_14_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_14_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_14_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_14_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_14_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_14_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_14_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_14_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_14_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_14_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_14_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_15_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_15_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_15_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_15_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_15_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_15_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_15_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_15_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_15_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_15_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_15_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_15_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_16_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_16_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_16_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_16_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_16_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_16_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_16_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_16_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_16_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_16_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_16_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_16_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_17_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_17_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_17_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_17_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_17_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_17_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_17_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_17_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_17_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_17_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_17_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_17_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_18_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_18_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_18_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_18_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_18_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_18_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_18_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_18_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_18_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_18_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_18_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_18_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_19_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_19_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_19_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_19_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_19_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_19_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_19_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_19_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_19_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_19_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_19_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_19_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_2_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_2_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_2_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_2_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_20_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_20_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_20_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_20_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_20_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_20_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_20_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_20_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_20_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_20_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_20_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_20_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_21_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_21_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_21_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_21_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_21_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_21_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_21_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_21_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_21_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_21_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_21_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_21_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_22_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_22_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_22_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_22_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_22_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_22_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_22_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_22_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_22_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_22_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_22_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_22_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_23_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_23_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_23_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_23_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_23_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_23_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_23_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_23_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_23_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_23_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_23_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_23_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_24_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_24_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_24_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_24_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_24_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_24_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_24_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_24_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_24_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_24_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_24_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_24_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_25_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_25_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_25_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_25_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_25_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_25_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_25_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_25_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_25_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_25_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_25_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_25_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_26_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_26_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_26_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_26_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_26_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_26_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_26_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_26_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_26_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_26_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_26_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_26_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_27_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_27_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_27_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_27_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_27_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_27_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_27_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_27_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_27_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_27_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_27_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_27_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_28_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_28_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_28_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_28_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_28_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_28_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_28_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_28_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_28_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_28_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_28_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_28_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_29_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_29_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_29_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_29_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_29_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_29_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_29_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_29_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_29_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_29_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_29_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_29_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_3_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_3_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_3_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_3_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_30_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_30_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_30_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_30_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_30_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_30_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_30_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_30_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_30_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_30_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_30_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_30_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_31_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_31_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_31_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_31_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_31_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_31_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_31_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_31_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_31_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_31_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_31_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_31_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_4_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_4_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_4_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_4_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_4_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_4_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_5_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_5_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_5_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_5_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_5_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_5_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_6_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_6_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_6_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_6_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_6_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_6_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_7_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_7_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_7_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_7_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_7_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_7_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_8_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_8_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_8_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_8_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_8_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_8_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_8_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_8_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_8_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_8_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_8_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_8_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_9_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_9_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_9_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_9_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_9_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_9_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_9_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_9_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_9_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_9_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_9_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_9_RDADDRECC_UNCONNECTED;

  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry__0_i_1
       (.I0(bram_doutb[7]),
        .I1(Q[7]),
        .O(mem_reg_0_7_0[3]));
  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry__0_i_2
       (.I0(bram_doutb[6]),
        .I1(Q[6]),
        .O(mem_reg_0_7_0[2]));
  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry__0_i_3
       (.I0(bram_doutb[5]),
        .I1(Q[5]),
        .O(mem_reg_0_7_0[1]));
  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry__0_i_4
       (.I0(bram_doutb[4]),
        .I1(Q[4]),
        .O(mem_reg_0_7_0[0]));
  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry__1_i_1
       (.I0(bram_doutb[11]),
        .I1(Q[11]),
        .O(mem_reg_0_11_0[3]));
  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry__1_i_2
       (.I0(bram_doutb[10]),
        .I1(Q[10]),
        .O(mem_reg_0_11_0[2]));
  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry__1_i_3
       (.I0(bram_doutb[9]),
        .I1(Q[9]),
        .O(mem_reg_0_11_0[1]));
  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry__1_i_4
       (.I0(bram_doutb[8]),
        .I1(Q[8]),
        .O(mem_reg_0_11_0[0]));
  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry__2_i_1
       (.I0(bram_doutb[15]),
        .I1(Q[15]),
        .O(mem_reg_0_15_0[3]));
  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry__2_i_2
       (.I0(bram_doutb[14]),
        .I1(Q[14]),
        .O(mem_reg_0_15_0[2]));
  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry__2_i_3
       (.I0(bram_doutb[13]),
        .I1(Q[13]),
        .O(mem_reg_0_15_0[1]));
  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry__2_i_4
       (.I0(bram_doutb[12]),
        .I1(Q[12]),
        .O(mem_reg_0_15_0[0]));
  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry__3_i_1
       (.I0(bram_doutb[19]),
        .I1(Q[19]),
        .O(mem_reg_0_19_0[3]));
  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry__3_i_2
       (.I0(bram_doutb[18]),
        .I1(Q[18]),
        .O(mem_reg_0_19_0[2]));
  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry__3_i_3
       (.I0(bram_doutb[17]),
        .I1(Q[17]),
        .O(mem_reg_0_19_0[1]));
  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry__3_i_4
       (.I0(bram_doutb[16]),
        .I1(Q[16]),
        .O(mem_reg_0_19_0[0]));
  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry__4_i_1
       (.I0(bram_doutb[23]),
        .I1(Q[23]),
        .O(mem_reg_0_23_0[3]));
  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry__4_i_2
       (.I0(bram_doutb[22]),
        .I1(Q[22]),
        .O(mem_reg_0_23_0[2]));
  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry__4_i_3
       (.I0(bram_doutb[21]),
        .I1(Q[21]),
        .O(mem_reg_0_23_0[1]));
  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry__4_i_4
       (.I0(bram_doutb[20]),
        .I1(Q[20]),
        .O(mem_reg_0_23_0[0]));
  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry__5_i_1
       (.I0(bram_doutb[27]),
        .I1(Q[27]),
        .O(mem_reg_0_27_0[3]));
  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry__5_i_2
       (.I0(bram_doutb[26]),
        .I1(Q[26]),
        .O(mem_reg_0_27_0[2]));
  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry__5_i_3
       (.I0(bram_doutb[25]),
        .I1(Q[25]),
        .O(mem_reg_0_27_0[1]));
  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry__5_i_4
       (.I0(bram_doutb[24]),
        .I1(Q[24]),
        .O(mem_reg_0_27_0[0]));
  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry__6_i_1
       (.I0(bram_doutb[31]),
        .I1(Q[31]),
        .O(mem_reg_0_31_0[3]));
  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry__6_i_2
       (.I0(bram_doutb[30]),
        .I1(Q[30]),
        .O(mem_reg_0_31_0[2]));
  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry__6_i_3
       (.I0(bram_doutb[29]),
        .I1(Q[29]),
        .O(mem_reg_0_31_0[1]));
  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry__6_i_4
       (.I0(bram_doutb[28]),
        .I1(Q[28]),
        .O(mem_reg_0_31_0[0]));
  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry_i_1
       (.I0(bram_doutb[3]),
        .I1(Q[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry_i_2
       (.I0(bram_doutb[2]),
        .I1(Q[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry_i_3
       (.I0(bram_doutb[1]),
        .I1(Q[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    delta_r0_carry_i_4
       (.I0(bram_doutb[0]),
        .I1(Q[0]),
        .O(S[0]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_0
       (.ADDRARDADDR({1'b1,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_0_DOBDO_UNCONNECTED[31:1],bram_doutb[0]}),
        .DOPADOP(NLW_mem_reg_0_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_30_0),
        .ENBWREN(mem_reg_0_11_1),
        .INJECTDBITERR(NLW_mem_reg_0_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_0_SBITERR_UNCONNECTED),
        .WEA({WEA[0],WEA[0],WEA[0],1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_1
       (.ADDRARDADDR({1'b1,ADDRARDADDR}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_1_DOBDO_UNCONNECTED[31:1],bram_doutb[1]}),
        .DOPADOP(NLW_mem_reg_0_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_30_0),
        .ENBWREN(mem_reg_0_11_1),
        .INJECTDBITERR(NLW_mem_reg_0_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_1_SBITERR_UNCONNECTED),
        .WEA({WEA[0],WEA[0],WEA[0],1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_10
       (.ADDRARDADDR({1'b1,mem_reg_0_11_2}),
        .ADDRBWRADDR({1'b1,mem_reg_0_10_0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_10_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_10_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_10_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[10]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_10_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_10_DOBDO_UNCONNECTED[31:1],bram_doutb[10]}),
        .DOPADOP(NLW_mem_reg_0_10_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_10_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_10_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_4_0),
        .ENBWREN(mem_reg_0_11_1),
        .INJECTDBITERR(NLW_mem_reg_0_10_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_10_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_10_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_10_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_13_0[0],mem_reg_0_13_0[0],mem_reg_0_13_0[0],1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_11
       (.ADDRARDADDR({1'b1,mem_reg_0_11_2}),
        .ADDRBWRADDR({1'b1,mem_reg_0_10_0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_11_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_11_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_11_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[11]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_11_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_11_DOBDO_UNCONNECTED[31:1],bram_doutb[11]}),
        .DOPADOP(NLW_mem_reg_0_11_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_11_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_11_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_4_0),
        .ENBWREN(mem_reg_0_11_1),
        .INJECTDBITERR(NLW_mem_reg_0_11_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_11_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_11_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_11_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_13_0[0],mem_reg_0_13_0[0],mem_reg_0_13_0[0],1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_12
       (.ADDRARDADDR({1'b1,mem_reg_0_21_0}),
        .ADDRBWRADDR({1'b1,mem_reg_0_10_0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_12_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_12_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_12_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[12]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_12_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_12_DOBDO_UNCONNECTED[31:1],bram_doutb[12]}),
        .DOPADOP(NLW_mem_reg_0_12_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_12_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_12_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_4_0),
        .ENBWREN(mem_reg_0_11_1),
        .INJECTDBITERR(NLW_mem_reg_0_12_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_12_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_12_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_12_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_13_0[0],mem_reg_0_13_0[0],mem_reg_0_13_0[0],1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_13
       (.ADDRARDADDR({1'b1,mem_reg_0_21_0}),
        .ADDRBWRADDR({1'b1,mem_reg_0_10_0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_13_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_13_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_13_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[13]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_13_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_13_DOBDO_UNCONNECTED[31:1],bram_doutb[13]}),
        .DOPADOP(NLW_mem_reg_0_13_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_13_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_13_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_4_0),
        .ENBWREN(mem_reg_0_11_1),
        .INJECTDBITERR(NLW_mem_reg_0_13_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_13_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_13_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_13_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_13_0[1],mem_reg_0_13_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_14
       (.ADDRARDADDR({1'b1,mem_reg_0_21_0}),
        .ADDRBWRADDR({1'b1,mem_reg_0_10_0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_14_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_14_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_14_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[14]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_14_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_14_DOBDO_UNCONNECTED[31:1],bram_doutb[14]}),
        .DOPADOP(NLW_mem_reg_0_14_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_14_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_14_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_14_0),
        .ENBWREN(mem_reg_0_11_1),
        .INJECTDBITERR(NLW_mem_reg_0_14_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_14_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_14_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_14_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_13_0[1],mem_reg_0_13_0[1],mem_reg_0_13_0[1],1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_15
       (.ADDRARDADDR({1'b1,mem_reg_0_21_0}),
        .ADDRBWRADDR({1'b1,mem_reg_0_10_0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_15_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_15_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_15_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[15]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_15_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_15_DOBDO_UNCONNECTED[31:1],bram_doutb[15]}),
        .DOPADOP(NLW_mem_reg_0_15_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_15_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_15_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_14_0),
        .ENBWREN(mem_reg_0_11_1),
        .INJECTDBITERR(NLW_mem_reg_0_15_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_15_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_15_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_15_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_13_0[1],mem_reg_0_13_0[1],mem_reg_0_13_0[1],1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_16
       (.ADDRARDADDR({1'b1,mem_reg_0_21_0}),
        .ADDRBWRADDR({1'b1,mem_reg_0_10_0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_16_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_16_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_16_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[16]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_16_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_16_DOBDO_UNCONNECTED[31:1],bram_doutb[16]}),
        .DOPADOP(NLW_mem_reg_0_16_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_16_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_16_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_14_0),
        .ENBWREN(rd_en),
        .INJECTDBITERR(NLW_mem_reg_0_16_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_16_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_16_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_16_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_16_0,mem_reg_0_13_0[1],mem_reg_0_13_0[1],1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_17
       (.ADDRARDADDR({1'b1,mem_reg_0_21_0}),
        .ADDRBWRADDR({1'b1,mem_reg_0_10_0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_17_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_17_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_17_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[17]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_17_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_17_DOBDO_UNCONNECTED[31:1],bram_doutb[17]}),
        .DOPADOP(NLW_mem_reg_0_17_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_17_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_17_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_14_0),
        .ENBWREN(rd_en),
        .INJECTDBITERR(NLW_mem_reg_0_17_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_17_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_17_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_17_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_16_0,mem_reg_0_16_0,mem_reg_0_16_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_18
       (.ADDRARDADDR({1'b1,mem_reg_0_21_0}),
        .ADDRBWRADDR({1'b1,mem_reg_0_10_0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_18_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_18_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_18_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[18]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_18_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_18_DOBDO_UNCONNECTED[31:1],bram_doutb[18]}),
        .DOPADOP(NLW_mem_reg_0_18_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_18_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_18_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_14_0),
        .ENBWREN(rd_en),
        .INJECTDBITERR(NLW_mem_reg_0_18_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_18_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_18_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_18_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_16_0,mem_reg_0_16_0,mem_reg_0_16_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_19
       (.ADDRARDADDR({1'b1,mem_reg_0_21_0}),
        .ADDRBWRADDR({1'b1,mem_reg_0_10_0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_19_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_19_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_19_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[19]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_19_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_19_DOBDO_UNCONNECTED[31:1],bram_doutb[19]}),
        .DOPADOP(NLW_mem_reg_0_19_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_19_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_19_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_14_0),
        .ENBWREN(rd_en),
        .INJECTDBITERR(NLW_mem_reg_0_19_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_19_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_19_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_19_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_16_0,mem_reg_0_16_0,mem_reg_0_16_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_2
       (.ADDRARDADDR({1'b1,mem_reg_0_11_2}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[2]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_2_DOBDO_UNCONNECTED[31:1],bram_doutb[2]}),
        .DOPADOP(NLW_mem_reg_0_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_30_0),
        .ENBWREN(mem_reg_0_11_1),
        .INJECTDBITERR(NLW_mem_reg_0_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_2_SBITERR_UNCONNECTED),
        .WEA({WEA[0],WEA[0],WEA[0],1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_20
       (.ADDRARDADDR({1'b1,mem_reg_0_21_0}),
        .ADDRBWRADDR({1'b1,mem_reg_0_20_0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_20_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_20_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_20_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[20]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_20_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_20_DOBDO_UNCONNECTED[31:1],bram_doutb[20]}),
        .DOPADOP(NLW_mem_reg_0_20_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_20_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_20_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_14_0),
        .ENBWREN(rd_en),
        .INJECTDBITERR(NLW_mem_reg_0_20_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_20_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_20_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_20_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_23_1[0],mem_reg_0_23_1[0],mem_reg_0_23_1[0],1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_21
       (.ADDRARDADDR({1'b1,mem_reg_0_21_0}),
        .ADDRBWRADDR({1'b1,mem_reg_0_20_0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_21_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_21_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_21_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[21]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_21_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_21_DOBDO_UNCONNECTED[31:1],bram_doutb[21]}),
        .DOPADOP(NLW_mem_reg_0_21_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_21_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_21_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_14_0),
        .ENBWREN(rd_en),
        .INJECTDBITERR(NLW_mem_reg_0_21_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_21_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_21_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_21_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_23_1[0],mem_reg_0_23_1[0],mem_reg_0_23_1[0],1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_22
       (.ADDRARDADDR({1'b1,mem_reg_0_31_2}),
        .ADDRBWRADDR({1'b1,mem_reg_0_20_0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_22_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_22_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_22_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[22]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_22_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_22_DOBDO_UNCONNECTED[31:1],bram_doutb[22]}),
        .DOPADOP(NLW_mem_reg_0_22_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_22_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_22_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_14_0),
        .ENBWREN(rd_en),
        .INJECTDBITERR(NLW_mem_reg_0_22_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_22_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_22_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_22_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_23_1[0],mem_reg_0_23_1[0],mem_reg_0_23_1[0],1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_23
       (.ADDRARDADDR({1'b1,mem_reg_0_31_2}),
        .ADDRBWRADDR({1'b1,mem_reg_0_20_0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_23_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_23_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_23_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[23]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_23_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_23_DOBDO_UNCONNECTED[31:1],bram_doutb[23]}),
        .DOPADOP(NLW_mem_reg_0_23_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_23_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_23_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_14_0),
        .ENBWREN(rd_en),
        .INJECTDBITERR(NLW_mem_reg_0_23_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_23_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_23_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_23_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_23_1[1],mem_reg_0_23_1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_24
       (.ADDRARDADDR({1'b1,mem_reg_0_31_2}),
        .ADDRBWRADDR({1'b1,mem_reg_0_20_0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_24_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_24_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_24_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[24]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_24_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_24_DOBDO_UNCONNECTED[31:1],bram_doutb[24]}),
        .DOPADOP(NLW_mem_reg_0_24_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_24_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_24_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(wr_en),
        .ENBWREN(rd_en),
        .INJECTDBITERR(NLW_mem_reg_0_24_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_24_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_24_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_24_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_23_1[1],mem_reg_0_23_1[1],mem_reg_0_23_1[1],1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_25
       (.ADDRARDADDR({1'b1,mem_reg_0_31_2}),
        .ADDRBWRADDR({1'b1,mem_reg_0_20_0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_25_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_25_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_25_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[25]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_25_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_25_DOBDO_UNCONNECTED[31:1],bram_doutb[25]}),
        .DOPADOP(NLW_mem_reg_0_25_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_25_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_25_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(wr_en),
        .ENBWREN(rd_en),
        .INJECTDBITERR(NLW_mem_reg_0_25_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_25_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_25_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_25_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_23_1[1],mem_reg_0_23_1[1],mem_reg_0_23_1[1],1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_26
       (.ADDRARDADDR({1'b1,mem_reg_0_31_2}),
        .ADDRBWRADDR({1'b1,mem_reg_0_20_0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_26_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_26_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_26_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[26]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_26_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_26_DOBDO_UNCONNECTED[31:1],bram_doutb[26]}),
        .DOPADOP(NLW_mem_reg_0_26_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_26_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_26_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(wr_en),
        .ENBWREN(rd_en),
        .INJECTDBITERR(NLW_mem_reg_0_26_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_26_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_26_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_26_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_26_0,mem_reg_0_23_1[1],mem_reg_0_23_1[1],1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_27
       (.ADDRARDADDR({1'b1,mem_reg_0_31_2}),
        .ADDRBWRADDR({1'b1,mem_reg_0_20_0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_27_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_27_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_27_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[27]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_27_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_27_DOBDO_UNCONNECTED[31:1],bram_doutb[27]}),
        .DOPADOP(NLW_mem_reg_0_27_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_27_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_27_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(wr_en),
        .ENBWREN(rd_en),
        .INJECTDBITERR(NLW_mem_reg_0_27_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_27_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_27_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_27_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_26_0,mem_reg_0_26_0,mem_reg_0_26_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_28
       (.ADDRARDADDR({1'b1,mem_reg_0_31_2}),
        .ADDRBWRADDR({1'b1,mem_reg_0_20_0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_28_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_28_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_28_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[28]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_28_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_28_DOBDO_UNCONNECTED[31:1],bram_doutb[28]}),
        .DOPADOP(NLW_mem_reg_0_28_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_28_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_28_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(wr_en),
        .ENBWREN(rd_en),
        .INJECTDBITERR(NLW_mem_reg_0_28_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_28_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_28_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_28_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_26_0,mem_reg_0_26_0,mem_reg_0_26_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_29
       (.ADDRARDADDR({1'b1,mem_reg_0_31_2}),
        .ADDRBWRADDR({1'b1,mem_reg_0_20_0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_29_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_29_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_29_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[29]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_29_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_29_DOBDO_UNCONNECTED[31:1],bram_doutb[29]}),
        .DOPADOP(NLW_mem_reg_0_29_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_29_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_29_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(wr_en),
        .ENBWREN(rd_en),
        .INJECTDBITERR(NLW_mem_reg_0_29_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_29_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_29_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_29_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_26_0,mem_reg_0_26_0,mem_reg_0_26_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_3
       (.ADDRARDADDR({1'b1,mem_reg_0_11_2}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[3]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_3_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_3_DOBDO_UNCONNECTED[31:1],bram_doutb[3]}),
        .DOPADOP(NLW_mem_reg_0_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_30_0),
        .ENBWREN(mem_reg_0_11_1),
        .INJECTDBITERR(NLW_mem_reg_0_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_3_SBITERR_UNCONNECTED),
        .WEA({WEA[1],WEA,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_30
       (.ADDRARDADDR({1'b1,mem_reg_0_31_2}),
        .ADDRBWRADDR({1'b1,rd_addr}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_30_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_30_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_30_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[30]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_30_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_30_DOBDO_UNCONNECTED[31:1],bram_doutb[30]}),
        .DOPADOP(NLW_mem_reg_0_30_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_30_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_30_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(wr_en),
        .ENBWREN(rd_en),
        .INJECTDBITERR(NLW_mem_reg_0_30_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_30_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_30_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_30_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_30_0,mem_reg_0_30_0,mem_reg_0_30_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_31
       (.ADDRARDADDR({1'b1,mem_reg_0_31_2}),
        .ADDRBWRADDR({1'b1,rd_addr}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_31_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_31_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_31_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[31]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_31_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_31_DOBDO_UNCONNECTED[31:1],bram_doutb[31]}),
        .DOPADOP(NLW_mem_reg_0_31_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_31_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_31_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(wr_en),
        .ENBWREN(rd_en),
        .INJECTDBITERR(NLW_mem_reg_0_31_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_31_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_31_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_31_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_30_0,mem_reg_0_30_0,mem_reg_0_30_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_4
       (.ADDRARDADDR({1'b1,mem_reg_0_11_2}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_4_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[4]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_4_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_4_DOBDO_UNCONNECTED[31:1],bram_doutb[4]}),
        .DOPADOP(NLW_mem_reg_0_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_4_0),
        .ENBWREN(mem_reg_0_11_1),
        .INJECTDBITERR(NLW_mem_reg_0_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_4_SBITERR_UNCONNECTED),
        .WEA({WEA[1],WEA[1],WEA[1],1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_5
       (.ADDRARDADDR({1'b1,mem_reg_0_11_2}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_5_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[5]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_5_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_5_DOBDO_UNCONNECTED[31:1],bram_doutb[5]}),
        .DOPADOP(NLW_mem_reg_0_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_4_0),
        .ENBWREN(mem_reg_0_11_1),
        .INJECTDBITERR(NLW_mem_reg_0_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_5_SBITERR_UNCONNECTED),
        .WEA({WEA[1],WEA[1],WEA[1],1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_6
       (.ADDRARDADDR({1'b1,mem_reg_0_11_2}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_6_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_6_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[6]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_6_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_6_DOBDO_UNCONNECTED[31:1],bram_doutb[6]}),
        .DOPADOP(NLW_mem_reg_0_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_4_0),
        .ENBWREN(mem_reg_0_11_1),
        .INJECTDBITERR(NLW_mem_reg_0_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_6_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_6_0,WEA[1],WEA[1],1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_7
       (.ADDRARDADDR({1'b1,mem_reg_0_11_2}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_7_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_7_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[7]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_7_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_7_DOBDO_UNCONNECTED[31:1],bram_doutb[7]}),
        .DOPADOP(NLW_mem_reg_0_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_4_0),
        .ENBWREN(mem_reg_0_11_1),
        .INJECTDBITERR(NLW_mem_reg_0_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_7_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_6_0,mem_reg_0_6_0,mem_reg_0_6_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_8
       (.ADDRARDADDR({1'b1,mem_reg_0_11_2}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_8_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_8_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_8_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[8]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_8_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_8_DOBDO_UNCONNECTED[31:1],bram_doutb[8]}),
        .DOPADOP(NLW_mem_reg_0_8_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_8_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_8_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_4_0),
        .ENBWREN(mem_reg_0_11_1),
        .INJECTDBITERR(NLW_mem_reg_0_8_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_8_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_8_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_8_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_6_0,mem_reg_0_6_0,mem_reg_0_6_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_9
       (.ADDRARDADDR({1'b1,mem_reg_0_11_2}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_9_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_9_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_mem_reg_0_9_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mem_reg_0_31_1[9]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_9_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_9_DOBDO_UNCONNECTED[31:1],bram_doutb[9]}),
        .DOPADOP(NLW_mem_reg_0_9_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_9_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_9_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_4_0),
        .ENBWREN(mem_reg_0_11_1),
        .INJECTDBITERR(NLW_mem_reg_0_9_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_9_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_9_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(vld_d2_reg_0),
        .SBITERR(NLW_mem_reg_0_9_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_6_0,mem_reg_0_6_0,mem_reg_0_6_0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  FDCE vld_d1_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(vld_d2_reg_0),
        .D(rd_en),
        .Q(vld_d1));
  FDCE vld_d2_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(vld_d2_reg_0),
        .D(vld_d1),
        .Q(bram_rd_valid));
endmodule

(* ORIG_REF_NAME = "delay_frac_read" *) 
module design_1_fx_system_wrapper_0_1_delay_frac_read
   (P,
    E,
    rst_n_0,
    frac_d_valid,
    rd_en_reg_0,
    \term_r_reg[0]_0 ,
    rd_en_reg_rep_0,
    \state_reg[1] ,
    \FSM_sequential_state_reg[1]_0 ,
    \FSM_sequential_state_reg[2]_0 ,
    \FSM_sequential_state_reg[0]_0 ,
    \FSM_sequential_state_reg[2]_1 ,
    out_buf_valid_reg,
    \state_reg[1]_0 ,
    \state_reg[0] ,
    \FSM_sequential_state_reg[2]_2 ,
    \FSM_sequential_state_reg[2]_3 ,
    \FSM_sequential_state_reg[2]_4 ,
    out_buf_valid_reg_0,
    ADDRBWRADDR,
    \rd_addr_reg[14]_rep__0_0 ,
    \rd_addr_reg[14]_rep__1_0 ,
    rd_addr,
    \s0_reg_reg[31]_0 ,
    \d_out_reg[31]_0 ,
    clk,
    Q,
    rd_en_reg_1,
    \term_r_reg[0]_1 ,
    rd_en_reg_rep_1,
    v1,
    v1_0,
    \rptr0_reg_reg[14]_0 ,
    \rptr0_reg_reg[14]_1 ,
    rst_n,
    state,
    out_buf_valid_reg_1,
    \FSM_sequential_state_reg[2]_5 ,
    mono_valid,
    fx_enable,
    \x_reg_reg[6] ,
    out_buf_valid_reg_2,
    \FSM_sequential_state_reg[2]_6 ,
    term_r0__0_0,
    bram_rd_valid,
    frac_start,
    \FSM_sequential_state_reg[0]_1 ,
    \FSM_sequential_state_reg[2]_7 ,
    out_buf_valid_reg_3,
    out_buf_valid_reg_4,
    D,
    S,
    term_r0_0,
    term_r0_1,
    term_r0_2,
    term_r0__0_1,
    term_r0__0_2,
    term_r0__0_3,
    term_r0__0_4);
  output [0:0]P;
  output [0:0]E;
  output rst_n_0;
  output frac_d_valid;
  output rd_en_reg_0;
  output [0:0]\term_r_reg[0]_0 ;
  output rd_en_reg_rep_0;
  output \state_reg[1] ;
  output \FSM_sequential_state_reg[1]_0 ;
  output \FSM_sequential_state_reg[2]_0 ;
  output \FSM_sequential_state_reg[0]_0 ;
  output [0:0]\FSM_sequential_state_reg[2]_1 ;
  output out_buf_valid_reg;
  output \state_reg[1]_0 ;
  output [0:0]\state_reg[0] ;
  output \FSM_sequential_state_reg[2]_2 ;
  output \FSM_sequential_state_reg[2]_3 ;
  output \FSM_sequential_state_reg[2]_4 ;
  output out_buf_valid_reg_0;
  output [14:0]ADDRBWRADDR;
  output [14:0]\rd_addr_reg[14]_rep__0_0 ;
  output [14:0]\rd_addr_reg[14]_rep__1_0 ;
  output [14:0]rd_addr;
  output [31:0]\s0_reg_reg[31]_0 ;
  output [31:0]\d_out_reg[31]_0 ;
  input clk;
  input [15:0]Q;
  input rd_en_reg_1;
  input \term_r_reg[0]_1 ;
  input rd_en_reg_rep_1;
  input v1;
  input v1_0;
  input [14:0]\rptr0_reg_reg[14]_0 ;
  input [15:0]\rptr0_reg_reg[14]_1 ;
  input rst_n;
  input [2:0]state;
  input out_buf_valid_reg_1;
  input \FSM_sequential_state_reg[2]_5 ;
  input mono_valid;
  input fx_enable;
  input [0:0]\x_reg_reg[6] ;
  input out_buf_valid_reg_2;
  input \FSM_sequential_state_reg[2]_6 ;
  input term_r0__0_0;
  input bram_rd_valid;
  input frac_start;
  input \FSM_sequential_state_reg[0]_1 ;
  input \FSM_sequential_state_reg[2]_7 ;
  input [0:0]out_buf_valid_reg_3;
  input out_buf_valid_reg_4;
  input [31:0]D;
  input [3:0]S;
  input [3:0]term_r0_0;
  input [3:0]term_r0_1;
  input [3:0]term_r0_2;
  input [3:0]term_r0__0_1;
  input [3:0]term_r0__0_2;
  input [3:0]term_r0__0_3;
  input [3:0]term_r0__0_4;

  wire [14:0]ADDRBWRADDR;
  wire [31:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[0]_1 ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[2]_0 ;
  wire [0:0]\FSM_sequential_state_reg[2]_1 ;
  wire \FSM_sequential_state_reg[2]_2 ;
  wire \FSM_sequential_state_reg[2]_3 ;
  wire \FSM_sequential_state_reg[2]_4 ;
  wire \FSM_sequential_state_reg[2]_5 ;
  wire \FSM_sequential_state_reg[2]_6 ;
  wire \FSM_sequential_state_reg[2]_7 ;
  wire [0:0]P;
  wire [15:0]Q;
  wire [3:0]S;
  wire bram_rd_valid;
  wire clk;
  wire [31:0]\d_out_reg[31]_0 ;
  wire d_valid_i_1_n_0;
  wire delta_r;
  wire [31:0]delta_r0;
  wire delta_r0_carry__0_n_0;
  wire delta_r0_carry__0_n_1;
  wire delta_r0_carry__0_n_2;
  wire delta_r0_carry__0_n_3;
  wire delta_r0_carry__1_n_0;
  wire delta_r0_carry__1_n_1;
  wire delta_r0_carry__1_n_2;
  wire delta_r0_carry__1_n_3;
  wire delta_r0_carry__2_n_0;
  wire delta_r0_carry__2_n_1;
  wire delta_r0_carry__2_n_2;
  wire delta_r0_carry__2_n_3;
  wire delta_r0_carry__3_n_0;
  wire delta_r0_carry__3_n_1;
  wire delta_r0_carry__3_n_2;
  wire delta_r0_carry__3_n_3;
  wire delta_r0_carry__4_n_0;
  wire delta_r0_carry__4_n_1;
  wire delta_r0_carry__4_n_2;
  wire delta_r0_carry__4_n_3;
  wire delta_r0_carry__5_n_0;
  wire delta_r0_carry__5_n_1;
  wire delta_r0_carry__5_n_2;
  wire delta_r0_carry__5_n_3;
  wire delta_r0_carry__6_n_1;
  wire delta_r0_carry__6_n_2;
  wire delta_r0_carry__6_n_3;
  wire delta_r0_carry_n_0;
  wire delta_r0_carry_n_1;
  wire delta_r0_carry_n_2;
  wire delta_r0_carry_n_3;
  wire frac_d_valid;
  wire frac_start;
  wire fx_enable;
  wire mono_valid;
  wire mu_reg;
  wire out_buf_valid_reg;
  wire out_buf_valid_reg_0;
  wire out_buf_valid_reg_1;
  wire out_buf_valid_reg_2;
  wire [0:0]out_buf_valid_reg_3;
  wire out_buf_valid_reg_4;
  wire p_0_in;
  wire p_2_in;
  wire [14:0]rd_addr;
  wire \rd_addr[0]_rep__0_i_1_n_0 ;
  wire \rd_addr[0]_rep__1_i_1_n_0 ;
  wire \rd_addr[0]_rep__2_i_1_n_0 ;
  wire \rd_addr[0]_rep_i_1_n_0 ;
  wire \rd_addr[0]_rep_i_2_n_0 ;
  wire \rd_addr[10]_rep__0_i_1_n_0 ;
  wire \rd_addr[10]_rep__1_i_1_n_0 ;
  wire \rd_addr[10]_rep__2_i_1_n_0 ;
  wire \rd_addr[10]_rep_i_1_n_0 ;
  wire \rd_addr[11]_rep__0_i_1_n_0 ;
  wire \rd_addr[11]_rep__1_i_1_n_0 ;
  wire \rd_addr[11]_rep__2_i_1_n_0 ;
  wire \rd_addr[11]_rep_i_1_n_0 ;
  wire \rd_addr[12]_rep__0_i_1_n_0 ;
  wire \rd_addr[12]_rep__1_i_1_n_0 ;
  wire \rd_addr[12]_rep__2_i_1_n_0 ;
  wire \rd_addr[12]_rep_i_1_n_0 ;
  wire \rd_addr[13]_rep__0_i_1_n_0 ;
  wire \rd_addr[13]_rep__1_i_1_n_0 ;
  wire \rd_addr[13]_rep__2_i_1_n_0 ;
  wire \rd_addr[13]_rep_i_1_n_0 ;
  wire \rd_addr[14]_rep__0_i_1_n_0 ;
  wire \rd_addr[14]_rep__1_i_1_n_0 ;
  wire \rd_addr[14]_rep__2_i_1_n_0 ;
  wire \rd_addr[14]_rep_i_1_n_0 ;
  wire \rd_addr[1]_rep__0_i_1_n_0 ;
  wire \rd_addr[1]_rep__1_i_1_n_0 ;
  wire \rd_addr[1]_rep__2_i_1_n_0 ;
  wire \rd_addr[1]_rep_i_1_n_0 ;
  wire \rd_addr[2]_rep__0_i_1_n_0 ;
  wire \rd_addr[2]_rep__1_i_1_n_0 ;
  wire \rd_addr[2]_rep__2_i_1_n_0 ;
  wire \rd_addr[2]_rep_i_1_n_0 ;
  wire \rd_addr[3]_rep__0_i_1_n_0 ;
  wire \rd_addr[3]_rep__1_i_1_n_0 ;
  wire \rd_addr[3]_rep__2_i_1_n_0 ;
  wire \rd_addr[3]_rep_i_1_n_0 ;
  wire \rd_addr[4]_rep__0_i_1_n_0 ;
  wire \rd_addr[4]_rep__1_i_1_n_0 ;
  wire \rd_addr[4]_rep__2_i_1_n_0 ;
  wire \rd_addr[4]_rep_i_1_n_0 ;
  wire \rd_addr[5]_rep__0_i_1_n_0 ;
  wire \rd_addr[5]_rep__1_i_1_n_0 ;
  wire \rd_addr[5]_rep__2_i_1_n_0 ;
  wire \rd_addr[5]_rep_i_1_n_0 ;
  wire \rd_addr[6]_rep__0_i_1_n_0 ;
  wire \rd_addr[6]_rep__1_i_1_n_0 ;
  wire \rd_addr[6]_rep__2_i_1_n_0 ;
  wire \rd_addr[6]_rep_i_1_n_0 ;
  wire \rd_addr[7]_rep__0_i_1_n_0 ;
  wire \rd_addr[7]_rep__1_i_1_n_0 ;
  wire \rd_addr[7]_rep__2_i_1_n_0 ;
  wire \rd_addr[7]_rep_i_1_n_0 ;
  wire \rd_addr[8]_rep__0_i_1_n_0 ;
  wire \rd_addr[8]_rep__1_i_1_n_0 ;
  wire \rd_addr[8]_rep__2_i_1_n_0 ;
  wire \rd_addr[8]_rep_i_1_n_0 ;
  wire \rd_addr[9]_rep__0_i_1_n_0 ;
  wire \rd_addr[9]_rep__1_i_1_n_0 ;
  wire \rd_addr[9]_rep__2_i_1_n_0 ;
  wire \rd_addr[9]_rep_i_1_n_0 ;
  wire [14:0]\rd_addr_reg[14]_rep__0_0 ;
  wire [14:0]\rd_addr_reg[14]_rep__1_0 ;
  wire rd_en_reg_0;
  wire rd_en_reg_1;
  wire rd_en_reg_rep_0;
  wire rd_en_reg_rep_1;
  wire [14:0]rptr0_reg;
  wire [14:0]rptr0_reg0;
  wire \rptr0_reg[11]_i_2_n_0 ;
  wire \rptr0_reg[11]_i_3_n_0 ;
  wire \rptr0_reg[11]_i_4_n_0 ;
  wire \rptr0_reg[11]_i_5_n_0 ;
  wire \rptr0_reg[14]_i_2_n_0 ;
  wire \rptr0_reg[14]_i_3_n_0 ;
  wire \rptr0_reg[14]_i_4_n_0 ;
  wire \rptr0_reg[3]_i_2_n_0 ;
  wire \rptr0_reg[3]_i_3_n_0 ;
  wire \rptr0_reg[3]_i_4_n_0 ;
  wire \rptr0_reg[3]_i_5_n_0 ;
  wire \rptr0_reg[7]_i_2_n_0 ;
  wire \rptr0_reg[7]_i_3_n_0 ;
  wire \rptr0_reg[7]_i_4_n_0 ;
  wire \rptr0_reg[7]_i_5_n_0 ;
  wire \rptr0_reg_reg[11]_i_1_n_0 ;
  wire \rptr0_reg_reg[11]_i_1_n_1 ;
  wire \rptr0_reg_reg[11]_i_1_n_2 ;
  wire \rptr0_reg_reg[11]_i_1_n_3 ;
  wire [14:0]\rptr0_reg_reg[14]_0 ;
  wire [15:0]\rptr0_reg_reg[14]_1 ;
  wire \rptr0_reg_reg[14]_i_1_n_2 ;
  wire \rptr0_reg_reg[14]_i_1_n_3 ;
  wire \rptr0_reg_reg[3]_i_1_n_0 ;
  wire \rptr0_reg_reg[3]_i_1_n_1 ;
  wire \rptr0_reg_reg[3]_i_1_n_2 ;
  wire \rptr0_reg_reg[3]_i_1_n_3 ;
  wire \rptr0_reg_reg[7]_i_1_n_0 ;
  wire \rptr0_reg_reg[7]_i_1_n_1 ;
  wire \rptr0_reg_reg[7]_i_1_n_2 ;
  wire \rptr0_reg_reg[7]_i_1_n_3 ;
  wire [14:0]rptr1_reg;
  wire [14:0]rptr1_reg0;
  wire \rptr1_reg[11]_i_2_n_0 ;
  wire \rptr1_reg[11]_i_3_n_0 ;
  wire \rptr1_reg[11]_i_4_n_0 ;
  wire \rptr1_reg[11]_i_5_n_0 ;
  wire \rptr1_reg[14]_i_3_n_0 ;
  wire \rptr1_reg[14]_i_4_n_0 ;
  wire \rptr1_reg[14]_i_5_n_0 ;
  wire \rptr1_reg[3]_i_2_n_0 ;
  wire \rptr1_reg[3]_i_3_n_0 ;
  wire \rptr1_reg[3]_i_4_n_0 ;
  wire \rptr1_reg[3]_i_5_n_0 ;
  wire \rptr1_reg[3]_i_6_n_0 ;
  wire \rptr1_reg[3]_i_7_n_0 ;
  wire \rptr1_reg[3]_i_8_n_0 ;
  wire \rptr1_reg[3]_i_9_n_0 ;
  wire \rptr1_reg[7]_i_2_n_0 ;
  wire \rptr1_reg[7]_i_3_n_0 ;
  wire \rptr1_reg[7]_i_4_n_0 ;
  wire \rptr1_reg[7]_i_5_n_0 ;
  wire \rptr1_reg_reg[11]_i_1_n_0 ;
  wire \rptr1_reg_reg[11]_i_1_n_1 ;
  wire \rptr1_reg_reg[11]_i_1_n_2 ;
  wire \rptr1_reg_reg[11]_i_1_n_3 ;
  wire \rptr1_reg_reg[14]_i_2_n_2 ;
  wire \rptr1_reg_reg[14]_i_2_n_3 ;
  wire \rptr1_reg_reg[3]_i_1_n_0 ;
  wire \rptr1_reg_reg[3]_i_1_n_1 ;
  wire \rptr1_reg_reg[3]_i_1_n_2 ;
  wire \rptr1_reg_reg[3]_i_1_n_3 ;
  wire \rptr1_reg_reg[7]_i_1_n_0 ;
  wire \rptr1_reg_reg[7]_i_1_n_1 ;
  wire \rptr1_reg_reg[7]_i_1_n_2 ;
  wire \rptr1_reg_reg[7]_i_1_n_3 ;
  wire rst_n;
  wire rst_n_0;
  wire s0_reg;
  wire [31:0]\s0_reg_reg[31]_0 ;
  wire sat_add322_carry__0_i_1_n_0;
  wire sat_add322_carry__0_i_2_n_0;
  wire sat_add322_carry__0_i_3_n_0;
  wire sat_add322_carry__0_i_4_n_0;
  wire sat_add322_carry__0_n_0;
  wire sat_add322_carry__0_n_1;
  wire sat_add322_carry__0_n_2;
  wire sat_add322_carry__0_n_3;
  wire sat_add322_carry__0_n_4;
  wire sat_add322_carry__0_n_5;
  wire sat_add322_carry__0_n_6;
  wire sat_add322_carry__0_n_7;
  wire sat_add322_carry__1_i_1_n_0;
  wire sat_add322_carry__1_i_2_n_0;
  wire sat_add322_carry__1_i_3_n_0;
  wire sat_add322_carry__1_i_4_n_0;
  wire sat_add322_carry__1_n_0;
  wire sat_add322_carry__1_n_1;
  wire sat_add322_carry__1_n_2;
  wire sat_add322_carry__1_n_3;
  wire sat_add322_carry__1_n_4;
  wire sat_add322_carry__1_n_5;
  wire sat_add322_carry__1_n_6;
  wire sat_add322_carry__1_n_7;
  wire sat_add322_carry__2_i_1_n_0;
  wire sat_add322_carry__2_i_2_n_0;
  wire sat_add322_carry__2_i_3_n_0;
  wire sat_add322_carry__2_i_4_n_0;
  wire sat_add322_carry__2_n_0;
  wire sat_add322_carry__2_n_1;
  wire sat_add322_carry__2_n_2;
  wire sat_add322_carry__2_n_3;
  wire sat_add322_carry__2_n_4;
  wire sat_add322_carry__2_n_5;
  wire sat_add322_carry__2_n_6;
  wire sat_add322_carry__2_n_7;
  wire sat_add322_carry__3_i_1_n_0;
  wire sat_add322_carry__3_i_2_n_0;
  wire sat_add322_carry__3_i_3_n_0;
  wire sat_add322_carry__3_i_4_n_0;
  wire sat_add322_carry__3_n_0;
  wire sat_add322_carry__3_n_1;
  wire sat_add322_carry__3_n_2;
  wire sat_add322_carry__3_n_3;
  wire sat_add322_carry__3_n_4;
  wire sat_add322_carry__3_n_5;
  wire sat_add322_carry__3_n_6;
  wire sat_add322_carry__3_n_7;
  wire sat_add322_carry__4_i_1_n_0;
  wire sat_add322_carry__4_i_2_n_0;
  wire sat_add322_carry__4_i_3_n_0;
  wire sat_add322_carry__4_i_4_n_0;
  wire sat_add322_carry__4_n_0;
  wire sat_add322_carry__4_n_1;
  wire sat_add322_carry__4_n_2;
  wire sat_add322_carry__4_n_3;
  wire sat_add322_carry__4_n_4;
  wire sat_add322_carry__4_n_5;
  wire sat_add322_carry__4_n_6;
  wire sat_add322_carry__4_n_7;
  wire sat_add322_carry__5_i_1_n_0;
  wire sat_add322_carry__5_i_2_n_0;
  wire sat_add322_carry__5_i_3_n_0;
  wire sat_add322_carry__5_i_4_n_0;
  wire sat_add322_carry__5_n_0;
  wire sat_add322_carry__5_n_1;
  wire sat_add322_carry__5_n_2;
  wire sat_add322_carry__5_n_3;
  wire sat_add322_carry__5_n_4;
  wire sat_add322_carry__5_n_5;
  wire sat_add322_carry__5_n_6;
  wire sat_add322_carry__5_n_7;
  wire sat_add322_carry__6_i_1_n_0;
  wire sat_add322_carry__6_i_2_n_0;
  wire sat_add322_carry__6_i_3_n_0;
  wire sat_add322_carry__6_i_4_n_0;
  wire sat_add322_carry__6_n_1;
  wire sat_add322_carry__6_n_2;
  wire sat_add322_carry__6_n_3;
  wire sat_add322_carry__6_n_5;
  wire sat_add322_carry__6_n_6;
  wire sat_add322_carry__6_n_7;
  wire sat_add322_carry_i_1_n_0;
  wire sat_add322_carry_i_2_n_0;
  wire sat_add322_carry_i_3_n_0;
  wire sat_add322_carry_i_4_n_0;
  wire sat_add322_carry_n_0;
  wire sat_add322_carry_n_1;
  wire sat_add322_carry_n_2;
  wire sat_add322_carry_n_3;
  wire sat_add322_carry_n_4;
  wire sat_add322_carry_n_5;
  wire sat_add322_carry_n_6;
  wire sat_add322_carry_n_7;
  wire [31:0]sat_add32_return;
  wire [2:0]state;
  wire [0:0]\state_reg[0] ;
  wire \state_reg[1] ;
  wire \state_reg[1]_0 ;
  wire [30:1]term_r;
  wire [3:0]term_r0_0;
  wire [3:0]term_r0_1;
  wire [3:0]term_r0_2;
  wire term_r0__0_0;
  wire [3:0]term_r0__0_1;
  wire [3:0]term_r0__0_2;
  wire [3:0]term_r0__0_3;
  wire [3:0]term_r0__0_4;
  wire term_r0__0_i_1_n_0;
  wire term_r0__0_n_58;
  wire term_r0__0_n_59;
  wire term_r0__0_n_60;
  wire term_r0__0_n_61;
  wire term_r0__0_n_62;
  wire term_r0__0_n_63;
  wire term_r0__0_n_64;
  wire term_r0__0_n_65;
  wire term_r0__0_n_66;
  wire term_r0__0_n_67;
  wire term_r0__0_n_68;
  wire term_r0__0_n_69;
  wire term_r0__0_n_70;
  wire term_r0__0_n_71;
  wire term_r0__0_n_72;
  wire term_r0__0_n_73;
  wire term_r0__0_n_74;
  wire term_r0_n_100;
  wire term_r0_n_101;
  wire term_r0_n_102;
  wire term_r0_n_103;
  wire term_r0_n_104;
  wire term_r0_n_105;
  wire term_r0_n_106;
  wire term_r0_n_107;
  wire term_r0_n_108;
  wire term_r0_n_109;
  wire term_r0_n_110;
  wire term_r0_n_111;
  wire term_r0_n_112;
  wire term_r0_n_113;
  wire term_r0_n_114;
  wire term_r0_n_115;
  wire term_r0_n_116;
  wire term_r0_n_117;
  wire term_r0_n_118;
  wire term_r0_n_119;
  wire term_r0_n_120;
  wire term_r0_n_121;
  wire term_r0_n_122;
  wire term_r0_n_123;
  wire term_r0_n_124;
  wire term_r0_n_125;
  wire term_r0_n_126;
  wire term_r0_n_127;
  wire term_r0_n_128;
  wire term_r0_n_129;
  wire term_r0_n_130;
  wire term_r0_n_131;
  wire term_r0_n_132;
  wire term_r0_n_133;
  wire term_r0_n_134;
  wire term_r0_n_135;
  wire term_r0_n_136;
  wire term_r0_n_137;
  wire term_r0_n_138;
  wire term_r0_n_139;
  wire term_r0_n_140;
  wire term_r0_n_141;
  wire term_r0_n_142;
  wire term_r0_n_143;
  wire term_r0_n_144;
  wire term_r0_n_145;
  wire term_r0_n_146;
  wire term_r0_n_147;
  wire term_r0_n_148;
  wire term_r0_n_149;
  wire term_r0_n_150;
  wire term_r0_n_151;
  wire term_r0_n_152;
  wire term_r0_n_153;
  wire term_r0_n_58;
  wire term_r0_n_59;
  wire term_r0_n_60;
  wire term_r0_n_61;
  wire term_r0_n_62;
  wire term_r0_n_63;
  wire term_r0_n_64;
  wire term_r0_n_65;
  wire term_r0_n_66;
  wire term_r0_n_67;
  wire term_r0_n_68;
  wire term_r0_n_69;
  wire term_r0_n_70;
  wire term_r0_n_71;
  wire term_r0_n_72;
  wire term_r0_n_73;
  wire term_r0_n_74;
  wire term_r0_n_75;
  wire term_r0_n_76;
  wire term_r0_n_77;
  wire term_r0_n_78;
  wire term_r0_n_79;
  wire term_r0_n_80;
  wire term_r0_n_81;
  wire term_r0_n_82;
  wire term_r0_n_83;
  wire term_r0_n_84;
  wire term_r0_n_85;
  wire term_r0_n_86;
  wire term_r0_n_87;
  wire term_r0_n_88;
  wire term_r0_n_90;
  wire term_r0_n_91;
  wire term_r0_n_92;
  wire term_r0_n_93;
  wire term_r0_n_94;
  wire term_r0_n_95;
  wire term_r0_n_96;
  wire term_r0_n_97;
  wire term_r0_n_98;
  wire term_r0_n_99;
  wire [0:0]\term_r_reg[0]_0 ;
  wire \term_r_reg[0]_1 ;
  wire v1;
  wire v1_0;
  wire [0:0]\x_reg_reg[6] ;
  wire [3:3]NLW_delta_r0_carry__6_CO_UNCONNECTED;
  wire [3:2]\NLW_rptr0_reg_reg[14]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_rptr0_reg_reg[14]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_rptr1_reg_reg[14]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_rptr1_reg_reg[14]_i_2_O_UNCONNECTED ;
  wire [3:3]NLW_sat_add322_carry__6_CO_UNCONNECTED;
  wire NLW_term_r0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_term_r0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_term_r0_OVERFLOW_UNCONNECTED;
  wire NLW_term_r0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_term_r0_PATTERNDETECT_UNCONNECTED;
  wire NLW_term_r0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_term_r0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_term_r0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_term_r0_CARRYOUT_UNCONNECTED;
  wire NLW_term_r0__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_term_r0__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_term_r0__0_OVERFLOW_UNCONNECTED;
  wire NLW_term_r0__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_term_r0__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_term_r0__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_term_r0__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_term_r0__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_term_r0__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_term_r0__0_PCOUT_UNCONNECTED;

  LUT5 #(
    .INIT(32'h80000000)) 
    \D_reg[31]_i_1 
       (.I0(fx_enable),
        .I1(\x_reg_reg[6] ),
        .I2(mono_valid),
        .I3(\state_reg[1]_0 ),
        .I4(out_buf_valid_reg),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hCC0030E2)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(frac_start),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(bram_rd_valid),
        .I3(\FSM_sequential_state_reg[2]_0 ),
        .I4(\FSM_sequential_state_reg[0]_0 ),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A1ACA1A4)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\FSM_sequential_state_reg[0]_1 ),
        .I5(\FSM_sequential_state_reg[2]_7 ),
        .O(\FSM_sequential_state_reg[2]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_0 ),
        .I1(\FSM_sequential_state_reg[2]_0 ),
        .I2(\FSM_sequential_state_reg[0]_0 ),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BA0CBA04)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\FSM_sequential_state_reg[0]_1 ),
        .I5(\FSM_sequential_state_reg[2]_7 ),
        .O(\FSM_sequential_state_reg[2]_3 ));
  LUT6 #(
    .INIT(64'hABABBBABBBBBBBBB)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(state[2]),
        .I1(\FSM_sequential_state_reg[2]_5 ),
        .I2(out_buf_valid_reg),
        .I3(out_buf_valid_reg_1),
        .I4(\state_reg[1]_0 ),
        .I5(mono_valid),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_0 ),
        .I1(\FSM_sequential_state_reg[2]_0 ),
        .I2(\FSM_sequential_state_reg[0]_0 ),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA45AAEF)) 
    \FSM_sequential_state[2]_i_1__0 
       (.I0(state[2]),
        .I1(\FSM_sequential_state_reg[2]_5 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(\FSM_sequential_state_reg[2]_6 ),
        .I4(\FSM_sequential_state_reg[0]_1 ),
        .I5(\FSM_sequential_state_reg[2]_7 ),
        .O(\FSM_sequential_state_reg[2]_2 ));
  LUT6 #(
    .INIT(64'hFEFEFFFEFFFFFFFF)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(out_buf_valid_reg_2),
        .I1(\FSM_sequential_state_reg[2]_6 ),
        .I2(state[2]),
        .I3(out_buf_valid_reg_1),
        .I4(\state_reg[1]_0 ),
        .I5(mono_valid),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "ST_IDLE:000,ST_ISSUE0:001,ST_WAIT0:010,ST_ISSUE1:011,ST_WAIT1:100,ST_MUL:101,ST_ADD:110," *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(\FSM_sequential_state_reg[0]_0 ),
        .R(rst_n_0));
  (* FSM_ENCODED_STATES = "ST_IDLE:000,ST_ISSUE0:001,ST_WAIT0:010,ST_ISSUE1:011,ST_WAIT1:100,ST_MUL:101,ST_ADD:110," *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(\FSM_sequential_state_reg[1]_0 ),
        .R(rst_n_0));
  (* FSM_ENCODED_STATES = "ST_IDLE:000,ST_ISSUE0:001,ST_WAIT0:010,ST_ISSUE1:011,ST_WAIT1:100,ST_MUL:101,ST_ADD:110," *) 
  FDRE \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(\FSM_sequential_state_reg[2]_0 ),
        .R(rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hDF04)) 
    \d_out[0]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .I3(sat_add322_carry_n_7),
        .O(sat_add32_return[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hDF04)) 
    \d_out[10]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .I3(sat_add322_carry__1_n_5),
        .O(sat_add32_return[10]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hDF04)) 
    \d_out[11]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .I3(sat_add322_carry__1_n_4),
        .O(sat_add32_return[11]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hDF04)) 
    \d_out[12]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .I3(sat_add322_carry__2_n_7),
        .O(sat_add32_return[12]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hDF04)) 
    \d_out[13]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .I3(sat_add322_carry__2_n_6),
        .O(sat_add32_return[13]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hDF04)) 
    \d_out[14]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .I3(sat_add322_carry__2_n_5),
        .O(sat_add32_return[14]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hDF04)) 
    \d_out[15]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .I3(sat_add322_carry__2_n_4),
        .O(sat_add32_return[15]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hDF04)) 
    \d_out[16]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .I3(sat_add322_carry__3_n_7),
        .O(sat_add32_return[16]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hDF04)) 
    \d_out[17]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .I3(sat_add322_carry__3_n_6),
        .O(sat_add32_return[17]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hDF04)) 
    \d_out[18]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .I3(sat_add322_carry__3_n_5),
        .O(sat_add32_return[18]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hDF04)) 
    \d_out[19]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .I3(sat_add322_carry__3_n_4),
        .O(sat_add32_return[19]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hDF04)) 
    \d_out[1]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .I3(sat_add322_carry_n_6),
        .O(sat_add32_return[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hDF04)) 
    \d_out[20]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .I3(sat_add322_carry__4_n_7),
        .O(sat_add32_return[20]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hDF04)) 
    \d_out[21]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .I3(sat_add322_carry__4_n_6),
        .O(sat_add32_return[21]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hDF04)) 
    \d_out[22]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .I3(sat_add322_carry__4_n_5),
        .O(sat_add32_return[22]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hDF04)) 
    \d_out[23]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .I3(sat_add322_carry__4_n_4),
        .O(sat_add32_return[23]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hDF04)) 
    \d_out[24]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .I3(sat_add322_carry__5_n_7),
        .O(sat_add32_return[24]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hDF04)) 
    \d_out[25]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .I3(sat_add322_carry__5_n_6),
        .O(sat_add32_return[25]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hDF04)) 
    \d_out[26]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .I3(sat_add322_carry__5_n_5),
        .O(sat_add32_return[26]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hDF04)) 
    \d_out[27]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .I3(sat_add322_carry__5_n_4),
        .O(sat_add32_return[27]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hDF04)) 
    \d_out[28]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .I3(sat_add322_carry__6_n_7),
        .O(sat_add32_return[28]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hDF04)) 
    \d_out[29]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .I3(sat_add322_carry__6_n_6),
        .O(sat_add32_return[29]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hDF04)) 
    \d_out[2]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .I3(sat_add322_carry_n_5),
        .O(sat_add32_return[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hDF04)) 
    \d_out[30]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .I3(sat_add322_carry__6_n_5),
        .O(sat_add32_return[30]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \d_out[31]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .O(sat_add32_return[31]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hDF04)) 
    \d_out[3]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .I3(sat_add322_carry_n_4),
        .O(sat_add32_return[3]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hDF04)) 
    \d_out[4]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .I3(sat_add322_carry__0_n_7),
        .O(sat_add32_return[4]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hDF04)) 
    \d_out[5]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .I3(sat_add322_carry__0_n_6),
        .O(sat_add32_return[5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hDF04)) 
    \d_out[6]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .I3(sat_add322_carry__0_n_5),
        .O(sat_add32_return[6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hDF04)) 
    \d_out[7]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .I3(sat_add322_carry__0_n_4),
        .O(sat_add32_return[7]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hDF04)) 
    \d_out[8]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .I3(sat_add322_carry__1_n_7),
        .O(sat_add32_return[8]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hDF04)) 
    \d_out[9]_i_1 
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_2_in),
        .I2(p_0_in),
        .I3(sat_add322_carry__1_n_6),
        .O(sat_add32_return[9]));
  FDRE \d_out_reg[0] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[0]),
        .Q(\d_out_reg[31]_0 [0]),
        .R(rst_n_0));
  FDRE \d_out_reg[10] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[10]),
        .Q(\d_out_reg[31]_0 [10]),
        .R(rst_n_0));
  FDRE \d_out_reg[11] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[11]),
        .Q(\d_out_reg[31]_0 [11]),
        .R(rst_n_0));
  FDRE \d_out_reg[12] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[12]),
        .Q(\d_out_reg[31]_0 [12]),
        .R(rst_n_0));
  FDRE \d_out_reg[13] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[13]),
        .Q(\d_out_reg[31]_0 [13]),
        .R(rst_n_0));
  FDRE \d_out_reg[14] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[14]),
        .Q(\d_out_reg[31]_0 [14]),
        .R(rst_n_0));
  FDRE \d_out_reg[15] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[15]),
        .Q(\d_out_reg[31]_0 [15]),
        .R(rst_n_0));
  FDRE \d_out_reg[16] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[16]),
        .Q(\d_out_reg[31]_0 [16]),
        .R(rst_n_0));
  FDRE \d_out_reg[17] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[17]),
        .Q(\d_out_reg[31]_0 [17]),
        .R(rst_n_0));
  FDRE \d_out_reg[18] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[18]),
        .Q(\d_out_reg[31]_0 [18]),
        .R(rst_n_0));
  FDRE \d_out_reg[19] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[19]),
        .Q(\d_out_reg[31]_0 [19]),
        .R(rst_n_0));
  FDRE \d_out_reg[1] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[1]),
        .Q(\d_out_reg[31]_0 [1]),
        .R(rst_n_0));
  FDRE \d_out_reg[20] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[20]),
        .Q(\d_out_reg[31]_0 [20]),
        .R(rst_n_0));
  FDRE \d_out_reg[21] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[21]),
        .Q(\d_out_reg[31]_0 [21]),
        .R(rst_n_0));
  FDRE \d_out_reg[22] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[22]),
        .Q(\d_out_reg[31]_0 [22]),
        .R(rst_n_0));
  FDRE \d_out_reg[23] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[23]),
        .Q(\d_out_reg[31]_0 [23]),
        .R(rst_n_0));
  FDRE \d_out_reg[24] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[24]),
        .Q(\d_out_reg[31]_0 [24]),
        .R(rst_n_0));
  FDRE \d_out_reg[25] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[25]),
        .Q(\d_out_reg[31]_0 [25]),
        .R(rst_n_0));
  FDRE \d_out_reg[26] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[26]),
        .Q(\d_out_reg[31]_0 [26]),
        .R(rst_n_0));
  FDRE \d_out_reg[27] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[27]),
        .Q(\d_out_reg[31]_0 [27]),
        .R(rst_n_0));
  FDRE \d_out_reg[28] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[28]),
        .Q(\d_out_reg[31]_0 [28]),
        .R(rst_n_0));
  FDRE \d_out_reg[29] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[29]),
        .Q(\d_out_reg[31]_0 [29]),
        .R(rst_n_0));
  FDRE \d_out_reg[2] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[2]),
        .Q(\d_out_reg[31]_0 [2]),
        .R(rst_n_0));
  FDRE \d_out_reg[30] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[30]),
        .Q(\d_out_reg[31]_0 [30]),
        .R(rst_n_0));
  FDRE \d_out_reg[31] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[31]),
        .Q(\d_out_reg[31]_0 [31]),
        .R(rst_n_0));
  FDRE \d_out_reg[3] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[3]),
        .Q(\d_out_reg[31]_0 [3]),
        .R(rst_n_0));
  FDRE \d_out_reg[4] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[4]),
        .Q(\d_out_reg[31]_0 [4]),
        .R(rst_n_0));
  FDRE \d_out_reg[5] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[5]),
        .Q(\d_out_reg[31]_0 [5]),
        .R(rst_n_0));
  FDRE \d_out_reg[6] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[6]),
        .Q(\d_out_reg[31]_0 [6]),
        .R(rst_n_0));
  FDRE \d_out_reg[7] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[7]),
        .Q(\d_out_reg[31]_0 [7]),
        .R(rst_n_0));
  FDRE \d_out_reg[8] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[8]),
        .Q(\d_out_reg[31]_0 [8]),
        .R(rst_n_0));
  FDRE \d_out_reg[9] 
       (.C(clk),
        .CE(d_valid_i_1_n_0),
        .D(sat_add32_return[9]),
        .Q(\d_out_reg[31]_0 [9]),
        .R(rst_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    d_valid_i_1
       (.I0(\FSM_sequential_state_reg[1]_0 ),
        .I1(\FSM_sequential_state_reg[2]_0 ),
        .I2(\FSM_sequential_state_reg[0]_0 ),
        .O(d_valid_i_1_n_0));
  FDRE d_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(d_valid_i_1_n_0),
        .Q(frac_d_valid),
        .R(rst_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delta_r0_carry
       (.CI(1'b0),
        .CO({delta_r0_carry_n_0,delta_r0_carry_n_1,delta_r0_carry_n_2,delta_r0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(D[3:0]),
        .O(delta_r0[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delta_r0_carry__0
       (.CI(delta_r0_carry_n_0),
        .CO({delta_r0_carry__0_n_0,delta_r0_carry__0_n_1,delta_r0_carry__0_n_2,delta_r0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(D[7:4]),
        .O(delta_r0[7:4]),
        .S(term_r0_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delta_r0_carry__1
       (.CI(delta_r0_carry__0_n_0),
        .CO({delta_r0_carry__1_n_0,delta_r0_carry__1_n_1,delta_r0_carry__1_n_2,delta_r0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(D[11:8]),
        .O(delta_r0[11:8]),
        .S(term_r0_1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delta_r0_carry__2
       (.CI(delta_r0_carry__1_n_0),
        .CO({delta_r0_carry__2_n_0,delta_r0_carry__2_n_1,delta_r0_carry__2_n_2,delta_r0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(D[15:12]),
        .O(delta_r0[15:12]),
        .S(term_r0_2));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delta_r0_carry__3
       (.CI(delta_r0_carry__2_n_0),
        .CO({delta_r0_carry__3_n_0,delta_r0_carry__3_n_1,delta_r0_carry__3_n_2,delta_r0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(D[19:16]),
        .O(delta_r0[19:16]),
        .S(term_r0__0_1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delta_r0_carry__4
       (.CI(delta_r0_carry__3_n_0),
        .CO({delta_r0_carry__4_n_0,delta_r0_carry__4_n_1,delta_r0_carry__4_n_2,delta_r0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(D[23:20]),
        .O(delta_r0[23:20]),
        .S(term_r0__0_2));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delta_r0_carry__5
       (.CI(delta_r0_carry__4_n_0),
        .CO({delta_r0_carry__5_n_0,delta_r0_carry__5_n_1,delta_r0_carry__5_n_2,delta_r0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(D[27:24]),
        .O(delta_r0[27:24]),
        .S(term_r0__0_3));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delta_r0_carry__6
       (.CI(delta_r0_carry__5_n_0),
        .CO({NLW_delta_r0_carry__6_CO_UNCONNECTED[3],delta_r0_carry__6_n_1,delta_r0_carry__6_n_2,delta_r0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,D[30:28]}),
        .O(delta_r0[31:28]),
        .S(term_r0__0_4));
  LUT5 #(
    .INIT(32'h00305555)) 
    \out_buf[31]_i_1 
       (.I0(\FSM_sequential_state[2]_i_3_n_0 ),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(out_buf_valid_reg_1),
        .O(\FSM_sequential_state_reg[2]_1 ));
  LUT5 #(
    .INIT(32'hBBBF888F)) 
    out_buf_valid_i_1
       (.I0(out_buf_valid_reg_3),
        .I1(out_buf_valid_reg_4),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(out_buf_valid_reg_1),
        .I4(out_buf_valid_reg_2),
        .O(out_buf_valid_reg_0));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[0]_rep__0_i_1 
       (.I0(rptr0_reg[0]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[0]),
        .O(\rd_addr[0]_rep__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[0]_rep__1_i_1 
       (.I0(rptr0_reg[0]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[0]),
        .O(\rd_addr[0]_rep__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[0]_rep__2_i_1 
       (.I0(rptr0_reg[0]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[0]),
        .O(\rd_addr[0]_rep__2_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rd_addr[0]_rep_i_1 
       (.I0(\FSM_sequential_state_reg[0]_0 ),
        .I1(\FSM_sequential_state_reg[2]_0 ),
        .O(\rd_addr[0]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[0]_rep_i_2 
       (.I0(rptr0_reg[0]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[0]),
        .O(\rd_addr[0]_rep_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[10]_rep__0_i_1 
       (.I0(rptr0_reg[10]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[10]),
        .O(\rd_addr[10]_rep__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[10]_rep__1_i_1 
       (.I0(rptr0_reg[10]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[10]),
        .O(\rd_addr[10]_rep__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[10]_rep__2_i_1 
       (.I0(rptr0_reg[10]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[10]),
        .O(\rd_addr[10]_rep__2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[10]_rep_i_1 
       (.I0(rptr0_reg[10]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[10]),
        .O(\rd_addr[10]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[11]_rep__0_i_1 
       (.I0(rptr0_reg[11]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[11]),
        .O(\rd_addr[11]_rep__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[11]_rep__1_i_1 
       (.I0(rptr0_reg[11]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[11]),
        .O(\rd_addr[11]_rep__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[11]_rep__2_i_1 
       (.I0(rptr0_reg[11]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[11]),
        .O(\rd_addr[11]_rep__2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[11]_rep_i_1 
       (.I0(rptr0_reg[11]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[11]),
        .O(\rd_addr[11]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[12]_rep__0_i_1 
       (.I0(rptr0_reg[12]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[12]),
        .O(\rd_addr[12]_rep__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[12]_rep__1_i_1 
       (.I0(rptr0_reg[12]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[12]),
        .O(\rd_addr[12]_rep__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[12]_rep__2_i_1 
       (.I0(rptr0_reg[12]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[12]),
        .O(\rd_addr[12]_rep__2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[12]_rep_i_1 
       (.I0(rptr0_reg[12]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[12]),
        .O(\rd_addr[12]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[13]_rep__0_i_1 
       (.I0(rptr0_reg[13]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[13]),
        .O(\rd_addr[13]_rep__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[13]_rep__1_i_1 
       (.I0(rptr0_reg[13]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[13]),
        .O(\rd_addr[13]_rep__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[13]_rep__2_i_1 
       (.I0(rptr0_reg[13]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[13]),
        .O(\rd_addr[13]_rep__2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[13]_rep_i_1 
       (.I0(rptr0_reg[13]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[13]),
        .O(\rd_addr[13]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[14]_rep__0_i_1 
       (.I0(rptr0_reg[14]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[14]),
        .O(\rd_addr[14]_rep__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[14]_rep__1_i_1 
       (.I0(rptr0_reg[14]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[14]),
        .O(\rd_addr[14]_rep__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[14]_rep__2_i_1 
       (.I0(rptr0_reg[14]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[14]),
        .O(\rd_addr[14]_rep__2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[14]_rep_i_1 
       (.I0(rptr0_reg[14]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[14]),
        .O(\rd_addr[14]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[1]_rep__0_i_1 
       (.I0(rptr0_reg[1]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[1]),
        .O(\rd_addr[1]_rep__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[1]_rep__1_i_1 
       (.I0(rptr0_reg[1]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[1]),
        .O(\rd_addr[1]_rep__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[1]_rep__2_i_1 
       (.I0(rptr0_reg[1]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[1]),
        .O(\rd_addr[1]_rep__2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[1]_rep_i_1 
       (.I0(rptr0_reg[1]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[1]),
        .O(\rd_addr[1]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[2]_rep__0_i_1 
       (.I0(rptr0_reg[2]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[2]),
        .O(\rd_addr[2]_rep__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[2]_rep__1_i_1 
       (.I0(rptr0_reg[2]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[2]),
        .O(\rd_addr[2]_rep__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[2]_rep__2_i_1 
       (.I0(rptr0_reg[2]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[2]),
        .O(\rd_addr[2]_rep__2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[2]_rep_i_1 
       (.I0(rptr0_reg[2]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[2]),
        .O(\rd_addr[2]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[3]_rep__0_i_1 
       (.I0(rptr0_reg[3]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[3]),
        .O(\rd_addr[3]_rep__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[3]_rep__1_i_1 
       (.I0(rptr0_reg[3]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[3]),
        .O(\rd_addr[3]_rep__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[3]_rep__2_i_1 
       (.I0(rptr0_reg[3]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[3]),
        .O(\rd_addr[3]_rep__2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[3]_rep_i_1 
       (.I0(rptr0_reg[3]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[3]),
        .O(\rd_addr[3]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[4]_rep__0_i_1 
       (.I0(rptr0_reg[4]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[4]),
        .O(\rd_addr[4]_rep__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[4]_rep__1_i_1 
       (.I0(rptr0_reg[4]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[4]),
        .O(\rd_addr[4]_rep__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[4]_rep__2_i_1 
       (.I0(rptr0_reg[4]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[4]),
        .O(\rd_addr[4]_rep__2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[4]_rep_i_1 
       (.I0(rptr0_reg[4]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[4]),
        .O(\rd_addr[4]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[5]_rep__0_i_1 
       (.I0(rptr0_reg[5]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[5]),
        .O(\rd_addr[5]_rep__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[5]_rep__1_i_1 
       (.I0(rptr0_reg[5]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[5]),
        .O(\rd_addr[5]_rep__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[5]_rep__2_i_1 
       (.I0(rptr0_reg[5]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[5]),
        .O(\rd_addr[5]_rep__2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[5]_rep_i_1 
       (.I0(rptr0_reg[5]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[5]),
        .O(\rd_addr[5]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[6]_rep__0_i_1 
       (.I0(rptr0_reg[6]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[6]),
        .O(\rd_addr[6]_rep__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[6]_rep__1_i_1 
       (.I0(rptr0_reg[6]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[6]),
        .O(\rd_addr[6]_rep__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[6]_rep__2_i_1 
       (.I0(rptr0_reg[6]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[6]),
        .O(\rd_addr[6]_rep__2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[6]_rep_i_1 
       (.I0(rptr0_reg[6]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[6]),
        .O(\rd_addr[6]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[7]_rep__0_i_1 
       (.I0(rptr0_reg[7]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[7]),
        .O(\rd_addr[7]_rep__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[7]_rep__1_i_1 
       (.I0(rptr0_reg[7]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[7]),
        .O(\rd_addr[7]_rep__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[7]_rep__2_i_1 
       (.I0(rptr0_reg[7]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[7]),
        .O(\rd_addr[7]_rep__2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[7]_rep_i_1 
       (.I0(rptr0_reg[7]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[7]),
        .O(\rd_addr[7]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[8]_rep__0_i_1 
       (.I0(rptr0_reg[8]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[8]),
        .O(\rd_addr[8]_rep__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[8]_rep__1_i_1 
       (.I0(rptr0_reg[8]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[8]),
        .O(\rd_addr[8]_rep__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[8]_rep__2_i_1 
       (.I0(rptr0_reg[8]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[8]),
        .O(\rd_addr[8]_rep__2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[8]_rep_i_1 
       (.I0(rptr0_reg[8]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[8]),
        .O(\rd_addr[8]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[9]_rep__0_i_1 
       (.I0(rptr0_reg[9]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[9]),
        .O(\rd_addr[9]_rep__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[9]_rep__1_i_1 
       (.I0(rptr0_reg[9]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[9]),
        .O(\rd_addr[9]_rep__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[9]_rep__2_i_1 
       (.I0(rptr0_reg[9]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[9]),
        .O(\rd_addr[9]_rep__2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \rd_addr[9]_rep_i_1 
       (.I0(rptr0_reg[9]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(rptr1_reg[9]),
        .O(\rd_addr[9]_rep_i_1_n_0 ));
  (* ORIG_CELL_NAME = "rd_addr_reg[0]" *) 
  FDRE \rd_addr_reg[0]_rep 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[0]_rep_i_2_n_0 ),
        .Q(ADDRBWRADDR[0]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[0]" *) 
  FDRE \rd_addr_reg[0]_rep__0 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[0]_rep__0_i_1_n_0 ),
        .Q(\rd_addr_reg[14]_rep__0_0 [0]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[0]" *) 
  FDRE \rd_addr_reg[0]_rep__1 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[0]_rep__1_i_1_n_0 ),
        .Q(\rd_addr_reg[14]_rep__1_0 [0]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[0]" *) 
  FDRE \rd_addr_reg[0]_rep__2 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[0]_rep__2_i_1_n_0 ),
        .Q(rd_addr[0]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[10]" *) 
  FDRE \rd_addr_reg[10]_rep 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[10]_rep_i_1_n_0 ),
        .Q(ADDRBWRADDR[10]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[10]" *) 
  FDRE \rd_addr_reg[10]_rep__0 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[10]_rep__0_i_1_n_0 ),
        .Q(\rd_addr_reg[14]_rep__0_0 [10]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[10]" *) 
  FDRE \rd_addr_reg[10]_rep__1 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[10]_rep__1_i_1_n_0 ),
        .Q(\rd_addr_reg[14]_rep__1_0 [10]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[10]" *) 
  FDRE \rd_addr_reg[10]_rep__2 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[10]_rep__2_i_1_n_0 ),
        .Q(rd_addr[10]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[11]" *) 
  FDRE \rd_addr_reg[11]_rep 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[11]_rep_i_1_n_0 ),
        .Q(ADDRBWRADDR[11]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[11]" *) 
  FDRE \rd_addr_reg[11]_rep__0 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[11]_rep__0_i_1_n_0 ),
        .Q(\rd_addr_reg[14]_rep__0_0 [11]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[11]" *) 
  FDRE \rd_addr_reg[11]_rep__1 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[11]_rep__1_i_1_n_0 ),
        .Q(\rd_addr_reg[14]_rep__1_0 [11]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[11]" *) 
  FDRE \rd_addr_reg[11]_rep__2 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[11]_rep__2_i_1_n_0 ),
        .Q(rd_addr[11]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[12]" *) 
  FDRE \rd_addr_reg[12]_rep 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[12]_rep_i_1_n_0 ),
        .Q(ADDRBWRADDR[12]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[12]" *) 
  FDRE \rd_addr_reg[12]_rep__0 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[12]_rep__0_i_1_n_0 ),
        .Q(\rd_addr_reg[14]_rep__0_0 [12]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[12]" *) 
  FDRE \rd_addr_reg[12]_rep__1 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[12]_rep__1_i_1_n_0 ),
        .Q(\rd_addr_reg[14]_rep__1_0 [12]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[12]" *) 
  FDRE \rd_addr_reg[12]_rep__2 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[12]_rep__2_i_1_n_0 ),
        .Q(rd_addr[12]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[13]" *) 
  FDRE \rd_addr_reg[13]_rep 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[13]_rep_i_1_n_0 ),
        .Q(ADDRBWRADDR[13]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[13]" *) 
  FDRE \rd_addr_reg[13]_rep__0 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[13]_rep__0_i_1_n_0 ),
        .Q(\rd_addr_reg[14]_rep__0_0 [13]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[13]" *) 
  FDRE \rd_addr_reg[13]_rep__1 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[13]_rep__1_i_1_n_0 ),
        .Q(\rd_addr_reg[14]_rep__1_0 [13]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[13]" *) 
  FDRE \rd_addr_reg[13]_rep__2 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[13]_rep__2_i_1_n_0 ),
        .Q(rd_addr[13]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[14]" *) 
  FDRE \rd_addr_reg[14]_rep 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[14]_rep_i_1_n_0 ),
        .Q(ADDRBWRADDR[14]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[14]" *) 
  FDRE \rd_addr_reg[14]_rep__0 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[14]_rep__0_i_1_n_0 ),
        .Q(\rd_addr_reg[14]_rep__0_0 [14]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[14]" *) 
  FDRE \rd_addr_reg[14]_rep__1 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[14]_rep__1_i_1_n_0 ),
        .Q(\rd_addr_reg[14]_rep__1_0 [14]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[14]" *) 
  FDRE \rd_addr_reg[14]_rep__2 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[14]_rep__2_i_1_n_0 ),
        .Q(rd_addr[14]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[1]" *) 
  FDRE \rd_addr_reg[1]_rep 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[1]_rep_i_1_n_0 ),
        .Q(ADDRBWRADDR[1]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[1]" *) 
  FDRE \rd_addr_reg[1]_rep__0 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[1]_rep__0_i_1_n_0 ),
        .Q(\rd_addr_reg[14]_rep__0_0 [1]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[1]" *) 
  FDRE \rd_addr_reg[1]_rep__1 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[1]_rep__1_i_1_n_0 ),
        .Q(\rd_addr_reg[14]_rep__1_0 [1]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[1]" *) 
  FDRE \rd_addr_reg[1]_rep__2 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[1]_rep__2_i_1_n_0 ),
        .Q(rd_addr[1]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[2]" *) 
  FDRE \rd_addr_reg[2]_rep 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[2]_rep_i_1_n_0 ),
        .Q(ADDRBWRADDR[2]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[2]" *) 
  FDRE \rd_addr_reg[2]_rep__0 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[2]_rep__0_i_1_n_0 ),
        .Q(\rd_addr_reg[14]_rep__0_0 [2]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[2]" *) 
  FDRE \rd_addr_reg[2]_rep__1 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[2]_rep__1_i_1_n_0 ),
        .Q(\rd_addr_reg[14]_rep__1_0 [2]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[2]" *) 
  FDRE \rd_addr_reg[2]_rep__2 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[2]_rep__2_i_1_n_0 ),
        .Q(rd_addr[2]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[3]" *) 
  FDRE \rd_addr_reg[3]_rep 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[3]_rep_i_1_n_0 ),
        .Q(ADDRBWRADDR[3]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[3]" *) 
  FDRE \rd_addr_reg[3]_rep__0 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[3]_rep__0_i_1_n_0 ),
        .Q(\rd_addr_reg[14]_rep__0_0 [3]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[3]" *) 
  FDRE \rd_addr_reg[3]_rep__1 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[3]_rep__1_i_1_n_0 ),
        .Q(\rd_addr_reg[14]_rep__1_0 [3]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[3]" *) 
  FDRE \rd_addr_reg[3]_rep__2 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[3]_rep__2_i_1_n_0 ),
        .Q(rd_addr[3]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[4]" *) 
  FDRE \rd_addr_reg[4]_rep 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[4]_rep_i_1_n_0 ),
        .Q(ADDRBWRADDR[4]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[4]" *) 
  FDRE \rd_addr_reg[4]_rep__0 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[4]_rep__0_i_1_n_0 ),
        .Q(\rd_addr_reg[14]_rep__0_0 [4]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[4]" *) 
  FDRE \rd_addr_reg[4]_rep__1 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[4]_rep__1_i_1_n_0 ),
        .Q(\rd_addr_reg[14]_rep__1_0 [4]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[4]" *) 
  FDRE \rd_addr_reg[4]_rep__2 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[4]_rep__2_i_1_n_0 ),
        .Q(rd_addr[4]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[5]" *) 
  FDRE \rd_addr_reg[5]_rep 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[5]_rep_i_1_n_0 ),
        .Q(ADDRBWRADDR[5]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[5]" *) 
  FDRE \rd_addr_reg[5]_rep__0 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[5]_rep__0_i_1_n_0 ),
        .Q(\rd_addr_reg[14]_rep__0_0 [5]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[5]" *) 
  FDRE \rd_addr_reg[5]_rep__1 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[5]_rep__1_i_1_n_0 ),
        .Q(\rd_addr_reg[14]_rep__1_0 [5]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[5]" *) 
  FDRE \rd_addr_reg[5]_rep__2 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[5]_rep__2_i_1_n_0 ),
        .Q(rd_addr[5]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[6]" *) 
  FDRE \rd_addr_reg[6]_rep 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[6]_rep_i_1_n_0 ),
        .Q(ADDRBWRADDR[6]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[6]" *) 
  FDRE \rd_addr_reg[6]_rep__0 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[6]_rep__0_i_1_n_0 ),
        .Q(\rd_addr_reg[14]_rep__0_0 [6]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[6]" *) 
  FDRE \rd_addr_reg[6]_rep__1 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[6]_rep__1_i_1_n_0 ),
        .Q(\rd_addr_reg[14]_rep__1_0 [6]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[6]" *) 
  FDRE \rd_addr_reg[6]_rep__2 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[6]_rep__2_i_1_n_0 ),
        .Q(rd_addr[6]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[7]" *) 
  FDRE \rd_addr_reg[7]_rep 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[7]_rep_i_1_n_0 ),
        .Q(ADDRBWRADDR[7]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[7]" *) 
  FDRE \rd_addr_reg[7]_rep__0 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[7]_rep__0_i_1_n_0 ),
        .Q(\rd_addr_reg[14]_rep__0_0 [7]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[7]" *) 
  FDRE \rd_addr_reg[7]_rep__1 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[7]_rep__1_i_1_n_0 ),
        .Q(\rd_addr_reg[14]_rep__1_0 [7]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[7]" *) 
  FDRE \rd_addr_reg[7]_rep__2 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[7]_rep__2_i_1_n_0 ),
        .Q(rd_addr[7]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[8]" *) 
  FDRE \rd_addr_reg[8]_rep 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[8]_rep_i_1_n_0 ),
        .Q(ADDRBWRADDR[8]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[8]" *) 
  FDRE \rd_addr_reg[8]_rep__0 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[8]_rep__0_i_1_n_0 ),
        .Q(\rd_addr_reg[14]_rep__0_0 [8]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[8]" *) 
  FDRE \rd_addr_reg[8]_rep__1 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[8]_rep__1_i_1_n_0 ),
        .Q(\rd_addr_reg[14]_rep__1_0 [8]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[8]" *) 
  FDRE \rd_addr_reg[8]_rep__2 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[8]_rep__2_i_1_n_0 ),
        .Q(rd_addr[8]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[9]" *) 
  FDRE \rd_addr_reg[9]_rep 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[9]_rep_i_1_n_0 ),
        .Q(ADDRBWRADDR[9]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[9]" *) 
  FDRE \rd_addr_reg[9]_rep__0 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[9]_rep__0_i_1_n_0 ),
        .Q(\rd_addr_reg[14]_rep__0_0 [9]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[9]" *) 
  FDRE \rd_addr_reg[9]_rep__1 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[9]_rep__1_i_1_n_0 ),
        .Q(\rd_addr_reg[14]_rep__1_0 [9]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_addr_reg[9]" *) 
  FDRE \rd_addr_reg[9]_rep__2 
       (.C(clk),
        .CE(\rd_addr[0]_rep_i_1_n_0 ),
        .D(\rd_addr[9]_rep__2_i_1_n_0 ),
        .Q(rd_addr[9]),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_en_reg" *) 
  FDRE rd_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(rd_en_reg_1),
        .Q(rd_en_reg_0),
        .R(rst_n_0));
  (* ORIG_CELL_NAME = "rd_en_reg" *) 
  FDRE rd_en_reg_rep
       (.C(clk),
        .CE(1'b1),
        .D(rd_en_reg_rep_1),
        .Q(rd_en_reg_rep_0),
        .R(rst_n_0));
  LUT3 #(
    .INIT(8'hA9)) 
    \rptr0_reg[11]_i_2 
       (.I0(\rptr0_reg_reg[14]_0 [11]),
        .I1(\rptr0_reg_reg[14]_1 [11]),
        .I2(\rptr0_reg_reg[14]_1 [15]),
        .O(\rptr0_reg[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \rptr0_reg[11]_i_3 
       (.I0(\rptr0_reg_reg[14]_0 [10]),
        .I1(\rptr0_reg_reg[14]_1 [10]),
        .I2(\rptr0_reg_reg[14]_1 [15]),
        .O(\rptr0_reg[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \rptr0_reg[11]_i_4 
       (.I0(\rptr0_reg_reg[14]_0 [9]),
        .I1(\rptr0_reg_reg[14]_1 [9]),
        .I2(\rptr0_reg_reg[14]_1 [15]),
        .O(\rptr0_reg[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \rptr0_reg[11]_i_5 
       (.I0(\rptr0_reg_reg[14]_0 [8]),
        .I1(\rptr0_reg_reg[14]_1 [8]),
        .I2(\rptr0_reg_reg[14]_1 [15]),
        .O(\rptr0_reg[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \rptr0_reg[14]_i_2 
       (.I0(\rptr0_reg_reg[14]_0 [14]),
        .I1(\rptr0_reg_reg[14]_1 [14]),
        .I2(\rptr0_reg_reg[14]_1 [15]),
        .O(\rptr0_reg[14]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \rptr0_reg[14]_i_3 
       (.I0(\rptr0_reg_reg[14]_0 [13]),
        .I1(\rptr0_reg_reg[14]_1 [13]),
        .I2(\rptr0_reg_reg[14]_1 [15]),
        .O(\rptr0_reg[14]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \rptr0_reg[14]_i_4 
       (.I0(\rptr0_reg_reg[14]_0 [12]),
        .I1(\rptr0_reg_reg[14]_1 [12]),
        .I2(\rptr0_reg_reg[14]_1 [15]),
        .O(\rptr0_reg[14]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \rptr0_reg[3]_i_2 
       (.I0(\rptr0_reg_reg[14]_0 [3]),
        .I1(\rptr0_reg_reg[14]_1 [3]),
        .I2(\rptr0_reg_reg[14]_1 [15]),
        .O(\rptr0_reg[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \rptr0_reg[3]_i_3 
       (.I0(\rptr0_reg_reg[14]_0 [2]),
        .I1(\rptr0_reg_reg[14]_1 [2]),
        .I2(\rptr0_reg_reg[14]_1 [15]),
        .O(\rptr0_reg[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \rptr0_reg[3]_i_4 
       (.I0(\rptr0_reg_reg[14]_0 [1]),
        .I1(\rptr0_reg_reg[14]_1 [1]),
        .I2(\rptr0_reg_reg[14]_1 [15]),
        .O(\rptr0_reg[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \rptr0_reg[3]_i_5 
       (.I0(\rptr0_reg_reg[14]_0 [0]),
        .I1(\rptr1_reg[3]_i_6_n_0 ),
        .I2(\rptr0_reg_reg[14]_1 [0]),
        .I3(\rptr0_reg_reg[14]_1 [15]),
        .O(\rptr0_reg[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \rptr0_reg[7]_i_2 
       (.I0(\rptr0_reg_reg[14]_0 [7]),
        .I1(\rptr0_reg_reg[14]_1 [7]),
        .I2(\rptr0_reg_reg[14]_1 [15]),
        .O(\rptr0_reg[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \rptr0_reg[7]_i_3 
       (.I0(\rptr0_reg_reg[14]_0 [6]),
        .I1(\rptr0_reg_reg[14]_1 [6]),
        .I2(\rptr0_reg_reg[14]_1 [15]),
        .O(\rptr0_reg[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \rptr0_reg[7]_i_4 
       (.I0(\rptr0_reg_reg[14]_0 [5]),
        .I1(\rptr0_reg_reg[14]_1 [5]),
        .I2(\rptr0_reg_reg[14]_1 [15]),
        .O(\rptr0_reg[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \rptr0_reg[7]_i_5 
       (.I0(\rptr0_reg_reg[14]_0 [4]),
        .I1(\rptr0_reg_reg[14]_1 [4]),
        .I2(\rptr0_reg_reg[14]_1 [15]),
        .O(\rptr0_reg[7]_i_5_n_0 ));
  FDRE \rptr0_reg_reg[0] 
       (.C(clk),
        .CE(mu_reg),
        .D(rptr0_reg0[0]),
        .Q(rptr0_reg[0]),
        .R(rst_n_0));
  FDRE \rptr0_reg_reg[10] 
       (.C(clk),
        .CE(mu_reg),
        .D(rptr0_reg0[10]),
        .Q(rptr0_reg[10]),
        .R(rst_n_0));
  FDRE \rptr0_reg_reg[11] 
       (.C(clk),
        .CE(mu_reg),
        .D(rptr0_reg0[11]),
        .Q(rptr0_reg[11]),
        .R(rst_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rptr0_reg_reg[11]_i_1 
       (.CI(\rptr0_reg_reg[7]_i_1_n_0 ),
        .CO({\rptr0_reg_reg[11]_i_1_n_0 ,\rptr0_reg_reg[11]_i_1_n_1 ,\rptr0_reg_reg[11]_i_1_n_2 ,\rptr0_reg_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\rptr0_reg_reg[14]_0 [11:8]),
        .O(rptr0_reg0[11:8]),
        .S({\rptr0_reg[11]_i_2_n_0 ,\rptr0_reg[11]_i_3_n_0 ,\rptr0_reg[11]_i_4_n_0 ,\rptr0_reg[11]_i_5_n_0 }));
  FDRE \rptr0_reg_reg[12] 
       (.C(clk),
        .CE(mu_reg),
        .D(rptr0_reg0[12]),
        .Q(rptr0_reg[12]),
        .R(rst_n_0));
  FDRE \rptr0_reg_reg[13] 
       (.C(clk),
        .CE(mu_reg),
        .D(rptr0_reg0[13]),
        .Q(rptr0_reg[13]),
        .R(rst_n_0));
  FDRE \rptr0_reg_reg[14] 
       (.C(clk),
        .CE(mu_reg),
        .D(rptr0_reg0[14]),
        .Q(rptr0_reg[14]),
        .R(rst_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rptr0_reg_reg[14]_i_1 
       (.CI(\rptr0_reg_reg[11]_i_1_n_0 ),
        .CO({\NLW_rptr0_reg_reg[14]_i_1_CO_UNCONNECTED [3:2],\rptr0_reg_reg[14]_i_1_n_2 ,\rptr0_reg_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\rptr0_reg_reg[14]_0 [13:12]}),
        .O({\NLW_rptr0_reg_reg[14]_i_1_O_UNCONNECTED [3],rptr0_reg0[14:12]}),
        .S({1'b0,\rptr0_reg[14]_i_2_n_0 ,\rptr0_reg[14]_i_3_n_0 ,\rptr0_reg[14]_i_4_n_0 }));
  FDRE \rptr0_reg_reg[1] 
       (.C(clk),
        .CE(mu_reg),
        .D(rptr0_reg0[1]),
        .Q(rptr0_reg[1]),
        .R(rst_n_0));
  FDRE \rptr0_reg_reg[2] 
       (.C(clk),
        .CE(mu_reg),
        .D(rptr0_reg0[2]),
        .Q(rptr0_reg[2]),
        .R(rst_n_0));
  FDRE \rptr0_reg_reg[3] 
       (.C(clk),
        .CE(mu_reg),
        .D(rptr0_reg0[3]),
        .Q(rptr0_reg[3]),
        .R(rst_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rptr0_reg_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\rptr0_reg_reg[3]_i_1_n_0 ,\rptr0_reg_reg[3]_i_1_n_1 ,\rptr0_reg_reg[3]_i_1_n_2 ,\rptr0_reg_reg[3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI(\rptr0_reg_reg[14]_0 [3:0]),
        .O(rptr0_reg0[3:0]),
        .S({\rptr0_reg[3]_i_2_n_0 ,\rptr0_reg[3]_i_3_n_0 ,\rptr0_reg[3]_i_4_n_0 ,\rptr0_reg[3]_i_5_n_0 }));
  FDRE \rptr0_reg_reg[4] 
       (.C(clk),
        .CE(mu_reg),
        .D(rptr0_reg0[4]),
        .Q(rptr0_reg[4]),
        .R(rst_n_0));
  FDRE \rptr0_reg_reg[5] 
       (.C(clk),
        .CE(mu_reg),
        .D(rptr0_reg0[5]),
        .Q(rptr0_reg[5]),
        .R(rst_n_0));
  FDRE \rptr0_reg_reg[6] 
       (.C(clk),
        .CE(mu_reg),
        .D(rptr0_reg0[6]),
        .Q(rptr0_reg[6]),
        .R(rst_n_0));
  FDRE \rptr0_reg_reg[7] 
       (.C(clk),
        .CE(mu_reg),
        .D(rptr0_reg0[7]),
        .Q(rptr0_reg[7]),
        .R(rst_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rptr0_reg_reg[7]_i_1 
       (.CI(\rptr0_reg_reg[3]_i_1_n_0 ),
        .CO({\rptr0_reg_reg[7]_i_1_n_0 ,\rptr0_reg_reg[7]_i_1_n_1 ,\rptr0_reg_reg[7]_i_1_n_2 ,\rptr0_reg_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\rptr0_reg_reg[14]_0 [7:4]),
        .O(rptr0_reg0[7:4]),
        .S({\rptr0_reg[7]_i_2_n_0 ,\rptr0_reg[7]_i_3_n_0 ,\rptr0_reg[7]_i_4_n_0 ,\rptr0_reg[7]_i_5_n_0 }));
  FDRE \rptr0_reg_reg[8] 
       (.C(clk),
        .CE(mu_reg),
        .D(rptr0_reg0[8]),
        .Q(rptr0_reg[8]),
        .R(rst_n_0));
  FDRE \rptr0_reg_reg[9] 
       (.C(clk),
        .CE(mu_reg),
        .D(rptr0_reg0[9]),
        .Q(rptr0_reg[9]),
        .R(rst_n_0));
  LUT3 #(
    .INIT(8'hA9)) 
    \rptr1_reg[11]_i_2 
       (.I0(\rptr0_reg_reg[14]_0 [11]),
        .I1(\rptr0_reg_reg[14]_1 [11]),
        .I2(\rptr0_reg_reg[14]_1 [15]),
        .O(\rptr1_reg[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \rptr1_reg[11]_i_3 
       (.I0(\rptr0_reg_reg[14]_0 [10]),
        .I1(\rptr0_reg_reg[14]_1 [10]),
        .I2(\rptr0_reg_reg[14]_1 [15]),
        .O(\rptr1_reg[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \rptr1_reg[11]_i_4 
       (.I0(\rptr0_reg_reg[14]_0 [9]),
        .I1(\rptr0_reg_reg[14]_1 [9]),
        .I2(\rptr0_reg_reg[14]_1 [15]),
        .O(\rptr1_reg[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \rptr1_reg[11]_i_5 
       (.I0(\rptr0_reg_reg[14]_0 [8]),
        .I1(\rptr0_reg_reg[14]_1 [8]),
        .I2(\rptr0_reg_reg[14]_1 [15]),
        .O(\rptr1_reg[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \rptr1_reg[14]_i_1 
       (.I0(\FSM_sequential_state_reg[2]_0 ),
        .I1(frac_start),
        .I2(\FSM_sequential_state_reg[1]_0 ),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .O(mu_reg));
  LUT3 #(
    .INIT(8'hA9)) 
    \rptr1_reg[14]_i_3 
       (.I0(\rptr0_reg_reg[14]_0 [14]),
        .I1(\rptr0_reg_reg[14]_1 [14]),
        .I2(\rptr0_reg_reg[14]_1 [15]),
        .O(\rptr1_reg[14]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \rptr1_reg[14]_i_4 
       (.I0(\rptr0_reg_reg[14]_0 [13]),
        .I1(\rptr0_reg_reg[14]_1 [13]),
        .I2(\rptr0_reg_reg[14]_1 [15]),
        .O(\rptr1_reg[14]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \rptr1_reg[14]_i_5 
       (.I0(\rptr0_reg_reg[14]_0 [12]),
        .I1(\rptr0_reg_reg[14]_1 [12]),
        .I2(\rptr0_reg_reg[14]_1 [15]),
        .O(\rptr1_reg[14]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \rptr1_reg[3]_i_2 
       (.I0(\rptr0_reg_reg[14]_0 [3]),
        .I1(\rptr0_reg_reg[14]_1 [3]),
        .I2(\rptr0_reg_reg[14]_1 [15]),
        .O(\rptr1_reg[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \rptr1_reg[3]_i_3 
       (.I0(\rptr0_reg_reg[14]_0 [2]),
        .I1(\rptr0_reg_reg[14]_1 [2]),
        .I2(\rptr0_reg_reg[14]_1 [15]),
        .O(\rptr1_reg[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \rptr1_reg[3]_i_4 
       (.I0(\rptr0_reg_reg[14]_0 [1]),
        .I1(\rptr0_reg_reg[14]_1 [1]),
        .I2(\rptr0_reg_reg[14]_1 [15]),
        .O(\rptr1_reg[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \rptr1_reg[3]_i_5 
       (.I0(\rptr0_reg_reg[14]_0 [0]),
        .I1(\rptr1_reg[3]_i_6_n_0 ),
        .I2(\rptr0_reg_reg[14]_1 [0]),
        .I3(\rptr0_reg_reg[14]_1 [15]),
        .O(\rptr1_reg[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \rptr1_reg[3]_i_6 
       (.I0(\rptr1_reg[3]_i_7_n_0 ),
        .I1(\rptr1_reg[3]_i_8_n_0 ),
        .I2(\rptr1_reg[3]_i_9_n_0 ),
        .I3(\rptr0_reg_reg[14]_1 [12]),
        .I4(\rptr0_reg_reg[14]_1 [11]),
        .I5(\rptr0_reg_reg[14]_1 [3]),
        .O(\rptr1_reg[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rptr1_reg[3]_i_7 
       (.I0(\rptr0_reg_reg[14]_1 [8]),
        .I1(\rptr0_reg_reg[14]_1 [15]),
        .I2(\rptr0_reg_reg[14]_1 [14]),
        .I3(\rptr0_reg_reg[14]_1 [2]),
        .O(\rptr1_reg[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \rptr1_reg[3]_i_8 
       (.I0(\rptr0_reg_reg[14]_1 [7]),
        .I1(\rptr0_reg_reg[14]_1 [4]),
        .I2(\rptr0_reg_reg[14]_1 [9]),
        .I3(\rptr0_reg_reg[14]_1 [5]),
        .O(\rptr1_reg[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rptr1_reg[3]_i_9 
       (.I0(\rptr0_reg_reg[14]_1 [6]),
        .I1(\rptr0_reg_reg[14]_1 [1]),
        .I2(\rptr0_reg_reg[14]_1 [13]),
        .I3(\rptr0_reg_reg[14]_1 [10]),
        .O(\rptr1_reg[3]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \rptr1_reg[7]_i_2 
       (.I0(\rptr0_reg_reg[14]_0 [7]),
        .I1(\rptr0_reg_reg[14]_1 [7]),
        .I2(\rptr0_reg_reg[14]_1 [15]),
        .O(\rptr1_reg[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \rptr1_reg[7]_i_3 
       (.I0(\rptr0_reg_reg[14]_0 [6]),
        .I1(\rptr0_reg_reg[14]_1 [6]),
        .I2(\rptr0_reg_reg[14]_1 [15]),
        .O(\rptr1_reg[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \rptr1_reg[7]_i_4 
       (.I0(\rptr0_reg_reg[14]_0 [5]),
        .I1(\rptr0_reg_reg[14]_1 [5]),
        .I2(\rptr0_reg_reg[14]_1 [15]),
        .O(\rptr1_reg[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \rptr1_reg[7]_i_5 
       (.I0(\rptr0_reg_reg[14]_0 [4]),
        .I1(\rptr0_reg_reg[14]_1 [4]),
        .I2(\rptr0_reg_reg[14]_1 [15]),
        .O(\rptr1_reg[7]_i_5_n_0 ));
  FDRE \rptr1_reg_reg[0] 
       (.C(clk),
        .CE(mu_reg),
        .D(rptr1_reg0[0]),
        .Q(rptr1_reg[0]),
        .R(rst_n_0));
  FDRE \rptr1_reg_reg[10] 
       (.C(clk),
        .CE(mu_reg),
        .D(rptr1_reg0[10]),
        .Q(rptr1_reg[10]),
        .R(rst_n_0));
  FDRE \rptr1_reg_reg[11] 
       (.C(clk),
        .CE(mu_reg),
        .D(rptr1_reg0[11]),
        .Q(rptr1_reg[11]),
        .R(rst_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rptr1_reg_reg[11]_i_1 
       (.CI(\rptr1_reg_reg[7]_i_1_n_0 ),
        .CO({\rptr1_reg_reg[11]_i_1_n_0 ,\rptr1_reg_reg[11]_i_1_n_1 ,\rptr1_reg_reg[11]_i_1_n_2 ,\rptr1_reg_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\rptr0_reg_reg[14]_0 [11:8]),
        .O(rptr1_reg0[11:8]),
        .S({\rptr1_reg[11]_i_2_n_0 ,\rptr1_reg[11]_i_3_n_0 ,\rptr1_reg[11]_i_4_n_0 ,\rptr1_reg[11]_i_5_n_0 }));
  FDRE \rptr1_reg_reg[12] 
       (.C(clk),
        .CE(mu_reg),
        .D(rptr1_reg0[12]),
        .Q(rptr1_reg[12]),
        .R(rst_n_0));
  FDRE \rptr1_reg_reg[13] 
       (.C(clk),
        .CE(mu_reg),
        .D(rptr1_reg0[13]),
        .Q(rptr1_reg[13]),
        .R(rst_n_0));
  FDRE \rptr1_reg_reg[14] 
       (.C(clk),
        .CE(mu_reg),
        .D(rptr1_reg0[14]),
        .Q(rptr1_reg[14]),
        .R(rst_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rptr1_reg_reg[14]_i_2 
       (.CI(\rptr1_reg_reg[11]_i_1_n_0 ),
        .CO({\NLW_rptr1_reg_reg[14]_i_2_CO_UNCONNECTED [3:2],\rptr1_reg_reg[14]_i_2_n_2 ,\rptr1_reg_reg[14]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\rptr0_reg_reg[14]_0 [13:12]}),
        .O({\NLW_rptr1_reg_reg[14]_i_2_O_UNCONNECTED [3],rptr1_reg0[14:12]}),
        .S({1'b0,\rptr1_reg[14]_i_3_n_0 ,\rptr1_reg[14]_i_4_n_0 ,\rptr1_reg[14]_i_5_n_0 }));
  FDRE \rptr1_reg_reg[1] 
       (.C(clk),
        .CE(mu_reg),
        .D(rptr1_reg0[1]),
        .Q(rptr1_reg[1]),
        .R(rst_n_0));
  FDRE \rptr1_reg_reg[2] 
       (.C(clk),
        .CE(mu_reg),
        .D(rptr1_reg0[2]),
        .Q(rptr1_reg[2]),
        .R(rst_n_0));
  FDRE \rptr1_reg_reg[3] 
       (.C(clk),
        .CE(mu_reg),
        .D(rptr1_reg0[3]),
        .Q(rptr1_reg[3]),
        .R(rst_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rptr1_reg_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\rptr1_reg_reg[3]_i_1_n_0 ,\rptr1_reg_reg[3]_i_1_n_1 ,\rptr1_reg_reg[3]_i_1_n_2 ,\rptr1_reg_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\rptr0_reg_reg[14]_0 [3:0]),
        .O(rptr1_reg0[3:0]),
        .S({\rptr1_reg[3]_i_2_n_0 ,\rptr1_reg[3]_i_3_n_0 ,\rptr1_reg[3]_i_4_n_0 ,\rptr1_reg[3]_i_5_n_0 }));
  FDRE \rptr1_reg_reg[4] 
       (.C(clk),
        .CE(mu_reg),
        .D(rptr1_reg0[4]),
        .Q(rptr1_reg[4]),
        .R(rst_n_0));
  FDRE \rptr1_reg_reg[5] 
       (.C(clk),
        .CE(mu_reg),
        .D(rptr1_reg0[5]),
        .Q(rptr1_reg[5]),
        .R(rst_n_0));
  FDRE \rptr1_reg_reg[6] 
       (.C(clk),
        .CE(mu_reg),
        .D(rptr1_reg0[6]),
        .Q(rptr1_reg[6]),
        .R(rst_n_0));
  FDRE \rptr1_reg_reg[7] 
       (.C(clk),
        .CE(mu_reg),
        .D(rptr1_reg0[7]),
        .Q(rptr1_reg[7]),
        .R(rst_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rptr1_reg_reg[7]_i_1 
       (.CI(\rptr1_reg_reg[3]_i_1_n_0 ),
        .CO({\rptr1_reg_reg[7]_i_1_n_0 ,\rptr1_reg_reg[7]_i_1_n_1 ,\rptr1_reg_reg[7]_i_1_n_2 ,\rptr1_reg_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\rptr0_reg_reg[14]_0 [7:4]),
        .O(rptr1_reg0[7:4]),
        .S({\rptr1_reg[7]_i_2_n_0 ,\rptr1_reg[7]_i_3_n_0 ,\rptr1_reg[7]_i_4_n_0 ,\rptr1_reg[7]_i_5_n_0 }));
  FDRE \rptr1_reg_reg[8] 
       (.C(clk),
        .CE(mu_reg),
        .D(rptr1_reg0[8]),
        .Q(rptr1_reg[8]),
        .R(rst_n_0));
  FDRE \rptr1_reg_reg[9] 
       (.C(clk),
        .CE(mu_reg),
        .D(rptr1_reg0[9]),
        .Q(rptr1_reg[9]),
        .R(rst_n_0));
  LUT4 #(
    .INIT(16'h0008)) 
    \s0_reg[31]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_0 ),
        .I1(bram_rd_valid),
        .I2(\FSM_sequential_state_reg[2]_0 ),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .O(s0_reg));
  FDRE \s0_reg_reg[0] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[0]),
        .Q(\s0_reg_reg[31]_0 [0]),
        .R(rst_n_0));
  FDRE \s0_reg_reg[10] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[10]),
        .Q(\s0_reg_reg[31]_0 [10]),
        .R(rst_n_0));
  FDRE \s0_reg_reg[11] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[11]),
        .Q(\s0_reg_reg[31]_0 [11]),
        .R(rst_n_0));
  FDRE \s0_reg_reg[12] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[12]),
        .Q(\s0_reg_reg[31]_0 [12]),
        .R(rst_n_0));
  FDRE \s0_reg_reg[13] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[13]),
        .Q(\s0_reg_reg[31]_0 [13]),
        .R(rst_n_0));
  FDRE \s0_reg_reg[14] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[14]),
        .Q(\s0_reg_reg[31]_0 [14]),
        .R(rst_n_0));
  FDRE \s0_reg_reg[15] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[15]),
        .Q(\s0_reg_reg[31]_0 [15]),
        .R(rst_n_0));
  FDRE \s0_reg_reg[16] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[16]),
        .Q(\s0_reg_reg[31]_0 [16]),
        .R(rst_n_0));
  FDRE \s0_reg_reg[17] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[17]),
        .Q(\s0_reg_reg[31]_0 [17]),
        .R(rst_n_0));
  FDRE \s0_reg_reg[18] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[18]),
        .Q(\s0_reg_reg[31]_0 [18]),
        .R(rst_n_0));
  FDRE \s0_reg_reg[19] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[19]),
        .Q(\s0_reg_reg[31]_0 [19]),
        .R(rst_n_0));
  FDRE \s0_reg_reg[1] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[1]),
        .Q(\s0_reg_reg[31]_0 [1]),
        .R(rst_n_0));
  FDRE \s0_reg_reg[20] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[20]),
        .Q(\s0_reg_reg[31]_0 [20]),
        .R(rst_n_0));
  FDRE \s0_reg_reg[21] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[21]),
        .Q(\s0_reg_reg[31]_0 [21]),
        .R(rst_n_0));
  FDRE \s0_reg_reg[22] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[22]),
        .Q(\s0_reg_reg[31]_0 [22]),
        .R(rst_n_0));
  FDRE \s0_reg_reg[23] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[23]),
        .Q(\s0_reg_reg[31]_0 [23]),
        .R(rst_n_0));
  FDRE \s0_reg_reg[24] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[24]),
        .Q(\s0_reg_reg[31]_0 [24]),
        .R(rst_n_0));
  FDRE \s0_reg_reg[25] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[25]),
        .Q(\s0_reg_reg[31]_0 [25]),
        .R(rst_n_0));
  FDRE \s0_reg_reg[26] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[26]),
        .Q(\s0_reg_reg[31]_0 [26]),
        .R(rst_n_0));
  FDRE \s0_reg_reg[27] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[27]),
        .Q(\s0_reg_reg[31]_0 [27]),
        .R(rst_n_0));
  FDRE \s0_reg_reg[28] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[28]),
        .Q(\s0_reg_reg[31]_0 [28]),
        .R(rst_n_0));
  FDRE \s0_reg_reg[29] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[29]),
        .Q(\s0_reg_reg[31]_0 [29]),
        .R(rst_n_0));
  FDRE \s0_reg_reg[2] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[2]),
        .Q(\s0_reg_reg[31]_0 [2]),
        .R(rst_n_0));
  FDRE \s0_reg_reg[30] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[30]),
        .Q(\s0_reg_reg[31]_0 [30]),
        .R(rst_n_0));
  FDRE \s0_reg_reg[31] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[31]),
        .Q(\s0_reg_reg[31]_0 [31]),
        .R(rst_n_0));
  FDRE \s0_reg_reg[3] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[3]),
        .Q(\s0_reg_reg[31]_0 [3]),
        .R(rst_n_0));
  FDRE \s0_reg_reg[4] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[4]),
        .Q(\s0_reg_reg[31]_0 [4]),
        .R(rst_n_0));
  FDRE \s0_reg_reg[5] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[5]),
        .Q(\s0_reg_reg[31]_0 [5]),
        .R(rst_n_0));
  FDRE \s0_reg_reg[6] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[6]),
        .Q(\s0_reg_reg[31]_0 [6]),
        .R(rst_n_0));
  FDRE \s0_reg_reg[7] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[7]),
        .Q(\s0_reg_reg[31]_0 [7]),
        .R(rst_n_0));
  FDRE \s0_reg_reg[8] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[8]),
        .Q(\s0_reg_reg[31]_0 [8]),
        .R(rst_n_0));
  FDRE \s0_reg_reg[9] 
       (.C(clk),
        .CE(s0_reg),
        .D(D[9]),
        .Q(\s0_reg_reg[31]_0 [9]),
        .R(rst_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_awready_i_1
       (.I0(rst_n),
        .O(rst_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    s_axis_tready_INST_0_i_2
       (.I0(v1),
        .I1(v1_0),
        .I2(term_r0__0_0),
        .I3(\FSM_sequential_state_reg[1]_0 ),
        .I4(\FSM_sequential_state_reg[0]_0 ),
        .I5(\FSM_sequential_state_reg[2]_0 ),
        .O(\state_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    s_axis_tready_INST_0_i_4
       (.I0(out_buf_valid_reg_2),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .O(out_buf_valid_reg));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sat_add322_carry
       (.CI(1'b0),
        .CO({sat_add322_carry_n_0,sat_add322_carry_n_1,sat_add322_carry_n_2,sat_add322_carry_n_3}),
        .CYINIT(1'b0),
        .DI(\s0_reg_reg[31]_0 [3:0]),
        .O({sat_add322_carry_n_4,sat_add322_carry_n_5,sat_add322_carry_n_6,sat_add322_carry_n_7}),
        .S({sat_add322_carry_i_1_n_0,sat_add322_carry_i_2_n_0,sat_add322_carry_i_3_n_0,sat_add322_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sat_add322_carry__0
       (.CI(sat_add322_carry_n_0),
        .CO({sat_add322_carry__0_n_0,sat_add322_carry__0_n_1,sat_add322_carry__0_n_2,sat_add322_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\s0_reg_reg[31]_0 [7:4]),
        .O({sat_add322_carry__0_n_4,sat_add322_carry__0_n_5,sat_add322_carry__0_n_6,sat_add322_carry__0_n_7}),
        .S({sat_add322_carry__0_i_1_n_0,sat_add322_carry__0_i_2_n_0,sat_add322_carry__0_i_3_n_0,sat_add322_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry__0_i_1
       (.I0(\s0_reg_reg[31]_0 [7]),
        .I1(term_r[7]),
        .O(sat_add322_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry__0_i_2
       (.I0(\s0_reg_reg[31]_0 [6]),
        .I1(term_r[6]),
        .O(sat_add322_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry__0_i_3
       (.I0(\s0_reg_reg[31]_0 [5]),
        .I1(term_r[5]),
        .O(sat_add322_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry__0_i_4
       (.I0(\s0_reg_reg[31]_0 [4]),
        .I1(term_r[4]),
        .O(sat_add322_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sat_add322_carry__1
       (.CI(sat_add322_carry__0_n_0),
        .CO({sat_add322_carry__1_n_0,sat_add322_carry__1_n_1,sat_add322_carry__1_n_2,sat_add322_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\s0_reg_reg[31]_0 [11:8]),
        .O({sat_add322_carry__1_n_4,sat_add322_carry__1_n_5,sat_add322_carry__1_n_6,sat_add322_carry__1_n_7}),
        .S({sat_add322_carry__1_i_1_n_0,sat_add322_carry__1_i_2_n_0,sat_add322_carry__1_i_3_n_0,sat_add322_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry__1_i_1
       (.I0(\s0_reg_reg[31]_0 [11]),
        .I1(term_r[11]),
        .O(sat_add322_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry__1_i_2
       (.I0(\s0_reg_reg[31]_0 [10]),
        .I1(term_r[10]),
        .O(sat_add322_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry__1_i_3
       (.I0(\s0_reg_reg[31]_0 [9]),
        .I1(term_r[9]),
        .O(sat_add322_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry__1_i_4
       (.I0(\s0_reg_reg[31]_0 [8]),
        .I1(term_r[8]),
        .O(sat_add322_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sat_add322_carry__2
       (.CI(sat_add322_carry__1_n_0),
        .CO({sat_add322_carry__2_n_0,sat_add322_carry__2_n_1,sat_add322_carry__2_n_2,sat_add322_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(\s0_reg_reg[31]_0 [15:12]),
        .O({sat_add322_carry__2_n_4,sat_add322_carry__2_n_5,sat_add322_carry__2_n_6,sat_add322_carry__2_n_7}),
        .S({sat_add322_carry__2_i_1_n_0,sat_add322_carry__2_i_2_n_0,sat_add322_carry__2_i_3_n_0,sat_add322_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry__2_i_1
       (.I0(\s0_reg_reg[31]_0 [15]),
        .I1(term_r[15]),
        .O(sat_add322_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry__2_i_2
       (.I0(\s0_reg_reg[31]_0 [14]),
        .I1(term_r[14]),
        .O(sat_add322_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry__2_i_3
       (.I0(\s0_reg_reg[31]_0 [13]),
        .I1(term_r[13]),
        .O(sat_add322_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry__2_i_4
       (.I0(\s0_reg_reg[31]_0 [12]),
        .I1(term_r[12]),
        .O(sat_add322_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sat_add322_carry__3
       (.CI(sat_add322_carry__2_n_0),
        .CO({sat_add322_carry__3_n_0,sat_add322_carry__3_n_1,sat_add322_carry__3_n_2,sat_add322_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(\s0_reg_reg[31]_0 [19:16]),
        .O({sat_add322_carry__3_n_4,sat_add322_carry__3_n_5,sat_add322_carry__3_n_6,sat_add322_carry__3_n_7}),
        .S({sat_add322_carry__3_i_1_n_0,sat_add322_carry__3_i_2_n_0,sat_add322_carry__3_i_3_n_0,sat_add322_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry__3_i_1
       (.I0(\s0_reg_reg[31]_0 [19]),
        .I1(term_r[19]),
        .O(sat_add322_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry__3_i_2
       (.I0(\s0_reg_reg[31]_0 [18]),
        .I1(term_r[18]),
        .O(sat_add322_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry__3_i_3
       (.I0(\s0_reg_reg[31]_0 [17]),
        .I1(term_r[17]),
        .O(sat_add322_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry__3_i_4
       (.I0(\s0_reg_reg[31]_0 [16]),
        .I1(term_r[16]),
        .O(sat_add322_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sat_add322_carry__4
       (.CI(sat_add322_carry__3_n_0),
        .CO({sat_add322_carry__4_n_0,sat_add322_carry__4_n_1,sat_add322_carry__4_n_2,sat_add322_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(\s0_reg_reg[31]_0 [23:20]),
        .O({sat_add322_carry__4_n_4,sat_add322_carry__4_n_5,sat_add322_carry__4_n_6,sat_add322_carry__4_n_7}),
        .S({sat_add322_carry__4_i_1_n_0,sat_add322_carry__4_i_2_n_0,sat_add322_carry__4_i_3_n_0,sat_add322_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry__4_i_1
       (.I0(\s0_reg_reg[31]_0 [23]),
        .I1(term_r[23]),
        .O(sat_add322_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry__4_i_2
       (.I0(\s0_reg_reg[31]_0 [22]),
        .I1(term_r[22]),
        .O(sat_add322_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry__4_i_3
       (.I0(\s0_reg_reg[31]_0 [21]),
        .I1(term_r[21]),
        .O(sat_add322_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry__4_i_4
       (.I0(\s0_reg_reg[31]_0 [20]),
        .I1(term_r[20]),
        .O(sat_add322_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sat_add322_carry__5
       (.CI(sat_add322_carry__4_n_0),
        .CO({sat_add322_carry__5_n_0,sat_add322_carry__5_n_1,sat_add322_carry__5_n_2,sat_add322_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(\s0_reg_reg[31]_0 [27:24]),
        .O({sat_add322_carry__5_n_4,sat_add322_carry__5_n_5,sat_add322_carry__5_n_6,sat_add322_carry__5_n_7}),
        .S({sat_add322_carry__5_i_1_n_0,sat_add322_carry__5_i_2_n_0,sat_add322_carry__5_i_3_n_0,sat_add322_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry__5_i_1
       (.I0(\s0_reg_reg[31]_0 [27]),
        .I1(term_r[27]),
        .O(sat_add322_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry__5_i_2
       (.I0(\s0_reg_reg[31]_0 [26]),
        .I1(term_r[26]),
        .O(sat_add322_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry__5_i_3
       (.I0(\s0_reg_reg[31]_0 [25]),
        .I1(term_r[25]),
        .O(sat_add322_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry__5_i_4
       (.I0(\s0_reg_reg[31]_0 [24]),
        .I1(term_r[24]),
        .O(sat_add322_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sat_add322_carry__6
       (.CI(sat_add322_carry__5_n_0),
        .CO({NLW_sat_add322_carry__6_CO_UNCONNECTED[3],sat_add322_carry__6_n_1,sat_add322_carry__6_n_2,sat_add322_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\s0_reg_reg[31]_0 [30:28]}),
        .O({p_2_in,sat_add322_carry__6_n_5,sat_add322_carry__6_n_6,sat_add322_carry__6_n_7}),
        .S({sat_add322_carry__6_i_1_n_0,sat_add322_carry__6_i_2_n_0,sat_add322_carry__6_i_3_n_0,sat_add322_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry__6_i_1
       (.I0(\s0_reg_reg[31]_0 [31]),
        .I1(p_0_in),
        .O(sat_add322_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry__6_i_2
       (.I0(\s0_reg_reg[31]_0 [30]),
        .I1(term_r[30]),
        .O(sat_add322_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry__6_i_3
       (.I0(\s0_reg_reg[31]_0 [29]),
        .I1(term_r[29]),
        .O(sat_add322_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry__6_i_4
       (.I0(\s0_reg_reg[31]_0 [28]),
        .I1(term_r[28]),
        .O(sat_add322_carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry_i_1
       (.I0(\s0_reg_reg[31]_0 [3]),
        .I1(term_r[3]),
        .O(sat_add322_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry_i_2
       (.I0(\s0_reg_reg[31]_0 [2]),
        .I1(term_r[2]),
        .O(sat_add322_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry_i_3
       (.I0(\s0_reg_reg[31]_0 [1]),
        .I1(term_r[1]),
        .O(sat_add322_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add322_carry_i_4
       (.I0(\s0_reg_reg[31]_0 [0]),
        .I1(\term_r_reg[0]_0 ),
        .O(sat_add322_carry_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    term_r0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,delta_r0[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_term_r0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,Q}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_term_r0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_term_r0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_term_r0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(delta_r),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(E),
        .CEB2(mu_reg),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_term_r0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_term_r0_OVERFLOW_UNCONNECTED),
        .P({term_r0_n_58,term_r0_n_59,term_r0_n_60,term_r0_n_61,term_r0_n_62,term_r0_n_63,term_r0_n_64,term_r0_n_65,term_r0_n_66,term_r0_n_67,term_r0_n_68,term_r0_n_69,term_r0_n_70,term_r0_n_71,term_r0_n_72,term_r0_n_73,term_r0_n_74,term_r0_n_75,term_r0_n_76,term_r0_n_77,term_r0_n_78,term_r0_n_79,term_r0_n_80,term_r0_n_81,term_r0_n_82,term_r0_n_83,term_r0_n_84,term_r0_n_85,term_r0_n_86,term_r0_n_87,term_r0_n_88,P,term_r0_n_90,term_r0_n_91,term_r0_n_92,term_r0_n_93,term_r0_n_94,term_r0_n_95,term_r0_n_96,term_r0_n_97,term_r0_n_98,term_r0_n_99,term_r0_n_100,term_r0_n_101,term_r0_n_102,term_r0_n_103,term_r0_n_104,term_r0_n_105}),
        .PATTERNBDETECT(NLW_term_r0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_term_r0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({term_r0_n_106,term_r0_n_107,term_r0_n_108,term_r0_n_109,term_r0_n_110,term_r0_n_111,term_r0_n_112,term_r0_n_113,term_r0_n_114,term_r0_n_115,term_r0_n_116,term_r0_n_117,term_r0_n_118,term_r0_n_119,term_r0_n_120,term_r0_n_121,term_r0_n_122,term_r0_n_123,term_r0_n_124,term_r0_n_125,term_r0_n_126,term_r0_n_127,term_r0_n_128,term_r0_n_129,term_r0_n_130,term_r0_n_131,term_r0_n_132,term_r0_n_133,term_r0_n_134,term_r0_n_135,term_r0_n_136,term_r0_n_137,term_r0_n_138,term_r0_n_139,term_r0_n_140,term_r0_n_141,term_r0_n_142,term_r0_n_143,term_r0_n_144,term_r0_n_145,term_r0_n_146,term_r0_n_147,term_r0_n_148,term_r0_n_149,term_r0_n_150,term_r0_n_151,term_r0_n_152,term_r0_n_153}),
        .RSTA(rst_n_0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst_n_0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_term_r0_UNDERFLOW_UNCONNECTED));
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    term_r0__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_term_r0__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({delta_r0[31],delta_r0[31],delta_r0[31],delta_r0[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_term_r0__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_term_r0__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_term_r0__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(E),
        .CEA2(mu_reg),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(delta_r),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(term_r0__0_i_1_n_0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_term_r0__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_term_r0__0_OVERFLOW_UNCONNECTED),
        .P({term_r0__0_n_58,term_r0__0_n_59,term_r0__0_n_60,term_r0__0_n_61,term_r0__0_n_62,term_r0__0_n_63,term_r0__0_n_64,term_r0__0_n_65,term_r0__0_n_66,term_r0__0_n_67,term_r0__0_n_68,term_r0__0_n_69,term_r0__0_n_70,term_r0__0_n_71,term_r0__0_n_72,term_r0__0_n_73,term_r0__0_n_74,p_0_in,term_r}),
        .PATTERNBDETECT(NLW_term_r0__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_term_r0__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({term_r0_n_106,term_r0_n_107,term_r0_n_108,term_r0_n_109,term_r0_n_110,term_r0_n_111,term_r0_n_112,term_r0_n_113,term_r0_n_114,term_r0_n_115,term_r0_n_116,term_r0_n_117,term_r0_n_118,term_r0_n_119,term_r0_n_120,term_r0_n_121,term_r0_n_122,term_r0_n_123,term_r0_n_124,term_r0_n_125,term_r0_n_126,term_r0_n_127,term_r0_n_128,term_r0_n_129,term_r0_n_130,term_r0_n_131,term_r0_n_132,term_r0_n_133,term_r0_n_134,term_r0_n_135,term_r0_n_136,term_r0_n_137,term_r0_n_138,term_r0_n_139,term_r0_n_140,term_r0_n_141,term_r0_n_142,term_r0_n_143,term_r0_n_144,term_r0_n_145,term_r0_n_146,term_r0_n_147,term_r0_n_148,term_r0_n_149,term_r0_n_150,term_r0_n_151,term_r0_n_152,term_r0_n_153}),
        .PCOUT(NLW_term_r0__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rst_n_0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst_n_0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(rst_n_0),
        .UNDERFLOW(NLW_term_r0__0_UNDERFLOW_UNCONNECTED));
  LUT3 #(
    .INIT(8'h40)) 
    term_r0__0_i_1
       (.I0(\FSM_sequential_state_reg[1]_0 ),
        .I1(\FSM_sequential_state_reg[2]_0 ),
        .I2(\FSM_sequential_state_reg[0]_0 ),
        .O(term_r0__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h1000)) 
    term_r0_i_1
       (.I0(\FSM_sequential_state_reg[1]_0 ),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(bram_rd_valid),
        .I3(\FSM_sequential_state_reg[2]_0 ),
        .O(delta_r));
  FDRE \term_r_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\term_r_reg[0]_1 ),
        .Q(\term_r_reg[0]_0 ),
        .R(rst_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    v1_i_1
       (.I0(v1),
        .I1(v1_0),
        .I2(frac_d_valid),
        .O(\state_reg[1] ));
  LUT5 #(
    .INIT(32'h00007000)) 
    \x_reg[31]_i_1 
       (.I0(v1_0),
        .I1(v1),
        .I2(fx_enable),
        .I3(\x_reg_reg[6] ),
        .I4(\FSM_sequential_state[2]_i_3_n_0 ),
        .O(\state_reg[0] ));
endmodule

(* ORIG_REF_NAME = "delay_line" *) 
module design_1_fx_system_wrapper_0_1_delay_line
   (rd_en_reg,
    SR,
    P,
    fx_enable_0,
    frac_d_valid,
    \term_r_reg[0] ,
    d_reg_valid_reg_0,
    \state_reg[0]_0 ,
    \state_reg[0]_1 ,
    \state_reg[1]_0 ,
    \state_reg[1]_1 ,
    \FSM_sequential_state_reg[1] ,
    \FSM_sequential_state_reg[2] ,
    \FSM_sequential_state_reg[0] ,
    \reg_ctrl_reg[0] ,
    d_reg_valid_reg_1,
    \FSM_sequential_state_reg[2]_0 ,
    clear_req0,
    E,
    out_buf_valid_reg,
    \state_reg[1]_2 ,
    \state_reg[0]_2 ,
    \FSM_sequential_state_reg[1]_0 ,
    \FSM_sequential_state_reg[2]_1 ,
    \FSM_sequential_state_reg[0]_0 ,
    \FSM_sequential_state_reg[2]_2 ,
    \FSM_sequential_state_reg[2]_3 ,
    \FSM_sequential_state_reg[2]_4 ,
    out_buf_valid_reg_0,
    \d_out_reg[31] ,
    clk,
    Q,
    rd_en_reg_0,
    \term_r_reg[0]_0 ,
    d_reg_valid_reg_2,
    frac_start_reg_0,
    rd_en_reg_rep,
    bram_wr_en_reg_rep_0,
    bram_wr_en_reg_rep__0_0,
    bram_wr_en_reg_rep__1_0,
    bram_wr_en_reg_rep__2_0,
    bram_wr_en_reg_rep__3_0,
    bram_wr_en_reg_rep__4_0,
    bram_wr_en_reg_rep__5_0,
    bram_wr_en_reg_rep__6_0,
    bram_wr_en_reg_rep__7_0,
    bram_wr_en_reg_rep__8_0,
    bram_wr_en_reg_rep__9_0,
    bram_wr_en_reg_rep__10_0,
    bram_wr_en_reg_rep__11_0,
    \state_reg[1]_3 ,
    rst_n,
    inflight0,
    state,
    out_buf_valid_reg_1,
    enable_d,
    mono_valid,
    fx_enable,
    \x_reg_reg[6] ,
    \FSM_sequential_state_reg[2]_5 ,
    \bram_wr_data_reg[31]_0 );
  output rd_en_reg;
  output [0:0]SR;
  output [0:0]P;
  output fx_enable_0;
  output frac_d_valid;
  output [0:0]\term_r_reg[0] ;
  output d_reg_valid_reg_0;
  output \state_reg[0]_0 ;
  output \state_reg[0]_1 ;
  output \state_reg[1]_0 ;
  output \state_reg[1]_1 ;
  output \FSM_sequential_state_reg[1] ;
  output \FSM_sequential_state_reg[2] ;
  output \FSM_sequential_state_reg[0] ;
  output \reg_ctrl_reg[0] ;
  output d_reg_valid_reg_1;
  output \FSM_sequential_state_reg[2]_0 ;
  output clear_req0;
  output [0:0]E;
  output out_buf_valid_reg;
  output \state_reg[1]_2 ;
  output [0:0]\state_reg[0]_2 ;
  output \FSM_sequential_state_reg[1]_0 ;
  output [0:0]\FSM_sequential_state_reg[2]_1 ;
  output [0:0]\FSM_sequential_state_reg[0]_0 ;
  output \FSM_sequential_state_reg[2]_2 ;
  output \FSM_sequential_state_reg[2]_3 ;
  output \FSM_sequential_state_reg[2]_4 ;
  output out_buf_valid_reg_0;
  output [31:0]\d_out_reg[31] ;
  input clk;
  input [31:0]Q;
  input rd_en_reg_0;
  input \term_r_reg[0]_0 ;
  input d_reg_valid_reg_2;
  input frac_start_reg_0;
  input rd_en_reg_rep;
  input bram_wr_en_reg_rep_0;
  input bram_wr_en_reg_rep__0_0;
  input bram_wr_en_reg_rep__1_0;
  input bram_wr_en_reg_rep__2_0;
  input bram_wr_en_reg_rep__3_0;
  input bram_wr_en_reg_rep__4_0;
  input bram_wr_en_reg_rep__5_0;
  input bram_wr_en_reg_rep__6_0;
  input bram_wr_en_reg_rep__7_0;
  input bram_wr_en_reg_rep__8_0;
  input bram_wr_en_reg_rep__9_0;
  input bram_wr_en_reg_rep__10_0;
  input bram_wr_en_reg_rep__11_0;
  input \state_reg[1]_3 ;
  input rst_n;
  input inflight0;
  input [2:0]state;
  input out_buf_valid_reg_1;
  input enable_d;
  input mono_valid;
  input fx_enable;
  input [0:0]\x_reg_reg[6] ;
  input \FSM_sequential_state_reg[2]_5 ;
  input [31:0]\bram_wr_data_reg[31]_0 ;

  wire [31:16]D_reg;
  wire [0:0]E;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state_reg[0] ;
  wire [0:0]\FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[2] ;
  wire \FSM_sequential_state_reg[2]_0 ;
  wire [0:0]\FSM_sequential_state_reg[2]_1 ;
  wire \FSM_sequential_state_reg[2]_2 ;
  wire \FSM_sequential_state_reg[2]_3 ;
  wire \FSM_sequential_state_reg[2]_4 ;
  wire \FSM_sequential_state_reg[2]_5 ;
  wire [0:0]P;
  wire [31:0]Q;
  wire [0:0]SR;
  wire bram_rd_valid;
  wire bram_u_n_1;
  wire bram_u_n_2;
  wire bram_u_n_3;
  wire bram_u_n_37;
  wire bram_u_n_38;
  wire bram_u_n_39;
  wire bram_u_n_4;
  wire bram_u_n_40;
  wire bram_u_n_41;
  wire bram_u_n_42;
  wire bram_u_n_43;
  wire bram_u_n_44;
  wire bram_u_n_45;
  wire bram_u_n_46;
  wire bram_u_n_47;
  wire bram_u_n_48;
  wire bram_u_n_49;
  wire bram_u_n_50;
  wire bram_u_n_51;
  wire bram_u_n_52;
  wire bram_u_n_53;
  wire bram_u_n_54;
  wire bram_u_n_55;
  wire bram_u_n_56;
  wire bram_u_n_57;
  wire bram_u_n_58;
  wire bram_u_n_59;
  wire bram_u_n_60;
  wire bram_u_n_61;
  wire bram_u_n_62;
  wire bram_u_n_63;
  wire bram_u_n_64;
  wire \bram_wr_addr[0]_rep__0_i_1_n_0 ;
  wire \bram_wr_addr[0]_rep__1_i_1_n_0 ;
  wire \bram_wr_addr[0]_rep__2_i_1_n_0 ;
  wire \bram_wr_addr[0]_rep_i_2_n_0 ;
  wire \bram_wr_addr[10]_rep__0_i_1_n_0 ;
  wire \bram_wr_addr[10]_rep__1_i_1_n_0 ;
  wire \bram_wr_addr[10]_rep__2_i_1_n_0 ;
  wire \bram_wr_addr[10]_rep_i_1_n_0 ;
  wire \bram_wr_addr[11]_rep__0_i_1_n_0 ;
  wire \bram_wr_addr[11]_rep__1_i_1_n_0 ;
  wire \bram_wr_addr[11]_rep__2_i_1_n_0 ;
  wire \bram_wr_addr[11]_rep_i_1_n_0 ;
  wire \bram_wr_addr[12]_rep__0_i_1_n_0 ;
  wire \bram_wr_addr[12]_rep__1_i_1_n_0 ;
  wire \bram_wr_addr[12]_rep__2_i_1_n_0 ;
  wire \bram_wr_addr[12]_rep_i_1_n_0 ;
  wire \bram_wr_addr[13]_rep__0_i_1_n_0 ;
  wire \bram_wr_addr[13]_rep__1_i_1_n_0 ;
  wire \bram_wr_addr[13]_rep__2_i_1_n_0 ;
  wire \bram_wr_addr[13]_rep_i_1_n_0 ;
  wire \bram_wr_addr[14]_rep__0_i_1_n_0 ;
  wire \bram_wr_addr[14]_rep__1_i_1_n_0 ;
  wire \bram_wr_addr[14]_rep__2_i_1_n_0 ;
  wire \bram_wr_addr[14]_rep_i_1_n_0 ;
  wire \bram_wr_addr[1]_rep__0_i_1_n_0 ;
  wire \bram_wr_addr[1]_rep__1_i_1_n_0 ;
  wire \bram_wr_addr[1]_rep__2_i_1_n_0 ;
  wire \bram_wr_addr[1]_rep_i_1_n_0 ;
  wire \bram_wr_addr[2]_rep__0_i_1_n_0 ;
  wire \bram_wr_addr[2]_rep__1_i_1_n_0 ;
  wire \bram_wr_addr[2]_rep__2_i_1_n_0 ;
  wire \bram_wr_addr[2]_rep_i_1_n_0 ;
  wire \bram_wr_addr[3]_rep__0_i_1_n_0 ;
  wire \bram_wr_addr[3]_rep__1_i_1_n_0 ;
  wire \bram_wr_addr[3]_rep__2_i_1_n_0 ;
  wire \bram_wr_addr[3]_rep_i_1_n_0 ;
  wire \bram_wr_addr[4]_rep__0_i_1_n_0 ;
  wire \bram_wr_addr[4]_rep__1_i_1_n_0 ;
  wire \bram_wr_addr[4]_rep__2_i_1_n_0 ;
  wire \bram_wr_addr[4]_rep_i_1_n_0 ;
  wire \bram_wr_addr[5]_rep__0_i_1_n_0 ;
  wire \bram_wr_addr[5]_rep__1_i_1_n_0 ;
  wire \bram_wr_addr[5]_rep__2_i_1_n_0 ;
  wire \bram_wr_addr[5]_rep_i_1_n_0 ;
  wire \bram_wr_addr[6]_rep__0_i_1_n_0 ;
  wire \bram_wr_addr[6]_rep__1_i_1_n_0 ;
  wire \bram_wr_addr[6]_rep__2_i_1_n_0 ;
  wire \bram_wr_addr[6]_rep_i_1_n_0 ;
  wire \bram_wr_addr[7]_rep__0_i_1_n_0 ;
  wire \bram_wr_addr[7]_rep__1_i_1_n_0 ;
  wire \bram_wr_addr[7]_rep__2_i_1_n_0 ;
  wire \bram_wr_addr[7]_rep_i_1_n_0 ;
  wire \bram_wr_addr[8]_rep__0_i_1_n_0 ;
  wire \bram_wr_addr[8]_rep__1_i_1_n_0 ;
  wire \bram_wr_addr[8]_rep__2_i_1_n_0 ;
  wire \bram_wr_addr[8]_rep_i_1_n_0 ;
  wire \bram_wr_addr[9]_rep__0_i_1_n_0 ;
  wire \bram_wr_addr[9]_rep__1_i_1_n_0 ;
  wire \bram_wr_addr[9]_rep__2_i_1_n_0 ;
  wire \bram_wr_addr[9]_rep_i_1_n_0 ;
  wire \bram_wr_addr_reg[0]_rep__0_n_0 ;
  wire \bram_wr_addr_reg[0]_rep__1_n_0 ;
  wire \bram_wr_addr_reg[0]_rep__2_n_0 ;
  wire \bram_wr_addr_reg[0]_rep_n_0 ;
  wire \bram_wr_addr_reg[10]_rep__0_n_0 ;
  wire \bram_wr_addr_reg[10]_rep__1_n_0 ;
  wire \bram_wr_addr_reg[10]_rep__2_n_0 ;
  wire \bram_wr_addr_reg[10]_rep_n_0 ;
  wire \bram_wr_addr_reg[11]_rep__0_n_0 ;
  wire \bram_wr_addr_reg[11]_rep__1_n_0 ;
  wire \bram_wr_addr_reg[11]_rep__2_n_0 ;
  wire \bram_wr_addr_reg[11]_rep_n_0 ;
  wire \bram_wr_addr_reg[12]_rep__0_n_0 ;
  wire \bram_wr_addr_reg[12]_rep__1_n_0 ;
  wire \bram_wr_addr_reg[12]_rep__2_n_0 ;
  wire \bram_wr_addr_reg[12]_rep_n_0 ;
  wire \bram_wr_addr_reg[13]_rep__0_n_0 ;
  wire \bram_wr_addr_reg[13]_rep__1_n_0 ;
  wire \bram_wr_addr_reg[13]_rep__2_n_0 ;
  wire \bram_wr_addr_reg[13]_rep_n_0 ;
  wire \bram_wr_addr_reg[14]_rep__0_n_0 ;
  wire \bram_wr_addr_reg[14]_rep__1_n_0 ;
  wire \bram_wr_addr_reg[14]_rep__2_n_0 ;
  wire \bram_wr_addr_reg[14]_rep_n_0 ;
  wire \bram_wr_addr_reg[1]_rep__0_n_0 ;
  wire \bram_wr_addr_reg[1]_rep__1_n_0 ;
  wire \bram_wr_addr_reg[1]_rep__2_n_0 ;
  wire \bram_wr_addr_reg[1]_rep_n_0 ;
  wire \bram_wr_addr_reg[2]_rep__0_n_0 ;
  wire \bram_wr_addr_reg[2]_rep__1_n_0 ;
  wire \bram_wr_addr_reg[2]_rep__2_n_0 ;
  wire \bram_wr_addr_reg[2]_rep_n_0 ;
  wire \bram_wr_addr_reg[3]_rep__0_n_0 ;
  wire \bram_wr_addr_reg[3]_rep__1_n_0 ;
  wire \bram_wr_addr_reg[3]_rep__2_n_0 ;
  wire \bram_wr_addr_reg[3]_rep_n_0 ;
  wire \bram_wr_addr_reg[4]_rep__0_n_0 ;
  wire \bram_wr_addr_reg[4]_rep__1_n_0 ;
  wire \bram_wr_addr_reg[4]_rep__2_n_0 ;
  wire \bram_wr_addr_reg[4]_rep_n_0 ;
  wire \bram_wr_addr_reg[5]_rep__0_n_0 ;
  wire \bram_wr_addr_reg[5]_rep__1_n_0 ;
  wire \bram_wr_addr_reg[5]_rep__2_n_0 ;
  wire \bram_wr_addr_reg[5]_rep_n_0 ;
  wire \bram_wr_addr_reg[6]_rep__0_n_0 ;
  wire \bram_wr_addr_reg[6]_rep__1_n_0 ;
  wire \bram_wr_addr_reg[6]_rep__2_n_0 ;
  wire \bram_wr_addr_reg[6]_rep_n_0 ;
  wire \bram_wr_addr_reg[7]_rep__0_n_0 ;
  wire \bram_wr_addr_reg[7]_rep__1_n_0 ;
  wire \bram_wr_addr_reg[7]_rep__2_n_0 ;
  wire \bram_wr_addr_reg[7]_rep_n_0 ;
  wire \bram_wr_addr_reg[8]_rep__0_n_0 ;
  wire \bram_wr_addr_reg[8]_rep__1_n_0 ;
  wire \bram_wr_addr_reg[8]_rep__2_n_0 ;
  wire \bram_wr_addr_reg[8]_rep_n_0 ;
  wire \bram_wr_addr_reg[9]_rep__0_n_0 ;
  wire \bram_wr_addr_reg[9]_rep__1_n_0 ;
  wire \bram_wr_addr_reg[9]_rep__2_n_0 ;
  wire \bram_wr_addr_reg[9]_rep_n_0 ;
  wire [31:0]bram_wr_data;
  wire \bram_wr_data[0]_i_1_n_0 ;
  wire \bram_wr_data[10]_i_1_n_0 ;
  wire \bram_wr_data[11]_i_1_n_0 ;
  wire \bram_wr_data[12]_i_1_n_0 ;
  wire \bram_wr_data[13]_i_1_n_0 ;
  wire \bram_wr_data[14]_i_1_n_0 ;
  wire \bram_wr_data[15]_i_1_n_0 ;
  wire \bram_wr_data[16]_i_1_n_0 ;
  wire \bram_wr_data[17]_i_1_n_0 ;
  wire \bram_wr_data[18]_i_1_n_0 ;
  wire \bram_wr_data[19]_i_1_n_0 ;
  wire \bram_wr_data[1]_i_1_n_0 ;
  wire \bram_wr_data[20]_i_1_n_0 ;
  wire \bram_wr_data[21]_i_1_n_0 ;
  wire \bram_wr_data[22]_i_1_n_0 ;
  wire \bram_wr_data[23]_i_1_n_0 ;
  wire \bram_wr_data[24]_i_1_n_0 ;
  wire \bram_wr_data[25]_i_1_n_0 ;
  wire \bram_wr_data[26]_i_1_n_0 ;
  wire \bram_wr_data[27]_i_1_n_0 ;
  wire \bram_wr_data[28]_i_1_n_0 ;
  wire \bram_wr_data[29]_i_1_n_0 ;
  wire \bram_wr_data[2]_i_1_n_0 ;
  wire \bram_wr_data[30]_i_1_n_0 ;
  wire \bram_wr_data[31]_i_1_n_0 ;
  wire \bram_wr_data[3]_i_1_n_0 ;
  wire \bram_wr_data[4]_i_1_n_0 ;
  wire \bram_wr_data[5]_i_1_n_0 ;
  wire \bram_wr_data[6]_i_1_n_0 ;
  wire \bram_wr_data[7]_i_1_n_0 ;
  wire \bram_wr_data[8]_i_1_n_0 ;
  wire \bram_wr_data[9]_i_1_n_0 ;
  wire [31:0]\bram_wr_data_reg[31]_0 ;
  wire bram_wr_en_reg_rep_0;
  wire bram_wr_en_reg_rep__0_0;
  wire bram_wr_en_reg_rep__0_n_0;
  wire bram_wr_en_reg_rep__10_0;
  wire bram_wr_en_reg_rep__10_n_0;
  wire bram_wr_en_reg_rep__11_0;
  wire bram_wr_en_reg_rep__11_n_0;
  wire bram_wr_en_reg_rep__1_0;
  wire bram_wr_en_reg_rep__1_n_0;
  wire bram_wr_en_reg_rep__2_0;
  wire bram_wr_en_reg_rep__2_n_0;
  wire bram_wr_en_reg_rep__3_0;
  wire bram_wr_en_reg_rep__3_n_0;
  wire bram_wr_en_reg_rep__4_0;
  wire bram_wr_en_reg_rep__4_n_0;
  wire bram_wr_en_reg_rep__5_0;
  wire bram_wr_en_reg_rep__5_n_0;
  wire bram_wr_en_reg_rep__6_0;
  wire bram_wr_en_reg_rep__6_n_0;
  wire bram_wr_en_reg_rep__7_0;
  wire bram_wr_en_reg_rep__7_n_0;
  wire bram_wr_en_reg_rep__8_0;
  wire bram_wr_en_reg_rep__8_n_0;
  wire bram_wr_en_reg_rep__9_0;
  wire bram_wr_en_reg_rep__9_n_0;
  wire bram_wr_en_reg_rep_n_0;
  wire \clear_addr[0]_i_2_n_0 ;
  wire \clear_addr[0]_i_4_n_0 ;
  wire \clear_addr[0]_i_5_n_0 ;
  wire [14:0]clear_addr_reg;
  wire \clear_addr_reg[0]_i_3_n_0 ;
  wire \clear_addr_reg[0]_i_3_n_1 ;
  wire \clear_addr_reg[0]_i_3_n_2 ;
  wire \clear_addr_reg[0]_i_3_n_3 ;
  wire \clear_addr_reg[0]_i_3_n_4 ;
  wire \clear_addr_reg[0]_i_3_n_5 ;
  wire \clear_addr_reg[0]_i_3_n_6 ;
  wire \clear_addr_reg[0]_i_3_n_7 ;
  wire \clear_addr_reg[12]_i_1_n_2 ;
  wire \clear_addr_reg[12]_i_1_n_3 ;
  wire \clear_addr_reg[12]_i_1_n_5 ;
  wire \clear_addr_reg[12]_i_1_n_6 ;
  wire \clear_addr_reg[12]_i_1_n_7 ;
  wire \clear_addr_reg[4]_i_1_n_0 ;
  wire \clear_addr_reg[4]_i_1_n_1 ;
  wire \clear_addr_reg[4]_i_1_n_2 ;
  wire \clear_addr_reg[4]_i_1_n_3 ;
  wire \clear_addr_reg[4]_i_1_n_4 ;
  wire \clear_addr_reg[4]_i_1_n_5 ;
  wire \clear_addr_reg[4]_i_1_n_6 ;
  wire \clear_addr_reg[4]_i_1_n_7 ;
  wire \clear_addr_reg[8]_i_1_n_0 ;
  wire \clear_addr_reg[8]_i_1_n_1 ;
  wire \clear_addr_reg[8]_i_1_n_2 ;
  wire \clear_addr_reg[8]_i_1_n_3 ;
  wire \clear_addr_reg[8]_i_1_n_4 ;
  wire \clear_addr_reg[8]_i_1_n_5 ;
  wire \clear_addr_reg[8]_i_1_n_6 ;
  wire \clear_addr_reg[8]_i_1_n_7 ;
  wire clear_req0;
  wire clk;
  wire [31:0]\d_out_reg[31] ;
  wire d_reg_valid_reg_0;
  wire d_reg_valid_reg_1;
  wire d_reg_valid_reg_2;
  wire enable_d;
  wire frac_d_valid;
  wire frac_start;
  wire frac_start_reg_0;
  wire frac_u_n_19;
  wire frac_u_n_20;
  wire frac_u_n_21;
  wire frac_u_n_22;
  wire frac_u_n_23;
  wire frac_u_n_24;
  wire frac_u_n_25;
  wire frac_u_n_26;
  wire frac_u_n_27;
  wire frac_u_n_28;
  wire frac_u_n_29;
  wire frac_u_n_30;
  wire frac_u_n_31;
  wire frac_u_n_32;
  wire frac_u_n_33;
  wire frac_u_n_34;
  wire frac_u_n_35;
  wire frac_u_n_36;
  wire frac_u_n_37;
  wire frac_u_n_38;
  wire frac_u_n_39;
  wire frac_u_n_40;
  wire frac_u_n_41;
  wire frac_u_n_42;
  wire frac_u_n_43;
  wire frac_u_n_44;
  wire frac_u_n_45;
  wire frac_u_n_46;
  wire frac_u_n_47;
  wire frac_u_n_48;
  wire frac_u_n_49;
  wire frac_u_n_50;
  wire frac_u_n_51;
  wire frac_u_n_52;
  wire frac_u_n_53;
  wire frac_u_n_54;
  wire frac_u_n_55;
  wire frac_u_n_56;
  wire frac_u_n_57;
  wire frac_u_n_58;
  wire frac_u_n_59;
  wire frac_u_n_6;
  wire frac_u_n_60;
  wire frac_u_n_61;
  wire frac_u_n_62;
  wire frac_u_n_63;
  wire frac_u_n_64;
  wire frac_u_n_65;
  wire frac_u_n_66;
  wire frac_u_n_67;
  wire frac_u_n_68;
  wire frac_u_n_69;
  wire frac_u_n_70;
  wire frac_u_n_71;
  wire frac_u_n_72;
  wire frac_u_n_73;
  wire frac_u_n_74;
  wire frac_u_n_75;
  wire frac_u_n_76;
  wire frac_u_n_77;
  wire frac_u_n_78;
  wire fx_enable;
  wire fx_enable_0;
  wire inflight0;
  wire mono_valid;
  wire out_buf_valid_i_2_n_0;
  wire out_buf_valid_reg;
  wire out_buf_valid_reg_0;
  wire out_buf_valid_reg_1;
  wire p_1_in;
  wire [31:0]rd_data;
  wire rd_en_reg;
  wire rd_en_reg_0;
  wire rd_en_reg_rep;
  wire \reg_ctrl_reg[0] ;
  wire rst_n;
  wire [30:0]s0_reg;
  wire [2:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire [0:0]\state_reg[0]_2 ;
  wire \state_reg[1]_0 ;
  wire \state_reg[1]_1 ;
  wire \state_reg[1]_2 ;
  wire \state_reg[1]_3 ;
  wire [0:0]\term_r_reg[0] ;
  wire \term_r_reg[0]_0 ;
  wire [14:0]wptr_latched;
  wire [14:0]wptr_reg;
  wire [14:1]wptr_reg0;
  wire wptr_reg0_carry__0_n_0;
  wire wptr_reg0_carry__0_n_1;
  wire wptr_reg0_carry__0_n_2;
  wire wptr_reg0_carry__0_n_3;
  wire wptr_reg0_carry__1_n_0;
  wire wptr_reg0_carry__1_n_1;
  wire wptr_reg0_carry__1_n_2;
  wire wptr_reg0_carry__1_n_3;
  wire wptr_reg0_carry__2_n_3;
  wire wptr_reg0_carry_n_0;
  wire wptr_reg0_carry_n_1;
  wire wptr_reg0_carry_n_2;
  wire wptr_reg0_carry_n_3;
  wire \wptr_reg[0]_i_1_n_0 ;
  wire \wptr_reg[10]_i_1_n_0 ;
  wire \wptr_reg[11]_i_1_n_0 ;
  wire \wptr_reg[12]_i_1_n_0 ;
  wire \wptr_reg[13]_i_1_n_0 ;
  wire \wptr_reg[14]_i_2_n_0 ;
  wire \wptr_reg[14]_i_3_n_0 ;
  wire \wptr_reg[14]_i_4_n_0 ;
  wire \wptr_reg[14]_i_5_n_0 ;
  wire \wptr_reg[14]_i_6_n_0 ;
  wire \wptr_reg[14]_i_7_n_0 ;
  wire \wptr_reg[1]_i_1_n_0 ;
  wire \wptr_reg[2]_i_1_n_0 ;
  wire \wptr_reg[3]_i_1_n_0 ;
  wire \wptr_reg[4]_i_1_n_0 ;
  wire \wptr_reg[5]_i_1_n_0 ;
  wire \wptr_reg[6]_i_1_n_0 ;
  wire \wptr_reg[7]_i_1_n_0 ;
  wire \wptr_reg[8]_i_1_n_0 ;
  wire \wptr_reg[9]_i_1_n_0 ;
  wire wptr_reg_0;
  wire [0:0]\x_reg_reg[6] ;
  wire [3:2]\NLW_clear_addr_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_clear_addr_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:1]NLW_wptr_reg0_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_wptr_reg0_carry__2_O_UNCONNECTED;

  FDRE \D_reg_reg[16] 
       (.C(clk),
        .CE(fx_enable_0),
        .D(Q[16]),
        .Q(D_reg[16]),
        .R(SR));
  FDRE \D_reg_reg[17] 
       (.C(clk),
        .CE(fx_enable_0),
        .D(Q[17]),
        .Q(D_reg[17]),
        .R(SR));
  FDRE \D_reg_reg[18] 
       (.C(clk),
        .CE(fx_enable_0),
        .D(Q[18]),
        .Q(D_reg[18]),
        .R(SR));
  FDRE \D_reg_reg[19] 
       (.C(clk),
        .CE(fx_enable_0),
        .D(Q[19]),
        .Q(D_reg[19]),
        .R(SR));
  FDRE \D_reg_reg[20] 
       (.C(clk),
        .CE(fx_enable_0),
        .D(Q[20]),
        .Q(D_reg[20]),
        .R(SR));
  FDRE \D_reg_reg[21] 
       (.C(clk),
        .CE(fx_enable_0),
        .D(Q[21]),
        .Q(D_reg[21]),
        .R(SR));
  FDRE \D_reg_reg[22] 
       (.C(clk),
        .CE(fx_enable_0),
        .D(Q[22]),
        .Q(D_reg[22]),
        .R(SR));
  FDRE \D_reg_reg[23] 
       (.C(clk),
        .CE(fx_enable_0),
        .D(Q[23]),
        .Q(D_reg[23]),
        .R(SR));
  FDRE \D_reg_reg[24] 
       (.C(clk),
        .CE(fx_enable_0),
        .D(Q[24]),
        .Q(D_reg[24]),
        .R(SR));
  FDRE \D_reg_reg[25] 
       (.C(clk),
        .CE(fx_enable_0),
        .D(Q[25]),
        .Q(D_reg[25]),
        .R(SR));
  FDRE \D_reg_reg[26] 
       (.C(clk),
        .CE(fx_enable_0),
        .D(Q[26]),
        .Q(D_reg[26]),
        .R(SR));
  FDRE \D_reg_reg[27] 
       (.C(clk),
        .CE(fx_enable_0),
        .D(Q[27]),
        .Q(D_reg[27]),
        .R(SR));
  FDRE \D_reg_reg[28] 
       (.C(clk),
        .CE(fx_enable_0),
        .D(Q[28]),
        .Q(D_reg[28]),
        .R(SR));
  FDRE \D_reg_reg[29] 
       (.C(clk),
        .CE(fx_enable_0),
        .D(Q[29]),
        .Q(D_reg[29]),
        .R(SR));
  FDRE \D_reg_reg[30] 
       (.C(clk),
        .CE(fx_enable_0),
        .D(Q[30]),
        .Q(D_reg[30]),
        .R(SR));
  FDRE \D_reg_reg[31] 
       (.C(clk),
        .CE(fx_enable_0),
        .D(Q[31]),
        .Q(D_reg[31]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hCDCCCCCC)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\state_reg[0]_1 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\state_reg[1]_0 ),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hD5FFFFFF)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(rst_n),
        .I1(\state_reg[0]_1 ),
        .I2(\state_reg[1]_0 ),
        .I3(fx_enable),
        .I4(\x_reg_reg[6] ),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  design_1_fx_system_wrapper_0_1_delay_bram bram_u
       (.ADDRARDADDR({\bram_wr_addr_reg[14]_rep__2_n_0 ,\bram_wr_addr_reg[13]_rep__2_n_0 ,\bram_wr_addr_reg[12]_rep__2_n_0 ,\bram_wr_addr_reg[11]_rep__2_n_0 ,\bram_wr_addr_reg[10]_rep__2_n_0 ,\bram_wr_addr_reg[9]_rep__2_n_0 ,\bram_wr_addr_reg[8]_rep__2_n_0 ,\bram_wr_addr_reg[7]_rep__2_n_0 ,\bram_wr_addr_reg[6]_rep__2_n_0 ,\bram_wr_addr_reg[5]_rep__2_n_0 ,\bram_wr_addr_reg[4]_rep__2_n_0 ,\bram_wr_addr_reg[3]_rep__2_n_0 ,\bram_wr_addr_reg[2]_rep__2_n_0 ,\bram_wr_addr_reg[1]_rep__2_n_0 ,\bram_wr_addr_reg[0]_rep__2_n_0 }),
        .ADDRBWRADDR({frac_u_n_19,frac_u_n_20,frac_u_n_21,frac_u_n_22,frac_u_n_23,frac_u_n_24,frac_u_n_25,frac_u_n_26,frac_u_n_27,frac_u_n_28,frac_u_n_29,frac_u_n_30,frac_u_n_31,frac_u_n_32,frac_u_n_33}),
        .Q({p_1_in,s0_reg}),
        .S({bram_u_n_1,bram_u_n_2,bram_u_n_3,bram_u_n_4}),
        .WEA({bram_wr_en_reg_rep__0_n_0,bram_wr_en_reg_rep_n_0}),
        .bram_doutb(rd_data),
        .bram_rd_valid(bram_rd_valid),
        .clk(clk),
        .mem_reg_0_10_0({frac_u_n_34,frac_u_n_35,frac_u_n_36,frac_u_n_37,frac_u_n_38,frac_u_n_39,frac_u_n_40,frac_u_n_41,frac_u_n_42,frac_u_n_43,frac_u_n_44,frac_u_n_45,frac_u_n_46,frac_u_n_47,frac_u_n_48}),
        .mem_reg_0_11_0({bram_u_n_41,bram_u_n_42,bram_u_n_43,bram_u_n_44}),
        .mem_reg_0_11_1(frac_u_n_6),
        .mem_reg_0_11_2({\bram_wr_addr_reg[14]_rep__1_n_0 ,\bram_wr_addr_reg[13]_rep__1_n_0 ,\bram_wr_addr_reg[12]_rep__1_n_0 ,\bram_wr_addr_reg[11]_rep__1_n_0 ,\bram_wr_addr_reg[10]_rep__1_n_0 ,\bram_wr_addr_reg[9]_rep__1_n_0 ,\bram_wr_addr_reg[8]_rep__1_n_0 ,\bram_wr_addr_reg[7]_rep__1_n_0 ,\bram_wr_addr_reg[6]_rep__1_n_0 ,\bram_wr_addr_reg[5]_rep__1_n_0 ,\bram_wr_addr_reg[4]_rep__1_n_0 ,\bram_wr_addr_reg[3]_rep__1_n_0 ,\bram_wr_addr_reg[2]_rep__1_n_0 ,\bram_wr_addr_reg[1]_rep__1_n_0 ,\bram_wr_addr_reg[0]_rep__1_n_0 }),
        .mem_reg_0_13_0({bram_wr_en_reg_rep__3_n_0,bram_wr_en_reg_rep__2_n_0}),
        .mem_reg_0_14_0(bram_wr_en_reg_rep__10_n_0),
        .mem_reg_0_15_0({bram_u_n_45,bram_u_n_46,bram_u_n_47,bram_u_n_48}),
        .mem_reg_0_16_0(bram_wr_en_reg_rep__4_n_0),
        .mem_reg_0_19_0({bram_u_n_49,bram_u_n_50,bram_u_n_51,bram_u_n_52}),
        .mem_reg_0_20_0({frac_u_n_49,frac_u_n_50,frac_u_n_51,frac_u_n_52,frac_u_n_53,frac_u_n_54,frac_u_n_55,frac_u_n_56,frac_u_n_57,frac_u_n_58,frac_u_n_59,frac_u_n_60,frac_u_n_61,frac_u_n_62,frac_u_n_63}),
        .mem_reg_0_21_0({\bram_wr_addr_reg[14]_rep__0_n_0 ,\bram_wr_addr_reg[13]_rep__0_n_0 ,\bram_wr_addr_reg[12]_rep__0_n_0 ,\bram_wr_addr_reg[11]_rep__0_n_0 ,\bram_wr_addr_reg[10]_rep__0_n_0 ,\bram_wr_addr_reg[9]_rep__0_n_0 ,\bram_wr_addr_reg[8]_rep__0_n_0 ,\bram_wr_addr_reg[7]_rep__0_n_0 ,\bram_wr_addr_reg[6]_rep__0_n_0 ,\bram_wr_addr_reg[5]_rep__0_n_0 ,\bram_wr_addr_reg[4]_rep__0_n_0 ,\bram_wr_addr_reg[3]_rep__0_n_0 ,\bram_wr_addr_reg[2]_rep__0_n_0 ,\bram_wr_addr_reg[1]_rep__0_n_0 ,\bram_wr_addr_reg[0]_rep__0_n_0 }),
        .mem_reg_0_23_0({bram_u_n_53,bram_u_n_54,bram_u_n_55,bram_u_n_56}),
        .mem_reg_0_23_1({bram_wr_en_reg_rep__6_n_0,bram_wr_en_reg_rep__5_n_0}),
        .mem_reg_0_26_0(bram_wr_en_reg_rep__7_n_0),
        .mem_reg_0_27_0({bram_u_n_57,bram_u_n_58,bram_u_n_59,bram_u_n_60}),
        .mem_reg_0_30_0(bram_wr_en_reg_rep__8_n_0),
        .mem_reg_0_31_0({bram_u_n_61,bram_u_n_62,bram_u_n_63,bram_u_n_64}),
        .mem_reg_0_31_1(bram_wr_data),
        .mem_reg_0_31_2({\bram_wr_addr_reg[14]_rep_n_0 ,\bram_wr_addr_reg[13]_rep_n_0 ,\bram_wr_addr_reg[12]_rep_n_0 ,\bram_wr_addr_reg[11]_rep_n_0 ,\bram_wr_addr_reg[10]_rep_n_0 ,\bram_wr_addr_reg[9]_rep_n_0 ,\bram_wr_addr_reg[8]_rep_n_0 ,\bram_wr_addr_reg[7]_rep_n_0 ,\bram_wr_addr_reg[6]_rep_n_0 ,\bram_wr_addr_reg[5]_rep_n_0 ,\bram_wr_addr_reg[4]_rep_n_0 ,\bram_wr_addr_reg[3]_rep_n_0 ,\bram_wr_addr_reg[2]_rep_n_0 ,\bram_wr_addr_reg[1]_rep_n_0 ,\bram_wr_addr_reg[0]_rep_n_0 }),
        .mem_reg_0_4_0(bram_wr_en_reg_rep__9_n_0),
        .mem_reg_0_6_0(bram_wr_en_reg_rep__1_n_0),
        .mem_reg_0_7_0({bram_u_n_37,bram_u_n_38,bram_u_n_39,bram_u_n_40}),
        .rd_addr({frac_u_n_64,frac_u_n_65,frac_u_n_66,frac_u_n_67,frac_u_n_68,frac_u_n_69,frac_u_n_70,frac_u_n_71,frac_u_n_72,frac_u_n_73,frac_u_n_74,frac_u_n_75,frac_u_n_76,frac_u_n_77,frac_u_n_78}),
        .rd_en(rd_en_reg),
        .vld_d2_reg_0(SR),
        .wr_en(bram_wr_en_reg_rep__11_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[0]_rep__0_i_1 
       (.I0(clear_addr_reg[0]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[0]),
        .O(\bram_wr_addr[0]_rep__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[0]_rep__1_i_1 
       (.I0(clear_addr_reg[0]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[0]),
        .O(\bram_wr_addr[0]_rep__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[0]_rep__2_i_1 
       (.I0(clear_addr_reg[0]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[0]),
        .O(\bram_wr_addr[0]_rep__2_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF001000)) 
    \bram_wr_addr[0]_rep_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(\state_reg[1]_0 ),
        .I4(\state_reg[0]_1 ),
        .O(\FSM_sequential_state_reg[1]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[0]_rep_i_2 
       (.I0(clear_addr_reg[0]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[0]),
        .O(\bram_wr_addr[0]_rep_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[10]_rep__0_i_1 
       (.I0(clear_addr_reg[10]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[10]),
        .O(\bram_wr_addr[10]_rep__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[10]_rep__1_i_1 
       (.I0(clear_addr_reg[10]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[10]),
        .O(\bram_wr_addr[10]_rep__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[10]_rep__2_i_1 
       (.I0(clear_addr_reg[10]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[10]),
        .O(\bram_wr_addr[10]_rep__2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[10]_rep_i_1 
       (.I0(clear_addr_reg[10]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[10]),
        .O(\bram_wr_addr[10]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[11]_rep__0_i_1 
       (.I0(clear_addr_reg[11]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[11]),
        .O(\bram_wr_addr[11]_rep__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[11]_rep__1_i_1 
       (.I0(clear_addr_reg[11]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[11]),
        .O(\bram_wr_addr[11]_rep__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[11]_rep__2_i_1 
       (.I0(clear_addr_reg[11]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[11]),
        .O(\bram_wr_addr[11]_rep__2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[11]_rep_i_1 
       (.I0(clear_addr_reg[11]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[11]),
        .O(\bram_wr_addr[11]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[12]_rep__0_i_1 
       (.I0(clear_addr_reg[12]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[12]),
        .O(\bram_wr_addr[12]_rep__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[12]_rep__1_i_1 
       (.I0(clear_addr_reg[12]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[12]),
        .O(\bram_wr_addr[12]_rep__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[12]_rep__2_i_1 
       (.I0(clear_addr_reg[12]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[12]),
        .O(\bram_wr_addr[12]_rep__2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[12]_rep_i_1 
       (.I0(clear_addr_reg[12]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[12]),
        .O(\bram_wr_addr[12]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[13]_rep__0_i_1 
       (.I0(clear_addr_reg[13]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[13]),
        .O(\bram_wr_addr[13]_rep__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[13]_rep__1_i_1 
       (.I0(clear_addr_reg[13]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[13]),
        .O(\bram_wr_addr[13]_rep__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[13]_rep__2_i_1 
       (.I0(clear_addr_reg[13]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[13]),
        .O(\bram_wr_addr[13]_rep__2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[13]_rep_i_1 
       (.I0(clear_addr_reg[13]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[13]),
        .O(\bram_wr_addr[13]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[14]_rep__0_i_1 
       (.I0(clear_addr_reg[14]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[14]),
        .O(\bram_wr_addr[14]_rep__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[14]_rep__1_i_1 
       (.I0(clear_addr_reg[14]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[14]),
        .O(\bram_wr_addr[14]_rep__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[14]_rep__2_i_1 
       (.I0(clear_addr_reg[14]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[14]),
        .O(\bram_wr_addr[14]_rep__2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[14]_rep_i_1 
       (.I0(clear_addr_reg[14]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[14]),
        .O(\bram_wr_addr[14]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[1]_rep__0_i_1 
       (.I0(clear_addr_reg[1]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[1]),
        .O(\bram_wr_addr[1]_rep__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[1]_rep__1_i_1 
       (.I0(clear_addr_reg[1]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[1]),
        .O(\bram_wr_addr[1]_rep__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[1]_rep__2_i_1 
       (.I0(clear_addr_reg[1]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[1]),
        .O(\bram_wr_addr[1]_rep__2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[1]_rep_i_1 
       (.I0(clear_addr_reg[1]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[1]),
        .O(\bram_wr_addr[1]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[2]_rep__0_i_1 
       (.I0(clear_addr_reg[2]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[2]),
        .O(\bram_wr_addr[2]_rep__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[2]_rep__1_i_1 
       (.I0(clear_addr_reg[2]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[2]),
        .O(\bram_wr_addr[2]_rep__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[2]_rep__2_i_1 
       (.I0(clear_addr_reg[2]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[2]),
        .O(\bram_wr_addr[2]_rep__2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[2]_rep_i_1 
       (.I0(clear_addr_reg[2]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[2]),
        .O(\bram_wr_addr[2]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[3]_rep__0_i_1 
       (.I0(clear_addr_reg[3]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[3]),
        .O(\bram_wr_addr[3]_rep__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[3]_rep__1_i_1 
       (.I0(clear_addr_reg[3]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[3]),
        .O(\bram_wr_addr[3]_rep__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[3]_rep__2_i_1 
       (.I0(clear_addr_reg[3]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[3]),
        .O(\bram_wr_addr[3]_rep__2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[3]_rep_i_1 
       (.I0(clear_addr_reg[3]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[3]),
        .O(\bram_wr_addr[3]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[4]_rep__0_i_1 
       (.I0(clear_addr_reg[4]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[4]),
        .O(\bram_wr_addr[4]_rep__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[4]_rep__1_i_1 
       (.I0(clear_addr_reg[4]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[4]),
        .O(\bram_wr_addr[4]_rep__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[4]_rep__2_i_1 
       (.I0(clear_addr_reg[4]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[4]),
        .O(\bram_wr_addr[4]_rep__2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[4]_rep_i_1 
       (.I0(clear_addr_reg[4]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[4]),
        .O(\bram_wr_addr[4]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[5]_rep__0_i_1 
       (.I0(clear_addr_reg[5]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[5]),
        .O(\bram_wr_addr[5]_rep__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[5]_rep__1_i_1 
       (.I0(clear_addr_reg[5]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[5]),
        .O(\bram_wr_addr[5]_rep__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[5]_rep__2_i_1 
       (.I0(clear_addr_reg[5]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[5]),
        .O(\bram_wr_addr[5]_rep__2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[5]_rep_i_1 
       (.I0(clear_addr_reg[5]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[5]),
        .O(\bram_wr_addr[5]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[6]_rep__0_i_1 
       (.I0(clear_addr_reg[6]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[6]),
        .O(\bram_wr_addr[6]_rep__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[6]_rep__1_i_1 
       (.I0(clear_addr_reg[6]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[6]),
        .O(\bram_wr_addr[6]_rep__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[6]_rep__2_i_1 
       (.I0(clear_addr_reg[6]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[6]),
        .O(\bram_wr_addr[6]_rep__2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[6]_rep_i_1 
       (.I0(clear_addr_reg[6]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[6]),
        .O(\bram_wr_addr[6]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[7]_rep__0_i_1 
       (.I0(clear_addr_reg[7]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[7]),
        .O(\bram_wr_addr[7]_rep__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[7]_rep__1_i_1 
       (.I0(clear_addr_reg[7]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[7]),
        .O(\bram_wr_addr[7]_rep__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[7]_rep__2_i_1 
       (.I0(clear_addr_reg[7]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[7]),
        .O(\bram_wr_addr[7]_rep__2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[7]_rep_i_1 
       (.I0(clear_addr_reg[7]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[7]),
        .O(\bram_wr_addr[7]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[8]_rep__0_i_1 
       (.I0(clear_addr_reg[8]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[8]),
        .O(\bram_wr_addr[8]_rep__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[8]_rep__1_i_1 
       (.I0(clear_addr_reg[8]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[8]),
        .O(\bram_wr_addr[8]_rep__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[8]_rep__2_i_1 
       (.I0(clear_addr_reg[8]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[8]),
        .O(\bram_wr_addr[8]_rep__2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[8]_rep_i_1 
       (.I0(clear_addr_reg[8]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[8]),
        .O(\bram_wr_addr[8]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[9]_rep__0_i_1 
       (.I0(clear_addr_reg[9]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[9]),
        .O(\bram_wr_addr[9]_rep__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[9]_rep__1_i_1 
       (.I0(clear_addr_reg[9]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[9]),
        .O(\bram_wr_addr[9]_rep__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[9]_rep__2_i_1 
       (.I0(clear_addr_reg[9]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[9]),
        .O(\bram_wr_addr[9]_rep__2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_wr_addr[9]_rep_i_1 
       (.I0(clear_addr_reg[9]),
        .I1(\state_reg[0]_1 ),
        .I2(wptr_latched[9]),
        .O(\bram_wr_addr[9]_rep_i_1_n_0 ));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[0]" *) 
  FDRE \bram_wr_addr_reg[0]_rep 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[0]_rep_i_2_n_0 ),
        .Q(\bram_wr_addr_reg[0]_rep_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[0]" *) 
  FDRE \bram_wr_addr_reg[0]_rep__0 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[0]_rep__0_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[0]_rep__0_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[0]" *) 
  FDRE \bram_wr_addr_reg[0]_rep__1 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[0]_rep__1_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[0]_rep__1_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[0]" *) 
  FDRE \bram_wr_addr_reg[0]_rep__2 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[0]_rep__2_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[0]_rep__2_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[10]" *) 
  FDRE \bram_wr_addr_reg[10]_rep 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[10]_rep_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[10]_rep_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[10]" *) 
  FDRE \bram_wr_addr_reg[10]_rep__0 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[10]_rep__0_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[10]_rep__0_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[10]" *) 
  FDRE \bram_wr_addr_reg[10]_rep__1 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[10]_rep__1_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[10]_rep__1_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[10]" *) 
  FDRE \bram_wr_addr_reg[10]_rep__2 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[10]_rep__2_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[10]_rep__2_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[11]" *) 
  FDRE \bram_wr_addr_reg[11]_rep 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[11]_rep_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[11]_rep_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[11]" *) 
  FDRE \bram_wr_addr_reg[11]_rep__0 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[11]_rep__0_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[11]_rep__0_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[11]" *) 
  FDRE \bram_wr_addr_reg[11]_rep__1 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[11]_rep__1_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[11]_rep__1_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[11]" *) 
  FDRE \bram_wr_addr_reg[11]_rep__2 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[11]_rep__2_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[11]_rep__2_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[12]" *) 
  FDRE \bram_wr_addr_reg[12]_rep 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[12]_rep_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[12]_rep_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[12]" *) 
  FDRE \bram_wr_addr_reg[12]_rep__0 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[12]_rep__0_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[12]_rep__0_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[12]" *) 
  FDRE \bram_wr_addr_reg[12]_rep__1 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[12]_rep__1_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[12]_rep__1_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[12]" *) 
  FDRE \bram_wr_addr_reg[12]_rep__2 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[12]_rep__2_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[12]_rep__2_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[13]" *) 
  FDRE \bram_wr_addr_reg[13]_rep 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[13]_rep_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[13]_rep_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[13]" *) 
  FDRE \bram_wr_addr_reg[13]_rep__0 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[13]_rep__0_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[13]_rep__0_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[13]" *) 
  FDRE \bram_wr_addr_reg[13]_rep__1 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[13]_rep__1_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[13]_rep__1_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[13]" *) 
  FDRE \bram_wr_addr_reg[13]_rep__2 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[13]_rep__2_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[13]_rep__2_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[14]" *) 
  FDRE \bram_wr_addr_reg[14]_rep 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[14]_rep_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[14]_rep_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[14]" *) 
  FDRE \bram_wr_addr_reg[14]_rep__0 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[14]_rep__0_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[14]_rep__0_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[14]" *) 
  FDRE \bram_wr_addr_reg[14]_rep__1 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[14]_rep__1_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[14]_rep__1_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[14]" *) 
  FDRE \bram_wr_addr_reg[14]_rep__2 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[14]_rep__2_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[14]_rep__2_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[1]" *) 
  FDRE \bram_wr_addr_reg[1]_rep 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[1]_rep_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[1]_rep_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[1]" *) 
  FDRE \bram_wr_addr_reg[1]_rep__0 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[1]_rep__0_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[1]_rep__0_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[1]" *) 
  FDRE \bram_wr_addr_reg[1]_rep__1 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[1]_rep__1_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[1]_rep__1_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[1]" *) 
  FDRE \bram_wr_addr_reg[1]_rep__2 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[1]_rep__2_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[1]_rep__2_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[2]" *) 
  FDRE \bram_wr_addr_reg[2]_rep 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[2]_rep_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[2]_rep_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[2]" *) 
  FDRE \bram_wr_addr_reg[2]_rep__0 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[2]_rep__0_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[2]_rep__0_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[2]" *) 
  FDRE \bram_wr_addr_reg[2]_rep__1 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[2]_rep__1_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[2]_rep__1_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[2]" *) 
  FDRE \bram_wr_addr_reg[2]_rep__2 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[2]_rep__2_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[2]_rep__2_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[3]" *) 
  FDRE \bram_wr_addr_reg[3]_rep 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[3]_rep_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[3]_rep_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[3]" *) 
  FDRE \bram_wr_addr_reg[3]_rep__0 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[3]_rep__0_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[3]_rep__0_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[3]" *) 
  FDRE \bram_wr_addr_reg[3]_rep__1 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[3]_rep__1_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[3]_rep__1_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[3]" *) 
  FDRE \bram_wr_addr_reg[3]_rep__2 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[3]_rep__2_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[3]_rep__2_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[4]" *) 
  FDRE \bram_wr_addr_reg[4]_rep 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[4]_rep_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[4]_rep_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[4]" *) 
  FDRE \bram_wr_addr_reg[4]_rep__0 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[4]_rep__0_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[4]_rep__0_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[4]" *) 
  FDRE \bram_wr_addr_reg[4]_rep__1 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[4]_rep__1_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[4]_rep__1_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[4]" *) 
  FDRE \bram_wr_addr_reg[4]_rep__2 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[4]_rep__2_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[4]_rep__2_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[5]" *) 
  FDRE \bram_wr_addr_reg[5]_rep 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[5]_rep_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[5]_rep_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[5]" *) 
  FDRE \bram_wr_addr_reg[5]_rep__0 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[5]_rep__0_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[5]_rep__0_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[5]" *) 
  FDRE \bram_wr_addr_reg[5]_rep__1 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[5]_rep__1_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[5]_rep__1_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[5]" *) 
  FDRE \bram_wr_addr_reg[5]_rep__2 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[5]_rep__2_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[5]_rep__2_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[6]" *) 
  FDRE \bram_wr_addr_reg[6]_rep 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[6]_rep_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[6]_rep_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[6]" *) 
  FDRE \bram_wr_addr_reg[6]_rep__0 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[6]_rep__0_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[6]_rep__0_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[6]" *) 
  FDRE \bram_wr_addr_reg[6]_rep__1 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[6]_rep__1_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[6]_rep__1_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[6]" *) 
  FDRE \bram_wr_addr_reg[6]_rep__2 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[6]_rep__2_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[6]_rep__2_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[7]" *) 
  FDRE \bram_wr_addr_reg[7]_rep 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[7]_rep_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[7]_rep_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[7]" *) 
  FDRE \bram_wr_addr_reg[7]_rep__0 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[7]_rep__0_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[7]_rep__0_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[7]" *) 
  FDRE \bram_wr_addr_reg[7]_rep__1 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[7]_rep__1_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[7]_rep__1_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[7]" *) 
  FDRE \bram_wr_addr_reg[7]_rep__2 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[7]_rep__2_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[7]_rep__2_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[8]" *) 
  FDRE \bram_wr_addr_reg[8]_rep 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[8]_rep_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[8]_rep_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[8]" *) 
  FDRE \bram_wr_addr_reg[8]_rep__0 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[8]_rep__0_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[8]_rep__0_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[8]" *) 
  FDRE \bram_wr_addr_reg[8]_rep__1 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[8]_rep__1_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[8]_rep__1_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[8]" *) 
  FDRE \bram_wr_addr_reg[8]_rep__2 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[8]_rep__2_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[8]_rep__2_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[9]" *) 
  FDRE \bram_wr_addr_reg[9]_rep 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[9]_rep_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[9]_rep_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[9]" *) 
  FDRE \bram_wr_addr_reg[9]_rep__0 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[9]_rep__0_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[9]_rep__0_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[9]" *) 
  FDRE \bram_wr_addr_reg[9]_rep__1 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[9]_rep__1_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[9]_rep__1_n_0 ),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_addr_reg[9]" *) 
  FDRE \bram_wr_addr_reg[9]_rep__2 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_addr[9]_rep__2_i_1_n_0 ),
        .Q(\bram_wr_addr_reg[9]_rep__2_n_0 ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[0]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [0]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[10]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [10]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[11]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [11]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[12]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [12]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[13]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [13]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[14]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [14]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[15]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [15]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[16]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [16]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[17]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [17]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[18]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [18]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[19]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [19]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[1]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [1]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[20]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [20]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[21]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [21]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[22]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [22]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[23]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [23]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[24]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [24]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[25]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [25]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[26]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [26]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[27]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [27]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[28]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [28]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[29]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [29]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[2]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [2]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[30]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [30]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[31]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [31]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[3]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [3]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[4]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [4]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[5]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [5]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[6]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [6]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[7]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [7]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[8]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [8]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram_wr_data[9]_i_1 
       (.I0(\bram_wr_data_reg[31]_0 [9]),
        .I1(\state_reg[0]_1 ),
        .O(\bram_wr_data[9]_i_1_n_0 ));
  FDRE \bram_wr_data_reg[0] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[0]_i_1_n_0 ),
        .Q(bram_wr_data[0]),
        .R(SR));
  FDRE \bram_wr_data_reg[10] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[10]_i_1_n_0 ),
        .Q(bram_wr_data[10]),
        .R(SR));
  FDRE \bram_wr_data_reg[11] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[11]_i_1_n_0 ),
        .Q(bram_wr_data[11]),
        .R(SR));
  FDRE \bram_wr_data_reg[12] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[12]_i_1_n_0 ),
        .Q(bram_wr_data[12]),
        .R(SR));
  FDRE \bram_wr_data_reg[13] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[13]_i_1_n_0 ),
        .Q(bram_wr_data[13]),
        .R(SR));
  FDRE \bram_wr_data_reg[14] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[14]_i_1_n_0 ),
        .Q(bram_wr_data[14]),
        .R(SR));
  FDRE \bram_wr_data_reg[15] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[15]_i_1_n_0 ),
        .Q(bram_wr_data[15]),
        .R(SR));
  FDRE \bram_wr_data_reg[16] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[16]_i_1_n_0 ),
        .Q(bram_wr_data[16]),
        .R(SR));
  FDRE \bram_wr_data_reg[17] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[17]_i_1_n_0 ),
        .Q(bram_wr_data[17]),
        .R(SR));
  FDRE \bram_wr_data_reg[18] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[18]_i_1_n_0 ),
        .Q(bram_wr_data[18]),
        .R(SR));
  FDRE \bram_wr_data_reg[19] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[19]_i_1_n_0 ),
        .Q(bram_wr_data[19]),
        .R(SR));
  FDRE \bram_wr_data_reg[1] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[1]_i_1_n_0 ),
        .Q(bram_wr_data[1]),
        .R(SR));
  FDRE \bram_wr_data_reg[20] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[20]_i_1_n_0 ),
        .Q(bram_wr_data[20]),
        .R(SR));
  FDRE \bram_wr_data_reg[21] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[21]_i_1_n_0 ),
        .Q(bram_wr_data[21]),
        .R(SR));
  FDRE \bram_wr_data_reg[22] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[22]_i_1_n_0 ),
        .Q(bram_wr_data[22]),
        .R(SR));
  FDRE \bram_wr_data_reg[23] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[23]_i_1_n_0 ),
        .Q(bram_wr_data[23]),
        .R(SR));
  FDRE \bram_wr_data_reg[24] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[24]_i_1_n_0 ),
        .Q(bram_wr_data[24]),
        .R(SR));
  FDRE \bram_wr_data_reg[25] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[25]_i_1_n_0 ),
        .Q(bram_wr_data[25]),
        .R(SR));
  FDRE \bram_wr_data_reg[26] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[26]_i_1_n_0 ),
        .Q(bram_wr_data[26]),
        .R(SR));
  FDRE \bram_wr_data_reg[27] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[27]_i_1_n_0 ),
        .Q(bram_wr_data[27]),
        .R(SR));
  FDRE \bram_wr_data_reg[28] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[28]_i_1_n_0 ),
        .Q(bram_wr_data[28]),
        .R(SR));
  FDRE \bram_wr_data_reg[29] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[29]_i_1_n_0 ),
        .Q(bram_wr_data[29]),
        .R(SR));
  FDRE \bram_wr_data_reg[2] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[2]_i_1_n_0 ),
        .Q(bram_wr_data[2]),
        .R(SR));
  FDRE \bram_wr_data_reg[30] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[30]_i_1_n_0 ),
        .Q(bram_wr_data[30]),
        .R(SR));
  FDRE \bram_wr_data_reg[31] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[31]_i_1_n_0 ),
        .Q(bram_wr_data[31]),
        .R(SR));
  FDRE \bram_wr_data_reg[3] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[3]_i_1_n_0 ),
        .Q(bram_wr_data[3]),
        .R(SR));
  FDRE \bram_wr_data_reg[4] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[4]_i_1_n_0 ),
        .Q(bram_wr_data[4]),
        .R(SR));
  FDRE \bram_wr_data_reg[5] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[5]_i_1_n_0 ),
        .Q(bram_wr_data[5]),
        .R(SR));
  FDRE \bram_wr_data_reg[6] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[6]_i_1_n_0 ),
        .Q(bram_wr_data[6]),
        .R(SR));
  FDRE \bram_wr_data_reg[7] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[7]_i_1_n_0 ),
        .Q(bram_wr_data[7]),
        .R(SR));
  FDRE \bram_wr_data_reg[8] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[8]_i_1_n_0 ),
        .Q(bram_wr_data[8]),
        .R(SR));
  FDRE \bram_wr_data_reg[9] 
       (.C(clk),
        .CE(\FSM_sequential_state_reg[1]_0 ),
        .D(\bram_wr_data[9]_i_1_n_0 ),
        .Q(bram_wr_data[9]),
        .R(SR));
  (* ORIG_CELL_NAME = "bram_wr_en_reg" *) 
  FDRE bram_wr_en_reg_rep
       (.C(clk),
        .CE(1'b1),
        .D(bram_wr_en_reg_rep_0),
        .Q(bram_wr_en_reg_rep_n_0),
        .R(1'b0));
  (* ORIG_CELL_NAME = "bram_wr_en_reg" *) 
  FDRE bram_wr_en_reg_rep__0
       (.C(clk),
        .CE(1'b1),
        .D(bram_wr_en_reg_rep__0_0),
        .Q(bram_wr_en_reg_rep__0_n_0),
        .R(1'b0));
  (* ORIG_CELL_NAME = "bram_wr_en_reg" *) 
  FDRE bram_wr_en_reg_rep__1
       (.C(clk),
        .CE(1'b1),
        .D(bram_wr_en_reg_rep__1_0),
        .Q(bram_wr_en_reg_rep__1_n_0),
        .R(1'b0));
  (* ORIG_CELL_NAME = "bram_wr_en_reg" *) 
  FDRE bram_wr_en_reg_rep__10
       (.C(clk),
        .CE(1'b1),
        .D(bram_wr_en_reg_rep__10_0),
        .Q(bram_wr_en_reg_rep__10_n_0),
        .R(1'b0));
  (* ORIG_CELL_NAME = "bram_wr_en_reg" *) 
  FDRE bram_wr_en_reg_rep__11
       (.C(clk),
        .CE(1'b1),
        .D(bram_wr_en_reg_rep__11_0),
        .Q(bram_wr_en_reg_rep__11_n_0),
        .R(1'b0));
  (* ORIG_CELL_NAME = "bram_wr_en_reg" *) 
  FDRE bram_wr_en_reg_rep__2
       (.C(clk),
        .CE(1'b1),
        .D(bram_wr_en_reg_rep__2_0),
        .Q(bram_wr_en_reg_rep__2_n_0),
        .R(1'b0));
  (* ORIG_CELL_NAME = "bram_wr_en_reg" *) 
  FDRE bram_wr_en_reg_rep__3
       (.C(clk),
        .CE(1'b1),
        .D(bram_wr_en_reg_rep__3_0),
        .Q(bram_wr_en_reg_rep__3_n_0),
        .R(1'b0));
  (* ORIG_CELL_NAME = "bram_wr_en_reg" *) 
  FDRE bram_wr_en_reg_rep__4
       (.C(clk),
        .CE(1'b1),
        .D(bram_wr_en_reg_rep__4_0),
        .Q(bram_wr_en_reg_rep__4_n_0),
        .R(1'b0));
  (* ORIG_CELL_NAME = "bram_wr_en_reg" *) 
  FDRE bram_wr_en_reg_rep__5
       (.C(clk),
        .CE(1'b1),
        .D(bram_wr_en_reg_rep__5_0),
        .Q(bram_wr_en_reg_rep__5_n_0),
        .R(1'b0));
  (* ORIG_CELL_NAME = "bram_wr_en_reg" *) 
  FDRE bram_wr_en_reg_rep__6
       (.C(clk),
        .CE(1'b1),
        .D(bram_wr_en_reg_rep__6_0),
        .Q(bram_wr_en_reg_rep__6_n_0),
        .R(1'b0));
  (* ORIG_CELL_NAME = "bram_wr_en_reg" *) 
  FDRE bram_wr_en_reg_rep__7
       (.C(clk),
        .CE(1'b1),
        .D(bram_wr_en_reg_rep__7_0),
        .Q(bram_wr_en_reg_rep__7_n_0),
        .R(1'b0));
  (* ORIG_CELL_NAME = "bram_wr_en_reg" *) 
  FDRE bram_wr_en_reg_rep__8
       (.C(clk),
        .CE(1'b1),
        .D(bram_wr_en_reg_rep__8_0),
        .Q(bram_wr_en_reg_rep__8_n_0),
        .R(1'b0));
  (* ORIG_CELL_NAME = "bram_wr_en_reg" *) 
  FDRE bram_wr_en_reg_rep__9
       (.C(clk),
        .CE(1'b1),
        .D(bram_wr_en_reg_rep__9_0),
        .Q(bram_wr_en_reg_rep__9_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h10FF)) 
    \clear_addr[0]_i_1 
       (.I0(\state_reg[0]_1 ),
        .I1(\state_reg[1]_0 ),
        .I2(\state_reg[1]_3 ),
        .I3(rst_n),
        .O(\state_reg[0]_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \clear_addr[0]_i_2 
       (.I0(\state_reg[1]_0 ),
        .I1(\state_reg[0]_1 ),
        .I2(\clear_addr[0]_i_4_n_0 ),
        .O(\clear_addr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFFFFFFFFFF)) 
    \clear_addr[0]_i_4 
       (.I0(\wptr_reg[14]_i_3_n_0 ),
        .I1(clear_addr_reg[11]),
        .I2(clear_addr_reg[10]),
        .I3(clear_addr_reg[7]),
        .I4(\wptr_reg[14]_i_5_n_0 ),
        .I5(\wptr_reg[14]_i_6_n_0 ),
        .O(\clear_addr[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clear_addr[0]_i_5 
       (.I0(clear_addr_reg[0]),
        .O(\clear_addr[0]_i_5_n_0 ));
  FDRE \clear_addr_reg[0] 
       (.C(clk),
        .CE(\clear_addr[0]_i_2_n_0 ),
        .D(\clear_addr_reg[0]_i_3_n_7 ),
        .Q(clear_addr_reg[0]),
        .R(\state_reg[0]_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clear_addr_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\clear_addr_reg[0]_i_3_n_0 ,\clear_addr_reg[0]_i_3_n_1 ,\clear_addr_reg[0]_i_3_n_2 ,\clear_addr_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clear_addr_reg[0]_i_3_n_4 ,\clear_addr_reg[0]_i_3_n_5 ,\clear_addr_reg[0]_i_3_n_6 ,\clear_addr_reg[0]_i_3_n_7 }),
        .S({clear_addr_reg[3:1],\clear_addr[0]_i_5_n_0 }));
  FDRE \clear_addr_reg[10] 
       (.C(clk),
        .CE(\clear_addr[0]_i_2_n_0 ),
        .D(\clear_addr_reg[8]_i_1_n_5 ),
        .Q(clear_addr_reg[10]),
        .R(\state_reg[0]_0 ));
  FDRE \clear_addr_reg[11] 
       (.C(clk),
        .CE(\clear_addr[0]_i_2_n_0 ),
        .D(\clear_addr_reg[8]_i_1_n_4 ),
        .Q(clear_addr_reg[11]),
        .R(\state_reg[0]_0 ));
  FDRE \clear_addr_reg[12] 
       (.C(clk),
        .CE(\clear_addr[0]_i_2_n_0 ),
        .D(\clear_addr_reg[12]_i_1_n_7 ),
        .Q(clear_addr_reg[12]),
        .R(\state_reg[0]_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clear_addr_reg[12]_i_1 
       (.CI(\clear_addr_reg[8]_i_1_n_0 ),
        .CO({\NLW_clear_addr_reg[12]_i_1_CO_UNCONNECTED [3:2],\clear_addr_reg[12]_i_1_n_2 ,\clear_addr_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_clear_addr_reg[12]_i_1_O_UNCONNECTED [3],\clear_addr_reg[12]_i_1_n_5 ,\clear_addr_reg[12]_i_1_n_6 ,\clear_addr_reg[12]_i_1_n_7 }),
        .S({1'b0,clear_addr_reg[14:12]}));
  FDRE \clear_addr_reg[13] 
       (.C(clk),
        .CE(\clear_addr[0]_i_2_n_0 ),
        .D(\clear_addr_reg[12]_i_1_n_6 ),
        .Q(clear_addr_reg[13]),
        .R(\state_reg[0]_0 ));
  FDRE \clear_addr_reg[14] 
       (.C(clk),
        .CE(\clear_addr[0]_i_2_n_0 ),
        .D(\clear_addr_reg[12]_i_1_n_5 ),
        .Q(clear_addr_reg[14]),
        .R(\state_reg[0]_0 ));
  FDRE \clear_addr_reg[1] 
       (.C(clk),
        .CE(\clear_addr[0]_i_2_n_0 ),
        .D(\clear_addr_reg[0]_i_3_n_6 ),
        .Q(clear_addr_reg[1]),
        .R(\state_reg[0]_0 ));
  FDRE \clear_addr_reg[2] 
       (.C(clk),
        .CE(\clear_addr[0]_i_2_n_0 ),
        .D(\clear_addr_reg[0]_i_3_n_5 ),
        .Q(clear_addr_reg[2]),
        .R(\state_reg[0]_0 ));
  FDRE \clear_addr_reg[3] 
       (.C(clk),
        .CE(\clear_addr[0]_i_2_n_0 ),
        .D(\clear_addr_reg[0]_i_3_n_4 ),
        .Q(clear_addr_reg[3]),
        .R(\state_reg[0]_0 ));
  FDRE \clear_addr_reg[4] 
       (.C(clk),
        .CE(\clear_addr[0]_i_2_n_0 ),
        .D(\clear_addr_reg[4]_i_1_n_7 ),
        .Q(clear_addr_reg[4]),
        .R(\state_reg[0]_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clear_addr_reg[4]_i_1 
       (.CI(\clear_addr_reg[0]_i_3_n_0 ),
        .CO({\clear_addr_reg[4]_i_1_n_0 ,\clear_addr_reg[4]_i_1_n_1 ,\clear_addr_reg[4]_i_1_n_2 ,\clear_addr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clear_addr_reg[4]_i_1_n_4 ,\clear_addr_reg[4]_i_1_n_5 ,\clear_addr_reg[4]_i_1_n_6 ,\clear_addr_reg[4]_i_1_n_7 }),
        .S(clear_addr_reg[7:4]));
  FDRE \clear_addr_reg[5] 
       (.C(clk),
        .CE(\clear_addr[0]_i_2_n_0 ),
        .D(\clear_addr_reg[4]_i_1_n_6 ),
        .Q(clear_addr_reg[5]),
        .R(\state_reg[0]_0 ));
  FDRE \clear_addr_reg[6] 
       (.C(clk),
        .CE(\clear_addr[0]_i_2_n_0 ),
        .D(\clear_addr_reg[4]_i_1_n_5 ),
        .Q(clear_addr_reg[6]),
        .R(\state_reg[0]_0 ));
  FDRE \clear_addr_reg[7] 
       (.C(clk),
        .CE(\clear_addr[0]_i_2_n_0 ),
        .D(\clear_addr_reg[4]_i_1_n_4 ),
        .Q(clear_addr_reg[7]),
        .R(\state_reg[0]_0 ));
  FDRE \clear_addr_reg[8] 
       (.C(clk),
        .CE(\clear_addr[0]_i_2_n_0 ),
        .D(\clear_addr_reg[8]_i_1_n_7 ),
        .Q(clear_addr_reg[8]),
        .R(\state_reg[0]_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clear_addr_reg[8]_i_1 
       (.CI(\clear_addr_reg[4]_i_1_n_0 ),
        .CO({\clear_addr_reg[8]_i_1_n_0 ,\clear_addr_reg[8]_i_1_n_1 ,\clear_addr_reg[8]_i_1_n_2 ,\clear_addr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clear_addr_reg[8]_i_1_n_4 ,\clear_addr_reg[8]_i_1_n_5 ,\clear_addr_reg[8]_i_1_n_6 ,\clear_addr_reg[8]_i_1_n_7 }),
        .S(clear_addr_reg[11:8]));
  FDRE \clear_addr_reg[9] 
       (.C(clk),
        .CE(\clear_addr[0]_i_2_n_0 ),
        .D(\clear_addr_reg[8]_i_1_n_6 ),
        .Q(clear_addr_reg[9]),
        .R(\state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    clear_req_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(out_buf_valid_reg_1),
        .I4(\reg_ctrl_reg[0] ),
        .I5(enable_d),
        .O(clear_req0));
  FDRE d_reg_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(d_reg_valid_reg_2),
        .Q(d_reg_valid_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \fb_term_r[31]_i_1 
       (.I0(\reg_ctrl_reg[0] ),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .O(\FSM_sequential_state_reg[2]_1 ));
  FDRE frac_start_reg
       (.C(clk),
        .CE(1'b1),
        .D(frac_start_reg_0),
        .Q(frac_start),
        .R(1'b0));
  design_1_fx_system_wrapper_0_1_delay_frac_read frac_u
       (.ADDRBWRADDR({frac_u_n_19,frac_u_n_20,frac_u_n_21,frac_u_n_22,frac_u_n_23,frac_u_n_24,frac_u_n_25,frac_u_n_26,frac_u_n_27,frac_u_n_28,frac_u_n_29,frac_u_n_30,frac_u_n_31,frac_u_n_32,frac_u_n_33}),
        .D(rd_data),
        .E(fx_enable_0),
        .\FSM_sequential_state_reg[0]_0 (\FSM_sequential_state_reg[0] ),
        .\FSM_sequential_state_reg[0]_1 (d_reg_valid_reg_0),
        .\FSM_sequential_state_reg[1]_0 (\FSM_sequential_state_reg[1] ),
        .\FSM_sequential_state_reg[2]_0 (\FSM_sequential_state_reg[2] ),
        .\FSM_sequential_state_reg[2]_1 (E),
        .\FSM_sequential_state_reg[2]_2 (\FSM_sequential_state_reg[2]_2 ),
        .\FSM_sequential_state_reg[2]_3 (\FSM_sequential_state_reg[2]_3 ),
        .\FSM_sequential_state_reg[2]_4 (\FSM_sequential_state_reg[2]_4 ),
        .\FSM_sequential_state_reg[2]_5 (\FSM_sequential_state[2]_i_2_n_0 ),
        .\FSM_sequential_state_reg[2]_6 (\FSM_sequential_state_reg[2]_5 ),
        .\FSM_sequential_state_reg[2]_7 (\FSM_sequential_state[2]_i_5_n_0 ),
        .P(P),
        .Q(Q[15:0]),
        .S({bram_u_n_1,bram_u_n_2,bram_u_n_3,bram_u_n_4}),
        .bram_rd_valid(bram_rd_valid),
        .clk(clk),
        .\d_out_reg[31]_0 (\d_out_reg[31] ),
        .frac_d_valid(frac_d_valid),
        .frac_start(frac_start),
        .fx_enable(fx_enable),
        .mono_valid(mono_valid),
        .out_buf_valid_reg(out_buf_valid_reg),
        .out_buf_valid_reg_0(out_buf_valid_reg_0),
        .out_buf_valid_reg_1(\reg_ctrl_reg[0] ),
        .out_buf_valid_reg_2(out_buf_valid_reg_1),
        .out_buf_valid_reg_3(\FSM_sequential_state_reg[0]_0 ),
        .out_buf_valid_reg_4(out_buf_valid_i_2_n_0),
        .rd_addr({frac_u_n_64,frac_u_n_65,frac_u_n_66,frac_u_n_67,frac_u_n_68,frac_u_n_69,frac_u_n_70,frac_u_n_71,frac_u_n_72,frac_u_n_73,frac_u_n_74,frac_u_n_75,frac_u_n_76,frac_u_n_77,frac_u_n_78}),
        .\rd_addr_reg[14]_rep__0_0 ({frac_u_n_34,frac_u_n_35,frac_u_n_36,frac_u_n_37,frac_u_n_38,frac_u_n_39,frac_u_n_40,frac_u_n_41,frac_u_n_42,frac_u_n_43,frac_u_n_44,frac_u_n_45,frac_u_n_46,frac_u_n_47,frac_u_n_48}),
        .\rd_addr_reg[14]_rep__1_0 ({frac_u_n_49,frac_u_n_50,frac_u_n_51,frac_u_n_52,frac_u_n_53,frac_u_n_54,frac_u_n_55,frac_u_n_56,frac_u_n_57,frac_u_n_58,frac_u_n_59,frac_u_n_60,frac_u_n_61,frac_u_n_62,frac_u_n_63}),
        .rd_en_reg_0(rd_en_reg),
        .rd_en_reg_1(rd_en_reg_0),
        .rd_en_reg_rep_0(frac_u_n_6),
        .rd_en_reg_rep_1(rd_en_reg_rep),
        .\rptr0_reg_reg[14]_0 (wptr_latched),
        .\rptr0_reg_reg[14]_1 (D_reg),
        .rst_n(rst_n),
        .rst_n_0(SR),
        .\s0_reg_reg[31]_0 ({p_1_in,s0_reg}),
        .state(state),
        .\state_reg[0] (\state_reg[0]_2 ),
        .\state_reg[1] (\state_reg[1]_1 ),
        .\state_reg[1]_0 (\state_reg[1]_2 ),
        .term_r0_0({bram_u_n_37,bram_u_n_38,bram_u_n_39,bram_u_n_40}),
        .term_r0_1({bram_u_n_41,bram_u_n_42,bram_u_n_43,bram_u_n_44}),
        .term_r0_2({bram_u_n_45,bram_u_n_46,bram_u_n_47,bram_u_n_48}),
        .term_r0__0_0(\state_reg[1]_3 ),
        .term_r0__0_1({bram_u_n_49,bram_u_n_50,bram_u_n_51,bram_u_n_52}),
        .term_r0__0_2({bram_u_n_53,bram_u_n_54,bram_u_n_55,bram_u_n_56}),
        .term_r0__0_3({bram_u_n_57,bram_u_n_58,bram_u_n_59,bram_u_n_60}),
        .term_r0__0_4({bram_u_n_61,bram_u_n_62,bram_u_n_63,bram_u_n_64}),
        .\term_r_reg[0]_0 (\term_r_reg[0] ),
        .\term_r_reg[0]_1 (\term_r_reg[0]_0 ),
        .v1(\state_reg[1]_0 ),
        .v1_0(\state_reg[0]_1 ),
        .\x_reg_reg[6] (\x_reg_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h223AAAAA)) 
    out_buf_valid_i_2
       (.I0(inflight0),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\reg_ctrl_reg[0] ),
        .O(out_buf_valid_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    s_axis_tready_INST_0_i_3
       (.I0(\x_reg_reg[6] ),
        .I1(fx_enable),
        .I2(\state_reg[1]_0 ),
        .I3(\state_reg[0]_1 ),
        .O(\reg_ctrl_reg[0] ));
  LUT6 #(
    .INIT(64'h050004FF050004FA)) 
    \state[0]_i_1 
       (.I0(wptr_reg_0),
        .I1(\FSM_sequential_state_reg[2]_0 ),
        .I2(fx_enable_0),
        .I3(\state_reg[0]_1 ),
        .I4(\state_reg[1]_0 ),
        .I5(\state_reg[1]_3 ),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0505FBFF0505FB00)) 
    \state[1]_i_1 
       (.I0(wptr_reg_0),
        .I1(\FSM_sequential_state_reg[2]_0 ),
        .I2(fx_enable_0),
        .I3(\state_reg[0]_1 ),
        .I4(\state_reg[1]_0 ),
        .I5(\state_reg[1]_3 ),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \state[1]_i_2 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(d_reg_valid_reg_0),
        .O(\FSM_sequential_state_reg[2]_0 ));
  FDRE \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg[0]_1 ),
        .R(SR));
  FDRE \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg[1]_0 ),
        .R(SR));
  LUT5 #(
    .INIT(32'h00080000)) 
    v1_i_2
       (.I0(\reg_ctrl_reg[0] ),
        .I1(d_reg_valid_reg_0),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(d_reg_valid_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \w_in[31]_i_1 
       (.I0(\reg_ctrl_reg[0] ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .O(\FSM_sequential_state_reg[0]_0 ));
  FDRE \wptr_latched_reg[0] 
       (.C(clk),
        .CE(fx_enable_0),
        .D(wptr_reg[0]),
        .Q(wptr_latched[0]),
        .R(SR));
  FDRE \wptr_latched_reg[10] 
       (.C(clk),
        .CE(fx_enable_0),
        .D(wptr_reg[10]),
        .Q(wptr_latched[10]),
        .R(SR));
  FDRE \wptr_latched_reg[11] 
       (.C(clk),
        .CE(fx_enable_0),
        .D(wptr_reg[11]),
        .Q(wptr_latched[11]),
        .R(SR));
  FDRE \wptr_latched_reg[12] 
       (.C(clk),
        .CE(fx_enable_0),
        .D(wptr_reg[12]),
        .Q(wptr_latched[12]),
        .R(SR));
  FDRE \wptr_latched_reg[13] 
       (.C(clk),
        .CE(fx_enable_0),
        .D(wptr_reg[13]),
        .Q(wptr_latched[13]),
        .R(SR));
  FDRE \wptr_latched_reg[14] 
       (.C(clk),
        .CE(fx_enable_0),
        .D(wptr_reg[14]),
        .Q(wptr_latched[14]),
        .R(SR));
  FDRE \wptr_latched_reg[1] 
       (.C(clk),
        .CE(fx_enable_0),
        .D(wptr_reg[1]),
        .Q(wptr_latched[1]),
        .R(SR));
  FDRE \wptr_latched_reg[2] 
       (.C(clk),
        .CE(fx_enable_0),
        .D(wptr_reg[2]),
        .Q(wptr_latched[2]),
        .R(SR));
  FDRE \wptr_latched_reg[3] 
       (.C(clk),
        .CE(fx_enable_0),
        .D(wptr_reg[3]),
        .Q(wptr_latched[3]),
        .R(SR));
  FDRE \wptr_latched_reg[4] 
       (.C(clk),
        .CE(fx_enable_0),
        .D(wptr_reg[4]),
        .Q(wptr_latched[4]),
        .R(SR));
  FDRE \wptr_latched_reg[5] 
       (.C(clk),
        .CE(fx_enable_0),
        .D(wptr_reg[5]),
        .Q(wptr_latched[5]),
        .R(SR));
  FDRE \wptr_latched_reg[6] 
       (.C(clk),
        .CE(fx_enable_0),
        .D(wptr_reg[6]),
        .Q(wptr_latched[6]),
        .R(SR));
  FDRE \wptr_latched_reg[7] 
       (.C(clk),
        .CE(fx_enable_0),
        .D(wptr_reg[7]),
        .Q(wptr_latched[7]),
        .R(SR));
  FDRE \wptr_latched_reg[8] 
       (.C(clk),
        .CE(fx_enable_0),
        .D(wptr_reg[8]),
        .Q(wptr_latched[8]),
        .R(SR));
  FDRE \wptr_latched_reg[9] 
       (.C(clk),
        .CE(fx_enable_0),
        .D(wptr_reg[9]),
        .Q(wptr_latched[9]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wptr_reg0_carry
       (.CI(1'b0),
        .CO({wptr_reg0_carry_n_0,wptr_reg0_carry_n_1,wptr_reg0_carry_n_2,wptr_reg0_carry_n_3}),
        .CYINIT(wptr_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(wptr_reg0[4:1]),
        .S(wptr_reg[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wptr_reg0_carry__0
       (.CI(wptr_reg0_carry_n_0),
        .CO({wptr_reg0_carry__0_n_0,wptr_reg0_carry__0_n_1,wptr_reg0_carry__0_n_2,wptr_reg0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(wptr_reg0[8:5]),
        .S(wptr_reg[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wptr_reg0_carry__1
       (.CI(wptr_reg0_carry__0_n_0),
        .CO({wptr_reg0_carry__1_n_0,wptr_reg0_carry__1_n_1,wptr_reg0_carry__1_n_2,wptr_reg0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(wptr_reg0[12:9]),
        .S(wptr_reg[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wptr_reg0_carry__2
       (.CI(wptr_reg0_carry__1_n_0),
        .CO({NLW_wptr_reg0_carry__2_CO_UNCONNECTED[3:1],wptr_reg0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_wptr_reg0_carry__2_O_UNCONNECTED[3:2],wptr_reg0[14:13]}),
        .S({1'b0,1'b0,wptr_reg[14:13]}));
  LUT2 #(
    .INIT(4'h1)) 
    \wptr_reg[0]_i_1 
       (.I0(\state_reg[0]_1 ),
        .I1(wptr_reg[0]),
        .O(\wptr_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wptr_reg[10]_i_1 
       (.I0(wptr_reg0[10]),
        .I1(\state_reg[0]_1 ),
        .O(\wptr_reg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wptr_reg[11]_i_1 
       (.I0(wptr_reg0[11]),
        .I1(\state_reg[0]_1 ),
        .O(\wptr_reg[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wptr_reg[12]_i_1 
       (.I0(wptr_reg0[12]),
        .I1(\state_reg[0]_1 ),
        .O(\wptr_reg[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wptr_reg[13]_i_1 
       (.I0(wptr_reg0[13]),
        .I1(\state_reg[0]_1 ),
        .O(\wptr_reg[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000100FFFF)) 
    \wptr_reg[14]_i_1 
       (.I0(\wptr_reg[14]_i_3_n_0 ),
        .I1(\wptr_reg[14]_i_4_n_0 ),
        .I2(\wptr_reg[14]_i_5_n_0 ),
        .I3(\wptr_reg[14]_i_6_n_0 ),
        .I4(\state_reg[0]_1 ),
        .I5(\wptr_reg[14]_i_7_n_0 ),
        .O(wptr_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wptr_reg[14]_i_2 
       (.I0(wptr_reg0[14]),
        .I1(\state_reg[0]_1 ),
        .O(\wptr_reg[14]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \wptr_reg[14]_i_3 
       (.I0(clear_addr_reg[6]),
        .I1(clear_addr_reg[0]),
        .I2(clear_addr_reg[9]),
        .I3(clear_addr_reg[2]),
        .O(\wptr_reg[14]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \wptr_reg[14]_i_4 
       (.I0(clear_addr_reg[11]),
        .I1(clear_addr_reg[10]),
        .I2(clear_addr_reg[7]),
        .O(\wptr_reg[14]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \wptr_reg[14]_i_5 
       (.I0(clear_addr_reg[4]),
        .I1(clear_addr_reg[1]),
        .I2(clear_addr_reg[14]),
        .I3(clear_addr_reg[12]),
        .O(\wptr_reg[14]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \wptr_reg[14]_i_6 
       (.I0(clear_addr_reg[5]),
        .I1(clear_addr_reg[3]),
        .I2(clear_addr_reg[13]),
        .I3(clear_addr_reg[8]),
        .O(\wptr_reg[14]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h77777737)) 
    \wptr_reg[14]_i_7 
       (.I0(\state_reg[0]_1 ),
        .I1(\state_reg[1]_0 ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\wptr_reg[14]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wptr_reg[1]_i_1 
       (.I0(wptr_reg0[1]),
        .I1(\state_reg[0]_1 ),
        .O(\wptr_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wptr_reg[2]_i_1 
       (.I0(wptr_reg0[2]),
        .I1(\state_reg[0]_1 ),
        .O(\wptr_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wptr_reg[3]_i_1 
       (.I0(wptr_reg0[3]),
        .I1(\state_reg[0]_1 ),
        .O(\wptr_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wptr_reg[4]_i_1 
       (.I0(wptr_reg0[4]),
        .I1(\state_reg[0]_1 ),
        .O(\wptr_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wptr_reg[5]_i_1 
       (.I0(wptr_reg0[5]),
        .I1(\state_reg[0]_1 ),
        .O(\wptr_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wptr_reg[6]_i_1 
       (.I0(wptr_reg0[6]),
        .I1(\state_reg[0]_1 ),
        .O(\wptr_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wptr_reg[7]_i_1 
       (.I0(wptr_reg0[7]),
        .I1(\state_reg[0]_1 ),
        .O(\wptr_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wptr_reg[8]_i_1 
       (.I0(wptr_reg0[8]),
        .I1(\state_reg[0]_1 ),
        .O(\wptr_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wptr_reg[9]_i_1 
       (.I0(wptr_reg0[9]),
        .I1(\state_reg[0]_1 ),
        .O(\wptr_reg[9]_i_1_n_0 ));
  FDRE \wptr_reg_reg[0] 
       (.C(clk),
        .CE(wptr_reg_0),
        .D(\wptr_reg[0]_i_1_n_0 ),
        .Q(wptr_reg[0]),
        .R(SR));
  FDRE \wptr_reg_reg[10] 
       (.C(clk),
        .CE(wptr_reg_0),
        .D(\wptr_reg[10]_i_1_n_0 ),
        .Q(wptr_reg[10]),
        .R(SR));
  FDRE \wptr_reg_reg[11] 
       (.C(clk),
        .CE(wptr_reg_0),
        .D(\wptr_reg[11]_i_1_n_0 ),
        .Q(wptr_reg[11]),
        .R(SR));
  FDRE \wptr_reg_reg[12] 
       (.C(clk),
        .CE(wptr_reg_0),
        .D(\wptr_reg[12]_i_1_n_0 ),
        .Q(wptr_reg[12]),
        .R(SR));
  FDRE \wptr_reg_reg[13] 
       (.C(clk),
        .CE(wptr_reg_0),
        .D(\wptr_reg[13]_i_1_n_0 ),
        .Q(wptr_reg[13]),
        .R(SR));
  FDRE \wptr_reg_reg[14] 
       (.C(clk),
        .CE(wptr_reg_0),
        .D(\wptr_reg[14]_i_2_n_0 ),
        .Q(wptr_reg[14]),
        .R(SR));
  FDRE \wptr_reg_reg[1] 
       (.C(clk),
        .CE(wptr_reg_0),
        .D(\wptr_reg[1]_i_1_n_0 ),
        .Q(wptr_reg[1]),
        .R(SR));
  FDRE \wptr_reg_reg[2] 
       (.C(clk),
        .CE(wptr_reg_0),
        .D(\wptr_reg[2]_i_1_n_0 ),
        .Q(wptr_reg[2]),
        .R(SR));
  FDRE \wptr_reg_reg[3] 
       (.C(clk),
        .CE(wptr_reg_0),
        .D(\wptr_reg[3]_i_1_n_0 ),
        .Q(wptr_reg[3]),
        .R(SR));
  FDRE \wptr_reg_reg[4] 
       (.C(clk),
        .CE(wptr_reg_0),
        .D(\wptr_reg[4]_i_1_n_0 ),
        .Q(wptr_reg[4]),
        .R(SR));
  FDRE \wptr_reg_reg[5] 
       (.C(clk),
        .CE(wptr_reg_0),
        .D(\wptr_reg[5]_i_1_n_0 ),
        .Q(wptr_reg[5]),
        .R(SR));
  FDRE \wptr_reg_reg[6] 
       (.C(clk),
        .CE(wptr_reg_0),
        .D(\wptr_reg[6]_i_1_n_0 ),
        .Q(wptr_reg[6]),
        .R(SR));
  FDRE \wptr_reg_reg[7] 
       (.C(clk),
        .CE(wptr_reg_0),
        .D(\wptr_reg[7]_i_1_n_0 ),
        .Q(wptr_reg[7]),
        .R(SR));
  FDRE \wptr_reg_reg[8] 
       (.C(clk),
        .CE(wptr_reg_0),
        .D(\wptr_reg[8]_i_1_n_0 ),
        .Q(wptr_reg[8]),
        .R(SR));
  FDRE \wptr_reg_reg[9] 
       (.C(clk),
        .CE(wptr_reg_0),
        .D(\wptr_reg[9]_i_1_n_0 ),
        .Q(wptr_reg[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "fx_axis_mono_adapter" *) 
module design_1_fx_system_wrapper_0_1_fx_axis_mono_adapter
   (mono_valid,
    \in_state_reg[0]_0 ,
    inflight_reg_0,
    m_axis_tdata,
    inflight0,
    m_axis_tvalid,
    \in_data_reg[31]_0 ,
    p_0_in,
    clk,
    \in_state_reg[0]_1 ,
    s_axis_tready,
    s_axis_tready_0,
    s_axis_tready_1,
    s_axis_tvalid,
    rst_n,
    m_axis_tready,
    ret_valid,
    s_axis_tid,
    Q,
    s_axis_tdata);
  output mono_valid;
  output \in_state_reg[0]_0 ;
  output inflight_reg_0;
  output [25:0]m_axis_tdata;
  output inflight0;
  output m_axis_tvalid;
  output [23:0]\in_data_reg[31]_0 ;
  input p_0_in;
  input clk;
  input \in_state_reg[0]_1 ;
  input s_axis_tready;
  input s_axis_tready_0;
  input s_axis_tready_1;
  input s_axis_tvalid;
  input rst_n;
  input m_axis_tready;
  input ret_valid;
  input [2:0]s_axis_tid;
  input [25:0]Q;
  input [23:0]s_axis_tdata;

  wire \FSM_onehot_out_state[0]_i_1_n_0 ;
  wire \FSM_onehot_out_state[1]_i_1_n_0 ;
  wire \FSM_onehot_out_state[2]_i_1_n_0 ;
  wire \FSM_onehot_out_state_reg_n_0_[0] ;
  wire \FSM_onehot_out_state_reg_n_0_[2] ;
  wire [25:0]Q;
  wire audio_out_241;
  wire audio_out_2410_in;
  wire audio_out_241_carry_i_1_n_0;
  wire audio_out_241_carry_i_2_n_0;
  wire audio_out_241_carry_i_3_n_0;
  wire audio_out_241_carry_i_4_n_0;
  wire audio_out_241_carry_i_5_n_0;
  wire audio_out_241_carry_i_6_n_0;
  wire audio_out_241_carry_n_0;
  wire audio_out_241_carry_n_1;
  wire audio_out_241_carry_n_2;
  wire audio_out_241_carry_n_3;
  wire \audio_out_241_inferred__0/i__carry_n_0 ;
  wire \audio_out_241_inferred__0/i__carry_n_1 ;
  wire \audio_out_241_inferred__0/i__carry_n_2 ;
  wire \audio_out_241_inferred__0/i__carry_n_3 ;
  wire clk;
  wire i__carry__0_i_1_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire [23:0]\in_data_reg[31]_0 ;
  wire \in_state_reg[0]_0 ;
  wire \in_state_reg[0]_1 ;
  wire in_valid_i_1_n_0;
  wire inflight0;
  wire inflight_i_1_n_0;
  wire inflight_i_2_n_0;
  wire inflight_reg_0;
  wire inflight_reg_n_0;
  wire [25:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire mono_valid;
  wire p_0_in;
  wire p_0_in0;
  wire ret_valid;
  wire rst_n;
  wire [23:0]s_axis_tdata;
  wire [2:0]s_axis_tid;
  wire s_axis_tready;
  wire s_axis_tready_0;
  wire s_axis_tready_1;
  wire s_axis_tready_INST_0_i_1_n_0;
  wire s_axis_tvalid;
  wire \y_buf_reg_n_0_[10] ;
  wire \y_buf_reg_n_0_[11] ;
  wire \y_buf_reg_n_0_[12] ;
  wire \y_buf_reg_n_0_[13] ;
  wire \y_buf_reg_n_0_[14] ;
  wire \y_buf_reg_n_0_[15] ;
  wire \y_buf_reg_n_0_[16] ;
  wire \y_buf_reg_n_0_[17] ;
  wire \y_buf_reg_n_0_[18] ;
  wire \y_buf_reg_n_0_[19] ;
  wire \y_buf_reg_n_0_[20] ;
  wire \y_buf_reg_n_0_[21] ;
  wire \y_buf_reg_n_0_[22] ;
  wire \y_buf_reg_n_0_[23] ;
  wire \y_buf_reg_n_0_[24] ;
  wire \y_buf_reg_n_0_[25] ;
  wire \y_buf_reg_n_0_[26] ;
  wire \y_buf_reg_n_0_[27] ;
  wire \y_buf_reg_n_0_[28] ;
  wire \y_buf_reg_n_0_[29] ;
  wire \y_buf_reg_n_0_[30] ;
  wire \y_buf_reg_n_0_[6] ;
  wire \y_buf_reg_n_0_[7] ;
  wire \y_buf_reg_n_0_[8] ;
  wire \y_buf_reg_n_0_[9] ;
  wire y_buf_valid;
  wire y_buf_valid_i_1_n_0;
  wire [3:0]NLW_audio_out_241_carry_O_UNCONNECTED;
  wire [3:1]NLW_audio_out_241_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_audio_out_241_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_audio_out_241_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:1]\NLW_audio_out_241_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_audio_out_241_inferred__0/i__carry__0_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFC44)) 
    \FSM_onehot_out_state[0]_i_1 
       (.I0(y_buf_valid),
        .I1(\FSM_onehot_out_state_reg_n_0_[0] ),
        .I2(m_axis_tready),
        .I3(m_axis_tdata[1]),
        .O(\FSM_onehot_out_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFF47B800)) 
    \FSM_onehot_out_state[1]_i_1 
       (.I0(y_buf_valid),
        .I1(\FSM_onehot_out_state_reg_n_0_[0] ),
        .I2(m_axis_tready),
        .I3(\FSM_onehot_out_state_reg_n_0_[2] ),
        .I4(m_axis_tdata[1]),
        .O(\FSM_onehot_out_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hCF88)) 
    \FSM_onehot_out_state[2]_i_1 
       (.I0(y_buf_valid),
        .I1(\FSM_onehot_out_state_reg_n_0_[0] ),
        .I2(m_axis_tready),
        .I3(\FSM_onehot_out_state_reg_n_0_[2] ),
        .O(\FSM_onehot_out_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "OUT_IDLE:001,OUT_SEND_L:100,OUT_SEND_R:010," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_out_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_out_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_out_state_reg_n_0_[0] ),
        .S(p_0_in));
  (* FSM_ENCODED_STATES = "OUT_IDLE:001,OUT_SEND_L:100,OUT_SEND_R:010," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_out_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_out_state[1]_i_1_n_0 ),
        .Q(m_axis_tdata[1]),
        .R(p_0_in));
  (* FSM_ENCODED_STATES = "OUT_IDLE:001,OUT_SEND_L:100,OUT_SEND_R:010," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_out_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_out_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_out_state_reg_n_0_[2] ),
        .R(p_0_in));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 audio_out_241_carry
       (.CI(1'b0),
        .CO({audio_out_241_carry_n_0,audio_out_241_carry_n_1,audio_out_241_carry_n_2,audio_out_241_carry_n_3}),
        .CYINIT(1'b0),
        .DI({audio_out_241_carry_i_1_n_0,audio_out_241_carry_i_2_n_0,audio_out_241_carry_i_3_n_0,audio_out_241_carry_i_4_n_0}),
        .O(NLW_audio_out_241_carry_O_UNCONNECTED[3:0]),
        .S({p_0_in0,p_0_in0,audio_out_241_carry_i_5_n_0,audio_out_241_carry_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 audio_out_241_carry__0
       (.CI(audio_out_241_carry_n_0),
        .CO({NLW_audio_out_241_carry__0_CO_UNCONNECTED[3:1],audio_out_241}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_audio_out_241_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,p_0_in0}));
  LUT1 #(
    .INIT(2'h1)) 
    audio_out_241_carry_i_1
       (.I0(p_0_in0),
        .O(audio_out_241_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    audio_out_241_carry_i_2
       (.I0(p_0_in0),
        .O(audio_out_241_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    audio_out_241_carry_i_3
       (.I0(\y_buf_reg_n_0_[30] ),
        .I1(p_0_in0),
        .O(audio_out_241_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    audio_out_241_carry_i_4
       (.I0(\y_buf_reg_n_0_[29] ),
        .O(audio_out_241_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    audio_out_241_carry_i_5
       (.I0(p_0_in0),
        .I1(\y_buf_reg_n_0_[30] ),
        .O(audio_out_241_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    audio_out_241_carry_i_6
       (.I0(\y_buf_reg_n_0_[29] ),
        .I1(\y_buf_reg_n_0_[28] ),
        .O(audio_out_241_carry_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \audio_out_241_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\audio_out_241_inferred__0/i__carry_n_0 ,\audio_out_241_inferred__0/i__carry_n_1 ,\audio_out_241_inferred__0/i__carry_n_2 ,\audio_out_241_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({p_0_in0,p_0_in0,i__carry_i_1_n_0,\y_buf_reg_n_0_[29] }),
        .O(\NLW_audio_out_241_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \audio_out_241_inferred__0/i__carry__0 
       (.CI(\audio_out_241_inferred__0/i__carry_n_0 ),
        .CO({\NLW_audio_out_241_inferred__0/i__carry__0_CO_UNCONNECTED [3:1],audio_out_2410_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_audio_out_241_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i__carry__0_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(p_0_in0),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_1
       (.I0(\y_buf_reg_n_0_[30] ),
        .I1(p_0_in0),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(p_0_in0),
        .O(i__carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3
       (.I0(p_0_in0),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_4
       (.I0(p_0_in0),
        .I1(\y_buf_reg_n_0_[30] ),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_5
       (.I0(\y_buf_reg_n_0_[28] ),
        .I1(\y_buf_reg_n_0_[29] ),
        .O(i__carry_i_5_n_0));
  FDRE \in_data_reg[10] 
       (.C(clk),
        .CE(in_valid_i_1_n_0),
        .D(s_axis_tdata[4]),
        .Q(\in_data_reg[31]_0 [4]),
        .R(p_0_in));
  FDRE \in_data_reg[11] 
       (.C(clk),
        .CE(in_valid_i_1_n_0),
        .D(s_axis_tdata[5]),
        .Q(\in_data_reg[31]_0 [5]),
        .R(p_0_in));
  FDRE \in_data_reg[12] 
       (.C(clk),
        .CE(in_valid_i_1_n_0),
        .D(s_axis_tdata[6]),
        .Q(\in_data_reg[31]_0 [6]),
        .R(p_0_in));
  FDRE \in_data_reg[13] 
       (.C(clk),
        .CE(in_valid_i_1_n_0),
        .D(s_axis_tdata[7]),
        .Q(\in_data_reg[31]_0 [7]),
        .R(p_0_in));
  FDRE \in_data_reg[14] 
       (.C(clk),
        .CE(in_valid_i_1_n_0),
        .D(s_axis_tdata[8]),
        .Q(\in_data_reg[31]_0 [8]),
        .R(p_0_in));
  FDRE \in_data_reg[15] 
       (.C(clk),
        .CE(in_valid_i_1_n_0),
        .D(s_axis_tdata[9]),
        .Q(\in_data_reg[31]_0 [9]),
        .R(p_0_in));
  FDRE \in_data_reg[16] 
       (.C(clk),
        .CE(in_valid_i_1_n_0),
        .D(s_axis_tdata[10]),
        .Q(\in_data_reg[31]_0 [10]),
        .R(p_0_in));
  FDRE \in_data_reg[17] 
       (.C(clk),
        .CE(in_valid_i_1_n_0),
        .D(s_axis_tdata[11]),
        .Q(\in_data_reg[31]_0 [11]),
        .R(p_0_in));
  FDRE \in_data_reg[18] 
       (.C(clk),
        .CE(in_valid_i_1_n_0),
        .D(s_axis_tdata[12]),
        .Q(\in_data_reg[31]_0 [12]),
        .R(p_0_in));
  FDRE \in_data_reg[19] 
       (.C(clk),
        .CE(in_valid_i_1_n_0),
        .D(s_axis_tdata[13]),
        .Q(\in_data_reg[31]_0 [13]),
        .R(p_0_in));
  FDRE \in_data_reg[20] 
       (.C(clk),
        .CE(in_valid_i_1_n_0),
        .D(s_axis_tdata[14]),
        .Q(\in_data_reg[31]_0 [14]),
        .R(p_0_in));
  FDRE \in_data_reg[21] 
       (.C(clk),
        .CE(in_valid_i_1_n_0),
        .D(s_axis_tdata[15]),
        .Q(\in_data_reg[31]_0 [15]),
        .R(p_0_in));
  FDRE \in_data_reg[22] 
       (.C(clk),
        .CE(in_valid_i_1_n_0),
        .D(s_axis_tdata[16]),
        .Q(\in_data_reg[31]_0 [16]),
        .R(p_0_in));
  FDRE \in_data_reg[23] 
       (.C(clk),
        .CE(in_valid_i_1_n_0),
        .D(s_axis_tdata[17]),
        .Q(\in_data_reg[31]_0 [17]),
        .R(p_0_in));
  FDRE \in_data_reg[24] 
       (.C(clk),
        .CE(in_valid_i_1_n_0),
        .D(s_axis_tdata[18]),
        .Q(\in_data_reg[31]_0 [18]),
        .R(p_0_in));
  FDRE \in_data_reg[25] 
       (.C(clk),
        .CE(in_valid_i_1_n_0),
        .D(s_axis_tdata[19]),
        .Q(\in_data_reg[31]_0 [19]),
        .R(p_0_in));
  FDRE \in_data_reg[26] 
       (.C(clk),
        .CE(in_valid_i_1_n_0),
        .D(s_axis_tdata[20]),
        .Q(\in_data_reg[31]_0 [20]),
        .R(p_0_in));
  FDRE \in_data_reg[27] 
       (.C(clk),
        .CE(in_valid_i_1_n_0),
        .D(s_axis_tdata[21]),
        .Q(\in_data_reg[31]_0 [21]),
        .R(p_0_in));
  FDRE \in_data_reg[28] 
       (.C(clk),
        .CE(in_valid_i_1_n_0),
        .D(s_axis_tdata[22]),
        .Q(\in_data_reg[31]_0 [22]),
        .R(p_0_in));
  FDRE \in_data_reg[31] 
       (.C(clk),
        .CE(in_valid_i_1_n_0),
        .D(s_axis_tdata[23]),
        .Q(\in_data_reg[31]_0 [23]),
        .R(p_0_in));
  FDRE \in_data_reg[6] 
       (.C(clk),
        .CE(in_valid_i_1_n_0),
        .D(s_axis_tdata[0]),
        .Q(\in_data_reg[31]_0 [0]),
        .R(p_0_in));
  FDRE \in_data_reg[7] 
       (.C(clk),
        .CE(in_valid_i_1_n_0),
        .D(s_axis_tdata[1]),
        .Q(\in_data_reg[31]_0 [1]),
        .R(p_0_in));
  FDRE \in_data_reg[8] 
       (.C(clk),
        .CE(in_valid_i_1_n_0),
        .D(s_axis_tdata[2]),
        .Q(\in_data_reg[31]_0 [2]),
        .R(p_0_in));
  FDRE \in_data_reg[9] 
       (.C(clk),
        .CE(in_valid_i_1_n_0),
        .D(s_axis_tdata[3]),
        .Q(\in_data_reg[31]_0 [3]),
        .R(p_0_in));
  FDRE \in_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\in_state_reg[0]_1 ),
        .Q(\in_state_reg[0]_0 ),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    in_valid_i_1
       (.I0(inflight_reg_0),
        .I1(s_axis_tvalid),
        .I2(\in_state_reg[0]_0 ),
        .I3(s_axis_tid[0]),
        .I4(s_axis_tid[2]),
        .I5(s_axis_tid[1]),
        .O(in_valid_i_1_n_0));
  FDRE in_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(in_valid_i_1_n_0),
        .Q(mono_valid),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h00000000FF400000)) 
    inflight_i_1
       (.I0(inflight_i_2_n_0),
        .I1(s_axis_tvalid),
        .I2(inflight_reg_0),
        .I3(inflight_reg_n_0),
        .I4(rst_n),
        .I5(inflight0),
        .O(inflight_i_1_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    inflight_i_2
       (.I0(s_axis_tid[1]),
        .I1(s_axis_tid[2]),
        .I2(s_axis_tid[0]),
        .I3(\in_state_reg[0]_0 ),
        .O(inflight_i_2_n_0));
  FDRE inflight_reg
       (.C(clk),
        .CE(1'b1),
        .D(inflight_i_1_n_0),
        .Q(inflight_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(\FSM_onehot_out_state_reg_n_0_[2] ),
        .I1(m_axis_tdata[1]),
        .O(m_axis_tdata[0]));
  LUT5 #(
    .INIT(32'hEEEE00E0)) 
    \m_axis_tdata[10]_INST_0 
       (.I0(\FSM_onehot_out_state_reg_n_0_[2] ),
        .I1(m_axis_tdata[1]),
        .I2(\y_buf_reg_n_0_[12] ),
        .I3(audio_out_241),
        .I4(audio_out_2410_in),
        .O(m_axis_tdata[8]));
  LUT5 #(
    .INIT(32'hEEEE00E0)) 
    \m_axis_tdata[11]_INST_0 
       (.I0(\FSM_onehot_out_state_reg_n_0_[2] ),
        .I1(m_axis_tdata[1]),
        .I2(\y_buf_reg_n_0_[13] ),
        .I3(audio_out_241),
        .I4(audio_out_2410_in),
        .O(m_axis_tdata[9]));
  LUT5 #(
    .INIT(32'hEEEE00E0)) 
    \m_axis_tdata[12]_INST_0 
       (.I0(\FSM_onehot_out_state_reg_n_0_[2] ),
        .I1(m_axis_tdata[1]),
        .I2(\y_buf_reg_n_0_[14] ),
        .I3(audio_out_241),
        .I4(audio_out_2410_in),
        .O(m_axis_tdata[10]));
  LUT5 #(
    .INIT(32'hEEEE00E0)) 
    \m_axis_tdata[13]_INST_0 
       (.I0(\FSM_onehot_out_state_reg_n_0_[2] ),
        .I1(m_axis_tdata[1]),
        .I2(\y_buf_reg_n_0_[15] ),
        .I3(audio_out_241),
        .I4(audio_out_2410_in),
        .O(m_axis_tdata[11]));
  LUT5 #(
    .INIT(32'hEEEE00E0)) 
    \m_axis_tdata[14]_INST_0 
       (.I0(\FSM_onehot_out_state_reg_n_0_[2] ),
        .I1(m_axis_tdata[1]),
        .I2(\y_buf_reg_n_0_[16] ),
        .I3(audio_out_241),
        .I4(audio_out_2410_in),
        .O(m_axis_tdata[12]));
  LUT5 #(
    .INIT(32'hEEEE00E0)) 
    \m_axis_tdata[15]_INST_0 
       (.I0(\FSM_onehot_out_state_reg_n_0_[2] ),
        .I1(m_axis_tdata[1]),
        .I2(\y_buf_reg_n_0_[17] ),
        .I3(audio_out_241),
        .I4(audio_out_2410_in),
        .O(m_axis_tdata[13]));
  LUT5 #(
    .INIT(32'hEEEE00E0)) 
    \m_axis_tdata[16]_INST_0 
       (.I0(\FSM_onehot_out_state_reg_n_0_[2] ),
        .I1(m_axis_tdata[1]),
        .I2(\y_buf_reg_n_0_[18] ),
        .I3(audio_out_241),
        .I4(audio_out_2410_in),
        .O(m_axis_tdata[14]));
  LUT5 #(
    .INIT(32'hEEEE00E0)) 
    \m_axis_tdata[17]_INST_0 
       (.I0(\FSM_onehot_out_state_reg_n_0_[2] ),
        .I1(m_axis_tdata[1]),
        .I2(\y_buf_reg_n_0_[19] ),
        .I3(audio_out_241),
        .I4(audio_out_2410_in),
        .O(m_axis_tdata[15]));
  LUT5 #(
    .INIT(32'hEEEE00E0)) 
    \m_axis_tdata[18]_INST_0 
       (.I0(\FSM_onehot_out_state_reg_n_0_[2] ),
        .I1(m_axis_tdata[1]),
        .I2(\y_buf_reg_n_0_[20] ),
        .I3(audio_out_241),
        .I4(audio_out_2410_in),
        .O(m_axis_tdata[16]));
  LUT5 #(
    .INIT(32'hEEEE00E0)) 
    \m_axis_tdata[19]_INST_0 
       (.I0(\FSM_onehot_out_state_reg_n_0_[2] ),
        .I1(m_axis_tdata[1]),
        .I2(\y_buf_reg_n_0_[21] ),
        .I3(audio_out_241),
        .I4(audio_out_2410_in),
        .O(m_axis_tdata[17]));
  LUT5 #(
    .INIT(32'hEEEE00E0)) 
    \m_axis_tdata[20]_INST_0 
       (.I0(\FSM_onehot_out_state_reg_n_0_[2] ),
        .I1(m_axis_tdata[1]),
        .I2(\y_buf_reg_n_0_[22] ),
        .I3(audio_out_241),
        .I4(audio_out_2410_in),
        .O(m_axis_tdata[18]));
  LUT5 #(
    .INIT(32'hEEEE00E0)) 
    \m_axis_tdata[21]_INST_0 
       (.I0(\FSM_onehot_out_state_reg_n_0_[2] ),
        .I1(m_axis_tdata[1]),
        .I2(\y_buf_reg_n_0_[23] ),
        .I3(audio_out_241),
        .I4(audio_out_2410_in),
        .O(m_axis_tdata[19]));
  LUT5 #(
    .INIT(32'hEEEE00E0)) 
    \m_axis_tdata[22]_INST_0 
       (.I0(\FSM_onehot_out_state_reg_n_0_[2] ),
        .I1(m_axis_tdata[1]),
        .I2(\y_buf_reg_n_0_[24] ),
        .I3(audio_out_241),
        .I4(audio_out_2410_in),
        .O(m_axis_tdata[20]));
  LUT5 #(
    .INIT(32'hEEEE00E0)) 
    \m_axis_tdata[23]_INST_0 
       (.I0(\FSM_onehot_out_state_reg_n_0_[2] ),
        .I1(m_axis_tdata[1]),
        .I2(\y_buf_reg_n_0_[25] ),
        .I3(audio_out_241),
        .I4(audio_out_2410_in),
        .O(m_axis_tdata[21]));
  LUT5 #(
    .INIT(32'hEEEE00E0)) 
    \m_axis_tdata[24]_INST_0 
       (.I0(\FSM_onehot_out_state_reg_n_0_[2] ),
        .I1(m_axis_tdata[1]),
        .I2(\y_buf_reg_n_0_[26] ),
        .I3(audio_out_241),
        .I4(audio_out_2410_in),
        .O(m_axis_tdata[22]));
  LUT5 #(
    .INIT(32'hEEEE00E0)) 
    \m_axis_tdata[25]_INST_0 
       (.I0(\FSM_onehot_out_state_reg_n_0_[2] ),
        .I1(m_axis_tdata[1]),
        .I2(\y_buf_reg_n_0_[27] ),
        .I3(audio_out_241),
        .I4(audio_out_2410_in),
        .O(m_axis_tdata[23]));
  LUT5 #(
    .INIT(32'hEEEE00E0)) 
    \m_axis_tdata[26]_INST_0 
       (.I0(\FSM_onehot_out_state_reg_n_0_[2] ),
        .I1(m_axis_tdata[1]),
        .I2(\y_buf_reg_n_0_[28] ),
        .I3(audio_out_241),
        .I4(audio_out_2410_in),
        .O(m_axis_tdata[24]));
  LUT5 #(
    .INIT(32'h0000EEE0)) 
    \m_axis_tdata[27]_INST_0 
       (.I0(\FSM_onehot_out_state_reg_n_0_[2] ),
        .I1(m_axis_tdata[1]),
        .I2(\y_buf_reg_n_0_[29] ),
        .I3(audio_out_241),
        .I4(audio_out_2410_in),
        .O(m_axis_tdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hEEEE00E0)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(\FSM_onehot_out_state_reg_n_0_[2] ),
        .I1(m_axis_tdata[1]),
        .I2(\y_buf_reg_n_0_[6] ),
        .I3(audio_out_241),
        .I4(audio_out_2410_in),
        .O(m_axis_tdata[2]));
  LUT5 #(
    .INIT(32'hEEEE00E0)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(\FSM_onehot_out_state_reg_n_0_[2] ),
        .I1(m_axis_tdata[1]),
        .I2(\y_buf_reg_n_0_[7] ),
        .I3(audio_out_241),
        .I4(audio_out_2410_in),
        .O(m_axis_tdata[3]));
  LUT5 #(
    .INIT(32'hEEEE00E0)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(\FSM_onehot_out_state_reg_n_0_[2] ),
        .I1(m_axis_tdata[1]),
        .I2(\y_buf_reg_n_0_[8] ),
        .I3(audio_out_241),
        .I4(audio_out_2410_in),
        .O(m_axis_tdata[4]));
  LUT5 #(
    .INIT(32'hEEEE00E0)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(\FSM_onehot_out_state_reg_n_0_[2] ),
        .I1(m_axis_tdata[1]),
        .I2(\y_buf_reg_n_0_[9] ),
        .I3(audio_out_241),
        .I4(audio_out_2410_in),
        .O(m_axis_tdata[5]));
  LUT5 #(
    .INIT(32'hEEEE00E0)) 
    \m_axis_tdata[8]_INST_0 
       (.I0(\FSM_onehot_out_state_reg_n_0_[2] ),
        .I1(m_axis_tdata[1]),
        .I2(\y_buf_reg_n_0_[10] ),
        .I3(audio_out_241),
        .I4(audio_out_2410_in),
        .O(m_axis_tdata[6]));
  LUT5 #(
    .INIT(32'hEEEE00E0)) 
    \m_axis_tdata[9]_INST_0 
       (.I0(\FSM_onehot_out_state_reg_n_0_[2] ),
        .I1(m_axis_tdata[1]),
        .I2(\y_buf_reg_n_0_[11] ),
        .I3(audio_out_241),
        .I4(audio_out_2410_in),
        .O(m_axis_tdata[7]));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tvalid_INST_0
       (.I0(\FSM_onehot_out_state_reg_n_0_[0] ),
        .O(m_axis_tvalid));
  LUT6 #(
    .INIT(64'h10110000FFFFFFFF)) 
    s_axis_tready_INST_0
       (.I0(inflight_reg_n_0),
        .I1(s_axis_tready_INST_0_i_1_n_0),
        .I2(s_axis_tready),
        .I3(s_axis_tready_0),
        .I4(s_axis_tready_1),
        .I5(\in_state_reg[0]_0 ),
        .O(inflight_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hB)) 
    s_axis_tready_INST_0_i_1
       (.I0(y_buf_valid),
        .I1(\FSM_onehot_out_state_reg_n_0_[0] ),
        .O(s_axis_tready_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    \y_buf[31]_i_1 
       (.I0(\FSM_onehot_out_state_reg_n_0_[0] ),
        .I1(y_buf_valid),
        .I2(ret_valid),
        .I3(inflight_reg_n_0),
        .O(inflight0));
  FDRE \y_buf_reg[10] 
       (.C(clk),
        .CE(inflight0),
        .D(Q[4]),
        .Q(\y_buf_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \y_buf_reg[11] 
       (.C(clk),
        .CE(inflight0),
        .D(Q[5]),
        .Q(\y_buf_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE \y_buf_reg[12] 
       (.C(clk),
        .CE(inflight0),
        .D(Q[6]),
        .Q(\y_buf_reg_n_0_[12] ),
        .R(p_0_in));
  FDRE \y_buf_reg[13] 
       (.C(clk),
        .CE(inflight0),
        .D(Q[7]),
        .Q(\y_buf_reg_n_0_[13] ),
        .R(p_0_in));
  FDRE \y_buf_reg[14] 
       (.C(clk),
        .CE(inflight0),
        .D(Q[8]),
        .Q(\y_buf_reg_n_0_[14] ),
        .R(p_0_in));
  FDRE \y_buf_reg[15] 
       (.C(clk),
        .CE(inflight0),
        .D(Q[9]),
        .Q(\y_buf_reg_n_0_[15] ),
        .R(p_0_in));
  FDRE \y_buf_reg[16] 
       (.C(clk),
        .CE(inflight0),
        .D(Q[10]),
        .Q(\y_buf_reg_n_0_[16] ),
        .R(p_0_in));
  FDRE \y_buf_reg[17] 
       (.C(clk),
        .CE(inflight0),
        .D(Q[11]),
        .Q(\y_buf_reg_n_0_[17] ),
        .R(p_0_in));
  FDRE \y_buf_reg[18] 
       (.C(clk),
        .CE(inflight0),
        .D(Q[12]),
        .Q(\y_buf_reg_n_0_[18] ),
        .R(p_0_in));
  FDRE \y_buf_reg[19] 
       (.C(clk),
        .CE(inflight0),
        .D(Q[13]),
        .Q(\y_buf_reg_n_0_[19] ),
        .R(p_0_in));
  FDRE \y_buf_reg[20] 
       (.C(clk),
        .CE(inflight0),
        .D(Q[14]),
        .Q(\y_buf_reg_n_0_[20] ),
        .R(p_0_in));
  FDRE \y_buf_reg[21] 
       (.C(clk),
        .CE(inflight0),
        .D(Q[15]),
        .Q(\y_buf_reg_n_0_[21] ),
        .R(p_0_in));
  FDRE \y_buf_reg[22] 
       (.C(clk),
        .CE(inflight0),
        .D(Q[16]),
        .Q(\y_buf_reg_n_0_[22] ),
        .R(p_0_in));
  FDRE \y_buf_reg[23] 
       (.C(clk),
        .CE(inflight0),
        .D(Q[17]),
        .Q(\y_buf_reg_n_0_[23] ),
        .R(p_0_in));
  FDRE \y_buf_reg[24] 
       (.C(clk),
        .CE(inflight0),
        .D(Q[18]),
        .Q(\y_buf_reg_n_0_[24] ),
        .R(p_0_in));
  FDRE \y_buf_reg[25] 
       (.C(clk),
        .CE(inflight0),
        .D(Q[19]),
        .Q(\y_buf_reg_n_0_[25] ),
        .R(p_0_in));
  FDRE \y_buf_reg[26] 
       (.C(clk),
        .CE(inflight0),
        .D(Q[20]),
        .Q(\y_buf_reg_n_0_[26] ),
        .R(p_0_in));
  FDRE \y_buf_reg[27] 
       (.C(clk),
        .CE(inflight0),
        .D(Q[21]),
        .Q(\y_buf_reg_n_0_[27] ),
        .R(p_0_in));
  FDRE \y_buf_reg[28] 
       (.C(clk),
        .CE(inflight0),
        .D(Q[22]),
        .Q(\y_buf_reg_n_0_[28] ),
        .R(p_0_in));
  FDRE \y_buf_reg[29] 
       (.C(clk),
        .CE(inflight0),
        .D(Q[23]),
        .Q(\y_buf_reg_n_0_[29] ),
        .R(p_0_in));
  FDRE \y_buf_reg[30] 
       (.C(clk),
        .CE(inflight0),
        .D(Q[24]),
        .Q(\y_buf_reg_n_0_[30] ),
        .R(p_0_in));
  FDRE \y_buf_reg[31] 
       (.C(clk),
        .CE(inflight0),
        .D(Q[25]),
        .Q(p_0_in0),
        .R(p_0_in));
  FDRE \y_buf_reg[6] 
       (.C(clk),
        .CE(inflight0),
        .D(Q[0]),
        .Q(\y_buf_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \y_buf_reg[7] 
       (.C(clk),
        .CE(inflight0),
        .D(Q[1]),
        .Q(\y_buf_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \y_buf_reg[8] 
       (.C(clk),
        .CE(inflight0),
        .D(Q[2]),
        .Q(\y_buf_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \y_buf_reg[9] 
       (.C(clk),
        .CE(inflight0),
        .D(Q[3]),
        .Q(\y_buf_reg_n_0_[9] ),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hF7F7F70000000000)) 
    y_buf_valid_i_1
       (.I0(m_axis_tready),
        .I1(m_axis_tdata[1]),
        .I2(\FSM_onehot_out_state_reg_n_0_[0] ),
        .I3(inflight0),
        .I4(y_buf_valid),
        .I5(rst_n),
        .O(y_buf_valid_i_1_n_0));
  FDRE y_buf_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(y_buf_valid_i_1_n_0),
        .Q(y_buf_valid),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "fx_core" *) 
module design_1_fx_system_wrapper_0_1_fx_core
   (enc_tick,
    s_axi_awready,
    s_axi_wready,
    s_axi_arready,
    bram_rd_en,
    P,
    wptr_latched,
    \term_r_reg[0] ,
    frac_d_valid,
    clear_req,
    state,
    state_0,
    state_1,
    state_2,
    state_3,
    state_4,
    w_done_reg,
    aw_done,
    s_axi_bvalid,
    s_axi_rvalid,
    \in_state_reg[0] ,
    d_valid,
    inflight_reg,
    \state_reg[0] ,
    \state_reg[0]_0 ,
    \state_reg[1] ,
    Q,
    \a_sync_reg[1] ,
    \b_sync_reg[1] ,
    \a_sync_reg[1]_0 ,
    \b_sync_reg[1]_0 ,
    \a_sync_reg[1]_1 ,
    \b_sync_reg[1]_1 ,
    \a_sync_reg[1]_2 ,
    \b_sync_reg[1]_2 ,
    \a_sync_reg[1]_3 ,
    \b_sync_reg[1]_3 ,
    \a_sync_reg[1]_4 ,
    m_axis_tdata,
    state_5,
    cnt_b__0,
    cnt_a__0,
    cnt_b__0_6,
    cnt_a__0_7,
    cnt_b__0_8,
    cnt_a__0_9,
    cnt_b__0_10,
    cnt_a__0_11,
    cnt_b__0_12,
    cnt_a__0_13,
    cnt_b__0_14,
    cnt_a__0_15,
    s_axi_rdata,
    \FSM_sequential_state_reg[2] ,
    \FSM_sequential_state_reg[1] ,
    m_axis_tvalid,
    clk,
    s_axi_wdata,
    clean_b_reg,
    clean_a_reg,
    clean_b_reg_0,
    clean_a_reg_0,
    clean_b_reg_1,
    clean_a_reg_1,
    clean_b_reg_2,
    clean_a_reg_2,
    clean_b_reg_3,
    clean_a_reg_3,
    clean_b_reg_4,
    clean_a_reg_4,
    w_done_reg_0,
    aw_done_reg,
    \in_state_reg[0]_0 ,
    rd_en_reg,
    \term_r_reg[0]_0 ,
    d_reg_valid_reg,
    frac_start_reg,
    rd_en_reg_rep,
    bram_wr_en_reg_rep,
    bram_wr_en_reg_rep__0,
    bram_wr_en_reg_rep__1,
    bram_wr_en_reg_rep__2,
    bram_wr_en_reg_rep__3,
    bram_wr_en_reg_rep__4,
    bram_wr_en_reg_rep__5,
    bram_wr_en_reg_rep__6,
    bram_wr_en_reg_rep__7,
    bram_wr_en_reg_rep__8,
    bram_wr_en_reg_rep__9,
    bram_wr_en_reg_rep__10,
    bram_wr_en_reg_rep__11,
    s_axi_araddr,
    rst_n,
    enc_b,
    enc_a,
    s_axi_awaddr,
    m_axis_tready,
    s_axis_tdata,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_awvalid,
    s_axi_rready,
    s_axi_arvalid,
    s_axis_tvalid,
    s_axis_tid,
    fx_enable);
  output enc_tick;
  output s_axi_awready;
  output s_axi_wready;
  output s_axi_arready;
  output bram_rd_en;
  output [0:0]P;
  output wptr_latched;
  output [0:0]\term_r_reg[0] ;
  output frac_d_valid;
  output clear_req;
  output [1:0]state;
  output [1:0]state_0;
  output [1:0]state_1;
  output [1:0]state_2;
  output [1:0]state_3;
  output [1:0]state_4;
  output w_done_reg;
  output aw_done;
  output s_axi_bvalid;
  output s_axi_rvalid;
  output \in_state_reg[0] ;
  output d_valid;
  output inflight_reg;
  output \state_reg[0] ;
  output \state_reg[0]_0 ;
  output \state_reg[1] ;
  output [0:0]Q;
  output [0:0]\a_sync_reg[1] ;
  output [0:0]\b_sync_reg[1] ;
  output [0:0]\a_sync_reg[1]_0 ;
  output [0:0]\b_sync_reg[1]_0 ;
  output [0:0]\a_sync_reg[1]_1 ;
  output [0:0]\b_sync_reg[1]_1 ;
  output [0:0]\a_sync_reg[1]_2 ;
  output [0:0]\b_sync_reg[1]_2 ;
  output [0:0]\a_sync_reg[1]_3 ;
  output [0:0]\b_sync_reg[1]_3 ;
  output [0:0]\a_sync_reg[1]_4 ;
  output [25:0]m_axis_tdata;
  output [2:0]state_5;
  output [2:0]cnt_b__0;
  output [2:0]cnt_a__0;
  output [2:0]cnt_b__0_6;
  output [2:0]cnt_a__0_7;
  output [2:0]cnt_b__0_8;
  output [2:0]cnt_a__0_9;
  output [2:0]cnt_b__0_10;
  output [2:0]cnt_a__0_11;
  output [2:0]cnt_b__0_12;
  output [2:0]cnt_a__0_13;
  output [2:0]cnt_b__0_14;
  output [2:0]cnt_a__0_15;
  output [31:0]s_axi_rdata;
  output \FSM_sequential_state_reg[2] ;
  output \FSM_sequential_state_reg[1] ;
  output m_axis_tvalid;
  input clk;
  input [31:0]s_axi_wdata;
  input clean_b_reg;
  input clean_a_reg;
  input clean_b_reg_0;
  input clean_a_reg_0;
  input clean_b_reg_1;
  input clean_a_reg_1;
  input clean_b_reg_2;
  input clean_a_reg_2;
  input clean_b_reg_3;
  input clean_a_reg_3;
  input clean_b_reg_4;
  input clean_a_reg_4;
  input w_done_reg_0;
  input aw_done_reg;
  input \in_state_reg[0]_0 ;
  input rd_en_reg;
  input \term_r_reg[0]_0 ;
  input d_reg_valid_reg;
  input frac_start_reg;
  input rd_en_reg_rep;
  input bram_wr_en_reg_rep;
  input bram_wr_en_reg_rep__0;
  input bram_wr_en_reg_rep__1;
  input bram_wr_en_reg_rep__2;
  input bram_wr_en_reg_rep__3;
  input bram_wr_en_reg_rep__4;
  input bram_wr_en_reg_rep__5;
  input bram_wr_en_reg_rep__6;
  input bram_wr_en_reg_rep__7;
  input bram_wr_en_reg_rep__8;
  input bram_wr_en_reg_rep__9;
  input bram_wr_en_reg_rep__10;
  input bram_wr_en_reg_rep__11;
  input [5:0]s_axi_araddr;
  input rst_n;
  input [5:0]enc_b;
  input [5:0]enc_a;
  input [5:0]s_axi_awaddr;
  input m_axis_tready;
  input [23:0]s_axis_tdata;
  input s_axi_wvalid;
  input s_axi_bready;
  input s_axi_awvalid;
  input s_axi_rready;
  input s_axi_arvalid;
  input s_axis_tvalid;
  input [2:0]s_axis_tid;
  input fx_enable;

  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[2] ;
  wire [0:0]P;
  wire [0:0]Q;
  wire [0:0]\a_sync_reg[1] ;
  wire [0:0]\a_sync_reg[1]_0 ;
  wire [0:0]\a_sync_reg[1]_1 ;
  wire [0:0]\a_sync_reg[1]_2 ;
  wire [0:0]\a_sync_reg[1]_3 ;
  wire [0:0]\a_sync_reg[1]_4 ;
  wire aw_done;
  wire aw_done_reg;
  wire [0:0]\b_sync_reg[1] ;
  wire [0:0]\b_sync_reg[1]_0 ;
  wire [0:0]\b_sync_reg[1]_1 ;
  wire [0:0]\b_sync_reg[1]_2 ;
  wire [0:0]\b_sync_reg[1]_3 ;
  wire bram_rd_en;
  wire bram_wr_en_reg_rep;
  wire bram_wr_en_reg_rep__0;
  wire bram_wr_en_reg_rep__1;
  wire bram_wr_en_reg_rep__10;
  wire bram_wr_en_reg_rep__11;
  wire bram_wr_en_reg_rep__2;
  wire bram_wr_en_reg_rep__3;
  wire bram_wr_en_reg_rep__4;
  wire bram_wr_en_reg_rep__5;
  wire bram_wr_en_reg_rep__6;
  wire bram_wr_en_reg_rep__7;
  wire bram_wr_en_reg_rep__8;
  wire bram_wr_en_reg_rep__9;
  wire clean_a_reg;
  wire clean_a_reg_0;
  wire clean_a_reg_1;
  wire clean_a_reg_2;
  wire clean_a_reg_3;
  wire clean_a_reg_4;
  wire clean_b_reg;
  wire clean_b_reg_0;
  wire clean_b_reg_1;
  wire clean_b_reg_2;
  wire clean_b_reg_3;
  wire clean_b_reg_4;
  wire clear_req;
  wire clk;
  wire [2:0]cnt_a__0;
  wire [2:0]cnt_a__0_11;
  wire [2:0]cnt_a__0_13;
  wire [2:0]cnt_a__0_15;
  wire [2:0]cnt_a__0_7;
  wire [2:0]cnt_a__0_9;
  wire [2:0]cnt_b__0;
  wire [2:0]cnt_b__0_10;
  wire [2:0]cnt_b__0_12;
  wire [2:0]cnt_b__0_14;
  wire [2:0]cnt_b__0_6;
  wire [2:0]cnt_b__0_8;
  wire d_reg_valid_reg;
  wire d_valid;
  wire [5:0]enc_a;
  wire [5:0]enc_b;
  wire [15:0]\enc_count[0]_0 ;
  wire [15:0]\enc_count[1]_1 ;
  wire [15:0]\enc_count[2]_2 ;
  wire [15:4]\enc_count[4]_4 ;
  wire [13:0]\enc_count[5]_5 ;
  wire enc_tick;
  wire frac_d_valid;
  wire frac_start_reg;
  wire fx_enable;
  wire \g_enc[3].u_enc_n_10 ;
  wire \g_enc[3].u_enc_n_13 ;
  wire \g_enc[3].u_enc_n_14 ;
  wire \g_enc[3].u_enc_n_15 ;
  wire \g_enc[3].u_enc_n_16 ;
  wire \g_enc[3].u_enc_n_17 ;
  wire \g_enc[3].u_enc_n_18 ;
  wire \g_enc[3].u_enc_n_19 ;
  wire \g_enc[3].u_enc_n_2 ;
  wire \g_enc[3].u_enc_n_20 ;
  wire \g_enc[3].u_enc_n_21 ;
  wire \g_enc[3].u_enc_n_22 ;
  wire \g_enc[3].u_enc_n_23 ;
  wire \g_enc[3].u_enc_n_24 ;
  wire \g_enc[3].u_enc_n_3 ;
  wire \g_enc[3].u_enc_n_4 ;
  wire \g_enc[3].u_enc_n_5 ;
  wire \g_enc[3].u_enc_n_6 ;
  wire \g_enc[3].u_enc_n_7 ;
  wire \g_enc[3].u_enc_n_8 ;
  wire \g_enc[3].u_enc_n_9 ;
  wire \g_enc[4].u_enc_n_10 ;
  wire \g_enc[4].u_enc_n_11 ;
  wire \g_enc[4].u_enc_n_12 ;
  wire \g_enc[4].u_enc_n_13 ;
  wire \g_enc[4].u_enc_n_14 ;
  wire \g_enc[4].u_enc_n_15 ;
  wire \g_enc[4].u_enc_n_16 ;
  wire \g_enc[4].u_enc_n_17 ;
  wire \g_enc[4].u_enc_n_6 ;
  wire \g_enc[4].u_enc_n_7 ;
  wire \g_enc[4].u_enc_n_8 ;
  wire \g_enc[4].u_enc_n_9 ;
  wire \g_enc[5].u_enc_n_16 ;
  wire \g_enc[5].u_enc_n_28 ;
  wire \g_enc[5].u_enc_n_29 ;
  wire \g_enc[5].u_enc_n_30 ;
  wire \g_enc[5].u_enc_n_31 ;
  wire \in_state_reg[0] ;
  wire \in_state_reg[0]_0 ;
  wire inflight0;
  wire inflight_reg;
  wire [25:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [31:6]mono_data;
  wire mono_valid;
  wire p_0_in;
  wire [30:15]p_1_in;
  wire rd_en_reg;
  wire rd_en_reg_rep;
  wire [31:0]reg_D_16_16;
  wire reg_enable;
  wire [31:0]reg_fb_q1_31;
  wire reg_wet;
  wire [31:17]reg_wet_q1_31;
  wire [31:6]ret_data;
  wire ret_valid;
  wire rst_n;
  wire [5:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [5:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire [23:0]s_axis_tdata;
  wire [2:0]s_axis_tid;
  wire s_axis_tvalid;
  wire [1:0]state;
  wire [1:0]state_0;
  wire [1:0]state_1;
  wire [1:0]state_2;
  wire [1:0]state_3;
  wire [1:0]state_4;
  wire [2:0]state_5;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire \state_reg[1] ;
  wire [0:0]\term_r_reg[0] ;
  wire \term_r_reg[0]_0 ;
  wire u_delay_n_14;
  wire u_delay_n_17;
  wire u_delay_n_18;
  wire u_regmap_n_10;
  wire u_regmap_n_100;
  wire u_regmap_n_101;
  wire u_regmap_n_102;
  wire u_regmap_n_103;
  wire u_regmap_n_104;
  wire u_regmap_n_105;
  wire u_regmap_n_106;
  wire u_regmap_n_107;
  wire u_regmap_n_108;
  wire u_regmap_n_109;
  wire u_regmap_n_11;
  wire u_regmap_n_110;
  wire u_regmap_n_111;
  wire u_regmap_n_112;
  wire u_regmap_n_113;
  wire u_regmap_n_114;
  wire u_regmap_n_115;
  wire u_regmap_n_116;
  wire u_regmap_n_117;
  wire u_regmap_n_118;
  wire u_regmap_n_119;
  wire u_regmap_n_12;
  wire u_regmap_n_120;
  wire u_regmap_n_121;
  wire u_regmap_n_122;
  wire u_regmap_n_123;
  wire u_regmap_n_13;
  wire u_regmap_n_8;
  wire u_regmap_n_93;
  wire u_regmap_n_94;
  wire u_regmap_n_95;
  wire u_regmap_n_96;
  wire u_regmap_n_97;
  wire u_regmap_n_98;
  wire u_regmap_n_99;
  wire w_done_reg;
  wire w_done_reg_0;
  wire wptr_latched;

  design_1_fx_system_wrapper_0_1_quad_decoder \g_enc[0].u_enc 
       (.D(state),
        .Q(Q),
        .\a_sync_reg[1]_0 (\a_sync_reg[1] ),
        .clean_a_reg_0(clean_a_reg),
        .clean_b_reg_0(clean_b_reg),
        .clk(clk),
        .cnt_a__0(cnt_a__0),
        .\cnt_a_reg[0]_0 (enc_tick),
        .cnt_b__0(cnt_b__0),
        .enc_a(enc_a[0]),
        .enc_b(enc_b[0]),
        .\enc_count[0]_0 (\enc_count[0]_0 ),
        .p_0_in(p_0_in),
        .rst_n(rst_n));
  design_1_fx_system_wrapper_0_1_quad_decoder_0 \g_enc[1].u_enc 
       (.D(state_0),
        .Q(\b_sync_reg[1] ),
        .\a_sync_reg[1]_0 (\a_sync_reg[1]_0 ),
        .clean_a_reg_0(clean_a_reg_0),
        .clean_b_reg_0(clean_b_reg_0),
        .clk(clk),
        .cnt_a__0_7(cnt_a__0_7),
        .\cnt_a_reg[0]_0 (enc_tick),
        .cnt_b__0_6(cnt_b__0_6),
        .enc_a(enc_a[1]),
        .enc_b(enc_b[1]),
        .\enc_count[1]_1 (\enc_count[1]_1 ),
        .p_0_in(p_0_in),
        .rst_n(rst_n));
  design_1_fx_system_wrapper_0_1_quad_decoder_1 \g_enc[2].u_enc 
       (.D(state_1),
        .Q(\b_sync_reg[1]_0 ),
        .\a_sync_reg[1]_0 (\a_sync_reg[1]_1 ),
        .clean_a_reg_0(clean_a_reg_1),
        .clean_b_reg_0(clean_b_reg_1),
        .clk(clk),
        .cnt_a__0_9(cnt_a__0_9),
        .\cnt_a_reg[0]_0 (enc_tick),
        .cnt_b__0_8(cnt_b__0_8),
        .enc_a(enc_a[2]),
        .enc_b(enc_b[2]),
        .\enc_count[2]_2 (\enc_count[2]_2 ),
        .p_0_in(p_0_in),
        .rst_n(rst_n));
  design_1_fx_system_wrapper_0_1_quad_decoder_2 \g_enc[3].u_enc 
       (.D(state_2),
        .Q(\b_sync_reg[1]_1 ),
        .\a_sync_reg[1]_0 (\a_sync_reg[1]_2 ),
        .clean_a_reg_0(clean_a_reg_2),
        .clean_b_reg_0(clean_b_reg_2),
        .clk(clk),
        .cnt_a__0_11(cnt_a__0_11),
        .\cnt_a_reg[0]_0 (enc_tick),
        .cnt_b__0_10(cnt_b__0_10),
        .\count_reg[0]_0 (\g_enc[3].u_enc_n_13 ),
        .\count_reg[10]_0 (\g_enc[3].u_enc_n_17 ),
        .\count_reg[11]_0 (\g_enc[3].u_enc_n_16 ),
        .\count_reg[12]_0 (\g_enc[3].u_enc_n_15 ),
        .\count_reg[13]_0 (\g_enc[3].u_enc_n_14 ),
        .\count_reg[15]_0 (\g_enc[3].u_enc_n_10 ),
        .\count_reg[1]_0 (\g_enc[3].u_enc_n_24 ),
        .\count_reg[2]_0 (\g_enc[3].u_enc_n_23 ),
        .\count_reg[3]_0 (\g_enc[3].u_enc_n_22 ),
        .\count_reg[5]_0 (\g_enc[3].u_enc_n_21 ),
        .\count_reg[6]_0 (\g_enc[3].u_enc_n_20 ),
        .\count_reg[7]_0 (\g_enc[3].u_enc_n_19 ),
        .\count_reg[9]_0 (\g_enc[3].u_enc_n_18 ),
        .enc_a(enc_a[3]),
        .enc_b(enc_b[3]),
        .\enc_count[0]_0 (\enc_count[0]_0 ),
        .\enc_count[1]_1 (\enc_count[1]_1 ),
        .\enc_count[2]_2 (\enc_count[2]_2 ),
        .p_0_in(p_0_in),
        .rst_n(rst_n),
        .s_axi_araddr({s_axi_araddr[5],s_axi_araddr[1:0]}),
        .\s_axi_araddr[7] ({\g_enc[3].u_enc_n_2 ,\g_enc[3].u_enc_n_3 ,\g_enc[3].u_enc_n_4 ,\g_enc[3].u_enc_n_5 ,\g_enc[3].u_enc_n_6 ,\g_enc[3].u_enc_n_7 ,\g_enc[3].u_enc_n_8 ,\g_enc[3].u_enc_n_9 }),
        .\s_axi_rdata_reg[14] (u_regmap_n_109),
        .\s_axi_rdata_reg[14]_0 (\g_enc[5].u_enc_n_31 ),
        .\s_axi_rdata_reg[17] (u_regmap_n_13),
        .\s_axi_rdata_reg[17]_0 (u_regmap_n_106),
        .\s_axi_rdata_reg[17]_1 (u_regmap_n_10),
        .\s_axi_rdata_reg[17]_2 (\g_enc[5].u_enc_n_16 ),
        .\s_axi_rdata_reg[20] (u_regmap_n_103),
        .\s_axi_rdata_reg[22] (u_regmap_n_101),
        .\s_axi_rdata_reg[24] (u_regmap_n_99),
        .\s_axi_rdata_reg[29] (u_regmap_n_94),
        .\s_axi_rdata_reg[4] (u_regmap_n_119),
        .\s_axi_rdata_reg[4]_0 (\g_enc[5].u_enc_n_29 ),
        .\s_axi_rdata_reg[8] (u_regmap_n_115),
        .\s_axi_rdata_reg[8]_0 (\g_enc[5].u_enc_n_30 ));
  design_1_fx_system_wrapper_0_1_quad_decoder_3 \g_enc[4].u_enc 
       (.D(state_3),
        .Q(\b_sync_reg[1]_2 ),
        .\a_sync_reg[1]_0 (\a_sync_reg[1]_3 ),
        .clean_a_reg_0(clean_a_reg_3),
        .clean_b_reg_0(clean_b_reg_3),
        .clk(clk),
        .cnt_a__0_13(cnt_a__0_13),
        .\cnt_a_reg[0]_0 (enc_tick),
        .cnt_b__0_12(cnt_b__0_12),
        .\count_reg[15]_0 ({\enc_count[4]_4 [15:14],\enc_count[4]_4 [8],\enc_count[4]_4 [4]}),
        .enc_a(enc_a[4]),
        .enc_b(enc_b[4]),
        .\enc_count[5]_5 ({\enc_count[5]_5 [13:9],\enc_count[5]_5 [7:5],\enc_count[5]_5 [3:0]}),
        .p_0_in(p_0_in),
        .rst_n(rst_n),
        .s_axi_araddr({s_axi_araddr[5:4],s_axi_araddr[1:0]}),
        .\s_axi_araddr[7] ({\g_enc[4].u_enc_n_6 ,\g_enc[4].u_enc_n_7 ,\g_enc[4].u_enc_n_8 ,\g_enc[4].u_enc_n_9 ,\g_enc[4].u_enc_n_10 ,\g_enc[4].u_enc_n_11 ,\g_enc[4].u_enc_n_12 ,\g_enc[4].u_enc_n_13 ,\g_enc[4].u_enc_n_14 ,\g_enc[4].u_enc_n_15 ,\g_enc[4].u_enc_n_16 ,\g_enc[4].u_enc_n_17 }),
        .\s_axi_rdata_reg[0] (u_regmap_n_10),
        .\s_axi_rdata_reg[0]_0 (\g_enc[3].u_enc_n_13 ),
        .\s_axi_rdata_reg[0]_1 (u_regmap_n_13),
        .\s_axi_rdata_reg[0]_2 (u_regmap_n_123),
        .\s_axi_rdata_reg[10] (\g_enc[3].u_enc_n_17 ),
        .\s_axi_rdata_reg[10]_0 (u_regmap_n_113),
        .\s_axi_rdata_reg[11] (\g_enc[3].u_enc_n_16 ),
        .\s_axi_rdata_reg[11]_0 (u_regmap_n_112),
        .\s_axi_rdata_reg[12] (\g_enc[3].u_enc_n_15 ),
        .\s_axi_rdata_reg[12]_0 (u_regmap_n_111),
        .\s_axi_rdata_reg[13] (\g_enc[3].u_enc_n_14 ),
        .\s_axi_rdata_reg[13]_0 (u_regmap_n_110),
        .\s_axi_rdata_reg[1] (\g_enc[3].u_enc_n_24 ),
        .\s_axi_rdata_reg[1]_0 (u_regmap_n_122),
        .\s_axi_rdata_reg[2] (\g_enc[3].u_enc_n_23 ),
        .\s_axi_rdata_reg[2]_0 (u_regmap_n_121),
        .\s_axi_rdata_reg[3] (\g_enc[3].u_enc_n_22 ),
        .\s_axi_rdata_reg[3]_0 (u_regmap_n_120),
        .\s_axi_rdata_reg[5] (\g_enc[3].u_enc_n_21 ),
        .\s_axi_rdata_reg[5]_0 (u_regmap_n_118),
        .\s_axi_rdata_reg[6] (\g_enc[3].u_enc_n_20 ),
        .\s_axi_rdata_reg[6]_0 (u_regmap_n_117),
        .\s_axi_rdata_reg[7] (\g_enc[3].u_enc_n_19 ),
        .\s_axi_rdata_reg[7]_0 (u_regmap_n_116),
        .\s_axi_rdata_reg[9] (\g_enc[3].u_enc_n_18 ),
        .\s_axi_rdata_reg[9]_0 (u_regmap_n_114));
  design_1_fx_system_wrapper_0_1_quad_decoder_4 \g_enc[5].u_enc 
       (.D(state_4),
        .Q(\b_sync_reg[1]_3 ),
        .\a_sync_reg[1]_0 (\a_sync_reg[1]_4 ),
        .clean_a_reg_0(clean_a_reg_4),
        .clean_b_reg_0(clean_b_reg_4),
        .clk(clk),
        .cnt_a__0_15(cnt_a__0_15),
        .\cnt_a_reg[0]_0 (enc_tick),
        .cnt_b__0_14(cnt_b__0_14),
        .\count_reg[13]_0 ({\enc_count[5]_5 [13:9],\enc_count[5]_5 [7:5],\enc_count[5]_5 [3:0]}),
        .\count_reg[14]_0 (\g_enc[5].u_enc_n_31 ),
        .\count_reg[15]_0 (\g_enc[5].u_enc_n_16 ),
        .\count_reg[4]_0 (\g_enc[5].u_enc_n_29 ),
        .\count_reg[8]_0 (\g_enc[5].u_enc_n_30 ),
        .enc_a(enc_a[5]),
        .enc_b(enc_b[5]),
        .p_0_in(p_0_in),
        .rst_n(rst_n),
        .s_axi_araddr(s_axi_araddr),
        .\s_axi_araddr[5] ({p_1_in[30],p_1_in[28:25],p_1_in[23],p_1_in[21],p_1_in[19:18],p_1_in[16:15]}),
        .\s_axi_araddr[7] (\g_enc[5].u_enc_n_28 ),
        .\s_axi_rdata_reg[15] (u_regmap_n_108),
        .\s_axi_rdata_reg[15]_0 (\g_enc[3].u_enc_n_10 ),
        .\s_axi_rdata_reg[15]_1 (u_regmap_n_10),
        .\s_axi_rdata_reg[15]_2 (u_regmap_n_12),
        .\s_axi_rdata_reg[15]_3 (u_regmap_n_11),
        .\s_axi_rdata_reg[16] (u_regmap_n_107),
        .\s_axi_rdata_reg[17] ({\enc_count[4]_4 [15:14],\enc_count[4]_4 [8],\enc_count[4]_4 [4]}),
        .\s_axi_rdata_reg[17]_0 (u_regmap_n_13),
        .\s_axi_rdata_reg[18] (u_regmap_n_105),
        .\s_axi_rdata_reg[19] (u_regmap_n_104),
        .\s_axi_rdata_reg[21] (u_regmap_n_102),
        .\s_axi_rdata_reg[23] (u_regmap_n_100),
        .\s_axi_rdata_reg[25] (u_regmap_n_98),
        .\s_axi_rdata_reg[26] (u_regmap_n_97),
        .\s_axi_rdata_reg[27] (u_regmap_n_96),
        .\s_axi_rdata_reg[28] (u_regmap_n_95),
        .\s_axi_rdata_reg[30] (u_regmap_n_93));
  design_1_fx_system_wrapper_0_1_fx_axis_mono_adapter u_adapter
       (.Q(ret_data),
        .clk(clk),
        .\in_data_reg[31]_0 ({mono_data[31],mono_data[28:6]}),
        .\in_state_reg[0]_0 (\in_state_reg[0] ),
        .\in_state_reg[0]_1 (\in_state_reg[0]_0 ),
        .inflight0(inflight0),
        .inflight_reg_0(inflight_reg),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .mono_valid(mono_valid),
        .p_0_in(p_0_in),
        .ret_valid(ret_valid),
        .rst_n(rst_n),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tready(u_delay_n_18),
        .s_axis_tready_0(u_delay_n_14),
        .s_axis_tready_1(u_delay_n_17),
        .s_axis_tvalid(s_axis_tvalid));
  design_1_fx_system_wrapper_0_1_fx_delay_simple u_delay
       (.D({mono_data[31],mono_data[28:6]}),
        .E(wptr_latched),
        .\FSM_sequential_state_reg[0]_0 (state_5[0]),
        .\FSM_sequential_state_reg[1]_0 (state_5[1]),
        .\FSM_sequential_state_reg[1]_1 (\FSM_sequential_state_reg[1] ),
        .\FSM_sequential_state_reg[2]_0 (state_5[2]),
        .\FSM_sequential_state_reg[2]_1 (\FSM_sequential_state_reg[2] ),
        .P(P),
        .Q(reg_D_16_16),
        .bram_wr_en_reg_rep(bram_wr_en_reg_rep),
        .bram_wr_en_reg_rep__0(bram_wr_en_reg_rep__0),
        .bram_wr_en_reg_rep__1(bram_wr_en_reg_rep__1),
        .bram_wr_en_reg_rep__10(bram_wr_en_reg_rep__10),
        .bram_wr_en_reg_rep__11(bram_wr_en_reg_rep__11),
        .bram_wr_en_reg_rep__2(bram_wr_en_reg_rep__2),
        .bram_wr_en_reg_rep__3(bram_wr_en_reg_rep__3),
        .bram_wr_en_reg_rep__4(bram_wr_en_reg_rep__4),
        .bram_wr_en_reg_rep__5(bram_wr_en_reg_rep__5),
        .bram_wr_en_reg_rep__6(bram_wr_en_reg_rep__6),
        .bram_wr_en_reg_rep__7(bram_wr_en_reg_rep__7),
        .bram_wr_en_reg_rep__8(bram_wr_en_reg_rep__8),
        .bram_wr_en_reg_rep__9(bram_wr_en_reg_rep__9),
        .clear_req_reg_0(clear_req),
        .clk(clk),
        .d_reg_valid_reg(d_valid),
        .d_reg_valid_reg_0(d_reg_valid_reg),
        .enable_d_reg_0(u_regmap_n_8),
        .frac_d_valid(frac_d_valid),
        .frac_start_reg(frac_start_reg),
        .fx_enable(fx_enable),
        .inflight0(inflight0),
        .mono_valid(mono_valid),
        .\out_buf_reg[31]_0 (ret_data),
        .out_buf_valid_reg_0(u_delay_n_17),
        .p_0_in(p_0_in),
        .rd_en(bram_rd_en),
        .rd_en_reg(rd_en_reg),
        .rd_en_reg_rep(rd_en_reg_rep),
        .\reg_ctrl_reg[0] (u_delay_n_14),
        .ret_valid(ret_valid),
        .rst_n(rst_n),
        .s_axi_wdata(s_axi_wdata[16:0]),
        .\state_reg[0] (\state_reg[0] ),
        .\state_reg[0]_0 (\state_reg[0]_0 ),
        .\state_reg[1] (\state_reg[1] ),
        .\state_reg[1]_0 (u_delay_n_18),
        .\term_r_reg[0] (\term_r_reg[0] ),
        .\term_r_reg[0]_0 (\term_r_reg[0]_0 ),
        .v1__0_0(reg_fb_q1_31),
        .v1__3_0(reg_wet),
        .v1__4_0(reg_wet_q1_31),
        .\x_reg_reg[6]_0 (reg_enable));
  design_1_fx_system_wrapper_0_1_fx_regmap u_regmap
       (.D({p_1_in[30],\g_enc[3].u_enc_n_2 ,p_1_in[28:25],\g_enc[3].u_enc_n_3 ,p_1_in[23],\g_enc[3].u_enc_n_4 ,p_1_in[21],\g_enc[3].u_enc_n_5 ,p_1_in[19:18],\g_enc[3].u_enc_n_6 ,p_1_in[16:15],\g_enc[3].u_enc_n_7 ,\g_enc[4].u_enc_n_6 ,\g_enc[4].u_enc_n_7 ,\g_enc[4].u_enc_n_8 ,\g_enc[4].u_enc_n_9 ,\g_enc[4].u_enc_n_10 ,\g_enc[3].u_enc_n_8 ,\g_enc[4].u_enc_n_11 ,\g_enc[4].u_enc_n_12 ,\g_enc[4].u_enc_n_13 ,\g_enc[3].u_enc_n_9 ,\g_enc[4].u_enc_n_14 ,\g_enc[4].u_enc_n_15 ,\g_enc[4].u_enc_n_16 ,\g_enc[4].u_enc_n_17 }),
        .E(reg_wet),
        .Q(reg_enable),
        .aw_done_reg_0(aw_done),
        .aw_done_reg_1(aw_done_reg),
        .clk(clk),
        .fx_enable(fx_enable),
        .fx_enable_0(u_regmap_n_8),
        .p_0_in(p_0_in),
        .\reg_delay_reg[31]_0 (reg_D_16_16),
        .\reg_fb_reg[31]_0 (reg_fb_q1_31),
        .\reg_wet_reg[0]_0 (u_regmap_n_123),
        .\reg_wet_reg[10]_0 (u_regmap_n_113),
        .\reg_wet_reg[11]_0 (u_regmap_n_112),
        .\reg_wet_reg[12]_0 (u_regmap_n_111),
        .\reg_wet_reg[13]_0 (u_regmap_n_110),
        .\reg_wet_reg[14]_0 (u_regmap_n_109),
        .\reg_wet_reg[15]_0 (u_regmap_n_108),
        .\reg_wet_reg[16]_0 (u_regmap_n_107),
        .\reg_wet_reg[17]_0 (u_regmap_n_106),
        .\reg_wet_reg[18]_0 (u_regmap_n_105),
        .\reg_wet_reg[19]_0 (u_regmap_n_104),
        .\reg_wet_reg[1]_0 (u_regmap_n_122),
        .\reg_wet_reg[20]_0 (u_regmap_n_103),
        .\reg_wet_reg[21]_0 (u_regmap_n_102),
        .\reg_wet_reg[22]_0 (u_regmap_n_101),
        .\reg_wet_reg[23]_0 (u_regmap_n_100),
        .\reg_wet_reg[24]_0 (u_regmap_n_99),
        .\reg_wet_reg[25]_0 (u_regmap_n_98),
        .\reg_wet_reg[26]_0 (u_regmap_n_97),
        .\reg_wet_reg[27]_0 (u_regmap_n_96),
        .\reg_wet_reg[28]_0 (u_regmap_n_95),
        .\reg_wet_reg[29]_0 (u_regmap_n_94),
        .\reg_wet_reg[2]_0 (u_regmap_n_121),
        .\reg_wet_reg[30]_0 (u_regmap_n_93),
        .\reg_wet_reg[31]_0 (reg_wet_q1_31),
        .\reg_wet_reg[3]_0 (u_regmap_n_120),
        .\reg_wet_reg[4]_0 (u_regmap_n_119),
        .\reg_wet_reg[5]_0 (u_regmap_n_118),
        .\reg_wet_reg[6]_0 (u_regmap_n_117),
        .\reg_wet_reg[7]_0 (u_regmap_n_116),
        .\reg_wet_reg[8]_0 (u_regmap_n_115),
        .\reg_wet_reg[9]_0 (u_regmap_n_114),
        .rst_n(rst_n),
        .s_axi_araddr(s_axi_araddr[4:0]),
        .\s_axi_araddr[5] (u_regmap_n_10),
        .\s_axi_araddr[5]_0 (u_regmap_n_13),
        .\s_axi_araddr[6] (u_regmap_n_11),
        .s_axi_araddr_4_sp_1(u_regmap_n_12),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_reg[31]_0 (\g_enc[3].u_enc_n_10 ),
        .\s_axi_rdata_reg[31]_1 (\g_enc[5].u_enc_n_28 ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .w_done_reg_0(w_done_reg),
        .w_done_reg_1(w_done_reg_0));
  design_1_fx_system_wrapper_0_1_tick_gen u_tick
       (.clk(clk),
        .p_0_in(p_0_in),
        .rst_n(rst_n),
        .tick_reg_0(enc_tick));
endmodule

(* ORIG_REF_NAME = "fx_delay_simple" *) 
module design_1_fx_system_wrapper_0_1_fx_delay_simple
   (rd_en,
    p_0_in,
    P,
    E,
    frac_d_valid,
    clear_req_reg_0,
    \term_r_reg[0] ,
    d_reg_valid_reg,
    \state_reg[0] ,
    \state_reg[0]_0 ,
    \state_reg[1] ,
    \FSM_sequential_state_reg[1]_0 ,
    \FSM_sequential_state_reg[2]_0 ,
    \FSM_sequential_state_reg[0]_0 ,
    \reg_ctrl_reg[0] ,
    \FSM_sequential_state_reg[2]_1 ,
    ret_valid,
    out_buf_valid_reg_0,
    \state_reg[1]_0 ,
    \FSM_sequential_state_reg[1]_1 ,
    \out_buf_reg[31]_0 ,
    clk,
    Q,
    v1__0_0,
    v1__3_0,
    s_axi_wdata,
    v1__4_0,
    enable_d_reg_0,
    rd_en_reg,
    \term_r_reg[0]_0 ,
    d_reg_valid_reg_0,
    frac_start_reg,
    rd_en_reg_rep,
    bram_wr_en_reg_rep,
    bram_wr_en_reg_rep__0,
    bram_wr_en_reg_rep__1,
    bram_wr_en_reg_rep__2,
    bram_wr_en_reg_rep__3,
    bram_wr_en_reg_rep__4,
    bram_wr_en_reg_rep__5,
    bram_wr_en_reg_rep__6,
    bram_wr_en_reg_rep__7,
    bram_wr_en_reg_rep__8,
    bram_wr_en_reg_rep__9,
    bram_wr_en_reg_rep__10,
    bram_wr_en_reg_rep__11,
    rst_n,
    inflight0,
    mono_valid,
    fx_enable,
    \x_reg_reg[6]_0 ,
    D);
  output rd_en;
  output p_0_in;
  output [0:0]P;
  output [0:0]E;
  output frac_d_valid;
  output clear_req_reg_0;
  output [0:0]\term_r_reg[0] ;
  output d_reg_valid_reg;
  output \state_reg[0] ;
  output \state_reg[0]_0 ;
  output \state_reg[1] ;
  output \FSM_sequential_state_reg[1]_0 ;
  output \FSM_sequential_state_reg[2]_0 ;
  output \FSM_sequential_state_reg[0]_0 ;
  output \reg_ctrl_reg[0] ;
  output \FSM_sequential_state_reg[2]_1 ;
  output ret_valid;
  output out_buf_valid_reg_0;
  output \state_reg[1]_0 ;
  output [0:0]\FSM_sequential_state_reg[1]_1 ;
  output [25:0]\out_buf_reg[31]_0 ;
  input clk;
  input [31:0]Q;
  input [31:0]v1__0_0;
  input [0:0]v1__3_0;
  input [16:0]s_axi_wdata;
  input [14:0]v1__4_0;
  input enable_d_reg_0;
  input rd_en_reg;
  input \term_r_reg[0]_0 ;
  input d_reg_valid_reg_0;
  input frac_start_reg;
  input rd_en_reg_rep;
  input bram_wr_en_reg_rep;
  input bram_wr_en_reg_rep__0;
  input bram_wr_en_reg_rep__1;
  input bram_wr_en_reg_rep__2;
  input bram_wr_en_reg_rep__3;
  input bram_wr_en_reg_rep__4;
  input bram_wr_en_reg_rep__5;
  input bram_wr_en_reg_rep__6;
  input bram_wr_en_reg_rep__7;
  input bram_wr_en_reg_rep__8;
  input bram_wr_en_reg_rep__9;
  input bram_wr_en_reg_rep__10;
  input bram_wr_en_reg_rep__11;
  input rst_n;
  input inflight0;
  input mono_valid;
  input fx_enable;
  input [0:0]\x_reg_reg[6]_0 ;
  input [23:0]D;

  wire [23:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire [0:0]\FSM_sequential_state_reg[1]_1 ;
  wire \FSM_sequential_state_reg[2]_0 ;
  wire \FSM_sequential_state_reg[2]_1 ;
  wire [0:0]P;
  wire [31:0]Q;
  wire bram_wr_en_reg_rep;
  wire bram_wr_en_reg_rep__0;
  wire bram_wr_en_reg_rep__1;
  wire bram_wr_en_reg_rep__10;
  wire bram_wr_en_reg_rep__11;
  wire bram_wr_en_reg_rep__2;
  wire bram_wr_en_reg_rep__3;
  wire bram_wr_en_reg_rep__4;
  wire bram_wr_en_reg_rep__5;
  wire bram_wr_en_reg_rep__6;
  wire bram_wr_en_reg_rep__7;
  wire bram_wr_en_reg_rep__8;
  wire bram_wr_en_reg_rep__9;
  wire clear_req0;
  wire clear_req_reg_0;
  wire clk;
  wire [31:0]d_out;
  wire d_reg_valid_reg;
  wire d_reg_valid_reg_0;
  wire enable_d;
  wire enable_d_reg_0;
  wire \fb_term_r[0]_i_1_n_0 ;
  wire \fb_term_r[10]_i_1_n_0 ;
  wire \fb_term_r[11]_i_1_n_0 ;
  wire \fb_term_r[12]_i_1_n_0 ;
  wire \fb_term_r[13]_i_1_n_0 ;
  wire \fb_term_r[14]_i_1_n_0 ;
  wire \fb_term_r[15]_i_1_n_0 ;
  wire \fb_term_r[16]_i_1_n_0 ;
  wire \fb_term_r[17]_i_1_n_0 ;
  wire \fb_term_r[18]_i_1_n_0 ;
  wire \fb_term_r[19]_i_1_n_0 ;
  wire \fb_term_r[1]_i_1_n_0 ;
  wire \fb_term_r[20]_i_1_n_0 ;
  wire \fb_term_r[21]_i_1_n_0 ;
  wire \fb_term_r[22]_i_1_n_0 ;
  wire \fb_term_r[23]_i_1_n_0 ;
  wire \fb_term_r[24]_i_1_n_0 ;
  wire \fb_term_r[25]_i_1_n_0 ;
  wire \fb_term_r[26]_i_1_n_0 ;
  wire \fb_term_r[27]_i_1_n_0 ;
  wire \fb_term_r[28]_i_1_n_0 ;
  wire \fb_term_r[29]_i_1_n_0 ;
  wire \fb_term_r[2]_i_1_n_0 ;
  wire \fb_term_r[30]_i_1_n_0 ;
  wire \fb_term_r[31]_i_2_n_0 ;
  wire \fb_term_r[3]_i_1_n_0 ;
  wire \fb_term_r[4]_i_1_n_0 ;
  wire \fb_term_r[5]_i_1_n_0 ;
  wire \fb_term_r[6]_i_1_n_0 ;
  wire \fb_term_r[7]_i_1_n_0 ;
  wire \fb_term_r[8]_i_1_n_0 ;
  wire \fb_term_r[9]_i_1_n_0 ;
  wire \fb_term_r_reg_n_0_[0] ;
  wire \fb_term_r_reg_n_0_[10] ;
  wire \fb_term_r_reg_n_0_[11] ;
  wire \fb_term_r_reg_n_0_[12] ;
  wire \fb_term_r_reg_n_0_[13] ;
  wire \fb_term_r_reg_n_0_[14] ;
  wire \fb_term_r_reg_n_0_[15] ;
  wire \fb_term_r_reg_n_0_[16] ;
  wire \fb_term_r_reg_n_0_[17] ;
  wire \fb_term_r_reg_n_0_[18] ;
  wire \fb_term_r_reg_n_0_[19] ;
  wire \fb_term_r_reg_n_0_[1] ;
  wire \fb_term_r_reg_n_0_[20] ;
  wire \fb_term_r_reg_n_0_[21] ;
  wire \fb_term_r_reg_n_0_[22] ;
  wire \fb_term_r_reg_n_0_[23] ;
  wire \fb_term_r_reg_n_0_[24] ;
  wire \fb_term_r_reg_n_0_[25] ;
  wire \fb_term_r_reg_n_0_[26] ;
  wire \fb_term_r_reg_n_0_[27] ;
  wire \fb_term_r_reg_n_0_[28] ;
  wire \fb_term_r_reg_n_0_[29] ;
  wire \fb_term_r_reg_n_0_[2] ;
  wire \fb_term_r_reg_n_0_[30] ;
  wire \fb_term_r_reg_n_0_[3] ;
  wire \fb_term_r_reg_n_0_[4] ;
  wire \fb_term_r_reg_n_0_[5] ;
  wire \fb_term_r_reg_n_0_[6] ;
  wire \fb_term_r_reg_n_0_[7] ;
  wire \fb_term_r_reg_n_0_[8] ;
  wire \fb_term_r_reg_n_0_[9] ;
  wire frac_d_valid;
  wire frac_start_reg;
  wire fx_enable;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__10_i_1_n_0;
  wire i__carry__10_i_2_n_0;
  wire i__carry__10_i_3_n_0;
  wire i__carry__10_i_4_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4__0_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1__0_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2__0_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3__0_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4__0_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__3_i_1__0_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2__0_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3__0_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4__0_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__4_i_1__0_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2__0_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3__0_n_0;
  wire i__carry__4_i_3_n_0;
  wire i__carry__4_i_4__0_n_0;
  wire i__carry__4_i_4_n_0;
  wire i__carry__5_i_1__0_n_0;
  wire i__carry__5_i_1_n_0;
  wire i__carry__5_i_2__0_n_0;
  wire i__carry__5_i_2_n_0;
  wire i__carry__5_i_3_n_0;
  wire i__carry__5_i_4_n_0;
  wire i__carry__6_i_1_n_0;
  wire i__carry__6_i_2_n_0;
  wire i__carry__6_i_3_n_0;
  wire i__carry__6_i_4_n_0;
  wire i__carry__7_i_1_n_0;
  wire i__carry__7_i_2_n_0;
  wire i__carry__7_i_3_n_0;
  wire i__carry__7_i_4_n_0;
  wire i__carry__8_i_1_n_0;
  wire i__carry__8_i_2_n_0;
  wire i__carry__8_i_3_n_0;
  wire i__carry__8_i_4_n_0;
  wire i__carry__9_i_1_n_0;
  wire i__carry__9_i_2_n_0;
  wire i__carry__9_i_3_n_0;
  wire i__carry__9_i_4_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_4__0_n_0;
  wire inflight0;
  wire mono_valid;
  wire [25:0]\out_buf_reg[31]_0 ;
  wire out_buf_valid1_out;
  wire out_buf_valid_reg_0;
  wire p_0_in;
  wire p_0_in14_in;
  wire p_0_in8_in;
  wire p_0_in9_in;
  wire p_1_in;
  wire [31:6]p_2_in;
  wire p_2_in6_in;
  wire rd_en;
  wire rd_en_reg;
  wire rd_en_reg_rep;
  wire \reg_ctrl_reg[0] ;
  wire ret_valid;
  wire rst_n;
  wire [16:0]s_axi_wdata;
  wire [31:6]sat32;
  wire sat_add3202_carry__0_i_1_n_0;
  wire sat_add3202_carry__0_i_2_n_0;
  wire sat_add3202_carry__0_i_3_n_0;
  wire sat_add3202_carry__0_i_4_n_0;
  wire sat_add3202_carry__0_n_0;
  wire sat_add3202_carry__0_n_1;
  wire sat_add3202_carry__0_n_2;
  wire sat_add3202_carry__0_n_3;
  wire sat_add3202_carry__0_n_4;
  wire sat_add3202_carry__0_n_5;
  wire sat_add3202_carry__0_n_6;
  wire sat_add3202_carry__0_n_7;
  wire sat_add3202_carry__1_i_1_n_0;
  wire sat_add3202_carry__1_i_2_n_0;
  wire sat_add3202_carry__1_i_3_n_0;
  wire sat_add3202_carry__1_i_4_n_0;
  wire sat_add3202_carry__1_n_0;
  wire sat_add3202_carry__1_n_1;
  wire sat_add3202_carry__1_n_2;
  wire sat_add3202_carry__1_n_3;
  wire sat_add3202_carry__1_n_4;
  wire sat_add3202_carry__1_n_5;
  wire sat_add3202_carry__1_n_6;
  wire sat_add3202_carry__1_n_7;
  wire sat_add3202_carry__2_i_1_n_0;
  wire sat_add3202_carry__2_i_2_n_0;
  wire sat_add3202_carry__2_i_3_n_0;
  wire sat_add3202_carry__2_i_4_n_0;
  wire sat_add3202_carry__2_n_0;
  wire sat_add3202_carry__2_n_1;
  wire sat_add3202_carry__2_n_2;
  wire sat_add3202_carry__2_n_3;
  wire sat_add3202_carry__2_n_4;
  wire sat_add3202_carry__2_n_5;
  wire sat_add3202_carry__2_n_6;
  wire sat_add3202_carry__2_n_7;
  wire sat_add3202_carry__3_i_1_n_0;
  wire sat_add3202_carry__3_i_2_n_0;
  wire sat_add3202_carry__3_i_3_n_0;
  wire sat_add3202_carry__3_i_4_n_0;
  wire sat_add3202_carry__3_n_0;
  wire sat_add3202_carry__3_n_1;
  wire sat_add3202_carry__3_n_2;
  wire sat_add3202_carry__3_n_3;
  wire sat_add3202_carry__3_n_4;
  wire sat_add3202_carry__3_n_5;
  wire sat_add3202_carry__3_n_6;
  wire sat_add3202_carry__3_n_7;
  wire sat_add3202_carry__4_i_1_n_0;
  wire sat_add3202_carry__4_i_2_n_0;
  wire sat_add3202_carry__4_i_3_n_0;
  wire sat_add3202_carry__4_i_4_n_0;
  wire sat_add3202_carry__4_n_0;
  wire sat_add3202_carry__4_n_1;
  wire sat_add3202_carry__4_n_2;
  wire sat_add3202_carry__4_n_3;
  wire sat_add3202_carry__4_n_4;
  wire sat_add3202_carry__4_n_5;
  wire sat_add3202_carry__4_n_6;
  wire sat_add3202_carry__4_n_7;
  wire sat_add3202_carry__5_i_1_n_0;
  wire sat_add3202_carry__5_i_2_n_0;
  wire sat_add3202_carry__5_n_3;
  wire sat_add3202_carry__5_n_7;
  wire sat_add3202_carry_i_1_n_0;
  wire sat_add3202_carry_i_2_n_0;
  wire sat_add3202_carry_i_3_n_0;
  wire sat_add3202_carry_i_4_n_0;
  wire sat_add3202_carry_n_0;
  wire sat_add3202_carry_n_1;
  wire sat_add3202_carry_n_2;
  wire sat_add3202_carry_n_3;
  wire sat_add3202_carry_n_4;
  wire sat_add3202_carry_n_5;
  wire sat_add3202_carry_n_6;
  wire sat_add3202_carry_n_7;
  wire \sat_add3202_inferred__0/i__carry__0_n_0 ;
  wire \sat_add3202_inferred__0/i__carry__0_n_1 ;
  wire \sat_add3202_inferred__0/i__carry__0_n_2 ;
  wire \sat_add3202_inferred__0/i__carry__0_n_3 ;
  wire \sat_add3202_inferred__0/i__carry__0_n_4 ;
  wire \sat_add3202_inferred__0/i__carry__0_n_5 ;
  wire \sat_add3202_inferred__0/i__carry__0_n_6 ;
  wire \sat_add3202_inferred__0/i__carry__0_n_7 ;
  wire \sat_add3202_inferred__0/i__carry__1_n_0 ;
  wire \sat_add3202_inferred__0/i__carry__1_n_1 ;
  wire \sat_add3202_inferred__0/i__carry__1_n_2 ;
  wire \sat_add3202_inferred__0/i__carry__1_n_3 ;
  wire \sat_add3202_inferred__0/i__carry__1_n_4 ;
  wire \sat_add3202_inferred__0/i__carry__1_n_5 ;
  wire \sat_add3202_inferred__0/i__carry__1_n_6 ;
  wire \sat_add3202_inferred__0/i__carry__1_n_7 ;
  wire \sat_add3202_inferred__0/i__carry__2_n_0 ;
  wire \sat_add3202_inferred__0/i__carry__2_n_1 ;
  wire \sat_add3202_inferred__0/i__carry__2_n_2 ;
  wire \sat_add3202_inferred__0/i__carry__2_n_3 ;
  wire \sat_add3202_inferred__0/i__carry__2_n_4 ;
  wire \sat_add3202_inferred__0/i__carry__2_n_5 ;
  wire \sat_add3202_inferred__0/i__carry__2_n_6 ;
  wire \sat_add3202_inferred__0/i__carry__2_n_7 ;
  wire \sat_add3202_inferred__0/i__carry__3_n_0 ;
  wire \sat_add3202_inferred__0/i__carry__3_n_1 ;
  wire \sat_add3202_inferred__0/i__carry__3_n_2 ;
  wire \sat_add3202_inferred__0/i__carry__3_n_3 ;
  wire \sat_add3202_inferred__0/i__carry__3_n_4 ;
  wire \sat_add3202_inferred__0/i__carry__3_n_5 ;
  wire \sat_add3202_inferred__0/i__carry__3_n_6 ;
  wire \sat_add3202_inferred__0/i__carry__3_n_7 ;
  wire \sat_add3202_inferred__0/i__carry__4_n_0 ;
  wire \sat_add3202_inferred__0/i__carry__4_n_1 ;
  wire \sat_add3202_inferred__0/i__carry__4_n_2 ;
  wire \sat_add3202_inferred__0/i__carry__4_n_3 ;
  wire \sat_add3202_inferred__0/i__carry__4_n_4 ;
  wire \sat_add3202_inferred__0/i__carry__4_n_5 ;
  wire \sat_add3202_inferred__0/i__carry__4_n_6 ;
  wire \sat_add3202_inferred__0/i__carry__4_n_7 ;
  wire \sat_add3202_inferred__0/i__carry__5_n_3 ;
  wire \sat_add3202_inferred__0/i__carry__5_n_7 ;
  wire \sat_add3202_inferred__0/i__carry_n_0 ;
  wire \sat_add3202_inferred__0/i__carry_n_1 ;
  wire \sat_add3202_inferred__0/i__carry_n_2 ;
  wire \sat_add3202_inferred__0/i__carry_n_3 ;
  wire \sat_add3202_inferred__0/i__carry_n_4 ;
  wire \sat_add3202_inferred__0/i__carry_n_5 ;
  wire \sat_add3202_inferred__0/i__carry_n_6 ;
  wire \sat_add3202_inferred__0/i__carry_n_7 ;
  wire [31:0]sat_add320_return;
  wire [2:0]state;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire \state_reg[1] ;
  wire \state_reg[1]_0 ;
  wire [0:0]\term_r_reg[0] ;
  wire \term_r_reg[0]_0 ;
  wire u_dl_n_10;
  wire u_dl_n_15;
  wire u_dl_n_18;
  wire u_dl_n_21;
  wire u_dl_n_23;
  wire u_dl_n_25;
  wire u_dl_n_26;
  wire u_dl_n_27;
  wire u_dl_n_28;
  wire v0_carry__0_n_0;
  wire v0_carry__0_n_1;
  wire v0_carry__0_n_2;
  wire v0_carry__0_n_3;
  wire v0_carry__0_n_4;
  wire v0_carry__0_n_5;
  wire v0_carry__0_n_6;
  wire v0_carry__0_n_7;
  wire v0_carry__1_n_0;
  wire v0_carry__1_n_1;
  wire v0_carry__1_n_2;
  wire v0_carry__1_n_3;
  wire v0_carry__1_n_4;
  wire v0_carry__1_n_5;
  wire v0_carry__1_n_6;
  wire v0_carry__1_n_7;
  wire v0_carry__2_n_0;
  wire v0_carry__2_n_1;
  wire v0_carry__2_n_2;
  wire v0_carry__2_n_3;
  wire v0_carry__2_n_4;
  wire v0_carry__2_n_5;
  wire v0_carry__2_n_6;
  wire v0_carry__2_n_7;
  wire v0_carry__3_n_0;
  wire v0_carry__3_n_1;
  wire v0_carry__3_n_2;
  wire v0_carry__3_n_3;
  wire v0_carry__3_n_4;
  wire v0_carry__3_n_5;
  wire v0_carry__3_n_6;
  wire v0_carry__3_n_7;
  wire v0_carry__4_n_0;
  wire v0_carry__4_n_1;
  wire v0_carry__4_n_2;
  wire v0_carry__4_n_3;
  wire v0_carry__4_n_4;
  wire v0_carry__4_n_5;
  wire v0_carry__4_n_6;
  wire v0_carry__4_n_7;
  wire v0_carry__5_n_0;
  wire v0_carry__5_n_1;
  wire v0_carry__5_n_2;
  wire v0_carry__5_n_3;
  wire v0_carry__5_n_4;
  wire v0_carry__5_n_5;
  wire v0_carry__5_n_6;
  wire v0_carry__5_n_7;
  wire v0_carry__6_n_0;
  wire v0_carry__6_n_1;
  wire v0_carry__6_n_2;
  wire v0_carry__6_n_3;
  wire v0_carry__6_n_4;
  wire v0_carry__6_n_5;
  wire v0_carry__6_n_6;
  wire v0_carry__6_n_7;
  wire v0_carry__7_n_2;
  wire v0_carry__7_n_3;
  wire v0_carry__7_n_5;
  wire v0_carry__7_n_6;
  wire v0_carry__7_n_7;
  wire v0_carry_i_1_n_0;
  wire v0_carry_n_0;
  wire v0_carry_n_1;
  wire v0_carry_n_2;
  wire v0_carry_n_3;
  wire v0_carry_n_4;
  wire v0_carry_n_5;
  wire \v0_inferred__0/i__carry__0_n_0 ;
  wire \v0_inferred__0/i__carry__0_n_1 ;
  wire \v0_inferred__0/i__carry__0_n_2 ;
  wire \v0_inferred__0/i__carry__0_n_3 ;
  wire \v0_inferred__0/i__carry__1_n_0 ;
  wire \v0_inferred__0/i__carry__1_n_1 ;
  wire \v0_inferred__0/i__carry__1_n_2 ;
  wire \v0_inferred__0/i__carry__1_n_3 ;
  wire \v0_inferred__0/i__carry__1_n_4 ;
  wire \v0_inferred__0/i__carry__1_n_5 ;
  wire \v0_inferred__0/i__carry__1_n_6 ;
  wire \v0_inferred__0/i__carry__1_n_7 ;
  wire \v0_inferred__0/i__carry__2_n_0 ;
  wire \v0_inferred__0/i__carry__2_n_1 ;
  wire \v0_inferred__0/i__carry__2_n_2 ;
  wire \v0_inferred__0/i__carry__2_n_3 ;
  wire \v0_inferred__0/i__carry__2_n_4 ;
  wire \v0_inferred__0/i__carry__2_n_5 ;
  wire \v0_inferred__0/i__carry__2_n_6 ;
  wire \v0_inferred__0/i__carry__2_n_7 ;
  wire \v0_inferred__0/i__carry__3_n_0 ;
  wire \v0_inferred__0/i__carry__3_n_1 ;
  wire \v0_inferred__0/i__carry__3_n_2 ;
  wire \v0_inferred__0/i__carry__3_n_3 ;
  wire \v0_inferred__0/i__carry__3_n_4 ;
  wire \v0_inferred__0/i__carry__3_n_5 ;
  wire \v0_inferred__0/i__carry__3_n_6 ;
  wire \v0_inferred__0/i__carry__3_n_7 ;
  wire \v0_inferred__0/i__carry__4_n_0 ;
  wire \v0_inferred__0/i__carry__4_n_1 ;
  wire \v0_inferred__0/i__carry__4_n_2 ;
  wire \v0_inferred__0/i__carry__4_n_3 ;
  wire \v0_inferred__0/i__carry__4_n_4 ;
  wire \v0_inferred__0/i__carry__4_n_5 ;
  wire \v0_inferred__0/i__carry__4_n_6 ;
  wire \v0_inferred__0/i__carry__4_n_7 ;
  wire \v0_inferred__0/i__carry__5_n_0 ;
  wire \v0_inferred__0/i__carry__5_n_1 ;
  wire \v0_inferred__0/i__carry__5_n_2 ;
  wire \v0_inferred__0/i__carry__5_n_3 ;
  wire \v0_inferred__0/i__carry__5_n_4 ;
  wire \v0_inferred__0/i__carry__5_n_5 ;
  wire \v0_inferred__0/i__carry__5_n_6 ;
  wire \v0_inferred__0/i__carry__5_n_7 ;
  wire \v0_inferred__0/i__carry__6_n_0 ;
  wire \v0_inferred__0/i__carry__6_n_1 ;
  wire \v0_inferred__0/i__carry__6_n_2 ;
  wire \v0_inferred__0/i__carry__6_n_3 ;
  wire \v0_inferred__0/i__carry__6_n_4 ;
  wire \v0_inferred__0/i__carry__6_n_5 ;
  wire \v0_inferred__0/i__carry__6_n_6 ;
  wire \v0_inferred__0/i__carry__6_n_7 ;
  wire \v0_inferred__0/i__carry__7_n_2 ;
  wire \v0_inferred__0/i__carry__7_n_3 ;
  wire \v0_inferred__0/i__carry__7_n_5 ;
  wire \v0_inferred__0/i__carry__7_n_6 ;
  wire \v0_inferred__0/i__carry__7_n_7 ;
  wire \v0_inferred__0/i__carry_n_0 ;
  wire \v0_inferred__0/i__carry_n_1 ;
  wire \v0_inferred__0/i__carry_n_2 ;
  wire \v0_inferred__0/i__carry_n_3 ;
  wire [31:0]v1__0_0;
  wire v1__0_n_100;
  wire v1__0_n_101;
  wire v1__0_n_102;
  wire v1__0_n_103;
  wire v1__0_n_104;
  wire v1__0_n_105;
  wire v1__0_n_58;
  wire v1__0_n_59;
  wire v1__0_n_60;
  wire v1__0_n_61;
  wire v1__0_n_62;
  wire v1__0_n_63;
  wire v1__0_n_64;
  wire v1__0_n_65;
  wire v1__0_n_66;
  wire v1__0_n_67;
  wire v1__0_n_68;
  wire v1__0_n_69;
  wire v1__0_n_70;
  wire v1__0_n_71;
  wire v1__0_n_72;
  wire v1__0_n_73;
  wire v1__0_n_74;
  wire v1__0_n_75;
  wire v1__0_n_76;
  wire v1__0_n_77;
  wire v1__0_n_78;
  wire v1__0_n_79;
  wire v1__0_n_80;
  wire v1__0_n_81;
  wire v1__0_n_82;
  wire v1__0_n_83;
  wire v1__0_n_84;
  wire v1__0_n_85;
  wire v1__0_n_86;
  wire v1__0_n_87;
  wire v1__0_n_88;
  wire v1__0_n_89;
  wire v1__0_n_90;
  wire v1__0_n_91;
  wire v1__0_n_92;
  wire v1__0_n_93;
  wire v1__0_n_94;
  wire v1__0_n_95;
  wire v1__0_n_96;
  wire v1__0_n_97;
  wire v1__0_n_98;
  wire v1__0_n_99;
  wire v1__1_n_100;
  wire v1__1_n_101;
  wire v1__1_n_102;
  wire v1__1_n_103;
  wire v1__1_n_104;
  wire v1__1_n_105;
  wire v1__1_n_106;
  wire v1__1_n_107;
  wire v1__1_n_108;
  wire v1__1_n_109;
  wire v1__1_n_110;
  wire v1__1_n_111;
  wire v1__1_n_112;
  wire v1__1_n_113;
  wire v1__1_n_114;
  wire v1__1_n_115;
  wire v1__1_n_116;
  wire v1__1_n_117;
  wire v1__1_n_118;
  wire v1__1_n_119;
  wire v1__1_n_120;
  wire v1__1_n_121;
  wire v1__1_n_122;
  wire v1__1_n_123;
  wire v1__1_n_124;
  wire v1__1_n_125;
  wire v1__1_n_126;
  wire v1__1_n_127;
  wire v1__1_n_128;
  wire v1__1_n_129;
  wire v1__1_n_130;
  wire v1__1_n_131;
  wire v1__1_n_132;
  wire v1__1_n_133;
  wire v1__1_n_134;
  wire v1__1_n_135;
  wire v1__1_n_136;
  wire v1__1_n_137;
  wire v1__1_n_138;
  wire v1__1_n_139;
  wire v1__1_n_140;
  wire v1__1_n_141;
  wire v1__1_n_142;
  wire v1__1_n_143;
  wire v1__1_n_144;
  wire v1__1_n_145;
  wire v1__1_n_146;
  wire v1__1_n_147;
  wire v1__1_n_148;
  wire v1__1_n_149;
  wire v1__1_n_150;
  wire v1__1_n_151;
  wire v1__1_n_152;
  wire v1__1_n_153;
  wire v1__1_n_58;
  wire v1__1_n_59;
  wire v1__1_n_60;
  wire v1__1_n_61;
  wire v1__1_n_62;
  wire v1__1_n_63;
  wire v1__1_n_64;
  wire v1__1_n_65;
  wire v1__1_n_66;
  wire v1__1_n_67;
  wire v1__1_n_68;
  wire v1__1_n_69;
  wire v1__1_n_70;
  wire v1__1_n_71;
  wire v1__1_n_72;
  wire v1__1_n_73;
  wire v1__1_n_74;
  wire v1__1_n_75;
  wire v1__1_n_76;
  wire v1__1_n_77;
  wire v1__1_n_78;
  wire v1__1_n_79;
  wire v1__1_n_80;
  wire v1__1_n_81;
  wire v1__1_n_82;
  wire v1__1_n_83;
  wire v1__1_n_84;
  wire v1__1_n_85;
  wire v1__1_n_86;
  wire v1__1_n_87;
  wire v1__1_n_88;
  wire v1__1_n_89;
  wire v1__1_n_90;
  wire v1__1_n_91;
  wire v1__1_n_92;
  wire v1__1_n_93;
  wire v1__1_n_94;
  wire v1__1_n_95;
  wire v1__1_n_96;
  wire v1__1_n_97;
  wire v1__1_n_98;
  wire v1__1_n_99;
  wire v1__2_n_100;
  wire v1__2_n_101;
  wire v1__2_n_102;
  wire v1__2_n_103;
  wire v1__2_n_104;
  wire v1__2_n_105;
  wire v1__2_n_58;
  wire v1__2_n_59;
  wire v1__2_n_60;
  wire v1__2_n_61;
  wire v1__2_n_62;
  wire v1__2_n_63;
  wire v1__2_n_64;
  wire v1__2_n_65;
  wire v1__2_n_66;
  wire v1__2_n_67;
  wire v1__2_n_68;
  wire v1__2_n_69;
  wire v1__2_n_70;
  wire v1__2_n_71;
  wire v1__2_n_72;
  wire v1__2_n_73;
  wire v1__2_n_74;
  wire v1__2_n_75;
  wire v1__2_n_76;
  wire v1__2_n_77;
  wire v1__2_n_78;
  wire v1__2_n_79;
  wire v1__2_n_80;
  wire v1__2_n_81;
  wire v1__2_n_82;
  wire v1__2_n_83;
  wire v1__2_n_84;
  wire v1__2_n_85;
  wire v1__2_n_86;
  wire v1__2_n_87;
  wire v1__2_n_88;
  wire v1__2_n_89;
  wire v1__2_n_90;
  wire v1__2_n_91;
  wire v1__2_n_92;
  wire v1__2_n_93;
  wire v1__2_n_94;
  wire v1__2_n_95;
  wire v1__2_n_96;
  wire v1__2_n_97;
  wire v1__2_n_98;
  wire v1__2_n_99;
  wire [0:0]v1__3_0;
  wire v1__3_n_100;
  wire v1__3_n_101;
  wire v1__3_n_102;
  wire v1__3_n_103;
  wire v1__3_n_104;
  wire v1__3_n_105;
  wire v1__3_n_106;
  wire v1__3_n_107;
  wire v1__3_n_108;
  wire v1__3_n_109;
  wire v1__3_n_110;
  wire v1__3_n_111;
  wire v1__3_n_112;
  wire v1__3_n_113;
  wire v1__3_n_114;
  wire v1__3_n_115;
  wire v1__3_n_116;
  wire v1__3_n_117;
  wire v1__3_n_118;
  wire v1__3_n_119;
  wire v1__3_n_120;
  wire v1__3_n_121;
  wire v1__3_n_122;
  wire v1__3_n_123;
  wire v1__3_n_124;
  wire v1__3_n_125;
  wire v1__3_n_126;
  wire v1__3_n_127;
  wire v1__3_n_128;
  wire v1__3_n_129;
  wire v1__3_n_130;
  wire v1__3_n_131;
  wire v1__3_n_132;
  wire v1__3_n_133;
  wire v1__3_n_134;
  wire v1__3_n_135;
  wire v1__3_n_136;
  wire v1__3_n_137;
  wire v1__3_n_138;
  wire v1__3_n_139;
  wire v1__3_n_140;
  wire v1__3_n_141;
  wire v1__3_n_142;
  wire v1__3_n_143;
  wire v1__3_n_144;
  wire v1__3_n_145;
  wire v1__3_n_146;
  wire v1__3_n_147;
  wire v1__3_n_148;
  wire v1__3_n_149;
  wire v1__3_n_150;
  wire v1__3_n_151;
  wire v1__3_n_152;
  wire v1__3_n_153;
  wire v1__3_n_58;
  wire v1__3_n_59;
  wire v1__3_n_60;
  wire v1__3_n_61;
  wire v1__3_n_62;
  wire v1__3_n_63;
  wire v1__3_n_64;
  wire v1__3_n_65;
  wire v1__3_n_66;
  wire v1__3_n_67;
  wire v1__3_n_68;
  wire v1__3_n_69;
  wire v1__3_n_70;
  wire v1__3_n_71;
  wire v1__3_n_72;
  wire v1__3_n_73;
  wire v1__3_n_74;
  wire v1__3_n_75;
  wire v1__3_n_76;
  wire v1__3_n_77;
  wire v1__3_n_78;
  wire v1__3_n_79;
  wire v1__3_n_80;
  wire v1__3_n_81;
  wire v1__3_n_82;
  wire v1__3_n_83;
  wire v1__3_n_84;
  wire v1__3_n_85;
  wire v1__3_n_86;
  wire v1__3_n_87;
  wire v1__3_n_88;
  wire v1__3_n_89;
  wire v1__3_n_90;
  wire v1__3_n_91;
  wire v1__3_n_92;
  wire v1__3_n_93;
  wire v1__3_n_94;
  wire v1__3_n_95;
  wire v1__3_n_96;
  wire v1__3_n_97;
  wire v1__3_n_98;
  wire v1__3_n_99;
  wire [14:0]v1__4_0;
  wire v1__4_n_100;
  wire v1__4_n_101;
  wire v1__4_n_102;
  wire v1__4_n_103;
  wire v1__4_n_104;
  wire v1__4_n_105;
  wire v1__4_n_58;
  wire v1__4_n_59;
  wire v1__4_n_60;
  wire v1__4_n_61;
  wire v1__4_n_62;
  wire v1__4_n_63;
  wire v1__4_n_64;
  wire v1__4_n_65;
  wire v1__4_n_66;
  wire v1__4_n_67;
  wire v1__4_n_68;
  wire v1__4_n_69;
  wire v1__4_n_70;
  wire v1__4_n_71;
  wire v1__4_n_72;
  wire v1__4_n_73;
  wire v1__4_n_74;
  wire v1__4_n_75;
  wire v1__4_n_76;
  wire v1__4_n_77;
  wire v1__4_n_78;
  wire v1__4_n_79;
  wire v1__4_n_80;
  wire v1__4_n_81;
  wire v1__4_n_82;
  wire v1__4_n_83;
  wire v1__4_n_84;
  wire v1__4_n_85;
  wire v1__4_n_86;
  wire v1__4_n_87;
  wire v1__4_n_88;
  wire v1__4_n_89;
  wire v1__4_n_90;
  wire v1__4_n_91;
  wire v1__4_n_92;
  wire v1__4_n_93;
  wire v1__4_n_94;
  wire v1__4_n_95;
  wire v1__4_n_96;
  wire v1__4_n_97;
  wire v1__4_n_98;
  wire v1__4_n_99;
  wire v1__5_n_100;
  wire v1__5_n_101;
  wire v1__5_n_102;
  wire v1__5_n_103;
  wire v1__5_n_104;
  wire v1__5_n_105;
  wire v1__5_n_106;
  wire v1__5_n_107;
  wire v1__5_n_108;
  wire v1__5_n_109;
  wire v1__5_n_110;
  wire v1__5_n_111;
  wire v1__5_n_112;
  wire v1__5_n_113;
  wire v1__5_n_114;
  wire v1__5_n_115;
  wire v1__5_n_116;
  wire v1__5_n_117;
  wire v1__5_n_118;
  wire v1__5_n_119;
  wire v1__5_n_120;
  wire v1__5_n_121;
  wire v1__5_n_122;
  wire v1__5_n_123;
  wire v1__5_n_124;
  wire v1__5_n_125;
  wire v1__5_n_126;
  wire v1__5_n_127;
  wire v1__5_n_128;
  wire v1__5_n_129;
  wire v1__5_n_130;
  wire v1__5_n_131;
  wire v1__5_n_132;
  wire v1__5_n_133;
  wire v1__5_n_134;
  wire v1__5_n_135;
  wire v1__5_n_136;
  wire v1__5_n_137;
  wire v1__5_n_138;
  wire v1__5_n_139;
  wire v1__5_n_140;
  wire v1__5_n_141;
  wire v1__5_n_142;
  wire v1__5_n_143;
  wire v1__5_n_144;
  wire v1__5_n_145;
  wire v1__5_n_146;
  wire v1__5_n_147;
  wire v1__5_n_148;
  wire v1__5_n_149;
  wire v1__5_n_150;
  wire v1__5_n_151;
  wire v1__5_n_152;
  wire v1__5_n_153;
  wire v1__5_n_58;
  wire v1__5_n_59;
  wire v1__5_n_60;
  wire v1__5_n_61;
  wire v1__5_n_62;
  wire v1__5_n_63;
  wire v1__5_n_64;
  wire v1__5_n_65;
  wire v1__5_n_66;
  wire v1__5_n_67;
  wire v1__5_n_68;
  wire v1__5_n_69;
  wire v1__5_n_70;
  wire v1__5_n_71;
  wire v1__5_n_72;
  wire v1__5_n_73;
  wire v1__5_n_74;
  wire v1__5_n_75;
  wire v1__5_n_76;
  wire v1__5_n_77;
  wire v1__5_n_78;
  wire v1__5_n_79;
  wire v1__5_n_80;
  wire v1__5_n_81;
  wire v1__5_n_82;
  wire v1__5_n_83;
  wire v1__5_n_84;
  wire v1__5_n_85;
  wire v1__5_n_86;
  wire v1__5_n_87;
  wire v1__5_n_88;
  wire v1__5_n_89;
  wire v1__5_n_90;
  wire v1__5_n_91;
  wire v1__5_n_92;
  wire v1__5_n_93;
  wire v1__5_n_94;
  wire v1__5_n_95;
  wire v1__5_n_96;
  wire v1__5_n_97;
  wire v1__5_n_98;
  wire v1__5_n_99;
  wire v1__6_n_100;
  wire v1__6_n_101;
  wire v1__6_n_102;
  wire v1__6_n_103;
  wire v1__6_n_104;
  wire v1__6_n_105;
  wire v1__6_n_58;
  wire v1__6_n_59;
  wire v1__6_n_60;
  wire v1__6_n_61;
  wire v1__6_n_62;
  wire v1__6_n_63;
  wire v1__6_n_64;
  wire v1__6_n_65;
  wire v1__6_n_66;
  wire v1__6_n_67;
  wire v1__6_n_68;
  wire v1__6_n_69;
  wire v1__6_n_70;
  wire v1__6_n_71;
  wire v1__6_n_72;
  wire v1__6_n_73;
  wire v1__6_n_74;
  wire v1__6_n_75;
  wire v1__6_n_76;
  wire v1__6_n_77;
  wire v1__6_n_78;
  wire v1__6_n_79;
  wire v1__6_n_80;
  wire v1__6_n_81;
  wire v1__6_n_82;
  wire v1__6_n_83;
  wire v1__6_n_84;
  wire v1__6_n_85;
  wire v1__6_n_86;
  wire v1__6_n_87;
  wire v1__6_n_88;
  wire v1__6_n_89;
  wire v1__6_n_90;
  wire v1__6_n_91;
  wire v1__6_n_92;
  wire v1__6_n_93;
  wire v1__6_n_94;
  wire v1__6_n_95;
  wire v1__6_n_96;
  wire v1__6_n_97;
  wire v1__6_n_98;
  wire v1__6_n_99;
  wire v1_carry__0_i_1_n_0;
  wire v1_carry__0_i_2_n_0;
  wire v1_carry__0_i_3_n_0;
  wire v1_carry__0_i_4_n_0;
  wire v1_carry__0_n_0;
  wire v1_carry__0_n_1;
  wire v1_carry__0_n_2;
  wire v1_carry__0_n_3;
  wire v1_carry__10_i_1_n_0;
  wire v1_carry__10_i_2_n_0;
  wire v1_carry__10_i_3_n_0;
  wire v1_carry__10_i_4_n_0;
  wire v1_carry__10_n_1;
  wire v1_carry__10_n_2;
  wire v1_carry__10_n_3;
  wire v1_carry__10_n_4;
  wire v1_carry__10_n_5;
  wire v1_carry__10_n_6;
  wire v1_carry__10_n_7;
  wire v1_carry__1_i_1_n_0;
  wire v1_carry__1_i_2_n_0;
  wire v1_carry__1_i_3_n_0;
  wire v1_carry__1_i_4_n_0;
  wire v1_carry__1_n_0;
  wire v1_carry__1_n_1;
  wire v1_carry__1_n_2;
  wire v1_carry__1_n_3;
  wire v1_carry__2_i_1_n_0;
  wire v1_carry__2_i_2_n_0;
  wire v1_carry__2_i_3_n_0;
  wire v1_carry__2_i_4_n_0;
  wire v1_carry__2_n_0;
  wire v1_carry__2_n_1;
  wire v1_carry__2_n_2;
  wire v1_carry__2_n_3;
  wire v1_carry__2_n_4;
  wire v1_carry__2_n_5;
  wire v1_carry__2_n_6;
  wire v1_carry__3_i_1_n_0;
  wire v1_carry__3_i_2_n_0;
  wire v1_carry__3_i_3_n_0;
  wire v1_carry__3_i_4_n_0;
  wire v1_carry__3_n_0;
  wire v1_carry__3_n_1;
  wire v1_carry__3_n_2;
  wire v1_carry__3_n_3;
  wire v1_carry__3_n_4;
  wire v1_carry__3_n_5;
  wire v1_carry__3_n_6;
  wire v1_carry__3_n_7;
  wire v1_carry__4_i_1_n_0;
  wire v1_carry__4_i_2_n_0;
  wire v1_carry__4_i_3_n_0;
  wire v1_carry__4_i_4_n_0;
  wire v1_carry__4_n_0;
  wire v1_carry__4_n_1;
  wire v1_carry__4_n_2;
  wire v1_carry__4_n_3;
  wire v1_carry__4_n_4;
  wire v1_carry__4_n_5;
  wire v1_carry__4_n_6;
  wire v1_carry__4_n_7;
  wire v1_carry__5_i_1_n_0;
  wire v1_carry__5_i_2_n_0;
  wire v1_carry__5_i_3_n_0;
  wire v1_carry__5_i_4_n_0;
  wire v1_carry__5_n_0;
  wire v1_carry__5_n_1;
  wire v1_carry__5_n_2;
  wire v1_carry__5_n_3;
  wire v1_carry__5_n_4;
  wire v1_carry__5_n_5;
  wire v1_carry__5_n_6;
  wire v1_carry__5_n_7;
  wire v1_carry__6_i_1_n_0;
  wire v1_carry__6_i_2_n_0;
  wire v1_carry__6_i_3_n_0;
  wire v1_carry__6_i_4_n_0;
  wire v1_carry__6_n_0;
  wire v1_carry__6_n_1;
  wire v1_carry__6_n_2;
  wire v1_carry__6_n_3;
  wire v1_carry__6_n_4;
  wire v1_carry__6_n_5;
  wire v1_carry__6_n_6;
  wire v1_carry__6_n_7;
  wire v1_carry__7_i_1_n_0;
  wire v1_carry__7_i_2_n_0;
  wire v1_carry__7_i_3_n_0;
  wire v1_carry__7_i_4_n_0;
  wire v1_carry__7_n_0;
  wire v1_carry__7_n_1;
  wire v1_carry__7_n_2;
  wire v1_carry__7_n_3;
  wire v1_carry__7_n_4;
  wire v1_carry__7_n_5;
  wire v1_carry__7_n_6;
  wire v1_carry__7_n_7;
  wire v1_carry__8_i_1_n_0;
  wire v1_carry__8_i_2_n_0;
  wire v1_carry__8_i_3_n_0;
  wire v1_carry__8_i_4_n_0;
  wire v1_carry__8_n_0;
  wire v1_carry__8_n_1;
  wire v1_carry__8_n_2;
  wire v1_carry__8_n_3;
  wire v1_carry__8_n_4;
  wire v1_carry__8_n_5;
  wire v1_carry__8_n_6;
  wire v1_carry__8_n_7;
  wire v1_carry__9_i_1_n_0;
  wire v1_carry__9_i_2_n_0;
  wire v1_carry__9_i_3_n_0;
  wire v1_carry__9_i_4_n_0;
  wire v1_carry__9_n_0;
  wire v1_carry__9_n_1;
  wire v1_carry__9_n_2;
  wire v1_carry__9_n_3;
  wire v1_carry__9_n_4;
  wire v1_carry__9_n_5;
  wire v1_carry__9_n_6;
  wire v1_carry__9_n_7;
  wire v1_carry_i_1_n_0;
  wire v1_carry_i_2_n_0;
  wire v1_carry_i_3_n_0;
  wire v1_carry_n_0;
  wire v1_carry_n_1;
  wire v1_carry_n_2;
  wire v1_carry_n_3;
  wire \v1_inferred__0/i__carry__0_n_0 ;
  wire \v1_inferred__0/i__carry__0_n_1 ;
  wire \v1_inferred__0/i__carry__0_n_2 ;
  wire \v1_inferred__0/i__carry__0_n_3 ;
  wire \v1_inferred__0/i__carry__10_n_1 ;
  wire \v1_inferred__0/i__carry__10_n_2 ;
  wire \v1_inferred__0/i__carry__10_n_3 ;
  wire \v1_inferred__0/i__carry__10_n_4 ;
  wire \v1_inferred__0/i__carry__10_n_5 ;
  wire \v1_inferred__0/i__carry__10_n_6 ;
  wire \v1_inferred__0/i__carry__10_n_7 ;
  wire \v1_inferred__0/i__carry__1_n_0 ;
  wire \v1_inferred__0/i__carry__1_n_1 ;
  wire \v1_inferred__0/i__carry__1_n_2 ;
  wire \v1_inferred__0/i__carry__1_n_3 ;
  wire \v1_inferred__0/i__carry__2_n_0 ;
  wire \v1_inferred__0/i__carry__2_n_1 ;
  wire \v1_inferred__0/i__carry__2_n_2 ;
  wire \v1_inferred__0/i__carry__2_n_3 ;
  wire \v1_inferred__0/i__carry__2_n_4 ;
  wire \v1_inferred__0/i__carry__2_n_5 ;
  wire \v1_inferred__0/i__carry__2_n_6 ;
  wire \v1_inferred__0/i__carry__3_n_0 ;
  wire \v1_inferred__0/i__carry__3_n_1 ;
  wire \v1_inferred__0/i__carry__3_n_2 ;
  wire \v1_inferred__0/i__carry__3_n_3 ;
  wire \v1_inferred__0/i__carry__3_n_4 ;
  wire \v1_inferred__0/i__carry__3_n_5 ;
  wire \v1_inferred__0/i__carry__3_n_6 ;
  wire \v1_inferred__0/i__carry__3_n_7 ;
  wire \v1_inferred__0/i__carry__4_n_0 ;
  wire \v1_inferred__0/i__carry__4_n_1 ;
  wire \v1_inferred__0/i__carry__4_n_2 ;
  wire \v1_inferred__0/i__carry__4_n_3 ;
  wire \v1_inferred__0/i__carry__4_n_4 ;
  wire \v1_inferred__0/i__carry__4_n_5 ;
  wire \v1_inferred__0/i__carry__4_n_6 ;
  wire \v1_inferred__0/i__carry__4_n_7 ;
  wire \v1_inferred__0/i__carry__5_n_0 ;
  wire \v1_inferred__0/i__carry__5_n_1 ;
  wire \v1_inferred__0/i__carry__5_n_2 ;
  wire \v1_inferred__0/i__carry__5_n_3 ;
  wire \v1_inferred__0/i__carry__5_n_4 ;
  wire \v1_inferred__0/i__carry__5_n_5 ;
  wire \v1_inferred__0/i__carry__5_n_6 ;
  wire \v1_inferred__0/i__carry__5_n_7 ;
  wire \v1_inferred__0/i__carry__6_n_0 ;
  wire \v1_inferred__0/i__carry__6_n_1 ;
  wire \v1_inferred__0/i__carry__6_n_2 ;
  wire \v1_inferred__0/i__carry__6_n_3 ;
  wire \v1_inferred__0/i__carry__6_n_4 ;
  wire \v1_inferred__0/i__carry__6_n_5 ;
  wire \v1_inferred__0/i__carry__6_n_6 ;
  wire \v1_inferred__0/i__carry__6_n_7 ;
  wire \v1_inferred__0/i__carry__7_n_0 ;
  wire \v1_inferred__0/i__carry__7_n_1 ;
  wire \v1_inferred__0/i__carry__7_n_2 ;
  wire \v1_inferred__0/i__carry__7_n_3 ;
  wire \v1_inferred__0/i__carry__7_n_4 ;
  wire \v1_inferred__0/i__carry__7_n_5 ;
  wire \v1_inferred__0/i__carry__7_n_6 ;
  wire \v1_inferred__0/i__carry__7_n_7 ;
  wire \v1_inferred__0/i__carry__8_n_0 ;
  wire \v1_inferred__0/i__carry__8_n_1 ;
  wire \v1_inferred__0/i__carry__8_n_2 ;
  wire \v1_inferred__0/i__carry__8_n_3 ;
  wire \v1_inferred__0/i__carry__8_n_4 ;
  wire \v1_inferred__0/i__carry__8_n_5 ;
  wire \v1_inferred__0/i__carry__8_n_6 ;
  wire \v1_inferred__0/i__carry__8_n_7 ;
  wire \v1_inferred__0/i__carry__9_n_0 ;
  wire \v1_inferred__0/i__carry__9_n_1 ;
  wire \v1_inferred__0/i__carry__9_n_2 ;
  wire \v1_inferred__0/i__carry__9_n_3 ;
  wire \v1_inferred__0/i__carry__9_n_4 ;
  wire \v1_inferred__0/i__carry__9_n_5 ;
  wire \v1_inferred__0/i__carry__9_n_6 ;
  wire \v1_inferred__0/i__carry__9_n_7 ;
  wire \v1_inferred__0/i__carry_n_0 ;
  wire \v1_inferred__0/i__carry_n_1 ;
  wire \v1_inferred__0/i__carry_n_2 ;
  wire \v1_inferred__0/i__carry_n_3 ;
  wire v1_n_100;
  wire v1_n_101;
  wire v1_n_102;
  wire v1_n_103;
  wire v1_n_104;
  wire v1_n_105;
  wire v1_n_106;
  wire v1_n_107;
  wire v1_n_108;
  wire v1_n_109;
  wire v1_n_110;
  wire v1_n_111;
  wire v1_n_112;
  wire v1_n_113;
  wire v1_n_114;
  wire v1_n_115;
  wire v1_n_116;
  wire v1_n_117;
  wire v1_n_118;
  wire v1_n_119;
  wire v1_n_120;
  wire v1_n_121;
  wire v1_n_122;
  wire v1_n_123;
  wire v1_n_124;
  wire v1_n_125;
  wire v1_n_126;
  wire v1_n_127;
  wire v1_n_128;
  wire v1_n_129;
  wire v1_n_130;
  wire v1_n_131;
  wire v1_n_132;
  wire v1_n_133;
  wire v1_n_134;
  wire v1_n_135;
  wire v1_n_136;
  wire v1_n_137;
  wire v1_n_138;
  wire v1_n_139;
  wire v1_n_140;
  wire v1_n_141;
  wire v1_n_142;
  wire v1_n_143;
  wire v1_n_144;
  wire v1_n_145;
  wire v1_n_146;
  wire v1_n_147;
  wire v1_n_148;
  wire v1_n_149;
  wire v1_n_150;
  wire v1_n_151;
  wire v1_n_152;
  wire v1_n_153;
  wire v1_n_58;
  wire v1_n_59;
  wire v1_n_60;
  wire v1_n_61;
  wire v1_n_62;
  wire v1_n_63;
  wire v1_n_64;
  wire v1_n_65;
  wire v1_n_66;
  wire v1_n_67;
  wire v1_n_68;
  wire v1_n_69;
  wire v1_n_70;
  wire v1_n_71;
  wire v1_n_72;
  wire v1_n_73;
  wire v1_n_74;
  wire v1_n_75;
  wire v1_n_76;
  wire v1_n_77;
  wire v1_n_78;
  wire v1_n_79;
  wire v1_n_80;
  wire v1_n_81;
  wire v1_n_82;
  wire v1_n_83;
  wire v1_n_84;
  wire v1_n_85;
  wire v1_n_86;
  wire v1_n_87;
  wire v1_n_88;
  wire v1_n_89;
  wire v1_n_90;
  wire v1_n_91;
  wire v1_n_92;
  wire v1_n_93;
  wire v1_n_94;
  wire v1_n_95;
  wire v1_n_96;
  wire v1_n_97;
  wire v1_n_98;
  wire v1_n_99;
  wire \w_in_reg_n_0_[0] ;
  wire \w_in_reg_n_0_[10] ;
  wire \w_in_reg_n_0_[11] ;
  wire \w_in_reg_n_0_[12] ;
  wire \w_in_reg_n_0_[13] ;
  wire \w_in_reg_n_0_[14] ;
  wire \w_in_reg_n_0_[15] ;
  wire \w_in_reg_n_0_[16] ;
  wire \w_in_reg_n_0_[17] ;
  wire \w_in_reg_n_0_[18] ;
  wire \w_in_reg_n_0_[19] ;
  wire \w_in_reg_n_0_[1] ;
  wire \w_in_reg_n_0_[20] ;
  wire \w_in_reg_n_0_[21] ;
  wire \w_in_reg_n_0_[22] ;
  wire \w_in_reg_n_0_[23] ;
  wire \w_in_reg_n_0_[24] ;
  wire \w_in_reg_n_0_[25] ;
  wire \w_in_reg_n_0_[26] ;
  wire \w_in_reg_n_0_[27] ;
  wire \w_in_reg_n_0_[28] ;
  wire \w_in_reg_n_0_[29] ;
  wire \w_in_reg_n_0_[2] ;
  wire \w_in_reg_n_0_[30] ;
  wire \w_in_reg_n_0_[31] ;
  wire \w_in_reg_n_0_[3] ;
  wire \w_in_reg_n_0_[4] ;
  wire \w_in_reg_n_0_[5] ;
  wire \w_in_reg_n_0_[6] ;
  wire \w_in_reg_n_0_[7] ;
  wire \w_in_reg_n_0_[8] ;
  wire \w_in_reg_n_0_[9] ;
  wire [30:6]wet_term_r__0;
  wire [28:6]x_reg__0;
  wire [0:0]\x_reg_reg[6]_0 ;
  wire [3:1]NLW_sat_add3202_carry__5_CO_UNCONNECTED;
  wire [3:2]NLW_sat_add3202_carry__5_O_UNCONNECTED;
  wire [3:1]\NLW_sat_add3202_inferred__0/i__carry__5_CO_UNCONNECTED ;
  wire [3:2]\NLW_sat_add3202_inferred__0/i__carry__5_O_UNCONNECTED ;
  wire [1:0]NLW_v0_carry_O_UNCONNECTED;
  wire [3:2]NLW_v0_carry__7_CO_UNCONNECTED;
  wire [3:3]NLW_v0_carry__7_O_UNCONNECTED;
  wire [3:0]\NLW_v0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_v0_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:2]\NLW_v0_inferred__0/i__carry__7_CO_UNCONNECTED ;
  wire [3:3]\NLW_v0_inferred__0/i__carry__7_O_UNCONNECTED ;
  wire NLW_v1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_v1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_v1_OVERFLOW_UNCONNECTED;
  wire NLW_v1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_v1_PATTERNDETECT_UNCONNECTED;
  wire NLW_v1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_v1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_v1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_v1_CARRYOUT_UNCONNECTED;
  wire NLW_v1__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_v1__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_v1__0_OVERFLOW_UNCONNECTED;
  wire NLW_v1__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_v1__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_v1__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_v1__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_v1__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_v1__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_v1__0_PCOUT_UNCONNECTED;
  wire NLW_v1__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_v1__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_v1__1_OVERFLOW_UNCONNECTED;
  wire NLW_v1__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_v1__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_v1__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_v1__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_v1__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_v1__1_CARRYOUT_UNCONNECTED;
  wire NLW_v1__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_v1__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_v1__2_OVERFLOW_UNCONNECTED;
  wire NLW_v1__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_v1__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_v1__2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_v1__2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_v1__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_v1__2_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_v1__2_PCOUT_UNCONNECTED;
  wire NLW_v1__3_CARRYCASCOUT_UNCONNECTED;
  wire NLW_v1__3_MULTSIGNOUT_UNCONNECTED;
  wire NLW_v1__3_OVERFLOW_UNCONNECTED;
  wire NLW_v1__3_PATTERNBDETECT_UNCONNECTED;
  wire NLW_v1__3_PATTERNDETECT_UNCONNECTED;
  wire NLW_v1__3_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_v1__3_ACOUT_UNCONNECTED;
  wire [17:0]NLW_v1__3_BCOUT_UNCONNECTED;
  wire [3:0]NLW_v1__3_CARRYOUT_UNCONNECTED;
  wire NLW_v1__4_CARRYCASCOUT_UNCONNECTED;
  wire NLW_v1__4_MULTSIGNOUT_UNCONNECTED;
  wire NLW_v1__4_OVERFLOW_UNCONNECTED;
  wire NLW_v1__4_PATTERNBDETECT_UNCONNECTED;
  wire NLW_v1__4_PATTERNDETECT_UNCONNECTED;
  wire NLW_v1__4_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_v1__4_ACOUT_UNCONNECTED;
  wire [17:0]NLW_v1__4_BCOUT_UNCONNECTED;
  wire [3:0]NLW_v1__4_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_v1__4_PCOUT_UNCONNECTED;
  wire NLW_v1__5_CARRYCASCOUT_UNCONNECTED;
  wire NLW_v1__5_MULTSIGNOUT_UNCONNECTED;
  wire NLW_v1__5_OVERFLOW_UNCONNECTED;
  wire NLW_v1__5_PATTERNBDETECT_UNCONNECTED;
  wire NLW_v1__5_PATTERNDETECT_UNCONNECTED;
  wire NLW_v1__5_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_v1__5_ACOUT_UNCONNECTED;
  wire [17:0]NLW_v1__5_BCOUT_UNCONNECTED;
  wire [3:0]NLW_v1__5_CARRYOUT_UNCONNECTED;
  wire NLW_v1__6_CARRYCASCOUT_UNCONNECTED;
  wire NLW_v1__6_MULTSIGNOUT_UNCONNECTED;
  wire NLW_v1__6_OVERFLOW_UNCONNECTED;
  wire NLW_v1__6_PATTERNBDETECT_UNCONNECTED;
  wire NLW_v1__6_PATTERNDETECT_UNCONNECTED;
  wire NLW_v1__6_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_v1__6_ACOUT_UNCONNECTED;
  wire [17:0]NLW_v1__6_BCOUT_UNCONNECTED;
  wire [3:0]NLW_v1__6_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_v1__6_PCOUT_UNCONNECTED;
  wire [3:0]NLW_v1_carry_O_UNCONNECTED;
  wire [3:0]NLW_v1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_v1_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_v1_carry__10_CO_UNCONNECTED;
  wire [0:0]NLW_v1_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_v1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_v1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_v1_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:3]\NLW_v1_inferred__0/i__carry__10_CO_UNCONNECTED ;
  wire [0:0]\NLW_v1_inferred__0/i__carry__2_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "ST_IDLE:000,ST_WAIT_D:100,ST_MUL:011,ST_MIX:010,ST_WAIT_W:001," *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(u_dl_n_27),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "ST_IDLE:000,ST_WAIT_D:100,ST_MUL:011,ST_MIX:010,ST_WAIT_W:001," *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(u_dl_n_26),
        .Q(state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "ST_IDLE:000,ST_WAIT_D:100,ST_MUL:011,ST_MIX:010,ST_WAIT_W:001," *) 
  FDRE \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(u_dl_n_25),
        .Q(state[2]),
        .R(1'b0));
  FDRE clear_req_reg
       (.C(clk),
        .CE(1'b1),
        .D(clear_req0),
        .Q(clear_req_reg_0),
        .R(p_0_in));
  FDCE enable_d_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(enable_d_reg_0),
        .Q(enable_d));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \fb_term_r[0]_i_1 
       (.I0(v0_carry__7_n_6),
        .I1(v0_carry__7_n_5),
        .I2(v0_carry_n_5),
        .O(\fb_term_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \fb_term_r[10]_i_1 
       (.I0(v0_carry__7_n_6),
        .I1(v0_carry__7_n_5),
        .I2(v0_carry__2_n_7),
        .O(\fb_term_r[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \fb_term_r[11]_i_1 
       (.I0(v0_carry__7_n_6),
        .I1(v0_carry__7_n_5),
        .I2(v0_carry__2_n_6),
        .O(\fb_term_r[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \fb_term_r[12]_i_1 
       (.I0(v0_carry__7_n_6),
        .I1(v0_carry__7_n_5),
        .I2(v0_carry__2_n_5),
        .O(\fb_term_r[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \fb_term_r[13]_i_1 
       (.I0(v0_carry__7_n_6),
        .I1(v0_carry__7_n_5),
        .I2(v0_carry__2_n_4),
        .O(\fb_term_r[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \fb_term_r[14]_i_1 
       (.I0(v0_carry__7_n_6),
        .I1(v0_carry__7_n_5),
        .I2(v0_carry__3_n_7),
        .O(\fb_term_r[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \fb_term_r[15]_i_1 
       (.I0(v0_carry__7_n_6),
        .I1(v0_carry__7_n_5),
        .I2(v0_carry__3_n_6),
        .O(\fb_term_r[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \fb_term_r[16]_i_1 
       (.I0(v0_carry__7_n_6),
        .I1(v0_carry__7_n_5),
        .I2(v0_carry__3_n_5),
        .O(\fb_term_r[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \fb_term_r[17]_i_1 
       (.I0(v0_carry__7_n_6),
        .I1(v0_carry__7_n_5),
        .I2(v0_carry__3_n_4),
        .O(\fb_term_r[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \fb_term_r[18]_i_1 
       (.I0(v0_carry__7_n_6),
        .I1(v0_carry__7_n_5),
        .I2(v0_carry__4_n_7),
        .O(\fb_term_r[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \fb_term_r[19]_i_1 
       (.I0(v0_carry__7_n_6),
        .I1(v0_carry__7_n_5),
        .I2(v0_carry__4_n_6),
        .O(\fb_term_r[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \fb_term_r[1]_i_1 
       (.I0(v0_carry__7_n_6),
        .I1(v0_carry__7_n_5),
        .I2(v0_carry_n_4),
        .O(\fb_term_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \fb_term_r[20]_i_1 
       (.I0(v0_carry__7_n_6),
        .I1(v0_carry__7_n_5),
        .I2(v0_carry__4_n_5),
        .O(\fb_term_r[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \fb_term_r[21]_i_1 
       (.I0(v0_carry__7_n_6),
        .I1(v0_carry__7_n_5),
        .I2(v0_carry__4_n_4),
        .O(\fb_term_r[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \fb_term_r[22]_i_1 
       (.I0(v0_carry__7_n_6),
        .I1(v0_carry__7_n_5),
        .I2(v0_carry__5_n_7),
        .O(\fb_term_r[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \fb_term_r[23]_i_1 
       (.I0(v0_carry__7_n_6),
        .I1(v0_carry__7_n_5),
        .I2(v0_carry__5_n_6),
        .O(\fb_term_r[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \fb_term_r[24]_i_1 
       (.I0(v0_carry__7_n_6),
        .I1(v0_carry__7_n_5),
        .I2(v0_carry__5_n_5),
        .O(\fb_term_r[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \fb_term_r[25]_i_1 
       (.I0(v0_carry__7_n_6),
        .I1(v0_carry__7_n_5),
        .I2(v0_carry__5_n_4),
        .O(\fb_term_r[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \fb_term_r[26]_i_1 
       (.I0(v0_carry__7_n_6),
        .I1(v0_carry__7_n_5),
        .I2(v0_carry__6_n_7),
        .O(\fb_term_r[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \fb_term_r[27]_i_1 
       (.I0(v0_carry__7_n_6),
        .I1(v0_carry__7_n_5),
        .I2(v0_carry__6_n_6),
        .O(\fb_term_r[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \fb_term_r[28]_i_1 
       (.I0(v0_carry__7_n_6),
        .I1(v0_carry__7_n_5),
        .I2(v0_carry__6_n_5),
        .O(\fb_term_r[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \fb_term_r[29]_i_1 
       (.I0(v0_carry__7_n_6),
        .I1(v0_carry__7_n_5),
        .I2(v0_carry__6_n_4),
        .O(\fb_term_r[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \fb_term_r[2]_i_1 
       (.I0(v0_carry__7_n_6),
        .I1(v0_carry__7_n_5),
        .I2(v0_carry__0_n_7),
        .O(\fb_term_r[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \fb_term_r[30]_i_1 
       (.I0(v0_carry__7_n_6),
        .I1(v0_carry__7_n_5),
        .I2(v0_carry__7_n_7),
        .O(\fb_term_r[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \fb_term_r[31]_i_2 
       (.I0(v0_carry__7_n_5),
        .O(\fb_term_r[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \fb_term_r[3]_i_1 
       (.I0(v0_carry__7_n_6),
        .I1(v0_carry__7_n_5),
        .I2(v0_carry__0_n_6),
        .O(\fb_term_r[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \fb_term_r[4]_i_1 
       (.I0(v0_carry__7_n_6),
        .I1(v0_carry__7_n_5),
        .I2(v0_carry__0_n_5),
        .O(\fb_term_r[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \fb_term_r[5]_i_1 
       (.I0(v0_carry__7_n_6),
        .I1(v0_carry__7_n_5),
        .I2(v0_carry__0_n_4),
        .O(\fb_term_r[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \fb_term_r[6]_i_1 
       (.I0(v0_carry__7_n_6),
        .I1(v0_carry__7_n_5),
        .I2(v0_carry__1_n_7),
        .O(\fb_term_r[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \fb_term_r[7]_i_1 
       (.I0(v0_carry__7_n_6),
        .I1(v0_carry__7_n_5),
        .I2(v0_carry__1_n_6),
        .O(\fb_term_r[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \fb_term_r[8]_i_1 
       (.I0(v0_carry__7_n_6),
        .I1(v0_carry__7_n_5),
        .I2(v0_carry__1_n_5),
        .O(\fb_term_r[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \fb_term_r[9]_i_1 
       (.I0(v0_carry__7_n_6),
        .I1(v0_carry__7_n_5),
        .I2(v0_carry__1_n_4),
        .O(\fb_term_r[9]_i_1_n_0 ));
  FDRE \fb_term_r_reg[0] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[0]_i_1_n_0 ),
        .Q(\fb_term_r_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \fb_term_r_reg[10] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[10]_i_1_n_0 ),
        .Q(\fb_term_r_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \fb_term_r_reg[11] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[11]_i_1_n_0 ),
        .Q(\fb_term_r_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE \fb_term_r_reg[12] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[12]_i_1_n_0 ),
        .Q(\fb_term_r_reg_n_0_[12] ),
        .R(p_0_in));
  FDRE \fb_term_r_reg[13] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[13]_i_1_n_0 ),
        .Q(\fb_term_r_reg_n_0_[13] ),
        .R(p_0_in));
  FDRE \fb_term_r_reg[14] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[14]_i_1_n_0 ),
        .Q(\fb_term_r_reg_n_0_[14] ),
        .R(p_0_in));
  FDRE \fb_term_r_reg[15] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[15]_i_1_n_0 ),
        .Q(\fb_term_r_reg_n_0_[15] ),
        .R(p_0_in));
  FDRE \fb_term_r_reg[16] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[16]_i_1_n_0 ),
        .Q(\fb_term_r_reg_n_0_[16] ),
        .R(p_0_in));
  FDRE \fb_term_r_reg[17] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[17]_i_1_n_0 ),
        .Q(\fb_term_r_reg_n_0_[17] ),
        .R(p_0_in));
  FDRE \fb_term_r_reg[18] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[18]_i_1_n_0 ),
        .Q(\fb_term_r_reg_n_0_[18] ),
        .R(p_0_in));
  FDRE \fb_term_r_reg[19] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[19]_i_1_n_0 ),
        .Q(\fb_term_r_reg_n_0_[19] ),
        .R(p_0_in));
  FDRE \fb_term_r_reg[1] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[1]_i_1_n_0 ),
        .Q(\fb_term_r_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \fb_term_r_reg[20] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[20]_i_1_n_0 ),
        .Q(\fb_term_r_reg_n_0_[20] ),
        .R(p_0_in));
  FDRE \fb_term_r_reg[21] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[21]_i_1_n_0 ),
        .Q(\fb_term_r_reg_n_0_[21] ),
        .R(p_0_in));
  FDRE \fb_term_r_reg[22] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[22]_i_1_n_0 ),
        .Q(\fb_term_r_reg_n_0_[22] ),
        .R(p_0_in));
  FDRE \fb_term_r_reg[23] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[23]_i_1_n_0 ),
        .Q(\fb_term_r_reg_n_0_[23] ),
        .R(p_0_in));
  FDRE \fb_term_r_reg[24] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[24]_i_1_n_0 ),
        .Q(\fb_term_r_reg_n_0_[24] ),
        .R(p_0_in));
  FDRE \fb_term_r_reg[25] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[25]_i_1_n_0 ),
        .Q(\fb_term_r_reg_n_0_[25] ),
        .R(p_0_in));
  FDRE \fb_term_r_reg[26] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[26]_i_1_n_0 ),
        .Q(\fb_term_r_reg_n_0_[26] ),
        .R(p_0_in));
  FDRE \fb_term_r_reg[27] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[27]_i_1_n_0 ),
        .Q(\fb_term_r_reg_n_0_[27] ),
        .R(p_0_in));
  FDRE \fb_term_r_reg[28] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[28]_i_1_n_0 ),
        .Q(\fb_term_r_reg_n_0_[28] ),
        .R(p_0_in));
  FDRE \fb_term_r_reg[29] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[29]_i_1_n_0 ),
        .Q(\fb_term_r_reg_n_0_[29] ),
        .R(p_0_in));
  FDRE \fb_term_r_reg[2] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[2]_i_1_n_0 ),
        .Q(\fb_term_r_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \fb_term_r_reg[30] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[30]_i_1_n_0 ),
        .Q(\fb_term_r_reg_n_0_[30] ),
        .R(p_0_in));
  FDRE \fb_term_r_reg[31] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[31]_i_2_n_0 ),
        .Q(p_0_in8_in),
        .R(p_0_in));
  FDRE \fb_term_r_reg[3] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[3]_i_1_n_0 ),
        .Q(\fb_term_r_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \fb_term_r_reg[4] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[4]_i_1_n_0 ),
        .Q(\fb_term_r_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \fb_term_r_reg[5] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[5]_i_1_n_0 ),
        .Q(\fb_term_r_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \fb_term_r_reg[6] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[6]_i_1_n_0 ),
        .Q(\fb_term_r_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \fb_term_r_reg[7] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[7]_i_1_n_0 ),
        .Q(\fb_term_r_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \fb_term_r_reg[8] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[8]_i_1_n_0 ),
        .Q(\fb_term_r_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \fb_term_r_reg[9] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(\fb_term_r[9]_i_1_n_0 ),
        .Q(\fb_term_r_reg_n_0_[9] ),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1__0
       (.I0(x_reg__0[13]),
        .I1(wet_term_r__0[13]),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1__1
       (.I0(v1__6_n_99),
        .I1(v1__3_n_99),
        .O(i__carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2
       (.I0(x_reg__0[12]),
        .I1(wet_term_r__0[12]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2__0
       (.I0(v1__6_n_100),
        .I1(v1__3_n_100),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3
       (.I0(x_reg__0[11]),
        .I1(wet_term_r__0[11]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3__0
       (.I0(v1__6_n_101),
        .I1(v1__3_n_101),
        .O(i__carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_4
       (.I0(x_reg__0[10]),
        .I1(wet_term_r__0[10]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_4__0
       (.I0(v1__6_n_102),
        .I1(v1__3_n_102),
        .O(i__carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__10_i_1
       (.I0(v1__6_n_59),
        .I1(v1__4_n_76),
        .O(i__carry__10_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__10_i_2
       (.I0(v1__6_n_60),
        .I1(v1__4_n_77),
        .O(i__carry__10_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__10_i_3
       (.I0(v1__6_n_61),
        .I1(v1__4_n_78),
        .O(i__carry__10_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__10_i_4
       (.I0(v1__6_n_62),
        .I1(v1__4_n_79),
        .O(i__carry__10_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_1
       (.I0(x_reg__0[17]),
        .I1(wet_term_r__0[17]),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_1__0
       (.I0(v1__6_n_95),
        .I1(v1__3_n_95),
        .O(i__carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_2
       (.I0(x_reg__0[16]),
        .I1(wet_term_r__0[16]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_2__0
       (.I0(v1__6_n_96),
        .I1(v1__3_n_96),
        .O(i__carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_3
       (.I0(x_reg__0[15]),
        .I1(wet_term_r__0[15]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_3__0
       (.I0(v1__6_n_97),
        .I1(v1__3_n_97),
        .O(i__carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_4
       (.I0(x_reg__0[14]),
        .I1(wet_term_r__0[14]),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_4__0
       (.I0(v1__6_n_98),
        .I1(v1__3_n_98),
        .O(i__carry__1_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_1
       (.I0(x_reg__0[21]),
        .I1(wet_term_r__0[21]),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_1__0
       (.I0(v1__6_n_91),
        .I1(v1__3_n_91),
        .O(i__carry__2_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_2
       (.I0(x_reg__0[20]),
        .I1(wet_term_r__0[20]),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_2__0
       (.I0(v1__6_n_92),
        .I1(v1__3_n_92),
        .O(i__carry__2_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_3
       (.I0(x_reg__0[19]),
        .I1(wet_term_r__0[19]),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_3__0
       (.I0(v1__6_n_93),
        .I1(v1__3_n_93),
        .O(i__carry__2_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_4
       (.I0(x_reg__0[18]),
        .I1(wet_term_r__0[18]),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_4__0
       (.I0(v1__6_n_94),
        .I1(v1__3_n_94),
        .O(i__carry__2_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_1
       (.I0(x_reg__0[25]),
        .I1(wet_term_r__0[25]),
        .O(i__carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_1__0
       (.I0(v1__6_n_87),
        .I1(v1__4_n_104),
        .O(i__carry__3_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_2
       (.I0(x_reg__0[24]),
        .I1(wet_term_r__0[24]),
        .O(i__carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_2__0
       (.I0(v1__6_n_88),
        .I1(v1__4_n_105),
        .O(i__carry__3_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_3
       (.I0(x_reg__0[23]),
        .I1(wet_term_r__0[23]),
        .O(i__carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_3__0
       (.I0(v1__6_n_89),
        .I1(v1__3_n_89),
        .O(i__carry__3_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_4
       (.I0(x_reg__0[22]),
        .I1(wet_term_r__0[22]),
        .O(i__carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_4__0
       (.I0(v1__6_n_90),
        .I1(v1__3_n_90),
        .O(i__carry__3_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__4_i_1
       (.I0(p_0_in9_in),
        .I1(wet_term_r__0[29]),
        .O(i__carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__4_i_1__0
       (.I0(v1__6_n_83),
        .I1(v1__4_n_100),
        .O(i__carry__4_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__4_i_2
       (.I0(x_reg__0[28]),
        .I1(wet_term_r__0[28]),
        .O(i__carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__4_i_2__0
       (.I0(v1__6_n_84),
        .I1(v1__4_n_101),
        .O(i__carry__4_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__4_i_3
       (.I0(x_reg__0[27]),
        .I1(wet_term_r__0[27]),
        .O(i__carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__4_i_3__0
       (.I0(v1__6_n_85),
        .I1(v1__4_n_102),
        .O(i__carry__4_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__4_i_4
       (.I0(x_reg__0[26]),
        .I1(wet_term_r__0[26]),
        .O(i__carry__4_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__4_i_4__0
       (.I0(v1__6_n_86),
        .I1(v1__4_n_103),
        .O(i__carry__4_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__5_i_1
       (.I0(p_0_in9_in),
        .I1(p_1_in),
        .O(i__carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__5_i_1__0
       (.I0(v1__6_n_79),
        .I1(v1__4_n_96),
        .O(i__carry__5_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__5_i_2
       (.I0(p_0_in9_in),
        .I1(wet_term_r__0[30]),
        .O(i__carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__5_i_2__0
       (.I0(v1__6_n_80),
        .I1(v1__4_n_97),
        .O(i__carry__5_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__5_i_3
       (.I0(v1__6_n_81),
        .I1(v1__4_n_98),
        .O(i__carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__5_i_4
       (.I0(v1__6_n_82),
        .I1(v1__4_n_99),
        .O(i__carry__5_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__6_i_1
       (.I0(v1__6_n_75),
        .I1(v1__4_n_92),
        .O(i__carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__6_i_2
       (.I0(v1__6_n_76),
        .I1(v1__4_n_93),
        .O(i__carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__6_i_3
       (.I0(v1__6_n_77),
        .I1(v1__4_n_94),
        .O(i__carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__6_i_4
       (.I0(v1__6_n_78),
        .I1(v1__4_n_95),
        .O(i__carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__7_i_1
       (.I0(v1__6_n_71),
        .I1(v1__4_n_88),
        .O(i__carry__7_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__7_i_2
       (.I0(v1__6_n_72),
        .I1(v1__4_n_89),
        .O(i__carry__7_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__7_i_3
       (.I0(v1__6_n_73),
        .I1(v1__4_n_90),
        .O(i__carry__7_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__7_i_4
       (.I0(v1__6_n_74),
        .I1(v1__4_n_91),
        .O(i__carry__7_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__8_i_1
       (.I0(v1__6_n_67),
        .I1(v1__4_n_84),
        .O(i__carry__8_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__8_i_2
       (.I0(v1__6_n_68),
        .I1(v1__4_n_85),
        .O(i__carry__8_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__8_i_3
       (.I0(v1__6_n_69),
        .I1(v1__4_n_86),
        .O(i__carry__8_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__8_i_4
       (.I0(v1__6_n_70),
        .I1(v1__4_n_87),
        .O(i__carry__8_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__9_i_1
       (.I0(v1__6_n_63),
        .I1(v1__4_n_80),
        .O(i__carry__9_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__9_i_2
       (.I0(v1__6_n_64),
        .I1(v1__4_n_81),
        .O(i__carry__9_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__9_i_3
       (.I0(v1__6_n_65),
        .I1(v1__4_n_82),
        .O(i__carry__9_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__9_i_4
       (.I0(v1__6_n_66),
        .I1(v1__4_n_83),
        .O(i__carry__9_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1__0
       (.I0(x_reg__0[9]),
        .I1(wet_term_r__0[9]),
        .O(i__carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1__1
       (.I0(v1__6_n_103),
        .I1(v1__3_n_103),
        .O(i__carry_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1__2
       (.I0(\v1_inferred__0/i__carry__2_n_5 ),
        .O(i__carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2__0
       (.I0(x_reg__0[8]),
        .I1(wet_term_r__0[8]),
        .O(i__carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2__1
       (.I0(v1__6_n_104),
        .I1(v1__3_n_104),
        .O(i__carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3__0
       (.I0(x_reg__0[7]),
        .I1(wet_term_r__0[7]),
        .O(i__carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3__1
       (.I0(v1__6_n_105),
        .I1(v1__3_n_105),
        .O(i__carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_4__0
       (.I0(x_reg__0[6]),
        .I1(wet_term_r__0[6]),
        .O(i__carry_i_4__0_n_0));
  LUT6 #(
    .INIT(64'hCCCF0CCCAAAAAAAA)) 
    \out_buf[10]_i_1 
       (.I0(D[4]),
        .I1(\sat_add3202_inferred__0/i__carry__0_n_7 ),
        .I2(p_0_in9_in),
        .I3(p_1_in),
        .I4(p_0_in14_in),
        .I5(\reg_ctrl_reg[0] ),
        .O(p_2_in[10]));
  LUT6 #(
    .INIT(64'hCCCF0CCCAAAAAAAA)) 
    \out_buf[11]_i_1 
       (.I0(D[5]),
        .I1(\sat_add3202_inferred__0/i__carry__0_n_6 ),
        .I2(p_0_in9_in),
        .I3(p_1_in),
        .I4(p_0_in14_in),
        .I5(\reg_ctrl_reg[0] ),
        .O(p_2_in[11]));
  LUT6 #(
    .INIT(64'hCCCF0CCCAAAAAAAA)) 
    \out_buf[12]_i_1 
       (.I0(D[6]),
        .I1(\sat_add3202_inferred__0/i__carry__0_n_5 ),
        .I2(p_0_in9_in),
        .I3(p_1_in),
        .I4(p_0_in14_in),
        .I5(\reg_ctrl_reg[0] ),
        .O(p_2_in[12]));
  LUT6 #(
    .INIT(64'hCCCF0CCCAAAAAAAA)) 
    \out_buf[13]_i_1 
       (.I0(D[7]),
        .I1(\sat_add3202_inferred__0/i__carry__0_n_4 ),
        .I2(p_0_in9_in),
        .I3(p_1_in),
        .I4(p_0_in14_in),
        .I5(\reg_ctrl_reg[0] ),
        .O(p_2_in[13]));
  LUT6 #(
    .INIT(64'hCCCF0CCCAAAAAAAA)) 
    \out_buf[14]_i_1 
       (.I0(D[8]),
        .I1(\sat_add3202_inferred__0/i__carry__1_n_7 ),
        .I2(p_0_in9_in),
        .I3(p_1_in),
        .I4(p_0_in14_in),
        .I5(\reg_ctrl_reg[0] ),
        .O(p_2_in[14]));
  LUT6 #(
    .INIT(64'hCCCF0CCCAAAAAAAA)) 
    \out_buf[15]_i_1 
       (.I0(D[9]),
        .I1(\sat_add3202_inferred__0/i__carry__1_n_6 ),
        .I2(p_0_in9_in),
        .I3(p_1_in),
        .I4(p_0_in14_in),
        .I5(\reg_ctrl_reg[0] ),
        .O(p_2_in[15]));
  LUT6 #(
    .INIT(64'hCCCF0CCCAAAAAAAA)) 
    \out_buf[16]_i_1 
       (.I0(D[10]),
        .I1(\sat_add3202_inferred__0/i__carry__1_n_5 ),
        .I2(p_0_in9_in),
        .I3(p_1_in),
        .I4(p_0_in14_in),
        .I5(\reg_ctrl_reg[0] ),
        .O(p_2_in[16]));
  LUT6 #(
    .INIT(64'hCCCF0CCCAAAAAAAA)) 
    \out_buf[17]_i_1 
       (.I0(D[11]),
        .I1(\sat_add3202_inferred__0/i__carry__1_n_4 ),
        .I2(p_0_in9_in),
        .I3(p_1_in),
        .I4(p_0_in14_in),
        .I5(\reg_ctrl_reg[0] ),
        .O(p_2_in[17]));
  LUT6 #(
    .INIT(64'hCCCF0CCCAAAAAAAA)) 
    \out_buf[18]_i_1 
       (.I0(D[12]),
        .I1(\sat_add3202_inferred__0/i__carry__2_n_7 ),
        .I2(p_0_in9_in),
        .I3(p_1_in),
        .I4(p_0_in14_in),
        .I5(\reg_ctrl_reg[0] ),
        .O(p_2_in[18]));
  LUT6 #(
    .INIT(64'hCCCF0CCCAAAAAAAA)) 
    \out_buf[19]_i_1 
       (.I0(D[13]),
        .I1(\sat_add3202_inferred__0/i__carry__2_n_6 ),
        .I2(p_0_in9_in),
        .I3(p_1_in),
        .I4(p_0_in14_in),
        .I5(\reg_ctrl_reg[0] ),
        .O(p_2_in[19]));
  LUT6 #(
    .INIT(64'hCCCF0CCCAAAAAAAA)) 
    \out_buf[20]_i_1 
       (.I0(D[14]),
        .I1(\sat_add3202_inferred__0/i__carry__2_n_5 ),
        .I2(p_0_in9_in),
        .I3(p_1_in),
        .I4(p_0_in14_in),
        .I5(\reg_ctrl_reg[0] ),
        .O(p_2_in[20]));
  LUT6 #(
    .INIT(64'hCCCF0CCCAAAAAAAA)) 
    \out_buf[21]_i_1 
       (.I0(D[15]),
        .I1(\sat_add3202_inferred__0/i__carry__2_n_4 ),
        .I2(p_0_in9_in),
        .I3(p_1_in),
        .I4(p_0_in14_in),
        .I5(\reg_ctrl_reg[0] ),
        .O(p_2_in[21]));
  LUT6 #(
    .INIT(64'hCCCF0CCCAAAAAAAA)) 
    \out_buf[22]_i_1 
       (.I0(D[16]),
        .I1(\sat_add3202_inferred__0/i__carry__3_n_7 ),
        .I2(p_0_in9_in),
        .I3(p_1_in),
        .I4(p_0_in14_in),
        .I5(\reg_ctrl_reg[0] ),
        .O(p_2_in[22]));
  LUT6 #(
    .INIT(64'hCCCF0CCCAAAAAAAA)) 
    \out_buf[23]_i_1 
       (.I0(D[17]),
        .I1(\sat_add3202_inferred__0/i__carry__3_n_6 ),
        .I2(p_0_in9_in),
        .I3(p_1_in),
        .I4(p_0_in14_in),
        .I5(\reg_ctrl_reg[0] ),
        .O(p_2_in[23]));
  LUT6 #(
    .INIT(64'hCCCF0CCCAAAAAAAA)) 
    \out_buf[24]_i_1 
       (.I0(D[18]),
        .I1(\sat_add3202_inferred__0/i__carry__3_n_5 ),
        .I2(p_0_in9_in),
        .I3(p_1_in),
        .I4(p_0_in14_in),
        .I5(\reg_ctrl_reg[0] ),
        .O(p_2_in[24]));
  LUT6 #(
    .INIT(64'hCCCF0CCCAAAAAAAA)) 
    \out_buf[25]_i_1 
       (.I0(D[19]),
        .I1(\sat_add3202_inferred__0/i__carry__3_n_4 ),
        .I2(p_0_in9_in),
        .I3(p_1_in),
        .I4(p_0_in14_in),
        .I5(\reg_ctrl_reg[0] ),
        .O(p_2_in[25]));
  LUT6 #(
    .INIT(64'hCCCF0CCCAAAAAAAA)) 
    \out_buf[26]_i_1 
       (.I0(D[20]),
        .I1(\sat_add3202_inferred__0/i__carry__4_n_7 ),
        .I2(p_0_in9_in),
        .I3(p_1_in),
        .I4(p_0_in14_in),
        .I5(\reg_ctrl_reg[0] ),
        .O(p_2_in[26]));
  LUT6 #(
    .INIT(64'hCCCF0CCCAAAAAAAA)) 
    \out_buf[27]_i_1 
       (.I0(D[21]),
        .I1(\sat_add3202_inferred__0/i__carry__4_n_6 ),
        .I2(p_0_in9_in),
        .I3(p_1_in),
        .I4(p_0_in14_in),
        .I5(\reg_ctrl_reg[0] ),
        .O(p_2_in[27]));
  LUT6 #(
    .INIT(64'hCCCF0CCCAAAAAAAA)) 
    \out_buf[28]_i_1 
       (.I0(D[22]),
        .I1(\sat_add3202_inferred__0/i__carry__4_n_5 ),
        .I2(p_0_in9_in),
        .I3(p_1_in),
        .I4(p_0_in14_in),
        .I5(\reg_ctrl_reg[0] ),
        .O(p_2_in[28]));
  LUT6 #(
    .INIT(64'hCCCF0CCCAAAAAAAA)) 
    \out_buf[29]_i_1 
       (.I0(D[23]),
        .I1(\sat_add3202_inferred__0/i__carry__4_n_4 ),
        .I2(p_0_in9_in),
        .I3(p_1_in),
        .I4(p_0_in14_in),
        .I5(\reg_ctrl_reg[0] ),
        .O(p_2_in[29]));
  LUT6 #(
    .INIT(64'hCCCF0CCCAAAAAAAA)) 
    \out_buf[30]_i_1 
       (.I0(D[23]),
        .I1(\sat_add3202_inferred__0/i__carry__5_n_7 ),
        .I2(p_0_in9_in),
        .I3(p_1_in),
        .I4(p_0_in14_in),
        .I5(\reg_ctrl_reg[0] ),
        .O(p_2_in[30]));
  LUT5 #(
    .INIT(32'hE8FFE800)) 
    \out_buf[31]_i_2 
       (.I0(p_0_in9_in),
        .I1(p_1_in),
        .I2(p_0_in14_in),
        .I3(\reg_ctrl_reg[0] ),
        .I4(D[23]),
        .O(p_2_in[31]));
  LUT6 #(
    .INIT(64'hCCCF0CCCAAAAAAAA)) 
    \out_buf[6]_i_1 
       (.I0(D[0]),
        .I1(\sat_add3202_inferred__0/i__carry_n_7 ),
        .I2(p_0_in9_in),
        .I3(p_1_in),
        .I4(p_0_in14_in),
        .I5(\reg_ctrl_reg[0] ),
        .O(p_2_in[6]));
  LUT6 #(
    .INIT(64'hCCCF0CCCAAAAAAAA)) 
    \out_buf[7]_i_1 
       (.I0(D[1]),
        .I1(\sat_add3202_inferred__0/i__carry_n_6 ),
        .I2(p_0_in9_in),
        .I3(p_1_in),
        .I4(p_0_in14_in),
        .I5(\reg_ctrl_reg[0] ),
        .O(p_2_in[7]));
  LUT6 #(
    .INIT(64'hCCCF0CCCAAAAAAAA)) 
    \out_buf[8]_i_1 
       (.I0(D[2]),
        .I1(\sat_add3202_inferred__0/i__carry_n_5 ),
        .I2(p_0_in9_in),
        .I3(p_1_in),
        .I4(p_0_in14_in),
        .I5(\reg_ctrl_reg[0] ),
        .O(p_2_in[8]));
  LUT6 #(
    .INIT(64'hCCCF0CCCAAAAAAAA)) 
    \out_buf[9]_i_1 
       (.I0(D[3]),
        .I1(\sat_add3202_inferred__0/i__carry_n_4 ),
        .I2(p_0_in9_in),
        .I3(p_1_in),
        .I4(p_0_in14_in),
        .I5(\reg_ctrl_reg[0] ),
        .O(p_2_in[9]));
  FDRE \out_buf_reg[10] 
       (.C(clk),
        .CE(u_dl_n_18),
        .D(p_2_in[10]),
        .Q(\out_buf_reg[31]_0 [4]),
        .R(p_0_in));
  FDRE \out_buf_reg[11] 
       (.C(clk),
        .CE(u_dl_n_18),
        .D(p_2_in[11]),
        .Q(\out_buf_reg[31]_0 [5]),
        .R(p_0_in));
  FDRE \out_buf_reg[12] 
       (.C(clk),
        .CE(u_dl_n_18),
        .D(p_2_in[12]),
        .Q(\out_buf_reg[31]_0 [6]),
        .R(p_0_in));
  FDRE \out_buf_reg[13] 
       (.C(clk),
        .CE(u_dl_n_18),
        .D(p_2_in[13]),
        .Q(\out_buf_reg[31]_0 [7]),
        .R(p_0_in));
  FDRE \out_buf_reg[14] 
       (.C(clk),
        .CE(u_dl_n_18),
        .D(p_2_in[14]),
        .Q(\out_buf_reg[31]_0 [8]),
        .R(p_0_in));
  FDRE \out_buf_reg[15] 
       (.C(clk),
        .CE(u_dl_n_18),
        .D(p_2_in[15]),
        .Q(\out_buf_reg[31]_0 [9]),
        .R(p_0_in));
  FDRE \out_buf_reg[16] 
       (.C(clk),
        .CE(u_dl_n_18),
        .D(p_2_in[16]),
        .Q(\out_buf_reg[31]_0 [10]),
        .R(p_0_in));
  FDRE \out_buf_reg[17] 
       (.C(clk),
        .CE(u_dl_n_18),
        .D(p_2_in[17]),
        .Q(\out_buf_reg[31]_0 [11]),
        .R(p_0_in));
  FDRE \out_buf_reg[18] 
       (.C(clk),
        .CE(u_dl_n_18),
        .D(p_2_in[18]),
        .Q(\out_buf_reg[31]_0 [12]),
        .R(p_0_in));
  FDRE \out_buf_reg[19] 
       (.C(clk),
        .CE(u_dl_n_18),
        .D(p_2_in[19]),
        .Q(\out_buf_reg[31]_0 [13]),
        .R(p_0_in));
  FDRE \out_buf_reg[20] 
       (.C(clk),
        .CE(u_dl_n_18),
        .D(p_2_in[20]),
        .Q(\out_buf_reg[31]_0 [14]),
        .R(p_0_in));
  FDRE \out_buf_reg[21] 
       (.C(clk),
        .CE(u_dl_n_18),
        .D(p_2_in[21]),
        .Q(\out_buf_reg[31]_0 [15]),
        .R(p_0_in));
  FDRE \out_buf_reg[22] 
       (.C(clk),
        .CE(u_dl_n_18),
        .D(p_2_in[22]),
        .Q(\out_buf_reg[31]_0 [16]),
        .R(p_0_in));
  FDRE \out_buf_reg[23] 
       (.C(clk),
        .CE(u_dl_n_18),
        .D(p_2_in[23]),
        .Q(\out_buf_reg[31]_0 [17]),
        .R(p_0_in));
  FDRE \out_buf_reg[24] 
       (.C(clk),
        .CE(u_dl_n_18),
        .D(p_2_in[24]),
        .Q(\out_buf_reg[31]_0 [18]),
        .R(p_0_in));
  FDRE \out_buf_reg[25] 
       (.C(clk),
        .CE(u_dl_n_18),
        .D(p_2_in[25]),
        .Q(\out_buf_reg[31]_0 [19]),
        .R(p_0_in));
  FDRE \out_buf_reg[26] 
       (.C(clk),
        .CE(u_dl_n_18),
        .D(p_2_in[26]),
        .Q(\out_buf_reg[31]_0 [20]),
        .R(p_0_in));
  FDRE \out_buf_reg[27] 
       (.C(clk),
        .CE(u_dl_n_18),
        .D(p_2_in[27]),
        .Q(\out_buf_reg[31]_0 [21]),
        .R(p_0_in));
  FDRE \out_buf_reg[28] 
       (.C(clk),
        .CE(u_dl_n_18),
        .D(p_2_in[28]),
        .Q(\out_buf_reg[31]_0 [22]),
        .R(p_0_in));
  FDRE \out_buf_reg[29] 
       (.C(clk),
        .CE(u_dl_n_18),
        .D(p_2_in[29]),
        .Q(\out_buf_reg[31]_0 [23]),
        .R(p_0_in));
  FDRE \out_buf_reg[30] 
       (.C(clk),
        .CE(u_dl_n_18),
        .D(p_2_in[30]),
        .Q(\out_buf_reg[31]_0 [24]),
        .R(p_0_in));
  FDRE \out_buf_reg[31] 
       (.C(clk),
        .CE(u_dl_n_18),
        .D(p_2_in[31]),
        .Q(\out_buf_reg[31]_0 [25]),
        .R(p_0_in));
  FDRE \out_buf_reg[6] 
       (.C(clk),
        .CE(u_dl_n_18),
        .D(p_2_in[6]),
        .Q(\out_buf_reg[31]_0 [0]),
        .R(p_0_in));
  FDRE \out_buf_reg[7] 
       (.C(clk),
        .CE(u_dl_n_18),
        .D(p_2_in[7]),
        .Q(\out_buf_reg[31]_0 [1]),
        .R(p_0_in));
  FDRE \out_buf_reg[8] 
       (.C(clk),
        .CE(u_dl_n_18),
        .D(p_2_in[8]),
        .Q(\out_buf_reg[31]_0 [2]),
        .R(p_0_in));
  FDRE \out_buf_reg[9] 
       (.C(clk),
        .CE(u_dl_n_18),
        .D(p_2_in[9]),
        .Q(\out_buf_reg[31]_0 [3]),
        .R(p_0_in));
  FDRE out_buf_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(u_dl_n_28),
        .Q(ret_valid),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sat_add3202_carry
       (.CI(1'b0),
        .CO({sat_add3202_carry_n_0,sat_add3202_carry_n_1,sat_add3202_carry_n_2,sat_add3202_carry_n_3}),
        .CYINIT(1'b0),
        .DI(x_reg__0[9:6]),
        .O({sat_add3202_carry_n_4,sat_add3202_carry_n_5,sat_add3202_carry_n_6,sat_add3202_carry_n_7}),
        .S({sat_add3202_carry_i_1_n_0,sat_add3202_carry_i_2_n_0,sat_add3202_carry_i_3_n_0,sat_add3202_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sat_add3202_carry__0
       (.CI(sat_add3202_carry_n_0),
        .CO({sat_add3202_carry__0_n_0,sat_add3202_carry__0_n_1,sat_add3202_carry__0_n_2,sat_add3202_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(x_reg__0[13:10]),
        .O({sat_add3202_carry__0_n_4,sat_add3202_carry__0_n_5,sat_add3202_carry__0_n_6,sat_add3202_carry__0_n_7}),
        .S({sat_add3202_carry__0_i_1_n_0,sat_add3202_carry__0_i_2_n_0,sat_add3202_carry__0_i_3_n_0,sat_add3202_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add3202_carry__0_i_1
       (.I0(x_reg__0[13]),
        .I1(\fb_term_r_reg_n_0_[13] ),
        .O(sat_add3202_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add3202_carry__0_i_2
       (.I0(x_reg__0[12]),
        .I1(\fb_term_r_reg_n_0_[12] ),
        .O(sat_add3202_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add3202_carry__0_i_3
       (.I0(x_reg__0[11]),
        .I1(\fb_term_r_reg_n_0_[11] ),
        .O(sat_add3202_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add3202_carry__0_i_4
       (.I0(x_reg__0[10]),
        .I1(\fb_term_r_reg_n_0_[10] ),
        .O(sat_add3202_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sat_add3202_carry__1
       (.CI(sat_add3202_carry__0_n_0),
        .CO({sat_add3202_carry__1_n_0,sat_add3202_carry__1_n_1,sat_add3202_carry__1_n_2,sat_add3202_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(x_reg__0[17:14]),
        .O({sat_add3202_carry__1_n_4,sat_add3202_carry__1_n_5,sat_add3202_carry__1_n_6,sat_add3202_carry__1_n_7}),
        .S({sat_add3202_carry__1_i_1_n_0,sat_add3202_carry__1_i_2_n_0,sat_add3202_carry__1_i_3_n_0,sat_add3202_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add3202_carry__1_i_1
       (.I0(x_reg__0[17]),
        .I1(\fb_term_r_reg_n_0_[17] ),
        .O(sat_add3202_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add3202_carry__1_i_2
       (.I0(x_reg__0[16]),
        .I1(\fb_term_r_reg_n_0_[16] ),
        .O(sat_add3202_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add3202_carry__1_i_3
       (.I0(x_reg__0[15]),
        .I1(\fb_term_r_reg_n_0_[15] ),
        .O(sat_add3202_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add3202_carry__1_i_4
       (.I0(x_reg__0[14]),
        .I1(\fb_term_r_reg_n_0_[14] ),
        .O(sat_add3202_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sat_add3202_carry__2
       (.CI(sat_add3202_carry__1_n_0),
        .CO({sat_add3202_carry__2_n_0,sat_add3202_carry__2_n_1,sat_add3202_carry__2_n_2,sat_add3202_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(x_reg__0[21:18]),
        .O({sat_add3202_carry__2_n_4,sat_add3202_carry__2_n_5,sat_add3202_carry__2_n_6,sat_add3202_carry__2_n_7}),
        .S({sat_add3202_carry__2_i_1_n_0,sat_add3202_carry__2_i_2_n_0,sat_add3202_carry__2_i_3_n_0,sat_add3202_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add3202_carry__2_i_1
       (.I0(x_reg__0[21]),
        .I1(\fb_term_r_reg_n_0_[21] ),
        .O(sat_add3202_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add3202_carry__2_i_2
       (.I0(x_reg__0[20]),
        .I1(\fb_term_r_reg_n_0_[20] ),
        .O(sat_add3202_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add3202_carry__2_i_3
       (.I0(x_reg__0[19]),
        .I1(\fb_term_r_reg_n_0_[19] ),
        .O(sat_add3202_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add3202_carry__2_i_4
       (.I0(x_reg__0[18]),
        .I1(\fb_term_r_reg_n_0_[18] ),
        .O(sat_add3202_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sat_add3202_carry__3
       (.CI(sat_add3202_carry__2_n_0),
        .CO({sat_add3202_carry__3_n_0,sat_add3202_carry__3_n_1,sat_add3202_carry__3_n_2,sat_add3202_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(x_reg__0[25:22]),
        .O({sat_add3202_carry__3_n_4,sat_add3202_carry__3_n_5,sat_add3202_carry__3_n_6,sat_add3202_carry__3_n_7}),
        .S({sat_add3202_carry__3_i_1_n_0,sat_add3202_carry__3_i_2_n_0,sat_add3202_carry__3_i_3_n_0,sat_add3202_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add3202_carry__3_i_1
       (.I0(x_reg__0[25]),
        .I1(\fb_term_r_reg_n_0_[25] ),
        .O(sat_add3202_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add3202_carry__3_i_2
       (.I0(x_reg__0[24]),
        .I1(\fb_term_r_reg_n_0_[24] ),
        .O(sat_add3202_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add3202_carry__3_i_3
       (.I0(x_reg__0[23]),
        .I1(\fb_term_r_reg_n_0_[23] ),
        .O(sat_add3202_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add3202_carry__3_i_4
       (.I0(x_reg__0[22]),
        .I1(\fb_term_r_reg_n_0_[22] ),
        .O(sat_add3202_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sat_add3202_carry__4
       (.CI(sat_add3202_carry__3_n_0),
        .CO({sat_add3202_carry__4_n_0,sat_add3202_carry__4_n_1,sat_add3202_carry__4_n_2,sat_add3202_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({p_0_in9_in,x_reg__0[28:26]}),
        .O({sat_add3202_carry__4_n_4,sat_add3202_carry__4_n_5,sat_add3202_carry__4_n_6,sat_add3202_carry__4_n_7}),
        .S({sat_add3202_carry__4_i_1_n_0,sat_add3202_carry__4_i_2_n_0,sat_add3202_carry__4_i_3_n_0,sat_add3202_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add3202_carry__4_i_1
       (.I0(p_0_in9_in),
        .I1(\fb_term_r_reg_n_0_[29] ),
        .O(sat_add3202_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add3202_carry__4_i_2
       (.I0(x_reg__0[28]),
        .I1(\fb_term_r_reg_n_0_[28] ),
        .O(sat_add3202_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add3202_carry__4_i_3
       (.I0(x_reg__0[27]),
        .I1(\fb_term_r_reg_n_0_[27] ),
        .O(sat_add3202_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add3202_carry__4_i_4
       (.I0(x_reg__0[26]),
        .I1(\fb_term_r_reg_n_0_[26] ),
        .O(sat_add3202_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sat_add3202_carry__5
       (.CI(sat_add3202_carry__4_n_0),
        .CO({NLW_sat_add3202_carry__5_CO_UNCONNECTED[3:1],sat_add3202_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_0_in9_in}),
        .O({NLW_sat_add3202_carry__5_O_UNCONNECTED[3:2],p_2_in6_in,sat_add3202_carry__5_n_7}),
        .S({1'b0,1'b0,sat_add3202_carry__5_i_1_n_0,sat_add3202_carry__5_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add3202_carry__5_i_1
       (.I0(p_0_in8_in),
        .I1(p_0_in9_in),
        .O(sat_add3202_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add3202_carry__5_i_2
       (.I0(p_0_in9_in),
        .I1(\fb_term_r_reg_n_0_[30] ),
        .O(sat_add3202_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add3202_carry_i_1
       (.I0(x_reg__0[9]),
        .I1(\fb_term_r_reg_n_0_[9] ),
        .O(sat_add3202_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add3202_carry_i_2
       (.I0(x_reg__0[8]),
        .I1(\fb_term_r_reg_n_0_[8] ),
        .O(sat_add3202_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add3202_carry_i_3
       (.I0(x_reg__0[7]),
        .I1(\fb_term_r_reg_n_0_[7] ),
        .O(sat_add3202_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sat_add3202_carry_i_4
       (.I0(x_reg__0[6]),
        .I1(\fb_term_r_reg_n_0_[6] ),
        .O(sat_add3202_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sat_add3202_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\sat_add3202_inferred__0/i__carry_n_0 ,\sat_add3202_inferred__0/i__carry_n_1 ,\sat_add3202_inferred__0/i__carry_n_2 ,\sat_add3202_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(x_reg__0[9:6]),
        .O({\sat_add3202_inferred__0/i__carry_n_4 ,\sat_add3202_inferred__0/i__carry_n_5 ,\sat_add3202_inferred__0/i__carry_n_6 ,\sat_add3202_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sat_add3202_inferred__0/i__carry__0 
       (.CI(\sat_add3202_inferred__0/i__carry_n_0 ),
        .CO({\sat_add3202_inferred__0/i__carry__0_n_0 ,\sat_add3202_inferred__0/i__carry__0_n_1 ,\sat_add3202_inferred__0/i__carry__0_n_2 ,\sat_add3202_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(x_reg__0[13:10]),
        .O({\sat_add3202_inferred__0/i__carry__0_n_4 ,\sat_add3202_inferred__0/i__carry__0_n_5 ,\sat_add3202_inferred__0/i__carry__0_n_6 ,\sat_add3202_inferred__0/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sat_add3202_inferred__0/i__carry__1 
       (.CI(\sat_add3202_inferred__0/i__carry__0_n_0 ),
        .CO({\sat_add3202_inferred__0/i__carry__1_n_0 ,\sat_add3202_inferred__0/i__carry__1_n_1 ,\sat_add3202_inferred__0/i__carry__1_n_2 ,\sat_add3202_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(x_reg__0[17:14]),
        .O({\sat_add3202_inferred__0/i__carry__1_n_4 ,\sat_add3202_inferred__0/i__carry__1_n_5 ,\sat_add3202_inferred__0/i__carry__1_n_6 ,\sat_add3202_inferred__0/i__carry__1_n_7 }),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sat_add3202_inferred__0/i__carry__2 
       (.CI(\sat_add3202_inferred__0/i__carry__1_n_0 ),
        .CO({\sat_add3202_inferred__0/i__carry__2_n_0 ,\sat_add3202_inferred__0/i__carry__2_n_1 ,\sat_add3202_inferred__0/i__carry__2_n_2 ,\sat_add3202_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(x_reg__0[21:18]),
        .O({\sat_add3202_inferred__0/i__carry__2_n_4 ,\sat_add3202_inferred__0/i__carry__2_n_5 ,\sat_add3202_inferred__0/i__carry__2_n_6 ,\sat_add3202_inferred__0/i__carry__2_n_7 }),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sat_add3202_inferred__0/i__carry__3 
       (.CI(\sat_add3202_inferred__0/i__carry__2_n_0 ),
        .CO({\sat_add3202_inferred__0/i__carry__3_n_0 ,\sat_add3202_inferred__0/i__carry__3_n_1 ,\sat_add3202_inferred__0/i__carry__3_n_2 ,\sat_add3202_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI(x_reg__0[25:22]),
        .O({\sat_add3202_inferred__0/i__carry__3_n_4 ,\sat_add3202_inferred__0/i__carry__3_n_5 ,\sat_add3202_inferred__0/i__carry__3_n_6 ,\sat_add3202_inferred__0/i__carry__3_n_7 }),
        .S({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sat_add3202_inferred__0/i__carry__4 
       (.CI(\sat_add3202_inferred__0/i__carry__3_n_0 ),
        .CO({\sat_add3202_inferred__0/i__carry__4_n_0 ,\sat_add3202_inferred__0/i__carry__4_n_1 ,\sat_add3202_inferred__0/i__carry__4_n_2 ,\sat_add3202_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({p_0_in9_in,x_reg__0[28:26]}),
        .O({\sat_add3202_inferred__0/i__carry__4_n_4 ,\sat_add3202_inferred__0/i__carry__4_n_5 ,\sat_add3202_inferred__0/i__carry__4_n_6 ,\sat_add3202_inferred__0/i__carry__4_n_7 }),
        .S({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sat_add3202_inferred__0/i__carry__5 
       (.CI(\sat_add3202_inferred__0/i__carry__4_n_0 ),
        .CO({\NLW_sat_add3202_inferred__0/i__carry__5_CO_UNCONNECTED [3:1],\sat_add3202_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_0_in9_in}),
        .O({\NLW_sat_add3202_inferred__0/i__carry__5_O_UNCONNECTED [3:2],p_0_in14_in,\sat_add3202_inferred__0/i__carry__5_n_7 }),
        .S({1'b0,1'b0,i__carry__5_i_1_n_0,i__carry__5_i_2_n_0}));
  design_1_fx_system_wrapper_0_1_delay_line u_dl
       (.E(u_dl_n_18),
        .\FSM_sequential_state_reg[0] (\FSM_sequential_state_reg[0]_0 ),
        .\FSM_sequential_state_reg[0]_0 (out_buf_valid1_out),
        .\FSM_sequential_state_reg[1] (\FSM_sequential_state_reg[1]_0 ),
        .\FSM_sequential_state_reg[1]_0 (\FSM_sequential_state_reg[1]_1 ),
        .\FSM_sequential_state_reg[2] (\FSM_sequential_state_reg[2]_0 ),
        .\FSM_sequential_state_reg[2]_0 (\FSM_sequential_state_reg[2]_1 ),
        .\FSM_sequential_state_reg[2]_1 (u_dl_n_23),
        .\FSM_sequential_state_reg[2]_2 (u_dl_n_25),
        .\FSM_sequential_state_reg[2]_3 (u_dl_n_26),
        .\FSM_sequential_state_reg[2]_4 (u_dl_n_27),
        .\FSM_sequential_state_reg[2]_5 (\FSM_sequential_state[2]_i_4_n_0 ),
        .P(P),
        .Q(Q),
        .SR(p_0_in),
        .\bram_wr_data_reg[31]_0 ({\w_in_reg_n_0_[31] ,\w_in_reg_n_0_[30] ,\w_in_reg_n_0_[29] ,\w_in_reg_n_0_[28] ,\w_in_reg_n_0_[27] ,\w_in_reg_n_0_[26] ,\w_in_reg_n_0_[25] ,\w_in_reg_n_0_[24] ,\w_in_reg_n_0_[23] ,\w_in_reg_n_0_[22] ,\w_in_reg_n_0_[21] ,\w_in_reg_n_0_[20] ,\w_in_reg_n_0_[19] ,\w_in_reg_n_0_[18] ,\w_in_reg_n_0_[17] ,\w_in_reg_n_0_[16] ,\w_in_reg_n_0_[15] ,\w_in_reg_n_0_[14] ,\w_in_reg_n_0_[13] ,\w_in_reg_n_0_[12] ,\w_in_reg_n_0_[11] ,\w_in_reg_n_0_[10] ,\w_in_reg_n_0_[9] ,\w_in_reg_n_0_[8] ,\w_in_reg_n_0_[7] ,\w_in_reg_n_0_[6] ,\w_in_reg_n_0_[5] ,\w_in_reg_n_0_[4] ,\w_in_reg_n_0_[3] ,\w_in_reg_n_0_[2] ,\w_in_reg_n_0_[1] ,\w_in_reg_n_0_[0] }),
        .bram_wr_en_reg_rep_0(bram_wr_en_reg_rep),
        .bram_wr_en_reg_rep__0_0(bram_wr_en_reg_rep__0),
        .bram_wr_en_reg_rep__10_0(bram_wr_en_reg_rep__10),
        .bram_wr_en_reg_rep__11_0(bram_wr_en_reg_rep__11),
        .bram_wr_en_reg_rep__1_0(bram_wr_en_reg_rep__1),
        .bram_wr_en_reg_rep__2_0(bram_wr_en_reg_rep__2),
        .bram_wr_en_reg_rep__3_0(bram_wr_en_reg_rep__3),
        .bram_wr_en_reg_rep__4_0(bram_wr_en_reg_rep__4),
        .bram_wr_en_reg_rep__5_0(bram_wr_en_reg_rep__5),
        .bram_wr_en_reg_rep__6_0(bram_wr_en_reg_rep__6),
        .bram_wr_en_reg_rep__7_0(bram_wr_en_reg_rep__7),
        .bram_wr_en_reg_rep__8_0(bram_wr_en_reg_rep__8),
        .bram_wr_en_reg_rep__9_0(bram_wr_en_reg_rep__9),
        .clear_req0(clear_req0),
        .clk(clk),
        .\d_out_reg[31] (d_out),
        .d_reg_valid_reg_0(d_reg_valid_reg),
        .d_reg_valid_reg_1(u_dl_n_15),
        .d_reg_valid_reg_2(d_reg_valid_reg_0),
        .enable_d(enable_d),
        .frac_d_valid(frac_d_valid),
        .frac_start_reg_0(frac_start_reg),
        .fx_enable(fx_enable),
        .fx_enable_0(E),
        .inflight0(inflight0),
        .mono_valid(mono_valid),
        .out_buf_valid_reg(out_buf_valid_reg_0),
        .out_buf_valid_reg_0(u_dl_n_28),
        .out_buf_valid_reg_1(ret_valid),
        .rd_en_reg(rd_en),
        .rd_en_reg_0(rd_en_reg),
        .rd_en_reg_rep(rd_en_reg_rep),
        .\reg_ctrl_reg[0] (\reg_ctrl_reg[0] ),
        .rst_n(rst_n),
        .state(state),
        .\state_reg[0]_0 (\state_reg[0] ),
        .\state_reg[0]_1 (\state_reg[0]_0 ),
        .\state_reg[0]_2 (u_dl_n_21),
        .\state_reg[1]_0 (\state_reg[1] ),
        .\state_reg[1]_1 (u_dl_n_10),
        .\state_reg[1]_2 (\state_reg[1]_0 ),
        .\state_reg[1]_3 (clear_req_reg_0),
        .\term_r_reg[0] (\term_r_reg[0] ),
        .\term_r_reg[0]_0 (\term_r_reg[0]_0 ),
        .\x_reg_reg[6] (\x_reg_reg[6]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v0_carry
       (.CI(1'b0),
        .CO({v0_carry_n_0,v0_carry_n_1,v0_carry_n_2,v0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,v1_carry__2_n_5,1'b0}),
        .O({v0_carry_n_4,v0_carry_n_5,NLW_v0_carry_O_UNCONNECTED[1:0]}),
        .S({v1_carry__3_n_7,v1_carry__2_n_4,v0_carry_i_1_n_0,v1_carry__2_n_6}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v0_carry__0
       (.CI(v0_carry_n_0),
        .CO({v0_carry__0_n_0,v0_carry__0_n_1,v0_carry__0_n_2,v0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({v0_carry__0_n_4,v0_carry__0_n_5,v0_carry__0_n_6,v0_carry__0_n_7}),
        .S({v1_carry__4_n_7,v1_carry__3_n_4,v1_carry__3_n_5,v1_carry__3_n_6}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v0_carry__1
       (.CI(v0_carry__0_n_0),
        .CO({v0_carry__1_n_0,v0_carry__1_n_1,v0_carry__1_n_2,v0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({v0_carry__1_n_4,v0_carry__1_n_5,v0_carry__1_n_6,v0_carry__1_n_7}),
        .S({v1_carry__5_n_7,v1_carry__4_n_4,v1_carry__4_n_5,v1_carry__4_n_6}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v0_carry__2
       (.CI(v0_carry__1_n_0),
        .CO({v0_carry__2_n_0,v0_carry__2_n_1,v0_carry__2_n_2,v0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({v0_carry__2_n_4,v0_carry__2_n_5,v0_carry__2_n_6,v0_carry__2_n_7}),
        .S({v1_carry__6_n_7,v1_carry__5_n_4,v1_carry__5_n_5,v1_carry__5_n_6}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v0_carry__3
       (.CI(v0_carry__2_n_0),
        .CO({v0_carry__3_n_0,v0_carry__3_n_1,v0_carry__3_n_2,v0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({v0_carry__3_n_4,v0_carry__3_n_5,v0_carry__3_n_6,v0_carry__3_n_7}),
        .S({v1_carry__7_n_7,v1_carry__6_n_4,v1_carry__6_n_5,v1_carry__6_n_6}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v0_carry__4
       (.CI(v0_carry__3_n_0),
        .CO({v0_carry__4_n_0,v0_carry__4_n_1,v0_carry__4_n_2,v0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({v0_carry__4_n_4,v0_carry__4_n_5,v0_carry__4_n_6,v0_carry__4_n_7}),
        .S({v1_carry__8_n_7,v1_carry__7_n_4,v1_carry__7_n_5,v1_carry__7_n_6}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v0_carry__5
       (.CI(v0_carry__4_n_0),
        .CO({v0_carry__5_n_0,v0_carry__5_n_1,v0_carry__5_n_2,v0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({v0_carry__5_n_4,v0_carry__5_n_5,v0_carry__5_n_6,v0_carry__5_n_7}),
        .S({v1_carry__9_n_7,v1_carry__8_n_4,v1_carry__8_n_5,v1_carry__8_n_6}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v0_carry__6
       (.CI(v0_carry__5_n_0),
        .CO({v0_carry__6_n_0,v0_carry__6_n_1,v0_carry__6_n_2,v0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({v0_carry__6_n_4,v0_carry__6_n_5,v0_carry__6_n_6,v0_carry__6_n_7}),
        .S({v1_carry__10_n_7,v1_carry__9_n_4,v1_carry__9_n_5,v1_carry__9_n_6}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v0_carry__7
       (.CI(v0_carry__6_n_0),
        .CO({NLW_v0_carry__7_CO_UNCONNECTED[3:2],v0_carry__7_n_2,v0_carry__7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_v0_carry__7_O_UNCONNECTED[3],v0_carry__7_n_5,v0_carry__7_n_6,v0_carry__7_n_7}),
        .S({1'b0,v1_carry__10_n_4,v1_carry__10_n_5,v1_carry__10_n_6}));
  LUT1 #(
    .INIT(2'h1)) 
    v0_carry_i_1
       (.I0(v1_carry__2_n_5),
        .O(v0_carry_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \v0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\v0_inferred__0/i__carry_n_0 ,\v0_inferred__0/i__carry_n_1 ,\v0_inferred__0/i__carry_n_2 ,\v0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\v1_inferred__0/i__carry__2_n_5 ,1'b0}),
        .O(\NLW_v0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({\v1_inferred__0/i__carry__3_n_7 ,\v1_inferred__0/i__carry__2_n_4 ,i__carry_i_1__2_n_0,\v1_inferred__0/i__carry__2_n_6 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \v0_inferred__0/i__carry__0 
       (.CI(\v0_inferred__0/i__carry_n_0 ),
        .CO({\v0_inferred__0/i__carry__0_n_0 ,\v0_inferred__0/i__carry__0_n_1 ,\v0_inferred__0/i__carry__0_n_2 ,\v0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_v0_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({\v1_inferred__0/i__carry__4_n_7 ,\v1_inferred__0/i__carry__3_n_4 ,\v1_inferred__0/i__carry__3_n_5 ,\v1_inferred__0/i__carry__3_n_6 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \v0_inferred__0/i__carry__1 
       (.CI(\v0_inferred__0/i__carry__0_n_0 ),
        .CO({\v0_inferred__0/i__carry__1_n_0 ,\v0_inferred__0/i__carry__1_n_1 ,\v0_inferred__0/i__carry__1_n_2 ,\v0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\v0_inferred__0/i__carry__1_n_4 ,\v0_inferred__0/i__carry__1_n_5 ,\v0_inferred__0/i__carry__1_n_6 ,\v0_inferred__0/i__carry__1_n_7 }),
        .S({\v1_inferred__0/i__carry__5_n_7 ,\v1_inferred__0/i__carry__4_n_4 ,\v1_inferred__0/i__carry__4_n_5 ,\v1_inferred__0/i__carry__4_n_6 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \v0_inferred__0/i__carry__2 
       (.CI(\v0_inferred__0/i__carry__1_n_0 ),
        .CO({\v0_inferred__0/i__carry__2_n_0 ,\v0_inferred__0/i__carry__2_n_1 ,\v0_inferred__0/i__carry__2_n_2 ,\v0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\v0_inferred__0/i__carry__2_n_4 ,\v0_inferred__0/i__carry__2_n_5 ,\v0_inferred__0/i__carry__2_n_6 ,\v0_inferred__0/i__carry__2_n_7 }),
        .S({\v1_inferred__0/i__carry__6_n_7 ,\v1_inferred__0/i__carry__5_n_4 ,\v1_inferred__0/i__carry__5_n_5 ,\v1_inferred__0/i__carry__5_n_6 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \v0_inferred__0/i__carry__3 
       (.CI(\v0_inferred__0/i__carry__2_n_0 ),
        .CO({\v0_inferred__0/i__carry__3_n_0 ,\v0_inferred__0/i__carry__3_n_1 ,\v0_inferred__0/i__carry__3_n_2 ,\v0_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\v0_inferred__0/i__carry__3_n_4 ,\v0_inferred__0/i__carry__3_n_5 ,\v0_inferred__0/i__carry__3_n_6 ,\v0_inferred__0/i__carry__3_n_7 }),
        .S({\v1_inferred__0/i__carry__7_n_7 ,\v1_inferred__0/i__carry__6_n_4 ,\v1_inferred__0/i__carry__6_n_5 ,\v1_inferred__0/i__carry__6_n_6 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \v0_inferred__0/i__carry__4 
       (.CI(\v0_inferred__0/i__carry__3_n_0 ),
        .CO({\v0_inferred__0/i__carry__4_n_0 ,\v0_inferred__0/i__carry__4_n_1 ,\v0_inferred__0/i__carry__4_n_2 ,\v0_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\v0_inferred__0/i__carry__4_n_4 ,\v0_inferred__0/i__carry__4_n_5 ,\v0_inferred__0/i__carry__4_n_6 ,\v0_inferred__0/i__carry__4_n_7 }),
        .S({\v1_inferred__0/i__carry__8_n_7 ,\v1_inferred__0/i__carry__7_n_4 ,\v1_inferred__0/i__carry__7_n_5 ,\v1_inferred__0/i__carry__7_n_6 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \v0_inferred__0/i__carry__5 
       (.CI(\v0_inferred__0/i__carry__4_n_0 ),
        .CO({\v0_inferred__0/i__carry__5_n_0 ,\v0_inferred__0/i__carry__5_n_1 ,\v0_inferred__0/i__carry__5_n_2 ,\v0_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\v0_inferred__0/i__carry__5_n_4 ,\v0_inferred__0/i__carry__5_n_5 ,\v0_inferred__0/i__carry__5_n_6 ,\v0_inferred__0/i__carry__5_n_7 }),
        .S({\v1_inferred__0/i__carry__9_n_7 ,\v1_inferred__0/i__carry__8_n_4 ,\v1_inferred__0/i__carry__8_n_5 ,\v1_inferred__0/i__carry__8_n_6 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \v0_inferred__0/i__carry__6 
       (.CI(\v0_inferred__0/i__carry__5_n_0 ),
        .CO({\v0_inferred__0/i__carry__6_n_0 ,\v0_inferred__0/i__carry__6_n_1 ,\v0_inferred__0/i__carry__6_n_2 ,\v0_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\v0_inferred__0/i__carry__6_n_4 ,\v0_inferred__0/i__carry__6_n_5 ,\v0_inferred__0/i__carry__6_n_6 ,\v0_inferred__0/i__carry__6_n_7 }),
        .S({\v1_inferred__0/i__carry__10_n_7 ,\v1_inferred__0/i__carry__9_n_4 ,\v1_inferred__0/i__carry__9_n_5 ,\v1_inferred__0/i__carry__9_n_6 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \v0_inferred__0/i__carry__7 
       (.CI(\v0_inferred__0/i__carry__6_n_0 ),
        .CO({\NLW_v0_inferred__0/i__carry__7_CO_UNCONNECTED [3:2],\v0_inferred__0/i__carry__7_n_2 ,\v0_inferred__0/i__carry__7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_v0_inferred__0/i__carry__7_O_UNCONNECTED [3],\v0_inferred__0/i__carry__7_n_5 ,\v0_inferred__0/i__carry__7_n_6 ,\v0_inferred__0/i__carry__7_n_7 }),
        .S({1'b0,\v1_inferred__0/i__carry__10_n_4 ,\v1_inferred__0/i__carry__10_n_5 ,\v1_inferred__0/i__carry__10_n_6 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    v1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,v1__0_0[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_v1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({d_out[31],d_out[31],d_out[31],d_out[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_v1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_v1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_v1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(u_dl_n_10),
        .CEB2(u_dl_n_15),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_v1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_v1_OVERFLOW_UNCONNECTED),
        .P({v1_n_58,v1_n_59,v1_n_60,v1_n_61,v1_n_62,v1_n_63,v1_n_64,v1_n_65,v1_n_66,v1_n_67,v1_n_68,v1_n_69,v1_n_70,v1_n_71,v1_n_72,v1_n_73,v1_n_74,v1_n_75,v1_n_76,v1_n_77,v1_n_78,v1_n_79,v1_n_80,v1_n_81,v1_n_82,v1_n_83,v1_n_84,v1_n_85,v1_n_86,v1_n_87,v1_n_88,v1_n_89,v1_n_90,v1_n_91,v1_n_92,v1_n_93,v1_n_94,v1_n_95,v1_n_96,v1_n_97,v1_n_98,v1_n_99,v1_n_100,v1_n_101,v1_n_102,v1_n_103,v1_n_104,v1_n_105}),
        .PATTERNBDETECT(NLW_v1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_v1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({v1_n_106,v1_n_107,v1_n_108,v1_n_109,v1_n_110,v1_n_111,v1_n_112,v1_n_113,v1_n_114,v1_n_115,v1_n_116,v1_n_117,v1_n_118,v1_n_119,v1_n_120,v1_n_121,v1_n_122,v1_n_123,v1_n_124,v1_n_125,v1_n_126,v1_n_127,v1_n_128,v1_n_129,v1_n_130,v1_n_131,v1_n_132,v1_n_133,v1_n_134,v1_n_135,v1_n_136,v1_n_137,v1_n_138,v1_n_139,v1_n_140,v1_n_141,v1_n_142,v1_n_143,v1_n_144,v1_n_145,v1_n_146,v1_n_147,v1_n_148,v1_n_149,v1_n_150,v1_n_151,v1_n_152,v1_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(p_0_in),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_v1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x15 4}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    v1__0
       (.A({d_out[31],d_out[31],d_out[31],d_out[31],d_out[31],d_out[31],d_out[31],d_out[31],d_out[31],d_out[31],d_out[31],d_out[31],d_out[31],d_out[31],d_out[31],d_out[31:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_v1__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({v1__0_0[31],v1__0_0[31],v1__0_0[31],v1__0_0[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_v1__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_v1__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_v1__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(u_dl_n_10),
        .CEA2(u_dl_n_15),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_v1__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_v1__0_OVERFLOW_UNCONNECTED),
        .P({v1__0_n_58,v1__0_n_59,v1__0_n_60,v1__0_n_61,v1__0_n_62,v1__0_n_63,v1__0_n_64,v1__0_n_65,v1__0_n_66,v1__0_n_67,v1__0_n_68,v1__0_n_69,v1__0_n_70,v1__0_n_71,v1__0_n_72,v1__0_n_73,v1__0_n_74,v1__0_n_75,v1__0_n_76,v1__0_n_77,v1__0_n_78,v1__0_n_79,v1__0_n_80,v1__0_n_81,v1__0_n_82,v1__0_n_83,v1__0_n_84,v1__0_n_85,v1__0_n_86,v1__0_n_87,v1__0_n_88,v1__0_n_89,v1__0_n_90,v1__0_n_91,v1__0_n_92,v1__0_n_93,v1__0_n_94,v1__0_n_95,v1__0_n_96,v1__0_n_97,v1__0_n_98,v1__0_n_99,v1__0_n_100,v1__0_n_101,v1__0_n_102,v1__0_n_103,v1__0_n_104,v1__0_n_105}),
        .PATTERNBDETECT(NLW_v1__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_v1__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({v1_n_106,v1_n_107,v1_n_108,v1_n_109,v1_n_110,v1_n_111,v1_n_112,v1_n_113,v1_n_114,v1_n_115,v1_n_116,v1_n_117,v1_n_118,v1_n_119,v1_n_120,v1_n_121,v1_n_122,v1_n_123,v1_n_124,v1_n_125,v1_n_126,v1_n_127,v1_n_128,v1_n_129,v1_n_130,v1_n_131,v1_n_132,v1_n_133,v1_n_134,v1_n_135,v1_n_136,v1_n_137,v1_n_138,v1_n_139,v1_n_140,v1_n_141,v1_n_142,v1_n_143,v1_n_144,v1_n_145,v1_n_146,v1_n_147,v1_n_148,v1_n_149,v1_n_150,v1_n_151,v1_n_152,v1_n_153}),
        .PCOUT(NLW_v1__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(p_0_in),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_v1__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    v1__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,d_out[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_v1__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,v1__0_0[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_v1__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_v1__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_v1__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(u_dl_n_10),
        .CEA2(u_dl_n_15),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_v1__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_v1__1_OVERFLOW_UNCONNECTED),
        .P({v1__1_n_58,v1__1_n_59,v1__1_n_60,v1__1_n_61,v1__1_n_62,v1__1_n_63,v1__1_n_64,v1__1_n_65,v1__1_n_66,v1__1_n_67,v1__1_n_68,v1__1_n_69,v1__1_n_70,v1__1_n_71,v1__1_n_72,v1__1_n_73,v1__1_n_74,v1__1_n_75,v1__1_n_76,v1__1_n_77,v1__1_n_78,v1__1_n_79,v1__1_n_80,v1__1_n_81,v1__1_n_82,v1__1_n_83,v1__1_n_84,v1__1_n_85,v1__1_n_86,v1__1_n_87,v1__1_n_88,v1__1_n_89,v1__1_n_90,v1__1_n_91,v1__1_n_92,v1__1_n_93,v1__1_n_94,v1__1_n_95,v1__1_n_96,v1__1_n_97,v1__1_n_98,v1__1_n_99,v1__1_n_100,v1__1_n_101,v1__1_n_102,v1__1_n_103,v1__1_n_104,v1__1_n_105}),
        .PATTERNBDETECT(NLW_v1__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_v1__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({v1__1_n_106,v1__1_n_107,v1__1_n_108,v1__1_n_109,v1__1_n_110,v1__1_n_111,v1__1_n_112,v1__1_n_113,v1__1_n_114,v1__1_n_115,v1__1_n_116,v1__1_n_117,v1__1_n_118,v1__1_n_119,v1__1_n_120,v1__1_n_121,v1__1_n_122,v1__1_n_123,v1__1_n_124,v1__1_n_125,v1__1_n_126,v1__1_n_127,v1__1_n_128,v1__1_n_129,v1__1_n_130,v1__1_n_131,v1__1_n_132,v1__1_n_133,v1__1_n_134,v1__1_n_135,v1__1_n_136,v1__1_n_137,v1__1_n_138,v1__1_n_139,v1__1_n_140,v1__1_n_141,v1__1_n_142,v1__1_n_143,v1__1_n_144,v1__1_n_145,v1__1_n_146,v1__1_n_147,v1__1_n_148,v1__1_n_149,v1__1_n_150,v1__1_n_151,v1__1_n_152,v1__1_n_153}),
        .RSTA(p_0_in),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_v1__1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    v1__2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,d_out[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_v1__2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({v1__0_0[31],v1__0_0[31],v1__0_0[31],v1__0_0[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_v1__2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_v1__2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_v1__2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(u_dl_n_10),
        .CEA2(u_dl_n_15),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_v1__2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_v1__2_OVERFLOW_UNCONNECTED),
        .P({v1__2_n_58,v1__2_n_59,v1__2_n_60,v1__2_n_61,v1__2_n_62,v1__2_n_63,v1__2_n_64,v1__2_n_65,v1__2_n_66,v1__2_n_67,v1__2_n_68,v1__2_n_69,v1__2_n_70,v1__2_n_71,v1__2_n_72,v1__2_n_73,v1__2_n_74,v1__2_n_75,v1__2_n_76,v1__2_n_77,v1__2_n_78,v1__2_n_79,v1__2_n_80,v1__2_n_81,v1__2_n_82,v1__2_n_83,v1__2_n_84,v1__2_n_85,v1__2_n_86,v1__2_n_87,v1__2_n_88,v1__2_n_89,v1__2_n_90,v1__2_n_91,v1__2_n_92,v1__2_n_93,v1__2_n_94,v1__2_n_95,v1__2_n_96,v1__2_n_97,v1__2_n_98,v1__2_n_99,v1__2_n_100,v1__2_n_101,v1__2_n_102,v1__2_n_103,v1__2_n_104,v1__2_n_105}),
        .PATTERNBDETECT(NLW_v1__2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_v1__2_PATTERNDETECT_UNCONNECTED),
        .PCIN({v1__1_n_106,v1__1_n_107,v1__1_n_108,v1__1_n_109,v1__1_n_110,v1__1_n_111,v1__1_n_112,v1__1_n_113,v1__1_n_114,v1__1_n_115,v1__1_n_116,v1__1_n_117,v1__1_n_118,v1__1_n_119,v1__1_n_120,v1__1_n_121,v1__1_n_122,v1__1_n_123,v1__1_n_124,v1__1_n_125,v1__1_n_126,v1__1_n_127,v1__1_n_128,v1__1_n_129,v1__1_n_130,v1__1_n_131,v1__1_n_132,v1__1_n_133,v1__1_n_134,v1__1_n_135,v1__1_n_136,v1__1_n_137,v1__1_n_138,v1__1_n_139,v1__1_n_140,v1__1_n_141,v1__1_n_142,v1__1_n_143,v1__1_n_144,v1__1_n_145,v1__1_n_146,v1__1_n_147,v1__1_n_148,v1__1_n_149,v1__1_n_150,v1__1_n_151,v1__1_n_152,v1__1_n_153}),
        .PCOUT(NLW_v1__2_PCOUT_UNCONNECTED[47:0]),
        .RSTA(p_0_in),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_v1__2_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    v1__3
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_v1__3_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({d_out[31],d_out[31],d_out[31],d_out[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_v1__3_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_v1__3_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_v1__3_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(v1__3_0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(u_dl_n_10),
        .CEB2(u_dl_n_15),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_v1__3_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_v1__3_OVERFLOW_UNCONNECTED),
        .P({v1__3_n_58,v1__3_n_59,v1__3_n_60,v1__3_n_61,v1__3_n_62,v1__3_n_63,v1__3_n_64,v1__3_n_65,v1__3_n_66,v1__3_n_67,v1__3_n_68,v1__3_n_69,v1__3_n_70,v1__3_n_71,v1__3_n_72,v1__3_n_73,v1__3_n_74,v1__3_n_75,v1__3_n_76,v1__3_n_77,v1__3_n_78,v1__3_n_79,v1__3_n_80,v1__3_n_81,v1__3_n_82,v1__3_n_83,v1__3_n_84,v1__3_n_85,v1__3_n_86,v1__3_n_87,v1__3_n_88,v1__3_n_89,v1__3_n_90,v1__3_n_91,v1__3_n_92,v1__3_n_93,v1__3_n_94,v1__3_n_95,v1__3_n_96,v1__3_n_97,v1__3_n_98,v1__3_n_99,v1__3_n_100,v1__3_n_101,v1__3_n_102,v1__3_n_103,v1__3_n_104,v1__3_n_105}),
        .PATTERNBDETECT(NLW_v1__3_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_v1__3_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({v1__3_n_106,v1__3_n_107,v1__3_n_108,v1__3_n_109,v1__3_n_110,v1__3_n_111,v1__3_n_112,v1__3_n_113,v1__3_n_114,v1__3_n_115,v1__3_n_116,v1__3_n_117,v1__3_n_118,v1__3_n_119,v1__3_n_120,v1__3_n_121,v1__3_n_122,v1__3_n_123,v1__3_n_124,v1__3_n_125,v1__3_n_126,v1__3_n_127,v1__3_n_128,v1__3_n_129,v1__3_n_130,v1__3_n_131,v1__3_n_132,v1__3_n_133,v1__3_n_134,v1__3_n_135,v1__3_n_136,v1__3_n_137,v1__3_n_138,v1__3_n_139,v1__3_n_140,v1__3_n_141,v1__3_n_142,v1__3_n_143,v1__3_n_144,v1__3_n_145,v1__3_n_146,v1__3_n_147,v1__3_n_148,v1__3_n_149,v1__3_n_150,v1__3_n_151,v1__3_n_152,v1__3_n_153}),
        .RSTA(p_0_in),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(p_0_in),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_v1__3_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x15 4}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    v1__4
       (.A({d_out[31],d_out[31],d_out[31],d_out[31],d_out[31],d_out[31],d_out[31],d_out[31],d_out[31],d_out[31],d_out[31],d_out[31],d_out[31],d_out[31],d_out[31],d_out[31:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_v1__4_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({v1__4_0[14],v1__4_0[14],v1__4_0[14],v1__4_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_v1__4_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_v1__4_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_v1__4_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(u_dl_n_10),
        .CEA2(u_dl_n_15),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_v1__4_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_v1__4_OVERFLOW_UNCONNECTED),
        .P({v1__4_n_58,v1__4_n_59,v1__4_n_60,v1__4_n_61,v1__4_n_62,v1__4_n_63,v1__4_n_64,v1__4_n_65,v1__4_n_66,v1__4_n_67,v1__4_n_68,v1__4_n_69,v1__4_n_70,v1__4_n_71,v1__4_n_72,v1__4_n_73,v1__4_n_74,v1__4_n_75,v1__4_n_76,v1__4_n_77,v1__4_n_78,v1__4_n_79,v1__4_n_80,v1__4_n_81,v1__4_n_82,v1__4_n_83,v1__4_n_84,v1__4_n_85,v1__4_n_86,v1__4_n_87,v1__4_n_88,v1__4_n_89,v1__4_n_90,v1__4_n_91,v1__4_n_92,v1__4_n_93,v1__4_n_94,v1__4_n_95,v1__4_n_96,v1__4_n_97,v1__4_n_98,v1__4_n_99,v1__4_n_100,v1__4_n_101,v1__4_n_102,v1__4_n_103,v1__4_n_104,v1__4_n_105}),
        .PATTERNBDETECT(NLW_v1__4_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_v1__4_PATTERNDETECT_UNCONNECTED),
        .PCIN({v1__3_n_106,v1__3_n_107,v1__3_n_108,v1__3_n_109,v1__3_n_110,v1__3_n_111,v1__3_n_112,v1__3_n_113,v1__3_n_114,v1__3_n_115,v1__3_n_116,v1__3_n_117,v1__3_n_118,v1__3_n_119,v1__3_n_120,v1__3_n_121,v1__3_n_122,v1__3_n_123,v1__3_n_124,v1__3_n_125,v1__3_n_126,v1__3_n_127,v1__3_n_128,v1__3_n_129,v1__3_n_130,v1__3_n_131,v1__3_n_132,v1__3_n_133,v1__3_n_134,v1__3_n_135,v1__3_n_136,v1__3_n_137,v1__3_n_138,v1__3_n_139,v1__3_n_140,v1__3_n_141,v1__3_n_142,v1__3_n_143,v1__3_n_144,v1__3_n_145,v1__3_n_146,v1__3_n_147,v1__3_n_148,v1__3_n_149,v1__3_n_150,v1__3_n_151,v1__3_n_152,v1__3_n_153}),
        .PCOUT(NLW_v1__4_PCOUT_UNCONNECTED[47:0]),
        .RSTA(p_0_in),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_v1__4_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    v1__5
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,d_out[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_v1__5_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,s_axi_wdata}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_v1__5_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_v1__5_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_v1__5_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(u_dl_n_10),
        .CEA2(u_dl_n_15),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(v1__3_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_v1__5_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_v1__5_OVERFLOW_UNCONNECTED),
        .P({v1__5_n_58,v1__5_n_59,v1__5_n_60,v1__5_n_61,v1__5_n_62,v1__5_n_63,v1__5_n_64,v1__5_n_65,v1__5_n_66,v1__5_n_67,v1__5_n_68,v1__5_n_69,v1__5_n_70,v1__5_n_71,v1__5_n_72,v1__5_n_73,v1__5_n_74,v1__5_n_75,v1__5_n_76,v1__5_n_77,v1__5_n_78,v1__5_n_79,v1__5_n_80,v1__5_n_81,v1__5_n_82,v1__5_n_83,v1__5_n_84,v1__5_n_85,v1__5_n_86,v1__5_n_87,v1__5_n_88,v1__5_n_89,v1__5_n_90,v1__5_n_91,v1__5_n_92,v1__5_n_93,v1__5_n_94,v1__5_n_95,v1__5_n_96,v1__5_n_97,v1__5_n_98,v1__5_n_99,v1__5_n_100,v1__5_n_101,v1__5_n_102,v1__5_n_103,v1__5_n_104,v1__5_n_105}),
        .PATTERNBDETECT(NLW_v1__5_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_v1__5_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({v1__5_n_106,v1__5_n_107,v1__5_n_108,v1__5_n_109,v1__5_n_110,v1__5_n_111,v1__5_n_112,v1__5_n_113,v1__5_n_114,v1__5_n_115,v1__5_n_116,v1__5_n_117,v1__5_n_118,v1__5_n_119,v1__5_n_120,v1__5_n_121,v1__5_n_122,v1__5_n_123,v1__5_n_124,v1__5_n_125,v1__5_n_126,v1__5_n_127,v1__5_n_128,v1__5_n_129,v1__5_n_130,v1__5_n_131,v1__5_n_132,v1__5_n_133,v1__5_n_134,v1__5_n_135,v1__5_n_136,v1__5_n_137,v1__5_n_138,v1__5_n_139,v1__5_n_140,v1__5_n_141,v1__5_n_142,v1__5_n_143,v1__5_n_144,v1__5_n_145,v1__5_n_146,v1__5_n_147,v1__5_n_148,v1__5_n_149,v1__5_n_150,v1__5_n_151,v1__5_n_152,v1__5_n_153}),
        .RSTA(p_0_in),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(p_0_in),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_v1__5_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    v1__6
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,d_out[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_v1__6_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({v1__4_0[14],v1__4_0[14],v1__4_0[14],v1__4_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_v1__6_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_v1__6_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_v1__6_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(u_dl_n_10),
        .CEA2(u_dl_n_15),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_v1__6_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_v1__6_OVERFLOW_UNCONNECTED),
        .P({v1__6_n_58,v1__6_n_59,v1__6_n_60,v1__6_n_61,v1__6_n_62,v1__6_n_63,v1__6_n_64,v1__6_n_65,v1__6_n_66,v1__6_n_67,v1__6_n_68,v1__6_n_69,v1__6_n_70,v1__6_n_71,v1__6_n_72,v1__6_n_73,v1__6_n_74,v1__6_n_75,v1__6_n_76,v1__6_n_77,v1__6_n_78,v1__6_n_79,v1__6_n_80,v1__6_n_81,v1__6_n_82,v1__6_n_83,v1__6_n_84,v1__6_n_85,v1__6_n_86,v1__6_n_87,v1__6_n_88,v1__6_n_89,v1__6_n_90,v1__6_n_91,v1__6_n_92,v1__6_n_93,v1__6_n_94,v1__6_n_95,v1__6_n_96,v1__6_n_97,v1__6_n_98,v1__6_n_99,v1__6_n_100,v1__6_n_101,v1__6_n_102,v1__6_n_103,v1__6_n_104,v1__6_n_105}),
        .PATTERNBDETECT(NLW_v1__6_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_v1__6_PATTERNDETECT_UNCONNECTED),
        .PCIN({v1__5_n_106,v1__5_n_107,v1__5_n_108,v1__5_n_109,v1__5_n_110,v1__5_n_111,v1__5_n_112,v1__5_n_113,v1__5_n_114,v1__5_n_115,v1__5_n_116,v1__5_n_117,v1__5_n_118,v1__5_n_119,v1__5_n_120,v1__5_n_121,v1__5_n_122,v1__5_n_123,v1__5_n_124,v1__5_n_125,v1__5_n_126,v1__5_n_127,v1__5_n_128,v1__5_n_129,v1__5_n_130,v1__5_n_131,v1__5_n_132,v1__5_n_133,v1__5_n_134,v1__5_n_135,v1__5_n_136,v1__5_n_137,v1__5_n_138,v1__5_n_139,v1__5_n_140,v1__5_n_141,v1__5_n_142,v1__5_n_143,v1__5_n_144,v1__5_n_145,v1__5_n_146,v1__5_n_147,v1__5_n_148,v1__5_n_149,v1__5_n_150,v1__5_n_151,v1__5_n_152,v1__5_n_153}),
        .PCOUT(NLW_v1__6_PCOUT_UNCONNECTED[47:0]),
        .RSTA(p_0_in),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_v1__6_UNDERFLOW_UNCONNECTED));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v1_carry
       (.CI(1'b0),
        .CO({v1_carry_n_0,v1_carry_n_1,v1_carry_n_2,v1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({v1__2_n_103,v1__2_n_104,v1__2_n_105,1'b0}),
        .O(NLW_v1_carry_O_UNCONNECTED[3:0]),
        .S({v1_carry_i_1_n_0,v1_carry_i_2_n_0,v1_carry_i_3_n_0,v1__1_n_89}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v1_carry__0
       (.CI(v1_carry_n_0),
        .CO({v1_carry__0_n_0,v1_carry__0_n_1,v1_carry__0_n_2,v1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({v1__2_n_99,v1__2_n_100,v1__2_n_101,v1__2_n_102}),
        .O(NLW_v1_carry__0_O_UNCONNECTED[3:0]),
        .S({v1_carry__0_i_1_n_0,v1_carry__0_i_2_n_0,v1_carry__0_i_3_n_0,v1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__0_i_1
       (.I0(v1__2_n_99),
        .I1(v1_n_99),
        .O(v1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__0_i_2
       (.I0(v1__2_n_100),
        .I1(v1_n_100),
        .O(v1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__0_i_3
       (.I0(v1__2_n_101),
        .I1(v1_n_101),
        .O(v1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__0_i_4
       (.I0(v1__2_n_102),
        .I1(v1_n_102),
        .O(v1_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v1_carry__1
       (.CI(v1_carry__0_n_0),
        .CO({v1_carry__1_n_0,v1_carry__1_n_1,v1_carry__1_n_2,v1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({v1__2_n_95,v1__2_n_96,v1__2_n_97,v1__2_n_98}),
        .O(NLW_v1_carry__1_O_UNCONNECTED[3:0]),
        .S({v1_carry__1_i_1_n_0,v1_carry__1_i_2_n_0,v1_carry__1_i_3_n_0,v1_carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v1_carry__10
       (.CI(v1_carry__9_n_0),
        .CO({NLW_v1_carry__10_CO_UNCONNECTED[3],v1_carry__10_n_1,v1_carry__10_n_2,v1_carry__10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,v1__2_n_60,v1__2_n_61,v1__2_n_62}),
        .O({v1_carry__10_n_4,v1_carry__10_n_5,v1_carry__10_n_6,v1_carry__10_n_7}),
        .S({v1_carry__10_i_1_n_0,v1_carry__10_i_2_n_0,v1_carry__10_i_3_n_0,v1_carry__10_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__10_i_1
       (.I0(v1__2_n_59),
        .I1(v1__0_n_76),
        .O(v1_carry__10_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__10_i_2
       (.I0(v1__2_n_60),
        .I1(v1__0_n_77),
        .O(v1_carry__10_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__10_i_3
       (.I0(v1__2_n_61),
        .I1(v1__0_n_78),
        .O(v1_carry__10_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__10_i_4
       (.I0(v1__2_n_62),
        .I1(v1__0_n_79),
        .O(v1_carry__10_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__1_i_1
       (.I0(v1__2_n_95),
        .I1(v1_n_95),
        .O(v1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__1_i_2
       (.I0(v1__2_n_96),
        .I1(v1_n_96),
        .O(v1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__1_i_3
       (.I0(v1__2_n_97),
        .I1(v1_n_97),
        .O(v1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__1_i_4
       (.I0(v1__2_n_98),
        .I1(v1_n_98),
        .O(v1_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v1_carry__2
       (.CI(v1_carry__1_n_0),
        .CO({v1_carry__2_n_0,v1_carry__2_n_1,v1_carry__2_n_2,v1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({v1__2_n_91,v1__2_n_92,v1__2_n_93,v1__2_n_94}),
        .O({v1_carry__2_n_4,v1_carry__2_n_5,v1_carry__2_n_6,NLW_v1_carry__2_O_UNCONNECTED[0]}),
        .S({v1_carry__2_i_1_n_0,v1_carry__2_i_2_n_0,v1_carry__2_i_3_n_0,v1_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__2_i_1
       (.I0(v1__2_n_91),
        .I1(v1_n_91),
        .O(v1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__2_i_2
       (.I0(v1__2_n_92),
        .I1(v1_n_92),
        .O(v1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__2_i_3
       (.I0(v1__2_n_93),
        .I1(v1_n_93),
        .O(v1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__2_i_4
       (.I0(v1__2_n_94),
        .I1(v1_n_94),
        .O(v1_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v1_carry__3
       (.CI(v1_carry__2_n_0),
        .CO({v1_carry__3_n_0,v1_carry__3_n_1,v1_carry__3_n_2,v1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({v1__2_n_87,v1__2_n_88,v1__2_n_89,v1__2_n_90}),
        .O({v1_carry__3_n_4,v1_carry__3_n_5,v1_carry__3_n_6,v1_carry__3_n_7}),
        .S({v1_carry__3_i_1_n_0,v1_carry__3_i_2_n_0,v1_carry__3_i_3_n_0,v1_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__3_i_1
       (.I0(v1__2_n_87),
        .I1(v1__0_n_104),
        .O(v1_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__3_i_2
       (.I0(v1__2_n_88),
        .I1(v1__0_n_105),
        .O(v1_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__3_i_3
       (.I0(v1__2_n_89),
        .I1(v1_n_89),
        .O(v1_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__3_i_4
       (.I0(v1__2_n_90),
        .I1(v1_n_90),
        .O(v1_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v1_carry__4
       (.CI(v1_carry__3_n_0),
        .CO({v1_carry__4_n_0,v1_carry__4_n_1,v1_carry__4_n_2,v1_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({v1__2_n_83,v1__2_n_84,v1__2_n_85,v1__2_n_86}),
        .O({v1_carry__4_n_4,v1_carry__4_n_5,v1_carry__4_n_6,v1_carry__4_n_7}),
        .S({v1_carry__4_i_1_n_0,v1_carry__4_i_2_n_0,v1_carry__4_i_3_n_0,v1_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__4_i_1
       (.I0(v1__2_n_83),
        .I1(v1__0_n_100),
        .O(v1_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__4_i_2
       (.I0(v1__2_n_84),
        .I1(v1__0_n_101),
        .O(v1_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__4_i_3
       (.I0(v1__2_n_85),
        .I1(v1__0_n_102),
        .O(v1_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__4_i_4
       (.I0(v1__2_n_86),
        .I1(v1__0_n_103),
        .O(v1_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v1_carry__5
       (.CI(v1_carry__4_n_0),
        .CO({v1_carry__5_n_0,v1_carry__5_n_1,v1_carry__5_n_2,v1_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({v1__2_n_79,v1__2_n_80,v1__2_n_81,v1__2_n_82}),
        .O({v1_carry__5_n_4,v1_carry__5_n_5,v1_carry__5_n_6,v1_carry__5_n_7}),
        .S({v1_carry__5_i_1_n_0,v1_carry__5_i_2_n_0,v1_carry__5_i_3_n_0,v1_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__5_i_1
       (.I0(v1__2_n_79),
        .I1(v1__0_n_96),
        .O(v1_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__5_i_2
       (.I0(v1__2_n_80),
        .I1(v1__0_n_97),
        .O(v1_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__5_i_3
       (.I0(v1__2_n_81),
        .I1(v1__0_n_98),
        .O(v1_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__5_i_4
       (.I0(v1__2_n_82),
        .I1(v1__0_n_99),
        .O(v1_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v1_carry__6
       (.CI(v1_carry__5_n_0),
        .CO({v1_carry__6_n_0,v1_carry__6_n_1,v1_carry__6_n_2,v1_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({v1__2_n_75,v1__2_n_76,v1__2_n_77,v1__2_n_78}),
        .O({v1_carry__6_n_4,v1_carry__6_n_5,v1_carry__6_n_6,v1_carry__6_n_7}),
        .S({v1_carry__6_i_1_n_0,v1_carry__6_i_2_n_0,v1_carry__6_i_3_n_0,v1_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__6_i_1
       (.I0(v1__2_n_75),
        .I1(v1__0_n_92),
        .O(v1_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__6_i_2
       (.I0(v1__2_n_76),
        .I1(v1__0_n_93),
        .O(v1_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__6_i_3
       (.I0(v1__2_n_77),
        .I1(v1__0_n_94),
        .O(v1_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__6_i_4
       (.I0(v1__2_n_78),
        .I1(v1__0_n_95),
        .O(v1_carry__6_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v1_carry__7
       (.CI(v1_carry__6_n_0),
        .CO({v1_carry__7_n_0,v1_carry__7_n_1,v1_carry__7_n_2,v1_carry__7_n_3}),
        .CYINIT(1'b0),
        .DI({v1__2_n_71,v1__2_n_72,v1__2_n_73,v1__2_n_74}),
        .O({v1_carry__7_n_4,v1_carry__7_n_5,v1_carry__7_n_6,v1_carry__7_n_7}),
        .S({v1_carry__7_i_1_n_0,v1_carry__7_i_2_n_0,v1_carry__7_i_3_n_0,v1_carry__7_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__7_i_1
       (.I0(v1__2_n_71),
        .I1(v1__0_n_88),
        .O(v1_carry__7_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__7_i_2
       (.I0(v1__2_n_72),
        .I1(v1__0_n_89),
        .O(v1_carry__7_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__7_i_3
       (.I0(v1__2_n_73),
        .I1(v1__0_n_90),
        .O(v1_carry__7_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__7_i_4
       (.I0(v1__2_n_74),
        .I1(v1__0_n_91),
        .O(v1_carry__7_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v1_carry__8
       (.CI(v1_carry__7_n_0),
        .CO({v1_carry__8_n_0,v1_carry__8_n_1,v1_carry__8_n_2,v1_carry__8_n_3}),
        .CYINIT(1'b0),
        .DI({v1__2_n_67,v1__2_n_68,v1__2_n_69,v1__2_n_70}),
        .O({v1_carry__8_n_4,v1_carry__8_n_5,v1_carry__8_n_6,v1_carry__8_n_7}),
        .S({v1_carry__8_i_1_n_0,v1_carry__8_i_2_n_0,v1_carry__8_i_3_n_0,v1_carry__8_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__8_i_1
       (.I0(v1__2_n_67),
        .I1(v1__0_n_84),
        .O(v1_carry__8_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__8_i_2
       (.I0(v1__2_n_68),
        .I1(v1__0_n_85),
        .O(v1_carry__8_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__8_i_3
       (.I0(v1__2_n_69),
        .I1(v1__0_n_86),
        .O(v1_carry__8_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__8_i_4
       (.I0(v1__2_n_70),
        .I1(v1__0_n_87),
        .O(v1_carry__8_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v1_carry__9
       (.CI(v1_carry__8_n_0),
        .CO({v1_carry__9_n_0,v1_carry__9_n_1,v1_carry__9_n_2,v1_carry__9_n_3}),
        .CYINIT(1'b0),
        .DI({v1__2_n_63,v1__2_n_64,v1__2_n_65,v1__2_n_66}),
        .O({v1_carry__9_n_4,v1_carry__9_n_5,v1_carry__9_n_6,v1_carry__9_n_7}),
        .S({v1_carry__9_i_1_n_0,v1_carry__9_i_2_n_0,v1_carry__9_i_3_n_0,v1_carry__9_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__9_i_1
       (.I0(v1__2_n_63),
        .I1(v1__0_n_80),
        .O(v1_carry__9_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__9_i_2
       (.I0(v1__2_n_64),
        .I1(v1__0_n_81),
        .O(v1_carry__9_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__9_i_3
       (.I0(v1__2_n_65),
        .I1(v1__0_n_82),
        .O(v1_carry__9_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry__9_i_4
       (.I0(v1__2_n_66),
        .I1(v1__0_n_83),
        .O(v1_carry__9_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry_i_1
       (.I0(v1__2_n_103),
        .I1(v1_n_103),
        .O(v1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry_i_2
       (.I0(v1__2_n_104),
        .I1(v1_n_104),
        .O(v1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    v1_carry_i_3
       (.I0(v1__2_n_105),
        .I1(v1_n_105),
        .O(v1_carry_i_3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \v1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\v1_inferred__0/i__carry_n_0 ,\v1_inferred__0/i__carry_n_1 ,\v1_inferred__0/i__carry_n_2 ,\v1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({v1__6_n_103,v1__6_n_104,v1__6_n_105,1'b0}),
        .O(\NLW_v1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,v1__5_n_89}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \v1_inferred__0/i__carry__0 
       (.CI(\v1_inferred__0/i__carry_n_0 ),
        .CO({\v1_inferred__0/i__carry__0_n_0 ,\v1_inferred__0/i__carry__0_n_1 ,\v1_inferred__0/i__carry__0_n_2 ,\v1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({v1__6_n_99,v1__6_n_100,v1__6_n_101,v1__6_n_102}),
        .O(\NLW_v1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1__1_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \v1_inferred__0/i__carry__1 
       (.CI(\v1_inferred__0/i__carry__0_n_0 ),
        .CO({\v1_inferred__0/i__carry__1_n_0 ,\v1_inferred__0/i__carry__1_n_1 ,\v1_inferred__0/i__carry__1_n_2 ,\v1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({v1__6_n_95,v1__6_n_96,v1__6_n_97,v1__6_n_98}),
        .O(\NLW_v1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0,i__carry__1_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \v1_inferred__0/i__carry__10 
       (.CI(\v1_inferred__0/i__carry__9_n_0 ),
        .CO({\NLW_v1_inferred__0/i__carry__10_CO_UNCONNECTED [3],\v1_inferred__0/i__carry__10_n_1 ,\v1_inferred__0/i__carry__10_n_2 ,\v1_inferred__0/i__carry__10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,v1__6_n_60,v1__6_n_61,v1__6_n_62}),
        .O({\v1_inferred__0/i__carry__10_n_4 ,\v1_inferred__0/i__carry__10_n_5 ,\v1_inferred__0/i__carry__10_n_6 ,\v1_inferred__0/i__carry__10_n_7 }),
        .S({i__carry__10_i_1_n_0,i__carry__10_i_2_n_0,i__carry__10_i_3_n_0,i__carry__10_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \v1_inferred__0/i__carry__2 
       (.CI(\v1_inferred__0/i__carry__1_n_0 ),
        .CO({\v1_inferred__0/i__carry__2_n_0 ,\v1_inferred__0/i__carry__2_n_1 ,\v1_inferred__0/i__carry__2_n_2 ,\v1_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({v1__6_n_91,v1__6_n_92,v1__6_n_93,v1__6_n_94}),
        .O({\v1_inferred__0/i__carry__2_n_4 ,\v1_inferred__0/i__carry__2_n_5 ,\v1_inferred__0/i__carry__2_n_6 ,\NLW_v1_inferred__0/i__carry__2_O_UNCONNECTED [0]}),
        .S({i__carry__2_i_1__0_n_0,i__carry__2_i_2__0_n_0,i__carry__2_i_3__0_n_0,i__carry__2_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \v1_inferred__0/i__carry__3 
       (.CI(\v1_inferred__0/i__carry__2_n_0 ),
        .CO({\v1_inferred__0/i__carry__3_n_0 ,\v1_inferred__0/i__carry__3_n_1 ,\v1_inferred__0/i__carry__3_n_2 ,\v1_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({v1__6_n_87,v1__6_n_88,v1__6_n_89,v1__6_n_90}),
        .O({\v1_inferred__0/i__carry__3_n_4 ,\v1_inferred__0/i__carry__3_n_5 ,\v1_inferred__0/i__carry__3_n_6 ,\v1_inferred__0/i__carry__3_n_7 }),
        .S({i__carry__3_i_1__0_n_0,i__carry__3_i_2__0_n_0,i__carry__3_i_3__0_n_0,i__carry__3_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \v1_inferred__0/i__carry__4 
       (.CI(\v1_inferred__0/i__carry__3_n_0 ),
        .CO({\v1_inferred__0/i__carry__4_n_0 ,\v1_inferred__0/i__carry__4_n_1 ,\v1_inferred__0/i__carry__4_n_2 ,\v1_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({v1__6_n_83,v1__6_n_84,v1__6_n_85,v1__6_n_86}),
        .O({\v1_inferred__0/i__carry__4_n_4 ,\v1_inferred__0/i__carry__4_n_5 ,\v1_inferred__0/i__carry__4_n_6 ,\v1_inferred__0/i__carry__4_n_7 }),
        .S({i__carry__4_i_1__0_n_0,i__carry__4_i_2__0_n_0,i__carry__4_i_3__0_n_0,i__carry__4_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \v1_inferred__0/i__carry__5 
       (.CI(\v1_inferred__0/i__carry__4_n_0 ),
        .CO({\v1_inferred__0/i__carry__5_n_0 ,\v1_inferred__0/i__carry__5_n_1 ,\v1_inferred__0/i__carry__5_n_2 ,\v1_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({v1__6_n_79,v1__6_n_80,v1__6_n_81,v1__6_n_82}),
        .O({\v1_inferred__0/i__carry__5_n_4 ,\v1_inferred__0/i__carry__5_n_5 ,\v1_inferred__0/i__carry__5_n_6 ,\v1_inferred__0/i__carry__5_n_7 }),
        .S({i__carry__5_i_1__0_n_0,i__carry__5_i_2__0_n_0,i__carry__5_i_3_n_0,i__carry__5_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \v1_inferred__0/i__carry__6 
       (.CI(\v1_inferred__0/i__carry__5_n_0 ),
        .CO({\v1_inferred__0/i__carry__6_n_0 ,\v1_inferred__0/i__carry__6_n_1 ,\v1_inferred__0/i__carry__6_n_2 ,\v1_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({v1__6_n_75,v1__6_n_76,v1__6_n_77,v1__6_n_78}),
        .O({\v1_inferred__0/i__carry__6_n_4 ,\v1_inferred__0/i__carry__6_n_5 ,\v1_inferred__0/i__carry__6_n_6 ,\v1_inferred__0/i__carry__6_n_7 }),
        .S({i__carry__6_i_1_n_0,i__carry__6_i_2_n_0,i__carry__6_i_3_n_0,i__carry__6_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \v1_inferred__0/i__carry__7 
       (.CI(\v1_inferred__0/i__carry__6_n_0 ),
        .CO({\v1_inferred__0/i__carry__7_n_0 ,\v1_inferred__0/i__carry__7_n_1 ,\v1_inferred__0/i__carry__7_n_2 ,\v1_inferred__0/i__carry__7_n_3 }),
        .CYINIT(1'b0),
        .DI({v1__6_n_71,v1__6_n_72,v1__6_n_73,v1__6_n_74}),
        .O({\v1_inferred__0/i__carry__7_n_4 ,\v1_inferred__0/i__carry__7_n_5 ,\v1_inferred__0/i__carry__7_n_6 ,\v1_inferred__0/i__carry__7_n_7 }),
        .S({i__carry__7_i_1_n_0,i__carry__7_i_2_n_0,i__carry__7_i_3_n_0,i__carry__7_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \v1_inferred__0/i__carry__8 
       (.CI(\v1_inferred__0/i__carry__7_n_0 ),
        .CO({\v1_inferred__0/i__carry__8_n_0 ,\v1_inferred__0/i__carry__8_n_1 ,\v1_inferred__0/i__carry__8_n_2 ,\v1_inferred__0/i__carry__8_n_3 }),
        .CYINIT(1'b0),
        .DI({v1__6_n_67,v1__6_n_68,v1__6_n_69,v1__6_n_70}),
        .O({\v1_inferred__0/i__carry__8_n_4 ,\v1_inferred__0/i__carry__8_n_5 ,\v1_inferred__0/i__carry__8_n_6 ,\v1_inferred__0/i__carry__8_n_7 }),
        .S({i__carry__8_i_1_n_0,i__carry__8_i_2_n_0,i__carry__8_i_3_n_0,i__carry__8_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \v1_inferred__0/i__carry__9 
       (.CI(\v1_inferred__0/i__carry__8_n_0 ),
        .CO({\v1_inferred__0/i__carry__9_n_0 ,\v1_inferred__0/i__carry__9_n_1 ,\v1_inferred__0/i__carry__9_n_2 ,\v1_inferred__0/i__carry__9_n_3 }),
        .CYINIT(1'b0),
        .DI({v1__6_n_63,v1__6_n_64,v1__6_n_65,v1__6_n_66}),
        .O({\v1_inferred__0/i__carry__9_n_4 ,\v1_inferred__0/i__carry__9_n_5 ,\v1_inferred__0/i__carry__9_n_6 ,\v1_inferred__0/i__carry__9_n_7 }),
        .S({i__carry__9_i_1_n_0,i__carry__9_i_2_n_0,i__carry__9_i_3_n_0,i__carry__9_i_4_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hBF02)) 
    \w_in[0]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_0_in9_in),
        .I2(p_0_in8_in),
        .I3(\fb_term_r_reg_n_0_[0] ),
        .O(sat_add320_return[0]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hBF02)) 
    \w_in[10]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_0_in9_in),
        .I2(p_0_in8_in),
        .I3(sat_add3202_carry__0_n_7),
        .O(sat_add320_return[10]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hBF02)) 
    \w_in[11]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_0_in9_in),
        .I2(p_0_in8_in),
        .I3(sat_add3202_carry__0_n_6),
        .O(sat_add320_return[11]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hBF02)) 
    \w_in[12]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_0_in9_in),
        .I2(p_0_in8_in),
        .I3(sat_add3202_carry__0_n_5),
        .O(sat_add320_return[12]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hBF02)) 
    \w_in[13]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_0_in9_in),
        .I2(p_0_in8_in),
        .I3(sat_add3202_carry__0_n_4),
        .O(sat_add320_return[13]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hBF02)) 
    \w_in[14]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_0_in9_in),
        .I2(p_0_in8_in),
        .I3(sat_add3202_carry__1_n_7),
        .O(sat_add320_return[14]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hBF02)) 
    \w_in[15]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_0_in9_in),
        .I2(p_0_in8_in),
        .I3(sat_add3202_carry__1_n_6),
        .O(sat_add320_return[15]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hBF02)) 
    \w_in[16]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_0_in9_in),
        .I2(p_0_in8_in),
        .I3(sat_add3202_carry__1_n_5),
        .O(sat_add320_return[16]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hBF02)) 
    \w_in[17]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_0_in9_in),
        .I2(p_0_in8_in),
        .I3(sat_add3202_carry__1_n_4),
        .O(sat_add320_return[17]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hBF02)) 
    \w_in[18]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_0_in9_in),
        .I2(p_0_in8_in),
        .I3(sat_add3202_carry__2_n_7),
        .O(sat_add320_return[18]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hBF02)) 
    \w_in[19]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_0_in9_in),
        .I2(p_0_in8_in),
        .I3(sat_add3202_carry__2_n_6),
        .O(sat_add320_return[19]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hBF02)) 
    \w_in[1]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_0_in9_in),
        .I2(p_0_in8_in),
        .I3(\fb_term_r_reg_n_0_[1] ),
        .O(sat_add320_return[1]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hBF02)) 
    \w_in[20]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_0_in9_in),
        .I2(p_0_in8_in),
        .I3(sat_add3202_carry__2_n_5),
        .O(sat_add320_return[20]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hBF02)) 
    \w_in[21]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_0_in9_in),
        .I2(p_0_in8_in),
        .I3(sat_add3202_carry__2_n_4),
        .O(sat_add320_return[21]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hBF02)) 
    \w_in[22]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_0_in9_in),
        .I2(p_0_in8_in),
        .I3(sat_add3202_carry__3_n_7),
        .O(sat_add320_return[22]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hBF02)) 
    \w_in[23]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_0_in9_in),
        .I2(p_0_in8_in),
        .I3(sat_add3202_carry__3_n_6),
        .O(sat_add320_return[23]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hBF02)) 
    \w_in[24]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_0_in9_in),
        .I2(p_0_in8_in),
        .I3(sat_add3202_carry__3_n_5),
        .O(sat_add320_return[24]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hBF02)) 
    \w_in[25]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_0_in9_in),
        .I2(p_0_in8_in),
        .I3(sat_add3202_carry__3_n_4),
        .O(sat_add320_return[25]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hBF02)) 
    \w_in[26]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_0_in9_in),
        .I2(p_0_in8_in),
        .I3(sat_add3202_carry__4_n_7),
        .O(sat_add320_return[26]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hBF02)) 
    \w_in[27]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_0_in9_in),
        .I2(p_0_in8_in),
        .I3(sat_add3202_carry__4_n_6),
        .O(sat_add320_return[27]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hBF02)) 
    \w_in[28]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_0_in9_in),
        .I2(p_0_in8_in),
        .I3(sat_add3202_carry__4_n_5),
        .O(sat_add320_return[28]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hBF02)) 
    \w_in[29]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_0_in9_in),
        .I2(p_0_in8_in),
        .I3(sat_add3202_carry__4_n_4),
        .O(sat_add320_return[29]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hBF02)) 
    \w_in[2]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_0_in9_in),
        .I2(p_0_in8_in),
        .I3(\fb_term_r_reg_n_0_[2] ),
        .O(sat_add320_return[2]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hBF02)) 
    \w_in[30]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_0_in9_in),
        .I2(p_0_in8_in),
        .I3(sat_add3202_carry__5_n_7),
        .O(sat_add320_return[30]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \w_in[31]_i_2 
       (.I0(p_0_in8_in),
        .I1(p_0_in9_in),
        .I2(p_2_in6_in),
        .O(sat_add320_return[31]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hBF02)) 
    \w_in[3]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_0_in9_in),
        .I2(p_0_in8_in),
        .I3(\fb_term_r_reg_n_0_[3] ),
        .O(sat_add320_return[3]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hBF02)) 
    \w_in[4]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_0_in9_in),
        .I2(p_0_in8_in),
        .I3(\fb_term_r_reg_n_0_[4] ),
        .O(sat_add320_return[4]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hBF02)) 
    \w_in[5]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_0_in9_in),
        .I2(p_0_in8_in),
        .I3(\fb_term_r_reg_n_0_[5] ),
        .O(sat_add320_return[5]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hBF02)) 
    \w_in[6]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_0_in9_in),
        .I2(p_0_in8_in),
        .I3(sat_add3202_carry_n_7),
        .O(sat_add320_return[6]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hBF02)) 
    \w_in[7]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_0_in9_in),
        .I2(p_0_in8_in),
        .I3(sat_add3202_carry_n_6),
        .O(sat_add320_return[7]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hBF02)) 
    \w_in[8]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_0_in9_in),
        .I2(p_0_in8_in),
        .I3(sat_add3202_carry_n_5),
        .O(sat_add320_return[8]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hBF02)) 
    \w_in[9]_i_1 
       (.I0(p_2_in6_in),
        .I1(p_0_in9_in),
        .I2(p_0_in8_in),
        .I3(sat_add3202_carry_n_4),
        .O(sat_add320_return[9]));
  FDRE \w_in_reg[0] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[0]),
        .Q(\w_in_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \w_in_reg[10] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[10]),
        .Q(\w_in_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \w_in_reg[11] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[11]),
        .Q(\w_in_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE \w_in_reg[12] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[12]),
        .Q(\w_in_reg_n_0_[12] ),
        .R(p_0_in));
  FDRE \w_in_reg[13] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[13]),
        .Q(\w_in_reg_n_0_[13] ),
        .R(p_0_in));
  FDRE \w_in_reg[14] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[14]),
        .Q(\w_in_reg_n_0_[14] ),
        .R(p_0_in));
  FDRE \w_in_reg[15] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[15]),
        .Q(\w_in_reg_n_0_[15] ),
        .R(p_0_in));
  FDRE \w_in_reg[16] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[16]),
        .Q(\w_in_reg_n_0_[16] ),
        .R(p_0_in));
  FDRE \w_in_reg[17] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[17]),
        .Q(\w_in_reg_n_0_[17] ),
        .R(p_0_in));
  FDRE \w_in_reg[18] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[18]),
        .Q(\w_in_reg_n_0_[18] ),
        .R(p_0_in));
  FDRE \w_in_reg[19] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[19]),
        .Q(\w_in_reg_n_0_[19] ),
        .R(p_0_in));
  FDRE \w_in_reg[1] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[1]),
        .Q(\w_in_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \w_in_reg[20] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[20]),
        .Q(\w_in_reg_n_0_[20] ),
        .R(p_0_in));
  FDRE \w_in_reg[21] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[21]),
        .Q(\w_in_reg_n_0_[21] ),
        .R(p_0_in));
  FDRE \w_in_reg[22] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[22]),
        .Q(\w_in_reg_n_0_[22] ),
        .R(p_0_in));
  FDRE \w_in_reg[23] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[23]),
        .Q(\w_in_reg_n_0_[23] ),
        .R(p_0_in));
  FDRE \w_in_reg[24] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[24]),
        .Q(\w_in_reg_n_0_[24] ),
        .R(p_0_in));
  FDRE \w_in_reg[25] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[25]),
        .Q(\w_in_reg_n_0_[25] ),
        .R(p_0_in));
  FDRE \w_in_reg[26] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[26]),
        .Q(\w_in_reg_n_0_[26] ),
        .R(p_0_in));
  FDRE \w_in_reg[27] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[27]),
        .Q(\w_in_reg_n_0_[27] ),
        .R(p_0_in));
  FDRE \w_in_reg[28] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[28]),
        .Q(\w_in_reg_n_0_[28] ),
        .R(p_0_in));
  FDRE \w_in_reg[29] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[29]),
        .Q(\w_in_reg_n_0_[29] ),
        .R(p_0_in));
  FDRE \w_in_reg[2] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[2]),
        .Q(\w_in_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \w_in_reg[30] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[30]),
        .Q(\w_in_reg_n_0_[30] ),
        .R(p_0_in));
  FDRE \w_in_reg[31] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[31]),
        .Q(\w_in_reg_n_0_[31] ),
        .R(p_0_in));
  FDRE \w_in_reg[3] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[3]),
        .Q(\w_in_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \w_in_reg[4] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[4]),
        .Q(\w_in_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \w_in_reg[5] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[5]),
        .Q(\w_in_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \w_in_reg[6] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[6]),
        .Q(\w_in_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \w_in_reg[7] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[7]),
        .Q(\w_in_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \w_in_reg[8] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[8]),
        .Q(\w_in_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \w_in_reg[9] 
       (.C(clk),
        .CE(out_buf_valid1_out),
        .D(sat_add320_return[9]),
        .Q(\w_in_reg_n_0_[9] ),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \wet_term_r[10]_i_1 
       (.I0(\v0_inferred__0/i__carry__7_n_6 ),
        .I1(\v0_inferred__0/i__carry__7_n_5 ),
        .I2(\v0_inferred__0/i__carry__2_n_7 ),
        .O(sat32[10]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \wet_term_r[11]_i_1 
       (.I0(\v0_inferred__0/i__carry__7_n_6 ),
        .I1(\v0_inferred__0/i__carry__7_n_5 ),
        .I2(\v0_inferred__0/i__carry__2_n_6 ),
        .O(sat32[11]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \wet_term_r[12]_i_1 
       (.I0(\v0_inferred__0/i__carry__7_n_6 ),
        .I1(\v0_inferred__0/i__carry__7_n_5 ),
        .I2(\v0_inferred__0/i__carry__2_n_5 ),
        .O(sat32[12]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \wet_term_r[13]_i_1 
       (.I0(\v0_inferred__0/i__carry__7_n_6 ),
        .I1(\v0_inferred__0/i__carry__7_n_5 ),
        .I2(\v0_inferred__0/i__carry__2_n_4 ),
        .O(sat32[13]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \wet_term_r[14]_i_1 
       (.I0(\v0_inferred__0/i__carry__7_n_6 ),
        .I1(\v0_inferred__0/i__carry__7_n_5 ),
        .I2(\v0_inferred__0/i__carry__3_n_7 ),
        .O(sat32[14]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \wet_term_r[15]_i_1 
       (.I0(\v0_inferred__0/i__carry__7_n_6 ),
        .I1(\v0_inferred__0/i__carry__7_n_5 ),
        .I2(\v0_inferred__0/i__carry__3_n_6 ),
        .O(sat32[15]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \wet_term_r[16]_i_1 
       (.I0(\v0_inferred__0/i__carry__7_n_6 ),
        .I1(\v0_inferred__0/i__carry__7_n_5 ),
        .I2(\v0_inferred__0/i__carry__3_n_5 ),
        .O(sat32[16]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \wet_term_r[17]_i_1 
       (.I0(\v0_inferred__0/i__carry__7_n_6 ),
        .I1(\v0_inferred__0/i__carry__7_n_5 ),
        .I2(\v0_inferred__0/i__carry__3_n_4 ),
        .O(sat32[17]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \wet_term_r[18]_i_1 
       (.I0(\v0_inferred__0/i__carry__7_n_6 ),
        .I1(\v0_inferred__0/i__carry__7_n_5 ),
        .I2(\v0_inferred__0/i__carry__4_n_7 ),
        .O(sat32[18]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \wet_term_r[19]_i_1 
       (.I0(\v0_inferred__0/i__carry__7_n_6 ),
        .I1(\v0_inferred__0/i__carry__7_n_5 ),
        .I2(\v0_inferred__0/i__carry__4_n_6 ),
        .O(sat32[19]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \wet_term_r[20]_i_1 
       (.I0(\v0_inferred__0/i__carry__7_n_6 ),
        .I1(\v0_inferred__0/i__carry__7_n_5 ),
        .I2(\v0_inferred__0/i__carry__4_n_5 ),
        .O(sat32[20]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \wet_term_r[21]_i_1 
       (.I0(\v0_inferred__0/i__carry__7_n_6 ),
        .I1(\v0_inferred__0/i__carry__7_n_5 ),
        .I2(\v0_inferred__0/i__carry__4_n_4 ),
        .O(sat32[21]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \wet_term_r[22]_i_1 
       (.I0(\v0_inferred__0/i__carry__7_n_6 ),
        .I1(\v0_inferred__0/i__carry__7_n_5 ),
        .I2(\v0_inferred__0/i__carry__5_n_7 ),
        .O(sat32[22]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \wet_term_r[23]_i_1 
       (.I0(\v0_inferred__0/i__carry__7_n_6 ),
        .I1(\v0_inferred__0/i__carry__7_n_5 ),
        .I2(\v0_inferred__0/i__carry__5_n_6 ),
        .O(sat32[23]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \wet_term_r[24]_i_1 
       (.I0(\v0_inferred__0/i__carry__7_n_6 ),
        .I1(\v0_inferred__0/i__carry__7_n_5 ),
        .I2(\v0_inferred__0/i__carry__5_n_5 ),
        .O(sat32[24]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \wet_term_r[25]_i_1 
       (.I0(\v0_inferred__0/i__carry__7_n_6 ),
        .I1(\v0_inferred__0/i__carry__7_n_5 ),
        .I2(\v0_inferred__0/i__carry__5_n_4 ),
        .O(sat32[25]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \wet_term_r[26]_i_1 
       (.I0(\v0_inferred__0/i__carry__7_n_6 ),
        .I1(\v0_inferred__0/i__carry__7_n_5 ),
        .I2(\v0_inferred__0/i__carry__6_n_7 ),
        .O(sat32[26]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \wet_term_r[27]_i_1 
       (.I0(\v0_inferred__0/i__carry__7_n_6 ),
        .I1(\v0_inferred__0/i__carry__7_n_5 ),
        .I2(\v0_inferred__0/i__carry__6_n_6 ),
        .O(sat32[27]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \wet_term_r[28]_i_1 
       (.I0(\v0_inferred__0/i__carry__7_n_6 ),
        .I1(\v0_inferred__0/i__carry__7_n_5 ),
        .I2(\v0_inferred__0/i__carry__6_n_5 ),
        .O(sat32[28]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \wet_term_r[29]_i_1 
       (.I0(\v0_inferred__0/i__carry__7_n_6 ),
        .I1(\v0_inferred__0/i__carry__7_n_5 ),
        .I2(\v0_inferred__0/i__carry__6_n_4 ),
        .O(sat32[29]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \wet_term_r[30]_i_1 
       (.I0(\v0_inferred__0/i__carry__7_n_6 ),
        .I1(\v0_inferred__0/i__carry__7_n_5 ),
        .I2(\v0_inferred__0/i__carry__7_n_7 ),
        .O(sat32[30]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \wet_term_r[31]_i_1 
       (.I0(\v0_inferred__0/i__carry__7_n_5 ),
        .O(sat32[31]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \wet_term_r[6]_i_1 
       (.I0(\v0_inferred__0/i__carry__7_n_6 ),
        .I1(\v0_inferred__0/i__carry__7_n_5 ),
        .I2(\v0_inferred__0/i__carry__1_n_7 ),
        .O(sat32[6]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \wet_term_r[7]_i_1 
       (.I0(\v0_inferred__0/i__carry__7_n_6 ),
        .I1(\v0_inferred__0/i__carry__7_n_5 ),
        .I2(\v0_inferred__0/i__carry__1_n_6 ),
        .O(sat32[7]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \wet_term_r[8]_i_1 
       (.I0(\v0_inferred__0/i__carry__7_n_6 ),
        .I1(\v0_inferred__0/i__carry__7_n_5 ),
        .I2(\v0_inferred__0/i__carry__1_n_5 ),
        .O(sat32[8]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \wet_term_r[9]_i_1 
       (.I0(\v0_inferred__0/i__carry__7_n_6 ),
        .I1(\v0_inferred__0/i__carry__7_n_5 ),
        .I2(\v0_inferred__0/i__carry__1_n_4 ),
        .O(sat32[9]));
  FDRE \wet_term_r_reg[10] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(sat32[10]),
        .Q(wet_term_r__0[10]),
        .R(p_0_in));
  FDRE \wet_term_r_reg[11] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(sat32[11]),
        .Q(wet_term_r__0[11]),
        .R(p_0_in));
  FDRE \wet_term_r_reg[12] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(sat32[12]),
        .Q(wet_term_r__0[12]),
        .R(p_0_in));
  FDRE \wet_term_r_reg[13] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(sat32[13]),
        .Q(wet_term_r__0[13]),
        .R(p_0_in));
  FDRE \wet_term_r_reg[14] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(sat32[14]),
        .Q(wet_term_r__0[14]),
        .R(p_0_in));
  FDRE \wet_term_r_reg[15] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(sat32[15]),
        .Q(wet_term_r__0[15]),
        .R(p_0_in));
  FDRE \wet_term_r_reg[16] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(sat32[16]),
        .Q(wet_term_r__0[16]),
        .R(p_0_in));
  FDRE \wet_term_r_reg[17] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(sat32[17]),
        .Q(wet_term_r__0[17]),
        .R(p_0_in));
  FDRE \wet_term_r_reg[18] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(sat32[18]),
        .Q(wet_term_r__0[18]),
        .R(p_0_in));
  FDRE \wet_term_r_reg[19] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(sat32[19]),
        .Q(wet_term_r__0[19]),
        .R(p_0_in));
  FDRE \wet_term_r_reg[20] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(sat32[20]),
        .Q(wet_term_r__0[20]),
        .R(p_0_in));
  FDRE \wet_term_r_reg[21] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(sat32[21]),
        .Q(wet_term_r__0[21]),
        .R(p_0_in));
  FDRE \wet_term_r_reg[22] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(sat32[22]),
        .Q(wet_term_r__0[22]),
        .R(p_0_in));
  FDRE \wet_term_r_reg[23] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(sat32[23]),
        .Q(wet_term_r__0[23]),
        .R(p_0_in));
  FDRE \wet_term_r_reg[24] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(sat32[24]),
        .Q(wet_term_r__0[24]),
        .R(p_0_in));
  FDRE \wet_term_r_reg[25] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(sat32[25]),
        .Q(wet_term_r__0[25]),
        .R(p_0_in));
  FDRE \wet_term_r_reg[26] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(sat32[26]),
        .Q(wet_term_r__0[26]),
        .R(p_0_in));
  FDRE \wet_term_r_reg[27] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(sat32[27]),
        .Q(wet_term_r__0[27]),
        .R(p_0_in));
  FDRE \wet_term_r_reg[28] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(sat32[28]),
        .Q(wet_term_r__0[28]),
        .R(p_0_in));
  FDRE \wet_term_r_reg[29] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(sat32[29]),
        .Q(wet_term_r__0[29]),
        .R(p_0_in));
  FDRE \wet_term_r_reg[30] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(sat32[30]),
        .Q(wet_term_r__0[30]),
        .R(p_0_in));
  FDRE \wet_term_r_reg[31] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(sat32[31]),
        .Q(p_1_in),
        .R(p_0_in));
  FDRE \wet_term_r_reg[6] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(sat32[6]),
        .Q(wet_term_r__0[6]),
        .R(p_0_in));
  FDRE \wet_term_r_reg[7] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(sat32[7]),
        .Q(wet_term_r__0[7]),
        .R(p_0_in));
  FDRE \wet_term_r_reg[8] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(sat32[8]),
        .Q(wet_term_r__0[8]),
        .R(p_0_in));
  FDRE \wet_term_r_reg[9] 
       (.C(clk),
        .CE(u_dl_n_23),
        .D(sat32[9]),
        .Q(wet_term_r__0[9]),
        .R(p_0_in));
  FDRE \x_reg_reg[10] 
       (.C(clk),
        .CE(u_dl_n_21),
        .D(D[4]),
        .Q(x_reg__0[10]),
        .R(p_0_in));
  FDRE \x_reg_reg[11] 
       (.C(clk),
        .CE(u_dl_n_21),
        .D(D[5]),
        .Q(x_reg__0[11]),
        .R(p_0_in));
  FDRE \x_reg_reg[12] 
       (.C(clk),
        .CE(u_dl_n_21),
        .D(D[6]),
        .Q(x_reg__0[12]),
        .R(p_0_in));
  FDRE \x_reg_reg[13] 
       (.C(clk),
        .CE(u_dl_n_21),
        .D(D[7]),
        .Q(x_reg__0[13]),
        .R(p_0_in));
  FDRE \x_reg_reg[14] 
       (.C(clk),
        .CE(u_dl_n_21),
        .D(D[8]),
        .Q(x_reg__0[14]),
        .R(p_0_in));
  FDRE \x_reg_reg[15] 
       (.C(clk),
        .CE(u_dl_n_21),
        .D(D[9]),
        .Q(x_reg__0[15]),
        .R(p_0_in));
  FDRE \x_reg_reg[16] 
       (.C(clk),
        .CE(u_dl_n_21),
        .D(D[10]),
        .Q(x_reg__0[16]),
        .R(p_0_in));
  FDRE \x_reg_reg[17] 
       (.C(clk),
        .CE(u_dl_n_21),
        .D(D[11]),
        .Q(x_reg__0[17]),
        .R(p_0_in));
  FDRE \x_reg_reg[18] 
       (.C(clk),
        .CE(u_dl_n_21),
        .D(D[12]),
        .Q(x_reg__0[18]),
        .R(p_0_in));
  FDRE \x_reg_reg[19] 
       (.C(clk),
        .CE(u_dl_n_21),
        .D(D[13]),
        .Q(x_reg__0[19]),
        .R(p_0_in));
  FDRE \x_reg_reg[20] 
       (.C(clk),
        .CE(u_dl_n_21),
        .D(D[14]),
        .Q(x_reg__0[20]),
        .R(p_0_in));
  FDRE \x_reg_reg[21] 
       (.C(clk),
        .CE(u_dl_n_21),
        .D(D[15]),
        .Q(x_reg__0[21]),
        .R(p_0_in));
  FDRE \x_reg_reg[22] 
       (.C(clk),
        .CE(u_dl_n_21),
        .D(D[16]),
        .Q(x_reg__0[22]),
        .R(p_0_in));
  FDRE \x_reg_reg[23] 
       (.C(clk),
        .CE(u_dl_n_21),
        .D(D[17]),
        .Q(x_reg__0[23]),
        .R(p_0_in));
  FDRE \x_reg_reg[24] 
       (.C(clk),
        .CE(u_dl_n_21),
        .D(D[18]),
        .Q(x_reg__0[24]),
        .R(p_0_in));
  FDRE \x_reg_reg[25] 
       (.C(clk),
        .CE(u_dl_n_21),
        .D(D[19]),
        .Q(x_reg__0[25]),
        .R(p_0_in));
  FDRE \x_reg_reg[26] 
       (.C(clk),
        .CE(u_dl_n_21),
        .D(D[20]),
        .Q(x_reg__0[26]),
        .R(p_0_in));
  FDRE \x_reg_reg[27] 
       (.C(clk),
        .CE(u_dl_n_21),
        .D(D[21]),
        .Q(x_reg__0[27]),
        .R(p_0_in));
  FDRE \x_reg_reg[28] 
       (.C(clk),
        .CE(u_dl_n_21),
        .D(D[22]),
        .Q(x_reg__0[28]),
        .R(p_0_in));
  FDRE \x_reg_reg[31] 
       (.C(clk),
        .CE(u_dl_n_21),
        .D(D[23]),
        .Q(p_0_in9_in),
        .R(p_0_in));
  FDRE \x_reg_reg[6] 
       (.C(clk),
        .CE(u_dl_n_21),
        .D(D[0]),
        .Q(x_reg__0[6]),
        .R(p_0_in));
  FDRE \x_reg_reg[7] 
       (.C(clk),
        .CE(u_dl_n_21),
        .D(D[1]),
        .Q(x_reg__0[7]),
        .R(p_0_in));
  FDRE \x_reg_reg[8] 
       (.C(clk),
        .CE(u_dl_n_21),
        .D(D[2]),
        .Q(x_reg__0[8]),
        .R(p_0_in));
  FDRE \x_reg_reg[9] 
       (.C(clk),
        .CE(u_dl_n_21),
        .D(D[3]),
        .Q(x_reg__0[9]),
        .R(p_0_in));
endmodule

(* ORIG_REF_NAME = "fx_regmap" *) 
module design_1_fx_system_wrapper_0_1_fx_regmap
   (s_axi_awready,
    s_axi_wready,
    s_axi_arready,
    w_done_reg_0,
    aw_done_reg_0,
    s_axi_bvalid,
    s_axi_rvalid,
    E,
    fx_enable_0,
    Q,
    \s_axi_araddr[5] ,
    \s_axi_araddr[6] ,
    s_axi_araddr_4_sp_1,
    \s_axi_araddr[5]_0 ,
    \reg_wet_reg[31]_0 ,
    \reg_fb_reg[31]_0 ,
    \reg_delay_reg[31]_0 ,
    \reg_wet_reg[30]_0 ,
    \reg_wet_reg[29]_0 ,
    \reg_wet_reg[28]_0 ,
    \reg_wet_reg[27]_0 ,
    \reg_wet_reg[26]_0 ,
    \reg_wet_reg[25]_0 ,
    \reg_wet_reg[24]_0 ,
    \reg_wet_reg[23]_0 ,
    \reg_wet_reg[22]_0 ,
    \reg_wet_reg[21]_0 ,
    \reg_wet_reg[20]_0 ,
    \reg_wet_reg[19]_0 ,
    \reg_wet_reg[18]_0 ,
    \reg_wet_reg[17]_0 ,
    \reg_wet_reg[16]_0 ,
    \reg_wet_reg[15]_0 ,
    \reg_wet_reg[14]_0 ,
    \reg_wet_reg[13]_0 ,
    \reg_wet_reg[12]_0 ,
    \reg_wet_reg[11]_0 ,
    \reg_wet_reg[10]_0 ,
    \reg_wet_reg[9]_0 ,
    \reg_wet_reg[8]_0 ,
    \reg_wet_reg[7]_0 ,
    \reg_wet_reg[6]_0 ,
    \reg_wet_reg[5]_0 ,
    \reg_wet_reg[4]_0 ,
    \reg_wet_reg[3]_0 ,
    \reg_wet_reg[2]_0 ,
    \reg_wet_reg[1]_0 ,
    \reg_wet_reg[0]_0 ,
    s_axi_rdata,
    p_0_in,
    clk,
    w_done_reg_1,
    aw_done_reg_1,
    D,
    s_axi_araddr,
    \s_axi_rdata_reg[31]_0 ,
    \s_axi_rdata_reg[31]_1 ,
    s_axi_wvalid,
    s_axi_bready,
    rst_n,
    s_axi_awvalid,
    s_axi_rready,
    s_axi_arvalid,
    fx_enable,
    s_axi_awaddr,
    s_axi_wdata);
  output s_axi_awready;
  output s_axi_wready;
  output s_axi_arready;
  output w_done_reg_0;
  output aw_done_reg_0;
  output s_axi_bvalid;
  output s_axi_rvalid;
  output [0:0]E;
  output fx_enable_0;
  output [0:0]Q;
  output \s_axi_araddr[5] ;
  output \s_axi_araddr[6] ;
  output s_axi_araddr_4_sp_1;
  output \s_axi_araddr[5]_0 ;
  output [14:0]\reg_wet_reg[31]_0 ;
  output [31:0]\reg_fb_reg[31]_0 ;
  output [31:0]\reg_delay_reg[31]_0 ;
  output \reg_wet_reg[30]_0 ;
  output \reg_wet_reg[29]_0 ;
  output \reg_wet_reg[28]_0 ;
  output \reg_wet_reg[27]_0 ;
  output \reg_wet_reg[26]_0 ;
  output \reg_wet_reg[25]_0 ;
  output \reg_wet_reg[24]_0 ;
  output \reg_wet_reg[23]_0 ;
  output \reg_wet_reg[22]_0 ;
  output \reg_wet_reg[21]_0 ;
  output \reg_wet_reg[20]_0 ;
  output \reg_wet_reg[19]_0 ;
  output \reg_wet_reg[18]_0 ;
  output \reg_wet_reg[17]_0 ;
  output \reg_wet_reg[16]_0 ;
  output \reg_wet_reg[15]_0 ;
  output \reg_wet_reg[14]_0 ;
  output \reg_wet_reg[13]_0 ;
  output \reg_wet_reg[12]_0 ;
  output \reg_wet_reg[11]_0 ;
  output \reg_wet_reg[10]_0 ;
  output \reg_wet_reg[9]_0 ;
  output \reg_wet_reg[8]_0 ;
  output \reg_wet_reg[7]_0 ;
  output \reg_wet_reg[6]_0 ;
  output \reg_wet_reg[5]_0 ;
  output \reg_wet_reg[4]_0 ;
  output \reg_wet_reg[3]_0 ;
  output \reg_wet_reg[2]_0 ;
  output \reg_wet_reg[1]_0 ;
  output \reg_wet_reg[0]_0 ;
  output [31:0]s_axi_rdata;
  input p_0_in;
  input clk;
  input w_done_reg_1;
  input aw_done_reg_1;
  input [30:0]D;
  input [4:0]s_axi_araddr;
  input \s_axi_rdata_reg[31]_0 ;
  input \s_axi_rdata_reg[31]_1 ;
  input s_axi_wvalid;
  input s_axi_bready;
  input rst_n;
  input s_axi_awvalid;
  input s_axi_rready;
  input s_axi_arvalid;
  input fx_enable;
  input [5:0]s_axi_awaddr;
  input [31:0]s_axi_wdata;

  wire [30:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire aw_done_reg_0;
  wire aw_done_reg_1;
  wire clk;
  wire fx_enable;
  wire fx_enable_0;
  wire p_0_in;
  wire p_0_in0;
  wire [31:31]p_1_in;
  wire reg_ctrl;
  wire \reg_ctrl[31]_i_2_n_0 ;
  wire \reg_ctrl_reg_n_0_[10] ;
  wire \reg_ctrl_reg_n_0_[11] ;
  wire \reg_ctrl_reg_n_0_[12] ;
  wire \reg_ctrl_reg_n_0_[13] ;
  wire \reg_ctrl_reg_n_0_[14] ;
  wire \reg_ctrl_reg_n_0_[15] ;
  wire \reg_ctrl_reg_n_0_[16] ;
  wire \reg_ctrl_reg_n_0_[17] ;
  wire \reg_ctrl_reg_n_0_[18] ;
  wire \reg_ctrl_reg_n_0_[19] ;
  wire \reg_ctrl_reg_n_0_[1] ;
  wire \reg_ctrl_reg_n_0_[20] ;
  wire \reg_ctrl_reg_n_0_[21] ;
  wire \reg_ctrl_reg_n_0_[22] ;
  wire \reg_ctrl_reg_n_0_[23] ;
  wire \reg_ctrl_reg_n_0_[24] ;
  wire \reg_ctrl_reg_n_0_[25] ;
  wire \reg_ctrl_reg_n_0_[26] ;
  wire \reg_ctrl_reg_n_0_[27] ;
  wire \reg_ctrl_reg_n_0_[28] ;
  wire \reg_ctrl_reg_n_0_[29] ;
  wire \reg_ctrl_reg_n_0_[2] ;
  wire \reg_ctrl_reg_n_0_[30] ;
  wire \reg_ctrl_reg_n_0_[31] ;
  wire \reg_ctrl_reg_n_0_[3] ;
  wire \reg_ctrl_reg_n_0_[4] ;
  wire \reg_ctrl_reg_n_0_[5] ;
  wire \reg_ctrl_reg_n_0_[6] ;
  wire \reg_ctrl_reg_n_0_[7] ;
  wire \reg_ctrl_reg_n_0_[8] ;
  wire \reg_ctrl_reg_n_0_[9] ;
  wire reg_delay;
  wire \reg_delay[31]_i_2_n_0 ;
  wire [31:0]\reg_delay_reg[31]_0 ;
  wire reg_fb;
  wire [31:0]\reg_fb_reg[31]_0 ;
  wire [16:0]reg_wet_q1_31;
  wire \reg_wet_reg[0]_0 ;
  wire \reg_wet_reg[10]_0 ;
  wire \reg_wet_reg[11]_0 ;
  wire \reg_wet_reg[12]_0 ;
  wire \reg_wet_reg[13]_0 ;
  wire \reg_wet_reg[14]_0 ;
  wire \reg_wet_reg[15]_0 ;
  wire \reg_wet_reg[16]_0 ;
  wire \reg_wet_reg[17]_0 ;
  wire \reg_wet_reg[18]_0 ;
  wire \reg_wet_reg[19]_0 ;
  wire \reg_wet_reg[1]_0 ;
  wire \reg_wet_reg[20]_0 ;
  wire \reg_wet_reg[21]_0 ;
  wire \reg_wet_reg[22]_0 ;
  wire \reg_wet_reg[23]_0 ;
  wire \reg_wet_reg[24]_0 ;
  wire \reg_wet_reg[25]_0 ;
  wire \reg_wet_reg[26]_0 ;
  wire \reg_wet_reg[27]_0 ;
  wire \reg_wet_reg[28]_0 ;
  wire \reg_wet_reg[29]_0 ;
  wire \reg_wet_reg[2]_0 ;
  wire \reg_wet_reg[30]_0 ;
  wire [14:0]\reg_wet_reg[31]_0 ;
  wire \reg_wet_reg[3]_0 ;
  wire \reg_wet_reg[4]_0 ;
  wire \reg_wet_reg[5]_0 ;
  wire \reg_wet_reg[6]_0 ;
  wire \reg_wet_reg[7]_0 ;
  wire \reg_wet_reg[8]_0 ;
  wire \reg_wet_reg[9]_0 ;
  wire rst_n;
  wire [4:0]s_axi_araddr;
  wire \s_axi_araddr[5] ;
  wire \s_axi_araddr[5]_0 ;
  wire \s_axi_araddr[6] ;
  wire s_axi_araddr_4_sn_1;
  wire s_axi_arready;
  wire s_axi_arready0;
  wire s_axi_arvalid;
  wire [5:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awready0;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_1_n_0;
  wire [31:0]s_axi_rdata;
  wire \s_axi_rdata[31]_i_2_n_0 ;
  wire \s_axi_rdata_reg[31]_0 ;
  wire \s_axi_rdata_reg[31]_1 ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire s_axi_rvalid_i_1_n_0;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wready0;
  wire s_axi_wvalid;
  wire w_done_reg_0;
  wire w_done_reg_1;
  wire [1:0]wr_addr_lat;
  wire \wr_addr_lat_reg_n_0_[3] ;
  wire \wr_addr_lat_reg_n_0_[4] ;
  wire \wr_addr_lat_reg_n_0_[5] ;

  assign s_axi_araddr_4_sp_1 = s_axi_araddr_4_sn_1;
  FDRE aw_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(aw_done_reg_1),
        .Q(aw_done_reg_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    enable_d_i_1
       (.I0(fx_enable),
        .I1(Q),
        .O(fx_enable_0));
  LUT4 #(
    .INIT(16'h4000)) 
    \reg_ctrl[31]_i_1 
       (.I0(wr_addr_lat[1]),
        .I1(w_done_reg_0),
        .I2(aw_done_reg_0),
        .I3(\reg_ctrl[31]_i_2_n_0 ),
        .O(reg_ctrl));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \reg_ctrl[31]_i_2 
       (.I0(wr_addr_lat[0]),
        .I1(\wr_addr_lat_reg_n_0_[3] ),
        .I2(\wr_addr_lat_reg_n_0_[4] ),
        .I3(p_0_in0),
        .I4(\wr_addr_lat_reg_n_0_[5] ),
        .O(\reg_ctrl[31]_i_2_n_0 ));
  FDSE \reg_ctrl_reg[0] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[0]),
        .Q(Q),
        .S(p_0_in));
  FDRE \reg_ctrl_reg[10] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[10]),
        .Q(\reg_ctrl_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[11] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[11]),
        .Q(\reg_ctrl_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[12] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[12]),
        .Q(\reg_ctrl_reg_n_0_[12] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[13] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[13]),
        .Q(\reg_ctrl_reg_n_0_[13] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[14] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[14]),
        .Q(\reg_ctrl_reg_n_0_[14] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[15] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[15]),
        .Q(\reg_ctrl_reg_n_0_[15] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[16] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[16]),
        .Q(\reg_ctrl_reg_n_0_[16] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[17] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[17]),
        .Q(\reg_ctrl_reg_n_0_[17] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[18] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[18]),
        .Q(\reg_ctrl_reg_n_0_[18] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[19] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[19]),
        .Q(\reg_ctrl_reg_n_0_[19] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[1] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[1]),
        .Q(\reg_ctrl_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[20] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[20]),
        .Q(\reg_ctrl_reg_n_0_[20] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[21] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[21]),
        .Q(\reg_ctrl_reg_n_0_[21] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[22] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[22]),
        .Q(\reg_ctrl_reg_n_0_[22] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[23] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[23]),
        .Q(\reg_ctrl_reg_n_0_[23] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[24] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[24]),
        .Q(\reg_ctrl_reg_n_0_[24] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[25] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[25]),
        .Q(\reg_ctrl_reg_n_0_[25] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[26] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[26]),
        .Q(\reg_ctrl_reg_n_0_[26] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[27] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[27]),
        .Q(\reg_ctrl_reg_n_0_[27] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[28] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[28]),
        .Q(\reg_ctrl_reg_n_0_[28] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[29] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[29]),
        .Q(\reg_ctrl_reg_n_0_[29] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[2] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[2]),
        .Q(\reg_ctrl_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[30] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[30]),
        .Q(\reg_ctrl_reg_n_0_[30] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[31] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[31]),
        .Q(\reg_ctrl_reg_n_0_[31] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[3] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[3]),
        .Q(\reg_ctrl_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[4] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[4]),
        .Q(\reg_ctrl_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[5] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[5]),
        .Q(\reg_ctrl_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[6] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[6]),
        .Q(\reg_ctrl_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[7] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[7]),
        .Q(\reg_ctrl_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[8] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[8]),
        .Q(\reg_ctrl_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[9] 
       (.C(clk),
        .CE(reg_ctrl),
        .D(s_axi_wdata[9]),
        .Q(\reg_ctrl_reg_n_0_[9] ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h4000)) 
    \reg_delay[31]_i_1 
       (.I0(wr_addr_lat[1]),
        .I1(w_done_reg_0),
        .I2(aw_done_reg_0),
        .I3(\reg_delay[31]_i_2_n_0 ),
        .O(reg_delay));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \reg_delay[31]_i_2 
       (.I0(wr_addr_lat[0]),
        .I1(\wr_addr_lat_reg_n_0_[3] ),
        .I2(\wr_addr_lat_reg_n_0_[4] ),
        .I3(p_0_in0),
        .I4(\wr_addr_lat_reg_n_0_[5] ),
        .O(\reg_delay[31]_i_2_n_0 ));
  FDRE \reg_delay_reg[0] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[0]),
        .Q(\reg_delay_reg[31]_0 [0]),
        .R(p_0_in));
  FDRE \reg_delay_reg[10] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[10]),
        .Q(\reg_delay_reg[31]_0 [10]),
        .R(p_0_in));
  FDRE \reg_delay_reg[11] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[11]),
        .Q(\reg_delay_reg[31]_0 [11]),
        .R(p_0_in));
  FDRE \reg_delay_reg[12] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[12]),
        .Q(\reg_delay_reg[31]_0 [12]),
        .R(p_0_in));
  FDRE \reg_delay_reg[13] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[13]),
        .Q(\reg_delay_reg[31]_0 [13]),
        .R(p_0_in));
  FDRE \reg_delay_reg[14] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[14]),
        .Q(\reg_delay_reg[31]_0 [14]),
        .R(p_0_in));
  FDRE \reg_delay_reg[15] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[15]),
        .Q(\reg_delay_reg[31]_0 [15]),
        .R(p_0_in));
  FDRE \reg_delay_reg[16] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[16]),
        .Q(\reg_delay_reg[31]_0 [16]),
        .R(p_0_in));
  FDRE \reg_delay_reg[17] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[17]),
        .Q(\reg_delay_reg[31]_0 [17]),
        .R(p_0_in));
  FDRE \reg_delay_reg[18] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[18]),
        .Q(\reg_delay_reg[31]_0 [18]),
        .R(p_0_in));
  FDRE \reg_delay_reg[19] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[19]),
        .Q(\reg_delay_reg[31]_0 [19]),
        .R(p_0_in));
  FDRE \reg_delay_reg[1] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[1]),
        .Q(\reg_delay_reg[31]_0 [1]),
        .R(p_0_in));
  FDRE \reg_delay_reg[20] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[20]),
        .Q(\reg_delay_reg[31]_0 [20]),
        .R(p_0_in));
  FDRE \reg_delay_reg[21] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[21]),
        .Q(\reg_delay_reg[31]_0 [21]),
        .R(p_0_in));
  FDSE \reg_delay_reg[22] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[22]),
        .Q(\reg_delay_reg[31]_0 [22]),
        .S(p_0_in));
  FDSE \reg_delay_reg[23] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[23]),
        .Q(\reg_delay_reg[31]_0 [23]),
        .S(p_0_in));
  FDSE \reg_delay_reg[24] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[24]),
        .Q(\reg_delay_reg[31]_0 [24]),
        .S(p_0_in));
  FDRE \reg_delay_reg[25] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[25]),
        .Q(\reg_delay_reg[31]_0 [25]),
        .R(p_0_in));
  FDSE \reg_delay_reg[26] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[26]),
        .Q(\reg_delay_reg[31]_0 [26]),
        .S(p_0_in));
  FDSE \reg_delay_reg[27] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[27]),
        .Q(\reg_delay_reg[31]_0 [27]),
        .S(p_0_in));
  FDSE \reg_delay_reg[28] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[28]),
        .Q(\reg_delay_reg[31]_0 [28]),
        .S(p_0_in));
  FDRE \reg_delay_reg[29] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[29]),
        .Q(\reg_delay_reg[31]_0 [29]),
        .R(p_0_in));
  FDRE \reg_delay_reg[2] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[2]),
        .Q(\reg_delay_reg[31]_0 [2]),
        .R(p_0_in));
  FDSE \reg_delay_reg[30] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[30]),
        .Q(\reg_delay_reg[31]_0 [30]),
        .S(p_0_in));
  FDRE \reg_delay_reg[31] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[31]),
        .Q(\reg_delay_reg[31]_0 [31]),
        .R(p_0_in));
  FDRE \reg_delay_reg[3] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[3]),
        .Q(\reg_delay_reg[31]_0 [3]),
        .R(p_0_in));
  FDRE \reg_delay_reg[4] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[4]),
        .Q(\reg_delay_reg[31]_0 [4]),
        .R(p_0_in));
  FDRE \reg_delay_reg[5] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[5]),
        .Q(\reg_delay_reg[31]_0 [5]),
        .R(p_0_in));
  FDRE \reg_delay_reg[6] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[6]),
        .Q(\reg_delay_reg[31]_0 [6]),
        .R(p_0_in));
  FDRE \reg_delay_reg[7] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[7]),
        .Q(\reg_delay_reg[31]_0 [7]),
        .R(p_0_in));
  FDRE \reg_delay_reg[8] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[8]),
        .Q(\reg_delay_reg[31]_0 [8]),
        .R(p_0_in));
  FDRE \reg_delay_reg[9] 
       (.C(clk),
        .CE(reg_delay),
        .D(s_axi_wdata[9]),
        .Q(\reg_delay_reg[31]_0 [9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h8000)) 
    \reg_fb[31]_i_1 
       (.I0(\reg_ctrl[31]_i_2_n_0 ),
        .I1(w_done_reg_0),
        .I2(aw_done_reg_0),
        .I3(wr_addr_lat[1]),
        .O(reg_fb));
  FDSE \reg_fb_reg[0] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[0]),
        .Q(\reg_fb_reg[31]_0 [0]),
        .S(p_0_in));
  FDRE \reg_fb_reg[10] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[10]),
        .Q(\reg_fb_reg[31]_0 [10]),
        .R(p_0_in));
  FDRE \reg_fb_reg[11] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[11]),
        .Q(\reg_fb_reg[31]_0 [11]),
        .R(p_0_in));
  FDSE \reg_fb_reg[12] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[12]),
        .Q(\reg_fb_reg[31]_0 [12]),
        .S(p_0_in));
  FDSE \reg_fb_reg[13] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[13]),
        .Q(\reg_fb_reg[31]_0 [13]),
        .S(p_0_in));
  FDRE \reg_fb_reg[14] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[14]),
        .Q(\reg_fb_reg[31]_0 [14]),
        .R(p_0_in));
  FDRE \reg_fb_reg[15] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[15]),
        .Q(\reg_fb_reg[31]_0 [15]),
        .R(p_0_in));
  FDSE \reg_fb_reg[16] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[16]),
        .Q(\reg_fb_reg[31]_0 [16]),
        .S(p_0_in));
  FDSE \reg_fb_reg[17] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[17]),
        .Q(\reg_fb_reg[31]_0 [17]),
        .S(p_0_in));
  FDRE \reg_fb_reg[18] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[18]),
        .Q(\reg_fb_reg[31]_0 [18]),
        .R(p_0_in));
  FDRE \reg_fb_reg[19] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[19]),
        .Q(\reg_fb_reg[31]_0 [19]),
        .R(p_0_in));
  FDSE \reg_fb_reg[1] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[1]),
        .Q(\reg_fb_reg[31]_0 [1]),
        .S(p_0_in));
  FDSE \reg_fb_reg[20] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[20]),
        .Q(\reg_fb_reg[31]_0 [20]),
        .S(p_0_in));
  FDSE \reg_fb_reg[21] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[21]),
        .Q(\reg_fb_reg[31]_0 [21]),
        .S(p_0_in));
  FDRE \reg_fb_reg[22] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[22]),
        .Q(\reg_fb_reg[31]_0 [22]),
        .R(p_0_in));
  FDRE \reg_fb_reg[23] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[23]),
        .Q(\reg_fb_reg[31]_0 [23]),
        .R(p_0_in));
  FDSE \reg_fb_reg[24] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[24]),
        .Q(\reg_fb_reg[31]_0 [24]),
        .S(p_0_in));
  FDSE \reg_fb_reg[25] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[25]),
        .Q(\reg_fb_reg[31]_0 [25]),
        .S(p_0_in));
  FDRE \reg_fb_reg[26] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[26]),
        .Q(\reg_fb_reg[31]_0 [26]),
        .R(p_0_in));
  FDRE \reg_fb_reg[27] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[27]),
        .Q(\reg_fb_reg[31]_0 [27]),
        .R(p_0_in));
  FDSE \reg_fb_reg[28] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[28]),
        .Q(\reg_fb_reg[31]_0 [28]),
        .S(p_0_in));
  FDSE \reg_fb_reg[29] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[29]),
        .Q(\reg_fb_reg[31]_0 [29]),
        .S(p_0_in));
  FDRE \reg_fb_reg[2] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[2]),
        .Q(\reg_fb_reg[31]_0 [2]),
        .R(p_0_in));
  FDRE \reg_fb_reg[30] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[30]),
        .Q(\reg_fb_reg[31]_0 [30]),
        .R(p_0_in));
  FDRE \reg_fb_reg[31] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[31]),
        .Q(\reg_fb_reg[31]_0 [31]),
        .R(p_0_in));
  FDRE \reg_fb_reg[3] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[3]),
        .Q(\reg_fb_reg[31]_0 [3]),
        .R(p_0_in));
  FDSE \reg_fb_reg[4] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[4]),
        .Q(\reg_fb_reg[31]_0 [4]),
        .S(p_0_in));
  FDSE \reg_fb_reg[5] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[5]),
        .Q(\reg_fb_reg[31]_0 [5]),
        .S(p_0_in));
  FDRE \reg_fb_reg[6] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[6]),
        .Q(\reg_fb_reg[31]_0 [6]),
        .R(p_0_in));
  FDRE \reg_fb_reg[7] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[7]),
        .Q(\reg_fb_reg[31]_0 [7]),
        .R(p_0_in));
  FDSE \reg_fb_reg[8] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[8]),
        .Q(\reg_fb_reg[31]_0 [8]),
        .S(p_0_in));
  FDSE \reg_fb_reg[9] 
       (.C(clk),
        .CE(reg_fb),
        .D(s_axi_wdata[9]),
        .Q(\reg_fb_reg[31]_0 [9]),
        .S(p_0_in));
  LUT4 #(
    .INIT(16'h8000)) 
    \reg_wet[31]_i_1 
       (.I0(\reg_delay[31]_i_2_n_0 ),
        .I1(w_done_reg_0),
        .I2(aw_done_reg_0),
        .I3(wr_addr_lat[1]),
        .O(E));
  FDRE \reg_wet_reg[0] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[0]),
        .Q(reg_wet_q1_31[0]),
        .R(p_0_in));
  FDRE \reg_wet_reg[10] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[10]),
        .Q(reg_wet_q1_31[10]),
        .R(p_0_in));
  FDRE \reg_wet_reg[11] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[11]),
        .Q(reg_wet_q1_31[11]),
        .R(p_0_in));
  FDRE \reg_wet_reg[12] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[12]),
        .Q(reg_wet_q1_31[12]),
        .R(p_0_in));
  FDRE \reg_wet_reg[13] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[13]),
        .Q(reg_wet_q1_31[13]),
        .R(p_0_in));
  FDRE \reg_wet_reg[14] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[14]),
        .Q(reg_wet_q1_31[14]),
        .R(p_0_in));
  FDRE \reg_wet_reg[15] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[15]),
        .Q(reg_wet_q1_31[15]),
        .R(p_0_in));
  FDRE \reg_wet_reg[16] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[16]),
        .Q(reg_wet_q1_31[16]),
        .R(p_0_in));
  FDRE \reg_wet_reg[17] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[17]),
        .Q(\reg_wet_reg[31]_0 [0]),
        .R(p_0_in));
  FDRE \reg_wet_reg[18] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[18]),
        .Q(\reg_wet_reg[31]_0 [1]),
        .R(p_0_in));
  FDRE \reg_wet_reg[19] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[19]),
        .Q(\reg_wet_reg[31]_0 [2]),
        .R(p_0_in));
  FDRE \reg_wet_reg[1] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[1]),
        .Q(reg_wet_q1_31[1]),
        .R(p_0_in));
  FDRE \reg_wet_reg[20] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[20]),
        .Q(\reg_wet_reg[31]_0 [3]),
        .R(p_0_in));
  FDRE \reg_wet_reg[21] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[21]),
        .Q(\reg_wet_reg[31]_0 [4]),
        .R(p_0_in));
  FDRE \reg_wet_reg[22] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[22]),
        .Q(\reg_wet_reg[31]_0 [5]),
        .R(p_0_in));
  FDRE \reg_wet_reg[23] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[23]),
        .Q(\reg_wet_reg[31]_0 [6]),
        .R(p_0_in));
  FDRE \reg_wet_reg[24] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[24]),
        .Q(\reg_wet_reg[31]_0 [7]),
        .R(p_0_in));
  FDRE \reg_wet_reg[25] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[25]),
        .Q(\reg_wet_reg[31]_0 [8]),
        .R(p_0_in));
  FDRE \reg_wet_reg[26] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[26]),
        .Q(\reg_wet_reg[31]_0 [9]),
        .R(p_0_in));
  FDRE \reg_wet_reg[27] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[27]),
        .Q(\reg_wet_reg[31]_0 [10]),
        .R(p_0_in));
  FDRE \reg_wet_reg[28] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[28]),
        .Q(\reg_wet_reg[31]_0 [11]),
        .R(p_0_in));
  FDRE \reg_wet_reg[29] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[29]),
        .Q(\reg_wet_reg[31]_0 [12]),
        .R(p_0_in));
  FDRE \reg_wet_reg[2] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[2]),
        .Q(reg_wet_q1_31[2]),
        .R(p_0_in));
  FDSE \reg_wet_reg[30] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[30]),
        .Q(\reg_wet_reg[31]_0 [13]),
        .S(p_0_in));
  FDRE \reg_wet_reg[31] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[31]),
        .Q(\reg_wet_reg[31]_0 [14]),
        .R(p_0_in));
  FDRE \reg_wet_reg[3] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[3]),
        .Q(reg_wet_q1_31[3]),
        .R(p_0_in));
  FDRE \reg_wet_reg[4] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[4]),
        .Q(reg_wet_q1_31[4]),
        .R(p_0_in));
  FDRE \reg_wet_reg[5] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[5]),
        .Q(reg_wet_q1_31[5]),
        .R(p_0_in));
  FDRE \reg_wet_reg[6] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[6]),
        .Q(reg_wet_q1_31[6]),
        .R(p_0_in));
  FDRE \reg_wet_reg[7] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[7]),
        .Q(reg_wet_q1_31[7]),
        .R(p_0_in));
  FDRE \reg_wet_reg[8] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[8]),
        .Q(reg_wet_q1_31[8]),
        .R(p_0_in));
  FDRE \reg_wet_reg[9] 
       (.C(clk),
        .CE(E),
        .D(s_axi_wdata[9]),
        .Q(reg_wet_q1_31[9]),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_arready_i_1
       (.I0(s_axi_arvalid),
        .I1(s_axi_rvalid),
        .O(s_axi_arready0));
  FDRE s_axi_arready_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_arready0),
        .Q(s_axi_arready),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_awready_i_2
       (.I0(s_axi_awvalid),
        .I1(aw_done_reg_0),
        .O(s_axi_awready0));
  FDRE s_axi_awready_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_awready0),
        .Q(s_axi_awready),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h55C00000)) 
    s_axi_bvalid_i_1
       (.I0(s_axi_bready),
        .I1(aw_done_reg_0),
        .I2(w_done_reg_0),
        .I3(s_axi_bvalid),
        .I4(rst_n),
        .O(s_axi_bvalid_i_1_n_0));
  FDRE s_axi_bvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \s_axi_rdata[0]_i_4 
       (.I0(reg_wet_q1_31[0]),
        .I1(\reg_fb_reg[31]_0 [0]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [0]),
        .I4(s_axi_araddr[0]),
        .I5(Q),
        .O(\reg_wet_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \s_axi_rdata[10]_i_4 
       (.I0(reg_wet_q1_31[10]),
        .I1(\reg_fb_reg[31]_0 [10]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [10]),
        .I4(s_axi_araddr[0]),
        .I5(\reg_ctrl_reg_n_0_[10] ),
        .O(\reg_wet_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \s_axi_rdata[11]_i_4 
       (.I0(reg_wet_q1_31[11]),
        .I1(\reg_fb_reg[31]_0 [11]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [11]),
        .I4(s_axi_araddr[0]),
        .I5(\reg_ctrl_reg_n_0_[11] ),
        .O(\reg_wet_reg[11]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \s_axi_rdata[12]_i_4 
       (.I0(reg_wet_q1_31[12]),
        .I1(\reg_fb_reg[31]_0 [12]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [12]),
        .I4(s_axi_araddr[0]),
        .I5(\reg_ctrl_reg_n_0_[12] ),
        .O(\reg_wet_reg[12]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \s_axi_rdata[13]_i_4 
       (.I0(reg_wet_q1_31[13]),
        .I1(\reg_fb_reg[31]_0 [13]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [13]),
        .I4(s_axi_araddr[0]),
        .I5(\reg_ctrl_reg_n_0_[13] ),
        .O(\reg_wet_reg[13]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[14]_i_3 
       (.I0(reg_wet_q1_31[14]),
        .I1(\reg_fb_reg[31]_0 [14]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [14]),
        .I4(s_axi_araddr[0]),
        .I5(\reg_ctrl_reg_n_0_[14] ),
        .O(\reg_wet_reg[14]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[15]_i_2 
       (.I0(reg_wet_q1_31[15]),
        .I1(\reg_fb_reg[31]_0 [15]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [15]),
        .I4(s_axi_araddr[0]),
        .I5(\reg_ctrl_reg_n_0_[15] ),
        .O(\reg_wet_reg[15]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[16]_i_2 
       (.I0(reg_wet_q1_31[16]),
        .I1(\reg_fb_reg[31]_0 [16]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [16]),
        .I4(s_axi_araddr[0]),
        .I5(\reg_ctrl_reg_n_0_[16] ),
        .O(\reg_wet_reg[16]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[17]_i_2 
       (.I0(\reg_wet_reg[31]_0 [0]),
        .I1(\reg_fb_reg[31]_0 [17]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [17]),
        .I4(s_axi_araddr[0]),
        .I5(\reg_ctrl_reg_n_0_[17] ),
        .O(\reg_wet_reg[17]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[18]_i_2 
       (.I0(\reg_wet_reg[31]_0 [1]),
        .I1(\reg_fb_reg[31]_0 [18]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [18]),
        .I4(s_axi_araddr[0]),
        .I5(\reg_ctrl_reg_n_0_[18] ),
        .O(\reg_wet_reg[18]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[19]_i_2 
       (.I0(\reg_wet_reg[31]_0 [2]),
        .I1(\reg_fb_reg[31]_0 [19]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [19]),
        .I4(s_axi_araddr[0]),
        .I5(\reg_ctrl_reg_n_0_[19] ),
        .O(\reg_wet_reg[19]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \s_axi_rdata[1]_i_4 
       (.I0(reg_wet_q1_31[1]),
        .I1(\reg_fb_reg[31]_0 [1]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [1]),
        .I4(s_axi_araddr[0]),
        .I5(\reg_ctrl_reg_n_0_[1] ),
        .O(\reg_wet_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[20]_i_2 
       (.I0(\reg_wet_reg[31]_0 [3]),
        .I1(\reg_fb_reg[31]_0 [20]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [20]),
        .I4(s_axi_araddr[0]),
        .I5(\reg_ctrl_reg_n_0_[20] ),
        .O(\reg_wet_reg[20]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[21]_i_2 
       (.I0(\reg_wet_reg[31]_0 [4]),
        .I1(\reg_fb_reg[31]_0 [21]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [21]),
        .I4(s_axi_araddr[0]),
        .I5(\reg_ctrl_reg_n_0_[21] ),
        .O(\reg_wet_reg[21]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[22]_i_2 
       (.I0(\reg_wet_reg[31]_0 [5]),
        .I1(\reg_fb_reg[31]_0 [22]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [22]),
        .I4(s_axi_araddr[0]),
        .I5(\reg_ctrl_reg_n_0_[22] ),
        .O(\reg_wet_reg[22]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[23]_i_2 
       (.I0(\reg_wet_reg[31]_0 [6]),
        .I1(\reg_fb_reg[31]_0 [23]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [23]),
        .I4(s_axi_araddr[0]),
        .I5(\reg_ctrl_reg_n_0_[23] ),
        .O(\reg_wet_reg[23]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[24]_i_2 
       (.I0(\reg_wet_reg[31]_0 [7]),
        .I1(\reg_fb_reg[31]_0 [24]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [24]),
        .I4(s_axi_araddr[0]),
        .I5(\reg_ctrl_reg_n_0_[24] ),
        .O(\reg_wet_reg[24]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[25]_i_2 
       (.I0(\reg_wet_reg[31]_0 [8]),
        .I1(\reg_fb_reg[31]_0 [25]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [25]),
        .I4(s_axi_araddr[0]),
        .I5(\reg_ctrl_reg_n_0_[25] ),
        .O(\reg_wet_reg[25]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[26]_i_2 
       (.I0(\reg_wet_reg[31]_0 [9]),
        .I1(\reg_fb_reg[31]_0 [26]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [26]),
        .I4(s_axi_araddr[0]),
        .I5(\reg_ctrl_reg_n_0_[26] ),
        .O(\reg_wet_reg[26]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[27]_i_2 
       (.I0(\reg_wet_reg[31]_0 [10]),
        .I1(\reg_fb_reg[31]_0 [27]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [27]),
        .I4(s_axi_araddr[0]),
        .I5(\reg_ctrl_reg_n_0_[27] ),
        .O(\reg_wet_reg[27]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[28]_i_2 
       (.I0(\reg_wet_reg[31]_0 [11]),
        .I1(\reg_fb_reg[31]_0 [28]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [28]),
        .I4(s_axi_araddr[0]),
        .I5(\reg_ctrl_reg_n_0_[28] ),
        .O(\reg_wet_reg[28]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \s_axi_rdata[29]_i_2 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_araddr[2]),
        .I2(s_axi_araddr[4]),
        .O(\s_axi_araddr[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[29]_i_3 
       (.I0(\reg_wet_reg[31]_0 [12]),
        .I1(\reg_fb_reg[31]_0 [29]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [29]),
        .I4(s_axi_araddr[0]),
        .I5(\reg_ctrl_reg_n_0_[29] ),
        .O(\reg_wet_reg[29]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \s_axi_rdata[29]_i_4 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_araddr[2]),
        .O(\s_axi_araddr[5] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \s_axi_rdata[2]_i_4 
       (.I0(reg_wet_q1_31[2]),
        .I1(\reg_fb_reg[31]_0 [2]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [2]),
        .I4(s_axi_araddr[0]),
        .I5(\reg_ctrl_reg_n_0_[2] ),
        .O(\reg_wet_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[30]_i_2 
       (.I0(\reg_wet_reg[31]_0 [13]),
        .I1(\reg_fb_reg[31]_0 [30]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [30]),
        .I4(s_axi_araddr[0]),
        .I5(\reg_ctrl_reg_n_0_[30] ),
        .O(\reg_wet_reg[30]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11100010)) 
    \s_axi_rdata[31]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_araddr[2]),
        .I2(\s_axi_rdata[31]_i_2_n_0 ),
        .I3(s_axi_araddr[4]),
        .I4(\s_axi_rdata_reg[31]_0 ),
        .I5(\s_axi_rdata_reg[31]_1 ),
        .O(p_1_in));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[31]_i_2 
       (.I0(\reg_wet_reg[31]_0 [14]),
        .I1(\reg_fb_reg[31]_0 [31]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [31]),
        .I4(s_axi_araddr[0]),
        .I5(\reg_ctrl_reg_n_0_[31] ),
        .O(\s_axi_rdata[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \s_axi_rdata[31]_i_5 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_araddr[3]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[4]),
        .O(s_axi_araddr_4_sn_1));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[31]_i_6 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[0]),
        .O(\s_axi_araddr[6] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \s_axi_rdata[3]_i_4 
       (.I0(reg_wet_q1_31[3]),
        .I1(\reg_fb_reg[31]_0 [3]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [3]),
        .I4(s_axi_araddr[0]),
        .I5(\reg_ctrl_reg_n_0_[3] ),
        .O(\reg_wet_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[4]_i_3 
       (.I0(reg_wet_q1_31[4]),
        .I1(\reg_fb_reg[31]_0 [4]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [4]),
        .I4(s_axi_araddr[0]),
        .I5(\reg_ctrl_reg_n_0_[4] ),
        .O(\reg_wet_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \s_axi_rdata[5]_i_4 
       (.I0(reg_wet_q1_31[5]),
        .I1(\reg_fb_reg[31]_0 [5]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [5]),
        .I4(s_axi_araddr[0]),
        .I5(\reg_ctrl_reg_n_0_[5] ),
        .O(\reg_wet_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \s_axi_rdata[6]_i_4 
       (.I0(reg_wet_q1_31[6]),
        .I1(\reg_fb_reg[31]_0 [6]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [6]),
        .I4(s_axi_araddr[0]),
        .I5(\reg_ctrl_reg_n_0_[6] ),
        .O(\reg_wet_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \s_axi_rdata[7]_i_4 
       (.I0(reg_wet_q1_31[7]),
        .I1(\reg_fb_reg[31]_0 [7]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [7]),
        .I4(s_axi_araddr[0]),
        .I5(\reg_ctrl_reg_n_0_[7] ),
        .O(\reg_wet_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[8]_i_3 
       (.I0(reg_wet_q1_31[8]),
        .I1(\reg_fb_reg[31]_0 [8]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [8]),
        .I4(s_axi_araddr[0]),
        .I5(\reg_ctrl_reg_n_0_[8] ),
        .O(\reg_wet_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \s_axi_rdata[9]_i_4 
       (.I0(reg_wet_q1_31[9]),
        .I1(\reg_fb_reg[31]_0 [9]),
        .I2(s_axi_araddr[1]),
        .I3(\reg_delay_reg[31]_0 [9]),
        .I4(s_axi_araddr[0]),
        .I5(\reg_ctrl_reg_n_0_[9] ),
        .O(\reg_wet_reg[9]_0 ));
  FDRE \s_axi_rdata_reg[0] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(D[0]),
        .Q(s_axi_rdata[0]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[10] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(D[10]),
        .Q(s_axi_rdata[10]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[11] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(D[11]),
        .Q(s_axi_rdata[11]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[12] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(D[12]),
        .Q(s_axi_rdata[12]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[13] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(D[13]),
        .Q(s_axi_rdata[13]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[14] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(D[14]),
        .Q(s_axi_rdata[14]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[15] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(D[15]),
        .Q(s_axi_rdata[15]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[16] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(D[16]),
        .Q(s_axi_rdata[16]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[17] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(D[17]),
        .Q(s_axi_rdata[17]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[18] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(D[18]),
        .Q(s_axi_rdata[18]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[19] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(D[19]),
        .Q(s_axi_rdata[19]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[1] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(D[1]),
        .Q(s_axi_rdata[1]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[20] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(D[20]),
        .Q(s_axi_rdata[20]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[21] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(D[21]),
        .Q(s_axi_rdata[21]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[22] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(D[22]),
        .Q(s_axi_rdata[22]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[23] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(D[23]),
        .Q(s_axi_rdata[23]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[24] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(D[24]),
        .Q(s_axi_rdata[24]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[25] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(D[25]),
        .Q(s_axi_rdata[25]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[26] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(D[26]),
        .Q(s_axi_rdata[26]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[27] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(D[27]),
        .Q(s_axi_rdata[27]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[28] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(D[28]),
        .Q(s_axi_rdata[28]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[29] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(D[29]),
        .Q(s_axi_rdata[29]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[2] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(D[2]),
        .Q(s_axi_rdata[2]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[30] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(D[30]),
        .Q(s_axi_rdata[30]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[31] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(p_1_in),
        .Q(s_axi_rdata[31]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[3] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(D[3]),
        .Q(s_axi_rdata[3]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[4] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(D[4]),
        .Q(s_axi_rdata[4]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[5] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(D[5]),
        .Q(s_axi_rdata[5]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[6] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(D[6]),
        .Q(s_axi_rdata[6]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[7] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(D[7]),
        .Q(s_axi_rdata[7]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[8] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(D[8]),
        .Q(s_axi_rdata[8]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[9] 
       (.C(clk),
        .CE(s_axi_arready0),
        .D(D[9]),
        .Q(s_axi_rdata[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h5C00)) 
    s_axi_rvalid_i_1
       (.I0(s_axi_rready),
        .I1(s_axi_arvalid),
        .I2(s_axi_rvalid),
        .I3(rst_n),
        .O(s_axi_rvalid_i_1_n_0));
  FDRE s_axi_rvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_wready_i_1
       (.I0(s_axi_wvalid),
        .I1(w_done_reg_0),
        .O(s_axi_wready0));
  FDRE s_axi_wready_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_wready0),
        .Q(s_axi_wready),
        .R(p_0_in));
  FDRE w_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(w_done_reg_1),
        .Q(w_done_reg_0),
        .R(1'b0));
  FDRE \wr_addr_lat_reg[0] 
       (.C(clk),
        .CE(s_axi_awready0),
        .D(s_axi_awaddr[0]),
        .Q(wr_addr_lat[0]),
        .R(p_0_in));
  FDRE \wr_addr_lat_reg[1] 
       (.C(clk),
        .CE(s_axi_awready0),
        .D(s_axi_awaddr[1]),
        .Q(wr_addr_lat[1]),
        .R(p_0_in));
  FDRE \wr_addr_lat_reg[2] 
       (.C(clk),
        .CE(s_axi_awready0),
        .D(s_axi_awaddr[2]),
        .Q(p_0_in0),
        .R(p_0_in));
  FDRE \wr_addr_lat_reg[3] 
       (.C(clk),
        .CE(s_axi_awready0),
        .D(s_axi_awaddr[3]),
        .Q(\wr_addr_lat_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \wr_addr_lat_reg[4] 
       (.C(clk),
        .CE(s_axi_awready0),
        .D(s_axi_awaddr[4]),
        .Q(\wr_addr_lat_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \wr_addr_lat_reg[5] 
       (.C(clk),
        .CE(s_axi_awready0),
        .D(s_axi_awaddr[5]),
        .Q(\wr_addr_lat_reg_n_0_[5] ),
        .R(p_0_in));
endmodule

(* ORIG_REF_NAME = "fx_system_wrapper" *) 
module design_1_fx_system_wrapper_0_1_fx_system_wrapper
   (inflight_reg,
    m_axis_tdata,
    s_axi_awready,
    s_axi_wready,
    s_axi_arready,
    s_axi_rdata,
    s_axi_bvalid,
    s_axi_rvalid,
    m_axis_tvalid,
    s_axi_araddr,
    rst_n,
    clk,
    enc_b,
    enc_a,
    s_axi_awaddr,
    s_axi_wdata,
    m_axis_tready,
    s_axis_tdata,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_awvalid,
    s_axi_rready,
    s_axi_arvalid,
    s_axis_tvalid,
    s_axis_tid,
    fx_enable);
  output inflight_reg;
  output [25:0]m_axis_tdata;
  output s_axi_awready;
  output s_axi_wready;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output s_axi_bvalid;
  output s_axi_rvalid;
  output m_axis_tvalid;
  input [5:0]s_axi_araddr;
  input rst_n;
  input clk;
  input [5:0]enc_b;
  input [5:0]enc_a;
  input [5:0]s_axi_awaddr;
  input [31:0]s_axi_wdata;
  input m_axis_tready;
  input [23:0]s_axis_tdata;
  input s_axi_wvalid;
  input s_axi_bready;
  input s_axi_awvalid;
  input s_axi_rready;
  input s_axi_arvalid;
  input s_axis_tvalid;
  input [2:0]s_axis_tid;
  input fx_enable;

  wire aw_done_i_1_n_0;
  wire bram_wr_en_rep_i_1__0_n_0;
  wire bram_wr_en_rep_i_1__10_n_0;
  wire bram_wr_en_rep_i_1__11_n_0;
  wire bram_wr_en_rep_i_1__1_n_0;
  wire bram_wr_en_rep_i_1__2_n_0;
  wire bram_wr_en_rep_i_1__3_n_0;
  wire bram_wr_en_rep_i_1__4_n_0;
  wire bram_wr_en_rep_i_1__5_n_0;
  wire bram_wr_en_rep_i_1__6_n_0;
  wire bram_wr_en_rep_i_1__7_n_0;
  wire bram_wr_en_rep_i_1__8_n_0;
  wire bram_wr_en_rep_i_1__9_n_0;
  wire bram_wr_en_rep_i_1_n_0;
  wire clean_a_i_1__0_n_0;
  wire clean_a_i_1__1_n_0;
  wire clean_a_i_1__2_n_0;
  wire clean_a_i_1__3_n_0;
  wire clean_a_i_1__4_n_0;
  wire clean_a_i_1_n_0;
  wire clean_b_i_1__0_n_0;
  wire clean_b_i_1__1_n_0;
  wire clean_b_i_1__2_n_0;
  wire clean_b_i_1__3_n_0;
  wire clean_b_i_1__4_n_0;
  wire clean_b_i_1_n_0;
  wire clk;
  wire d_reg_valid_i_1_n_0;
  wire [5:0]enc_a;
  wire [5:0]enc_b;
  wire enc_tick;
  wire frac_start_i_1_n_0;
  wire fx_enable;
  wire \g_enc[0].u_enc/a_s ;
  wire \g_enc[0].u_enc/b_s ;
  wire [2:0]\g_enc[0].u_enc/cnt_a__0 ;
  wire [2:0]\g_enc[0].u_enc/cnt_b__0 ;
  wire [1:0]\g_enc[0].u_enc/state ;
  wire \g_enc[1].u_enc/a_s ;
  wire \g_enc[1].u_enc/b_s ;
  wire [2:0]\g_enc[1].u_enc/cnt_a__0 ;
  wire [2:0]\g_enc[1].u_enc/cnt_b__0 ;
  wire [1:0]\g_enc[1].u_enc/state ;
  wire \g_enc[2].u_enc/a_s ;
  wire \g_enc[2].u_enc/b_s ;
  wire [2:0]\g_enc[2].u_enc/cnt_a__0 ;
  wire [2:0]\g_enc[2].u_enc/cnt_b__0 ;
  wire [1:0]\g_enc[2].u_enc/state ;
  wire \g_enc[3].u_enc/a_s ;
  wire \g_enc[3].u_enc/b_s ;
  wire [2:0]\g_enc[3].u_enc/cnt_a__0 ;
  wire [2:0]\g_enc[3].u_enc/cnt_b__0 ;
  wire [1:0]\g_enc[3].u_enc/state ;
  wire \g_enc[4].u_enc/a_s ;
  wire \g_enc[4].u_enc/b_s ;
  wire [2:0]\g_enc[4].u_enc/cnt_a__0 ;
  wire [2:0]\g_enc[4].u_enc/cnt_b__0 ;
  wire [1:0]\g_enc[4].u_enc/state ;
  wire \g_enc[5].u_enc/a_s ;
  wire \g_enc[5].u_enc/b_s ;
  wire [2:0]\g_enc[5].u_enc/cnt_a__0 ;
  wire [2:0]\g_enc[5].u_enc/cnt_b__0 ;
  wire [1:0]\g_enc[5].u_enc/state ;
  wire \in_state[0]_i_1_n_0 ;
  wire inflight_reg;
  wire [25:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire rd_en_i_1_n_0;
  wire rd_en_rep_i_1_n_0;
  wire rst_n;
  wire [5:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [5:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire [23:0]s_axis_tdata;
  wire [2:0]s_axis_tid;
  wire s_axis_tvalid;
  wire \term_r[0]_i_1_n_0 ;
  wire u_core_n_141;
  wire u_core_n_142;
  wire u_core_n_22;
  wire u_core_n_26;
  wire u_core_n_29;
  wire u_core_n_30;
  wire u_core_n_31;
  wire \u_delay/clear_req ;
  wire \u_delay/d_valid ;
  wire [0:0]\u_delay/p_1_in__0 ;
  wire [0:0]\u_delay/term_r ;
  wire \u_delay/u_dl/bram_rd_en ;
  wire \u_delay/u_dl/frac_d_valid ;
  wire [2:0]\u_delay/u_dl/frac_u/state ;
  wire \u_delay/u_dl/wptr_latched ;
  wire \u_regmap/aw_done ;
  wire w_done_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'h0C88)) 
    aw_done_i_1
       (.I0(s_axi_awvalid),
        .I1(rst_n),
        .I2(u_core_n_22),
        .I3(\u_regmap/aw_done ),
        .O(aw_done_i_1_n_0));
  LUT5 #(
    .INIT(32'h88888808)) 
    bram_wr_en_rep_i_1
       (.I0(u_core_n_142),
        .I1(rst_n),
        .I2(\u_delay/clear_req ),
        .I3(u_core_n_31),
        .I4(u_core_n_30),
        .O(bram_wr_en_rep_i_1_n_0));
  LUT5 #(
    .INIT(32'h88888808)) 
    bram_wr_en_rep_i_1__0
       (.I0(u_core_n_142),
        .I1(rst_n),
        .I2(\u_delay/clear_req ),
        .I3(u_core_n_31),
        .I4(u_core_n_30),
        .O(bram_wr_en_rep_i_1__0_n_0));
  LUT5 #(
    .INIT(32'h88888808)) 
    bram_wr_en_rep_i_1__1
       (.I0(u_core_n_142),
        .I1(rst_n),
        .I2(\u_delay/clear_req ),
        .I3(u_core_n_31),
        .I4(u_core_n_30),
        .O(bram_wr_en_rep_i_1__1_n_0));
  LUT5 #(
    .INIT(32'h88888808)) 
    bram_wr_en_rep_i_1__10
       (.I0(u_core_n_142),
        .I1(rst_n),
        .I2(\u_delay/clear_req ),
        .I3(u_core_n_31),
        .I4(u_core_n_30),
        .O(bram_wr_en_rep_i_1__10_n_0));
  LUT5 #(
    .INIT(32'h88888808)) 
    bram_wr_en_rep_i_1__11
       (.I0(u_core_n_142),
        .I1(rst_n),
        .I2(\u_delay/clear_req ),
        .I3(u_core_n_31),
        .I4(u_core_n_30),
        .O(bram_wr_en_rep_i_1__11_n_0));
  LUT5 #(
    .INIT(32'h88888808)) 
    bram_wr_en_rep_i_1__2
       (.I0(u_core_n_142),
        .I1(rst_n),
        .I2(\u_delay/clear_req ),
        .I3(u_core_n_31),
        .I4(u_core_n_30),
        .O(bram_wr_en_rep_i_1__2_n_0));
  LUT5 #(
    .INIT(32'h88888808)) 
    bram_wr_en_rep_i_1__3
       (.I0(u_core_n_142),
        .I1(rst_n),
        .I2(\u_delay/clear_req ),
        .I3(u_core_n_31),
        .I4(u_core_n_30),
        .O(bram_wr_en_rep_i_1__3_n_0));
  LUT5 #(
    .INIT(32'h88888808)) 
    bram_wr_en_rep_i_1__4
       (.I0(u_core_n_142),
        .I1(rst_n),
        .I2(\u_delay/clear_req ),
        .I3(u_core_n_31),
        .I4(u_core_n_30),
        .O(bram_wr_en_rep_i_1__4_n_0));
  LUT5 #(
    .INIT(32'h88888808)) 
    bram_wr_en_rep_i_1__5
       (.I0(u_core_n_142),
        .I1(rst_n),
        .I2(\u_delay/clear_req ),
        .I3(u_core_n_31),
        .I4(u_core_n_30),
        .O(bram_wr_en_rep_i_1__5_n_0));
  LUT5 #(
    .INIT(32'h88888808)) 
    bram_wr_en_rep_i_1__6
       (.I0(u_core_n_142),
        .I1(rst_n),
        .I2(\u_delay/clear_req ),
        .I3(u_core_n_31),
        .I4(u_core_n_30),
        .O(bram_wr_en_rep_i_1__6_n_0));
  LUT5 #(
    .INIT(32'h88888808)) 
    bram_wr_en_rep_i_1__7
       (.I0(u_core_n_142),
        .I1(rst_n),
        .I2(\u_delay/clear_req ),
        .I3(u_core_n_31),
        .I4(u_core_n_30),
        .O(bram_wr_en_rep_i_1__7_n_0));
  LUT5 #(
    .INIT(32'h88888808)) 
    bram_wr_en_rep_i_1__8
       (.I0(u_core_n_142),
        .I1(rst_n),
        .I2(\u_delay/clear_req ),
        .I3(u_core_n_31),
        .I4(u_core_n_30),
        .O(bram_wr_en_rep_i_1__8_n_0));
  LUT5 #(
    .INIT(32'h88888808)) 
    bram_wr_en_rep_i_1__9
       (.I0(u_core_n_142),
        .I1(rst_n),
        .I2(\u_delay/clear_req ),
        .I3(u_core_n_31),
        .I4(u_core_n_30),
        .O(bram_wr_en_rep_i_1__9_n_0));
  LUT6 #(
    .INIT(64'hFF7F8000FFFF0000)) 
    clean_a_i_1
       (.I0(\g_enc[0].u_enc/cnt_a__0 [0]),
        .I1(\g_enc[0].u_enc/cnt_a__0 [1]),
        .I2(\g_enc[0].u_enc/cnt_a__0 [2]),
        .I3(\g_enc[0].u_enc/a_s ),
        .I4(\g_enc[0].u_enc/state [1]),
        .I5(enc_tick),
        .O(clean_a_i_1_n_0));
  LUT6 #(
    .INIT(64'hFF7F8000FFFF0000)) 
    clean_a_i_1__0
       (.I0(\g_enc[1].u_enc/cnt_a__0 [0]),
        .I1(\g_enc[1].u_enc/cnt_a__0 [1]),
        .I2(\g_enc[1].u_enc/cnt_a__0 [2]),
        .I3(\g_enc[1].u_enc/a_s ),
        .I4(\g_enc[1].u_enc/state [1]),
        .I5(enc_tick),
        .O(clean_a_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFF7F8000FFFF0000)) 
    clean_a_i_1__1
       (.I0(\g_enc[2].u_enc/cnt_a__0 [0]),
        .I1(\g_enc[2].u_enc/cnt_a__0 [1]),
        .I2(\g_enc[2].u_enc/cnt_a__0 [2]),
        .I3(\g_enc[2].u_enc/a_s ),
        .I4(\g_enc[2].u_enc/state [1]),
        .I5(enc_tick),
        .O(clean_a_i_1__1_n_0));
  LUT6 #(
    .INIT(64'hFF7F8000FFFF0000)) 
    clean_a_i_1__2
       (.I0(\g_enc[3].u_enc/cnt_a__0 [0]),
        .I1(\g_enc[3].u_enc/cnt_a__0 [1]),
        .I2(\g_enc[3].u_enc/cnt_a__0 [2]),
        .I3(\g_enc[3].u_enc/a_s ),
        .I4(\g_enc[3].u_enc/state [1]),
        .I5(enc_tick),
        .O(clean_a_i_1__2_n_0));
  LUT6 #(
    .INIT(64'hFF7F8000FFFF0000)) 
    clean_a_i_1__3
       (.I0(\g_enc[4].u_enc/cnt_a__0 [0]),
        .I1(\g_enc[4].u_enc/cnt_a__0 [1]),
        .I2(\g_enc[4].u_enc/cnt_a__0 [2]),
        .I3(\g_enc[4].u_enc/a_s ),
        .I4(\g_enc[4].u_enc/state [1]),
        .I5(enc_tick),
        .O(clean_a_i_1__3_n_0));
  LUT6 #(
    .INIT(64'hFF7F8000FFFF0000)) 
    clean_a_i_1__4
       (.I0(\g_enc[5].u_enc/cnt_a__0 [0]),
        .I1(\g_enc[5].u_enc/cnt_a__0 [1]),
        .I2(\g_enc[5].u_enc/cnt_a__0 [2]),
        .I3(\g_enc[5].u_enc/a_s ),
        .I4(\g_enc[5].u_enc/state [1]),
        .I5(enc_tick),
        .O(clean_a_i_1__4_n_0));
  LUT6 #(
    .INIT(64'hFF7F8000FFFF0000)) 
    clean_b_i_1
       (.I0(\g_enc[0].u_enc/cnt_b__0 [0]),
        .I1(\g_enc[0].u_enc/cnt_b__0 [1]),
        .I2(\g_enc[0].u_enc/cnt_b__0 [2]),
        .I3(\g_enc[0].u_enc/b_s ),
        .I4(\g_enc[0].u_enc/state [0]),
        .I5(enc_tick),
        .O(clean_b_i_1_n_0));
  LUT6 #(
    .INIT(64'hFF7F8000FFFF0000)) 
    clean_b_i_1__0
       (.I0(\g_enc[1].u_enc/cnt_b__0 [0]),
        .I1(\g_enc[1].u_enc/cnt_b__0 [1]),
        .I2(\g_enc[1].u_enc/cnt_b__0 [2]),
        .I3(\g_enc[1].u_enc/b_s ),
        .I4(\g_enc[1].u_enc/state [0]),
        .I5(enc_tick),
        .O(clean_b_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFF7F8000FFFF0000)) 
    clean_b_i_1__1
       (.I0(\g_enc[2].u_enc/cnt_b__0 [0]),
        .I1(\g_enc[2].u_enc/cnt_b__0 [1]),
        .I2(\g_enc[2].u_enc/cnt_b__0 [2]),
        .I3(\g_enc[2].u_enc/b_s ),
        .I4(\g_enc[2].u_enc/state [0]),
        .I5(enc_tick),
        .O(clean_b_i_1__1_n_0));
  LUT6 #(
    .INIT(64'hFF7F8000FFFF0000)) 
    clean_b_i_1__2
       (.I0(\g_enc[3].u_enc/cnt_b__0 [0]),
        .I1(\g_enc[3].u_enc/cnt_b__0 [1]),
        .I2(\g_enc[3].u_enc/cnt_b__0 [2]),
        .I3(\g_enc[3].u_enc/b_s ),
        .I4(\g_enc[3].u_enc/state [0]),
        .I5(enc_tick),
        .O(clean_b_i_1__2_n_0));
  LUT6 #(
    .INIT(64'hFF7F8000FFFF0000)) 
    clean_b_i_1__3
       (.I0(\g_enc[4].u_enc/cnt_b__0 [0]),
        .I1(\g_enc[4].u_enc/cnt_b__0 [1]),
        .I2(\g_enc[4].u_enc/cnt_b__0 [2]),
        .I3(\g_enc[4].u_enc/b_s ),
        .I4(\g_enc[4].u_enc/state [0]),
        .I5(enc_tick),
        .O(clean_b_i_1__3_n_0));
  LUT6 #(
    .INIT(64'hFF7F8000FFFF0000)) 
    clean_b_i_1__4
       (.I0(\g_enc[5].u_enc/cnt_b__0 [0]),
        .I1(\g_enc[5].u_enc/cnt_b__0 [1]),
        .I2(\g_enc[5].u_enc/cnt_b__0 [2]),
        .I3(\g_enc[5].u_enc/b_s ),
        .I4(\g_enc[5].u_enc/state [0]),
        .I5(enc_tick),
        .O(clean_b_i_1__4_n_0));
  LUT6 #(
    .INIT(64'h00000000AAAAC080)) 
    d_reg_valid_i_1
       (.I0(\u_delay/d_valid ),
        .I1(u_core_n_141),
        .I2(u_core_n_30),
        .I3(\u_delay/u_dl/frac_d_valid ),
        .I4(u_core_n_31),
        .I5(u_core_n_29),
        .O(d_reg_valid_i_1_n_0));
  LUT5 #(
    .INIT(32'h88888808)) 
    frac_start_i_1
       (.I0(\u_delay/u_dl/wptr_latched ),
        .I1(rst_n),
        .I2(\u_delay/clear_req ),
        .I3(u_core_n_31),
        .I4(u_core_n_30),
        .O(frac_start_i_1_n_0));
  LUT6 #(
    .INIT(64'h00FFFFFF01000000)) 
    \in_state[0]_i_1 
       (.I0(s_axis_tid[2]),
        .I1(s_axis_tid[1]),
        .I2(s_axis_tid[0]),
        .I3(s_axis_tvalid),
        .I4(inflight_reg),
        .I5(u_core_n_26),
        .O(\in_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEC0C)) 
    rd_en_i_1
       (.I0(\u_delay/u_dl/frac_u/state [1]),
        .I1(\u_delay/u_dl/frac_u/state [0]),
        .I2(\u_delay/u_dl/frac_u/state [2]),
        .I3(\u_delay/u_dl/bram_rd_en ),
        .O(rd_en_i_1_n_0));
  LUT4 #(
    .INIT(16'hEC0C)) 
    rd_en_rep_i_1
       (.I0(\u_delay/u_dl/frac_u/state [1]),
        .I1(\u_delay/u_dl/frac_u/state [0]),
        .I2(\u_delay/u_dl/frac_u/state [2]),
        .I3(\u_delay/u_dl/bram_rd_en ),
        .O(rd_en_rep_i_1_n_0));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \term_r[0]_i_1 
       (.I0(\u_delay/p_1_in__0 ),
        .I1(\u_delay/u_dl/frac_u/state [1]),
        .I2(\u_delay/u_dl/frac_u/state [2]),
        .I3(\u_delay/u_dl/frac_u/state [0]),
        .I4(\u_delay/term_r ),
        .O(\term_r[0]_i_1_n_0 ));
  design_1_fx_system_wrapper_0_1_fx_core u_core
       (.\FSM_sequential_state_reg[1] (u_core_n_142),
        .\FSM_sequential_state_reg[2] (u_core_n_141),
        .P(\u_delay/p_1_in__0 ),
        .Q(\g_enc[0].u_enc/b_s ),
        .\a_sync_reg[1] (\g_enc[0].u_enc/a_s ),
        .\a_sync_reg[1]_0 (\g_enc[1].u_enc/a_s ),
        .\a_sync_reg[1]_1 (\g_enc[2].u_enc/a_s ),
        .\a_sync_reg[1]_2 (\g_enc[3].u_enc/a_s ),
        .\a_sync_reg[1]_3 (\g_enc[4].u_enc/a_s ),
        .\a_sync_reg[1]_4 (\g_enc[5].u_enc/a_s ),
        .aw_done(\u_regmap/aw_done ),
        .aw_done_reg(aw_done_i_1_n_0),
        .\b_sync_reg[1] (\g_enc[1].u_enc/b_s ),
        .\b_sync_reg[1]_0 (\g_enc[2].u_enc/b_s ),
        .\b_sync_reg[1]_1 (\g_enc[3].u_enc/b_s ),
        .\b_sync_reg[1]_2 (\g_enc[4].u_enc/b_s ),
        .\b_sync_reg[1]_3 (\g_enc[5].u_enc/b_s ),
        .bram_rd_en(\u_delay/u_dl/bram_rd_en ),
        .bram_wr_en_reg_rep(bram_wr_en_rep_i_1_n_0),
        .bram_wr_en_reg_rep__0(bram_wr_en_rep_i_1__0_n_0),
        .bram_wr_en_reg_rep__1(bram_wr_en_rep_i_1__1_n_0),
        .bram_wr_en_reg_rep__10(bram_wr_en_rep_i_1__10_n_0),
        .bram_wr_en_reg_rep__11(bram_wr_en_rep_i_1__11_n_0),
        .bram_wr_en_reg_rep__2(bram_wr_en_rep_i_1__2_n_0),
        .bram_wr_en_reg_rep__3(bram_wr_en_rep_i_1__3_n_0),
        .bram_wr_en_reg_rep__4(bram_wr_en_rep_i_1__4_n_0),
        .bram_wr_en_reg_rep__5(bram_wr_en_rep_i_1__5_n_0),
        .bram_wr_en_reg_rep__6(bram_wr_en_rep_i_1__6_n_0),
        .bram_wr_en_reg_rep__7(bram_wr_en_rep_i_1__7_n_0),
        .bram_wr_en_reg_rep__8(bram_wr_en_rep_i_1__8_n_0),
        .bram_wr_en_reg_rep__9(bram_wr_en_rep_i_1__9_n_0),
        .clean_a_reg(clean_a_i_1_n_0),
        .clean_a_reg_0(clean_a_i_1__0_n_0),
        .clean_a_reg_1(clean_a_i_1__1_n_0),
        .clean_a_reg_2(clean_a_i_1__2_n_0),
        .clean_a_reg_3(clean_a_i_1__3_n_0),
        .clean_a_reg_4(clean_a_i_1__4_n_0),
        .clean_b_reg(clean_b_i_1_n_0),
        .clean_b_reg_0(clean_b_i_1__0_n_0),
        .clean_b_reg_1(clean_b_i_1__1_n_0),
        .clean_b_reg_2(clean_b_i_1__2_n_0),
        .clean_b_reg_3(clean_b_i_1__3_n_0),
        .clean_b_reg_4(clean_b_i_1__4_n_0),
        .clear_req(\u_delay/clear_req ),
        .clk(clk),
        .cnt_a__0(\g_enc[0].u_enc/cnt_a__0 ),
        .cnt_a__0_11(\g_enc[3].u_enc/cnt_a__0 ),
        .cnt_a__0_13(\g_enc[4].u_enc/cnt_a__0 ),
        .cnt_a__0_15(\g_enc[5].u_enc/cnt_a__0 ),
        .cnt_a__0_7(\g_enc[1].u_enc/cnt_a__0 ),
        .cnt_a__0_9(\g_enc[2].u_enc/cnt_a__0 ),
        .cnt_b__0(\g_enc[0].u_enc/cnt_b__0 ),
        .cnt_b__0_10(\g_enc[3].u_enc/cnt_b__0 ),
        .cnt_b__0_12(\g_enc[4].u_enc/cnt_b__0 ),
        .cnt_b__0_14(\g_enc[5].u_enc/cnt_b__0 ),
        .cnt_b__0_6(\g_enc[1].u_enc/cnt_b__0 ),
        .cnt_b__0_8(\g_enc[2].u_enc/cnt_b__0 ),
        .d_reg_valid_reg(d_reg_valid_i_1_n_0),
        .d_valid(\u_delay/d_valid ),
        .enc_a(enc_a),
        .enc_b(enc_b),
        .enc_tick(enc_tick),
        .frac_d_valid(\u_delay/u_dl/frac_d_valid ),
        .frac_start_reg(frac_start_i_1_n_0),
        .fx_enable(fx_enable),
        .\in_state_reg[0] (u_core_n_26),
        .\in_state_reg[0]_0 (\in_state[0]_i_1_n_0 ),
        .inflight_reg(inflight_reg),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .rd_en_reg(rd_en_i_1_n_0),
        .rd_en_reg_rep(rd_en_rep_i_1_n_0),
        .rst_n(rst_n),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tvalid(s_axis_tvalid),
        .state(\g_enc[0].u_enc/state ),
        .state_0(\g_enc[1].u_enc/state ),
        .state_1(\g_enc[2].u_enc/state ),
        .state_2(\g_enc[3].u_enc/state ),
        .state_3(\g_enc[4].u_enc/state ),
        .state_4(\g_enc[5].u_enc/state ),
        .state_5(\u_delay/u_dl/frac_u/state ),
        .\state_reg[0] (u_core_n_29),
        .\state_reg[0]_0 (u_core_n_30),
        .\state_reg[1] (u_core_n_31),
        .\term_r_reg[0] (\u_delay/term_r ),
        .\term_r_reg[0]_0 (\term_r[0]_i_1_n_0 ),
        .w_done_reg(u_core_n_22),
        .w_done_reg_0(w_done_i_1_n_0),
        .wptr_latched(\u_delay/u_dl/wptr_latched ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'h08C8)) 
    w_done_i_1
       (.I0(s_axi_wvalid),
        .I1(rst_n),
        .I2(u_core_n_22),
        .I3(\u_regmap/aw_done ),
        .O(w_done_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "quad_decoder" *) 
module design_1_fx_system_wrapper_0_1_quad_decoder
   (D,
    \enc_count[0]_0 ,
    Q,
    \a_sync_reg[1]_0 ,
    cnt_b__0,
    cnt_a__0,
    p_0_in,
    clean_b_reg_0,
    clk,
    clean_a_reg_0,
    \cnt_a_reg[0]_0 ,
    rst_n,
    enc_b,
    enc_a);
  output [1:0]D;
  output [15:0]\enc_count[0]_0 ;
  output [0:0]Q;
  output [0:0]\a_sync_reg[1]_0 ;
  output [2:0]cnt_b__0;
  output [2:0]cnt_a__0;
  input p_0_in;
  input clean_b_reg_0;
  input clk;
  input clean_a_reg_0;
  input \cnt_a_reg[0]_0 ;
  input rst_n;
  input [0:0]enc_b;
  input [0:0]enc_a;

  wire [1:0]D;
  wire [0:0]Q;
  wire [0:0]\a_sync_reg[1]_0 ;
  wire clean_a_reg_0;
  wire clean_b_reg_0;
  wire clk;
  wire \cnt_a[0]_i_1_n_0 ;
  wire \cnt_a[1]_i_1_n_0 ;
  wire \cnt_a[2]_i_1_n_0 ;
  wire \cnt_a[2]_i_2_n_0 ;
  wire [2:0]cnt_a__0;
  wire \cnt_a_reg[0]_0 ;
  wire \cnt_b[0]_i_1_n_0 ;
  wire \cnt_b[1]_i_1_n_0 ;
  wire \cnt_b[2]_i_1_n_0 ;
  wire \cnt_b[2]_i_2_n_0 ;
  wire [2:0]cnt_b__0;
  wire \count[0]_i_1_n_0 ;
  wire \count[0]_i_3_n_0 ;
  wire \count[0]_i_4_n_0 ;
  wire \count[0]_i_5_n_0 ;
  wire \count[0]_i_6__1_n_0 ;
  wire \count[0]_i_7_n_0 ;
  wire \count[0]_i_8_n_0 ;
  wire \count[0]_i_9_n_0 ;
  wire \count[12]_i_2_n_0 ;
  wire \count[12]_i_3_n_0 ;
  wire \count[12]_i_4_n_0 ;
  wire \count[12]_i_5_n_0 ;
  wire \count[12]_i_6_n_0 ;
  wire \count[12]_i_7_n_0 ;
  wire \count[12]_i_8_n_0 ;
  wire \count[4]_i_2_n_0 ;
  wire \count[4]_i_3_n_0 ;
  wire \count[4]_i_4_n_0 ;
  wire \count[4]_i_5_n_0 ;
  wire \count[4]_i_6_n_0 ;
  wire \count[4]_i_7_n_0 ;
  wire \count[4]_i_8_n_0 ;
  wire \count[4]_i_9_n_0 ;
  wire \count[8]_i_2_n_0 ;
  wire \count[8]_i_3_n_0 ;
  wire \count[8]_i_4_n_0 ;
  wire \count[8]_i_5_n_0 ;
  wire \count[8]_i_6_n_0 ;
  wire \count[8]_i_7_n_0 ;
  wire \count[8]_i_8_n_0 ;
  wire \count[8]_i_9_n_0 ;
  wire \count_reg[0]_i_2_n_0 ;
  wire \count_reg[0]_i_2_n_1 ;
  wire \count_reg[0]_i_2_n_2 ;
  wire \count_reg[0]_i_2_n_3 ;
  wire \count_reg[0]_i_2_n_4 ;
  wire \count_reg[0]_i_2_n_5 ;
  wire \count_reg[0]_i_2_n_6 ;
  wire \count_reg[0]_i_2_n_7 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire [0:0]enc_a;
  wire [0:0]enc_b;
  wire [15:0]\enc_count[0]_0 ;
  wire p_0_in;
  wire [1:1]p_0_in_0;
  wire [1:1]p_0_in__0;
  wire rst_n;
  wire [1:0]state_d;
  wire [3:3]\NLW_count_reg[12]_i_1_CO_UNCONNECTED ;

  FDRE \a_sync_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(enc_a),
        .Q(p_0_in__0),
        .R(1'b0));
  FDRE \a_sync_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0),
        .Q(\a_sync_reg[1]_0 ),
        .R(1'b0));
  FDRE \b_sync_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(enc_b),
        .Q(p_0_in_0),
        .R(1'b0));
  FDRE \b_sync_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in_0),
        .Q(Q),
        .R(1'b0));
  FDSE clean_a_reg
       (.C(clk),
        .CE(1'b1),
        .D(clean_a_reg_0),
        .Q(D[1]),
        .S(p_0_in));
  FDSE clean_b_reg
       (.C(clk),
        .CE(1'b1),
        .D(clean_b_reg_0),
        .Q(D[0]),
        .S(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h08484808)) 
    \cnt_a[0]_i_1 
       (.I0(cnt_a__0[0]),
        .I1(rst_n),
        .I2(\cnt_a_reg[0]_0 ),
        .I3(D[1]),
        .I4(\a_sync_reg[1]_0 ),
        .O(\cnt_a[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A060A060A000A0)) 
    \cnt_a[1]_i_1 
       (.I0(cnt_a__0[1]),
        .I1(cnt_a__0[0]),
        .I2(rst_n),
        .I3(\cnt_a_reg[0]_0 ),
        .I4(D[1]),
        .I5(\a_sync_reg[1]_0 ),
        .O(\cnt_a[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \cnt_a[2]_i_1 
       (.I0(cnt_a__0[2]),
        .I1(\cnt_a_reg[0]_0 ),
        .I2(cnt_a__0[0]),
        .I3(cnt_a__0[1]),
        .I4(\cnt_a[2]_i_2_n_0 ),
        .O(\cnt_a[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h90FF)) 
    \cnt_a[2]_i_2 
       (.I0(\a_sync_reg[1]_0 ),
        .I1(D[1]),
        .I2(\cnt_a_reg[0]_0 ),
        .I3(rst_n),
        .O(\cnt_a[2]_i_2_n_0 ));
  FDRE \cnt_a_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_a[0]_i_1_n_0 ),
        .Q(cnt_a__0[0]),
        .R(1'b0));
  FDRE \cnt_a_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_a[1]_i_1_n_0 ),
        .Q(cnt_a__0[1]),
        .R(1'b0));
  FDRE \cnt_a_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_a[2]_i_1_n_0 ),
        .Q(cnt_a__0[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h08484808)) 
    \cnt_b[0]_i_1 
       (.I0(cnt_b__0[0]),
        .I1(rst_n),
        .I2(\cnt_a_reg[0]_0 ),
        .I3(D[0]),
        .I4(Q),
        .O(\cnt_b[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A060A060A000A0)) 
    \cnt_b[1]_i_1 
       (.I0(cnt_b__0[1]),
        .I1(cnt_b__0[0]),
        .I2(rst_n),
        .I3(\cnt_a_reg[0]_0 ),
        .I4(D[0]),
        .I5(Q),
        .O(\cnt_b[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \cnt_b[2]_i_1 
       (.I0(cnt_b__0[2]),
        .I1(\cnt_a_reg[0]_0 ),
        .I2(cnt_b__0[0]),
        .I3(cnt_b__0[1]),
        .I4(\cnt_b[2]_i_2_n_0 ),
        .O(\cnt_b[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h90FF)) 
    \cnt_b[2]_i_2 
       (.I0(Q),
        .I1(D[0]),
        .I2(\cnt_a_reg[0]_0 ),
        .I3(rst_n),
        .O(\cnt_b[2]_i_2_n_0 ));
  FDRE \cnt_b_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_b[0]_i_1_n_0 ),
        .Q(cnt_b__0[0]),
        .R(1'b0));
  FDRE \cnt_b_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_b[1]_i_1_n_0 ),
        .Q(cnt_b__0[1]),
        .R(1'b0));
  FDRE \cnt_b_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_b[2]_i_1_n_0 ),
        .Q(cnt_b__0[2]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6000)) 
    \count[0]_i_1 
       (.I0(state_d[0]),
        .I1(state_d[1]),
        .I2(D[1]),
        .I3(D[0]),
        .O(\count[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[0]_i_3 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[0]_i_4 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[0]_i_5 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[0]_i_6__1 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[0]_0 [3]),
        .O(\count[0]_i_6__1_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[0]_i_7 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[0]_0 [2]),
        .O(\count[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[0]_i_8 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[0]_0 [1]),
        .O(\count[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_9 
       (.I0(\enc_count[0]_0 [0]),
        .O(\count[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[12]_i_2 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[12]_i_3 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[12]_i_4 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h65)) 
    \count[12]_i_5 
       (.I0(\enc_count[0]_0 [15]),
        .I1(state_d[1]),
        .I2(state_d[0]),
        .O(\count[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[12]_i_6 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[0]_0 [14]),
        .O(\count[12]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[12]_i_7 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[0]_0 [13]),
        .O(\count[12]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[12]_i_8 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[0]_0 [12]),
        .O(\count[12]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[4]_i_2 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[4]_i_3 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[4]_i_4 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[4]_i_5 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[4]_i_6 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[0]_0 [7]),
        .O(\count[4]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[4]_i_7 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[0]_0 [6]),
        .O(\count[4]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[4]_i_8 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[0]_0 [5]),
        .O(\count[4]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[4]_i_9 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[0]_0 [4]),
        .O(\count[4]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[8]_i_2 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[8]_i_3 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[8]_i_4 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[8]_i_5 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[8]_i_6 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[0]_0 [11]),
        .O(\count[8]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[8]_i_7 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[0]_0 [10]),
        .O(\count[8]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[8]_i_8 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[0]_0 [9]),
        .O(\count[8]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[8]_i_9 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[0]_0 [8]),
        .O(\count[8]_i_9_n_0 ));
  FDRE \count_reg[0] 
       (.C(clk),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[0]_i_2_n_7 ),
        .Q(\enc_count[0]_0 [0]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2_n_0 ,\count_reg[0]_i_2_n_1 ,\count_reg[0]_i_2_n_2 ,\count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\count[0]_i_3_n_0 ,\count[0]_i_4_n_0 ,\count[0]_i_5_n_0 ,1'b1}),
        .O({\count_reg[0]_i_2_n_4 ,\count_reg[0]_i_2_n_5 ,\count_reg[0]_i_2_n_6 ,\count_reg[0]_i_2_n_7 }),
        .S({\count[0]_i_6__1_n_0 ,\count[0]_i_7_n_0 ,\count[0]_i_8_n_0 ,\count[0]_i_9_n_0 }));
  FDRE \count_reg[10] 
       (.C(clk),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(\enc_count[0]_0 [10]),
        .R(p_0_in));
  FDRE \count_reg[11] 
       (.C(clk),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(\enc_count[0]_0 [11]),
        .R(p_0_in));
  FDRE \count_reg[12] 
       (.C(clk),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(\enc_count[0]_0 [12]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\NLW_count_reg[12]_i_1_CO_UNCONNECTED [3],\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\count[12]_i_2_n_0 ,\count[12]_i_3_n_0 ,\count[12]_i_4_n_0 }),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S({\count[12]_i_5_n_0 ,\count[12]_i_6_n_0 ,\count[12]_i_7_n_0 ,\count[12]_i_8_n_0 }));
  FDRE \count_reg[13] 
       (.C(clk),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(\enc_count[0]_0 [13]),
        .R(p_0_in));
  FDRE \count_reg[14] 
       (.C(clk),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(\enc_count[0]_0 [14]),
        .R(p_0_in));
  FDRE \count_reg[15] 
       (.C(clk),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(\enc_count[0]_0 [15]),
        .R(p_0_in));
  FDRE \count_reg[1] 
       (.C(clk),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[0]_i_2_n_6 ),
        .Q(\enc_count[0]_0 [1]),
        .R(p_0_in));
  FDRE \count_reg[2] 
       (.C(clk),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[0]_i_2_n_5 ),
        .Q(\enc_count[0]_0 [2]),
        .R(p_0_in));
  FDRE \count_reg[3] 
       (.C(clk),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[0]_i_2_n_4 ),
        .Q(\enc_count[0]_0 [3]),
        .R(p_0_in));
  FDRE \count_reg[4] 
       (.C(clk),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(\enc_count[0]_0 [4]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_2_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\count[4]_i_2_n_0 ,\count[4]_i_3_n_0 ,\count[4]_i_4_n_0 ,\count[4]_i_5_n_0 }),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({\count[4]_i_6_n_0 ,\count[4]_i_7_n_0 ,\count[4]_i_8_n_0 ,\count[4]_i_9_n_0 }));
  FDRE \count_reg[5] 
       (.C(clk),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(\enc_count[0]_0 [5]),
        .R(p_0_in));
  FDRE \count_reg[6] 
       (.C(clk),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(\enc_count[0]_0 [6]),
        .R(p_0_in));
  FDRE \count_reg[7] 
       (.C(clk),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(\enc_count[0]_0 [7]),
        .R(p_0_in));
  FDRE \count_reg[8] 
       (.C(clk),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(\enc_count[0]_0 [8]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\count[8]_i_2_n_0 ,\count[8]_i_3_n_0 ,\count[8]_i_4_n_0 ,\count[8]_i_5_n_0 }),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S({\count[8]_i_6_n_0 ,\count[8]_i_7_n_0 ,\count[8]_i_8_n_0 ,\count[8]_i_9_n_0 }));
  FDRE \count_reg[9] 
       (.C(clk),
        .CE(\count[0]_i_1_n_0 ),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(\enc_count[0]_0 [9]),
        .R(p_0_in));
  FDSE \state_d_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(state_d[0]),
        .S(p_0_in));
  FDSE \state_d_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(state_d[1]),
        .S(p_0_in));
endmodule

(* ORIG_REF_NAME = "quad_decoder" *) 
module design_1_fx_system_wrapper_0_1_quad_decoder_0
   (D,
    \enc_count[1]_1 ,
    Q,
    \a_sync_reg[1]_0 ,
    cnt_b__0_6,
    cnt_a__0_7,
    p_0_in,
    clean_b_reg_0,
    clk,
    clean_a_reg_0,
    \cnt_a_reg[0]_0 ,
    rst_n,
    enc_b,
    enc_a);
  output [1:0]D;
  output [15:0]\enc_count[1]_1 ;
  output [0:0]Q;
  output [0:0]\a_sync_reg[1]_0 ;
  output [2:0]cnt_b__0_6;
  output [2:0]cnt_a__0_7;
  input p_0_in;
  input clean_b_reg_0;
  input clk;
  input clean_a_reg_0;
  input \cnt_a_reg[0]_0 ;
  input rst_n;
  input [0:0]enc_b;
  input [0:0]enc_a;

  wire [1:0]D;
  wire [0:0]Q;
  wire [0:0]\a_sync_reg[1]_0 ;
  wire clean_a_reg_0;
  wire clean_b_reg_0;
  wire clk;
  wire \cnt_a[0]_i_1__0_n_0 ;
  wire \cnt_a[1]_i_1__0_n_0 ;
  wire \cnt_a[2]_i_1__0_n_0 ;
  wire \cnt_a[2]_i_2__0_n_0 ;
  wire [2:0]cnt_a__0_7;
  wire \cnt_a_reg[0]_0 ;
  wire \cnt_b[0]_i_1__0_n_0 ;
  wire \cnt_b[1]_i_1__0_n_0 ;
  wire \cnt_b[2]_i_1__0_n_0 ;
  wire \cnt_b[2]_i_2__0_n_0 ;
  wire [2:0]cnt_b__0_6;
  wire \count[0]_i_1__0_n_0 ;
  wire \count[0]_i_3__0_n_0 ;
  wire \count[0]_i_4__0_n_0 ;
  wire \count[0]_i_5__0_n_0 ;
  wire \count[0]_i_6__2_n_0 ;
  wire \count[0]_i_7__0_n_0 ;
  wire \count[0]_i_8__0_n_0 ;
  wire \count[0]_i_9__0_n_0 ;
  wire \count[12]_i_2__0_n_0 ;
  wire \count[12]_i_3__0_n_0 ;
  wire \count[12]_i_4__0_n_0 ;
  wire \count[12]_i_5__0_n_0 ;
  wire \count[12]_i_6__0_n_0 ;
  wire \count[12]_i_7__0_n_0 ;
  wire \count[12]_i_8__0_n_0 ;
  wire \count[4]_i_2__0_n_0 ;
  wire \count[4]_i_3__0_n_0 ;
  wire \count[4]_i_4__0_n_0 ;
  wire \count[4]_i_5__0_n_0 ;
  wire \count[4]_i_6__0_n_0 ;
  wire \count[4]_i_7__0_n_0 ;
  wire \count[4]_i_8__0_n_0 ;
  wire \count[4]_i_9__0_n_0 ;
  wire \count[8]_i_2__0_n_0 ;
  wire \count[8]_i_3__0_n_0 ;
  wire \count[8]_i_4__0_n_0 ;
  wire \count[8]_i_5__0_n_0 ;
  wire \count[8]_i_6__0_n_0 ;
  wire \count[8]_i_7__0_n_0 ;
  wire \count[8]_i_8__0_n_0 ;
  wire \count[8]_i_9__0_n_0 ;
  wire \count_reg[0]_i_2__0_n_0 ;
  wire \count_reg[0]_i_2__0_n_1 ;
  wire \count_reg[0]_i_2__0_n_2 ;
  wire \count_reg[0]_i_2__0_n_3 ;
  wire \count_reg[0]_i_2__0_n_4 ;
  wire \count_reg[0]_i_2__0_n_5 ;
  wire \count_reg[0]_i_2__0_n_6 ;
  wire \count_reg[0]_i_2__0_n_7 ;
  wire \count_reg[12]_i_1__0_n_1 ;
  wire \count_reg[12]_i_1__0_n_2 ;
  wire \count_reg[12]_i_1__0_n_3 ;
  wire \count_reg[12]_i_1__0_n_4 ;
  wire \count_reg[12]_i_1__0_n_5 ;
  wire \count_reg[12]_i_1__0_n_6 ;
  wire \count_reg[12]_i_1__0_n_7 ;
  wire \count_reg[4]_i_1__0_n_0 ;
  wire \count_reg[4]_i_1__0_n_1 ;
  wire \count_reg[4]_i_1__0_n_2 ;
  wire \count_reg[4]_i_1__0_n_3 ;
  wire \count_reg[4]_i_1__0_n_4 ;
  wire \count_reg[4]_i_1__0_n_5 ;
  wire \count_reg[4]_i_1__0_n_6 ;
  wire \count_reg[4]_i_1__0_n_7 ;
  wire \count_reg[8]_i_1__0_n_0 ;
  wire \count_reg[8]_i_1__0_n_1 ;
  wire \count_reg[8]_i_1__0_n_2 ;
  wire \count_reg[8]_i_1__0_n_3 ;
  wire \count_reg[8]_i_1__0_n_4 ;
  wire \count_reg[8]_i_1__0_n_5 ;
  wire \count_reg[8]_i_1__0_n_6 ;
  wire \count_reg[8]_i_1__0_n_7 ;
  wire [0:0]enc_a;
  wire [0:0]enc_b;
  wire [15:0]\enc_count[1]_1 ;
  wire p_0_in;
  wire [1:1]p_0_in_0;
  wire [1:1]p_0_in__0;
  wire rst_n;
  wire [1:0]state_d;
  wire [3:3]\NLW_count_reg[12]_i_1__0_CO_UNCONNECTED ;

  FDRE \a_sync_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(enc_a),
        .Q(p_0_in__0),
        .R(1'b0));
  FDRE \a_sync_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0),
        .Q(\a_sync_reg[1]_0 ),
        .R(1'b0));
  FDRE \b_sync_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(enc_b),
        .Q(p_0_in_0),
        .R(1'b0));
  FDRE \b_sync_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in_0),
        .Q(Q),
        .R(1'b0));
  FDSE clean_a_reg
       (.C(clk),
        .CE(1'b1),
        .D(clean_a_reg_0),
        .Q(D[1]),
        .S(p_0_in));
  FDSE clean_b_reg
       (.C(clk),
        .CE(1'b1),
        .D(clean_b_reg_0),
        .Q(D[0]),
        .S(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h08484808)) 
    \cnt_a[0]_i_1__0 
       (.I0(cnt_a__0_7[0]),
        .I1(rst_n),
        .I2(\cnt_a_reg[0]_0 ),
        .I3(D[1]),
        .I4(\a_sync_reg[1]_0 ),
        .O(\cnt_a[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00A060A060A000A0)) 
    \cnt_a[1]_i_1__0 
       (.I0(cnt_a__0_7[1]),
        .I1(cnt_a__0_7[0]),
        .I2(rst_n),
        .I3(\cnt_a_reg[0]_0 ),
        .I4(D[1]),
        .I5(\a_sync_reg[1]_0 ),
        .O(\cnt_a[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \cnt_a[2]_i_1__0 
       (.I0(cnt_a__0_7[2]),
        .I1(\cnt_a_reg[0]_0 ),
        .I2(cnt_a__0_7[0]),
        .I3(cnt_a__0_7[1]),
        .I4(\cnt_a[2]_i_2__0_n_0 ),
        .O(\cnt_a[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h90FF)) 
    \cnt_a[2]_i_2__0 
       (.I0(\a_sync_reg[1]_0 ),
        .I1(D[1]),
        .I2(\cnt_a_reg[0]_0 ),
        .I3(rst_n),
        .O(\cnt_a[2]_i_2__0_n_0 ));
  FDRE \cnt_a_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_a[0]_i_1__0_n_0 ),
        .Q(cnt_a__0_7[0]),
        .R(1'b0));
  FDRE \cnt_a_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_a[1]_i_1__0_n_0 ),
        .Q(cnt_a__0_7[1]),
        .R(1'b0));
  FDRE \cnt_a_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_a[2]_i_1__0_n_0 ),
        .Q(cnt_a__0_7[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h08484808)) 
    \cnt_b[0]_i_1__0 
       (.I0(cnt_b__0_6[0]),
        .I1(rst_n),
        .I2(\cnt_a_reg[0]_0 ),
        .I3(D[0]),
        .I4(Q),
        .O(\cnt_b[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00A060A060A000A0)) 
    \cnt_b[1]_i_1__0 
       (.I0(cnt_b__0_6[1]),
        .I1(cnt_b__0_6[0]),
        .I2(rst_n),
        .I3(\cnt_a_reg[0]_0 ),
        .I4(D[0]),
        .I5(Q),
        .O(\cnt_b[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \cnt_b[2]_i_1__0 
       (.I0(cnt_b__0_6[2]),
        .I1(\cnt_a_reg[0]_0 ),
        .I2(cnt_b__0_6[0]),
        .I3(cnt_b__0_6[1]),
        .I4(\cnt_b[2]_i_2__0_n_0 ),
        .O(\cnt_b[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h90FF)) 
    \cnt_b[2]_i_2__0 
       (.I0(Q),
        .I1(D[0]),
        .I2(\cnt_a_reg[0]_0 ),
        .I3(rst_n),
        .O(\cnt_b[2]_i_2__0_n_0 ));
  FDRE \cnt_b_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_b[0]_i_1__0_n_0 ),
        .Q(cnt_b__0_6[0]),
        .R(1'b0));
  FDRE \cnt_b_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_b[1]_i_1__0_n_0 ),
        .Q(cnt_b__0_6[1]),
        .R(1'b0));
  FDRE \cnt_b_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_b[2]_i_1__0_n_0 ),
        .Q(cnt_b__0_6[2]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6000)) 
    \count[0]_i_1__0 
       (.I0(state_d[0]),
        .I1(state_d[1]),
        .I2(D[1]),
        .I3(D[0]),
        .O(\count[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[0]_i_3__0 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[0]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[0]_i_4__0 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[0]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[0]_i_5__0 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[0]_i_5__0_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[0]_i_6__2 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[1]_1 [3]),
        .O(\count[0]_i_6__2_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[0]_i_7__0 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[1]_1 [2]),
        .O(\count[0]_i_7__0_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[0]_i_8__0 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[1]_1 [1]),
        .O(\count[0]_i_8__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_9__0 
       (.I0(\enc_count[1]_1 [0]),
        .O(\count[0]_i_9__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[12]_i_2__0 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[12]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[12]_i_3__0 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[12]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[12]_i_4__0 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[12]_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'h65)) 
    \count[12]_i_5__0 
       (.I0(\enc_count[1]_1 [15]),
        .I1(state_d[1]),
        .I2(state_d[0]),
        .O(\count[12]_i_5__0_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[12]_i_6__0 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[1]_1 [14]),
        .O(\count[12]_i_6__0_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[12]_i_7__0 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[1]_1 [13]),
        .O(\count[12]_i_7__0_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[12]_i_8__0 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[1]_1 [12]),
        .O(\count[12]_i_8__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[4]_i_2__0 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[4]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[4]_i_3__0 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[4]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[4]_i_4__0 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[4]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[4]_i_5__0 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[4]_i_5__0_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[4]_i_6__0 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[1]_1 [7]),
        .O(\count[4]_i_6__0_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[4]_i_7__0 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[1]_1 [6]),
        .O(\count[4]_i_7__0_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[4]_i_8__0 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[1]_1 [5]),
        .O(\count[4]_i_8__0_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[4]_i_9__0 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[1]_1 [4]),
        .O(\count[4]_i_9__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[8]_i_2__0 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[8]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[8]_i_3__0 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[8]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[8]_i_4__0 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[8]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[8]_i_5__0 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[8]_i_5__0_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[8]_i_6__0 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[1]_1 [11]),
        .O(\count[8]_i_6__0_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[8]_i_7__0 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[1]_1 [10]),
        .O(\count[8]_i_7__0_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[8]_i_8__0 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[1]_1 [9]),
        .O(\count[8]_i_8__0_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[8]_i_9__0 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[1]_1 [8]),
        .O(\count[8]_i_9__0_n_0 ));
  FDRE \count_reg[0] 
       (.C(clk),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[0]_i_2__0_n_7 ),
        .Q(\enc_count[1]_1 [0]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2__0_n_0 ,\count_reg[0]_i_2__0_n_1 ,\count_reg[0]_i_2__0_n_2 ,\count_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\count[0]_i_3__0_n_0 ,\count[0]_i_4__0_n_0 ,\count[0]_i_5__0_n_0 ,1'b1}),
        .O({\count_reg[0]_i_2__0_n_4 ,\count_reg[0]_i_2__0_n_5 ,\count_reg[0]_i_2__0_n_6 ,\count_reg[0]_i_2__0_n_7 }),
        .S({\count[0]_i_6__2_n_0 ,\count[0]_i_7__0_n_0 ,\count[0]_i_8__0_n_0 ,\count[0]_i_9__0_n_0 }));
  FDRE \count_reg[10] 
       (.C(clk),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[8]_i_1__0_n_5 ),
        .Q(\enc_count[1]_1 [10]),
        .R(p_0_in));
  FDRE \count_reg[11] 
       (.C(clk),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[8]_i_1__0_n_4 ),
        .Q(\enc_count[1]_1 [11]),
        .R(p_0_in));
  FDRE \count_reg[12] 
       (.C(clk),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[12]_i_1__0_n_7 ),
        .Q(\enc_count[1]_1 [12]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1__0 
       (.CI(\count_reg[8]_i_1__0_n_0 ),
        .CO({\NLW_count_reg[12]_i_1__0_CO_UNCONNECTED [3],\count_reg[12]_i_1__0_n_1 ,\count_reg[12]_i_1__0_n_2 ,\count_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\count[12]_i_2__0_n_0 ,\count[12]_i_3__0_n_0 ,\count[12]_i_4__0_n_0 }),
        .O({\count_reg[12]_i_1__0_n_4 ,\count_reg[12]_i_1__0_n_5 ,\count_reg[12]_i_1__0_n_6 ,\count_reg[12]_i_1__0_n_7 }),
        .S({\count[12]_i_5__0_n_0 ,\count[12]_i_6__0_n_0 ,\count[12]_i_7__0_n_0 ,\count[12]_i_8__0_n_0 }));
  FDRE \count_reg[13] 
       (.C(clk),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[12]_i_1__0_n_6 ),
        .Q(\enc_count[1]_1 [13]),
        .R(p_0_in));
  FDRE \count_reg[14] 
       (.C(clk),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[12]_i_1__0_n_5 ),
        .Q(\enc_count[1]_1 [14]),
        .R(p_0_in));
  FDRE \count_reg[15] 
       (.C(clk),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[12]_i_1__0_n_4 ),
        .Q(\enc_count[1]_1 [15]),
        .R(p_0_in));
  FDRE \count_reg[1] 
       (.C(clk),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[0]_i_2__0_n_6 ),
        .Q(\enc_count[1]_1 [1]),
        .R(p_0_in));
  FDRE \count_reg[2] 
       (.C(clk),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[0]_i_2__0_n_5 ),
        .Q(\enc_count[1]_1 [2]),
        .R(p_0_in));
  FDRE \count_reg[3] 
       (.C(clk),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[0]_i_2__0_n_4 ),
        .Q(\enc_count[1]_1 [3]),
        .R(p_0_in));
  FDRE \count_reg[4] 
       (.C(clk),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[4]_i_1__0_n_7 ),
        .Q(\enc_count[1]_1 [4]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1__0 
       (.CI(\count_reg[0]_i_2__0_n_0 ),
        .CO({\count_reg[4]_i_1__0_n_0 ,\count_reg[4]_i_1__0_n_1 ,\count_reg[4]_i_1__0_n_2 ,\count_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\count[4]_i_2__0_n_0 ,\count[4]_i_3__0_n_0 ,\count[4]_i_4__0_n_0 ,\count[4]_i_5__0_n_0 }),
        .O({\count_reg[4]_i_1__0_n_4 ,\count_reg[4]_i_1__0_n_5 ,\count_reg[4]_i_1__0_n_6 ,\count_reg[4]_i_1__0_n_7 }),
        .S({\count[4]_i_6__0_n_0 ,\count[4]_i_7__0_n_0 ,\count[4]_i_8__0_n_0 ,\count[4]_i_9__0_n_0 }));
  FDRE \count_reg[5] 
       (.C(clk),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[4]_i_1__0_n_6 ),
        .Q(\enc_count[1]_1 [5]),
        .R(p_0_in));
  FDRE \count_reg[6] 
       (.C(clk),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[4]_i_1__0_n_5 ),
        .Q(\enc_count[1]_1 [6]),
        .R(p_0_in));
  FDRE \count_reg[7] 
       (.C(clk),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[4]_i_1__0_n_4 ),
        .Q(\enc_count[1]_1 [7]),
        .R(p_0_in));
  FDRE \count_reg[8] 
       (.C(clk),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[8]_i_1__0_n_7 ),
        .Q(\enc_count[1]_1 [8]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1__0 
       (.CI(\count_reg[4]_i_1__0_n_0 ),
        .CO({\count_reg[8]_i_1__0_n_0 ,\count_reg[8]_i_1__0_n_1 ,\count_reg[8]_i_1__0_n_2 ,\count_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\count[8]_i_2__0_n_0 ,\count[8]_i_3__0_n_0 ,\count[8]_i_4__0_n_0 ,\count[8]_i_5__0_n_0 }),
        .O({\count_reg[8]_i_1__0_n_4 ,\count_reg[8]_i_1__0_n_5 ,\count_reg[8]_i_1__0_n_6 ,\count_reg[8]_i_1__0_n_7 }),
        .S({\count[8]_i_6__0_n_0 ,\count[8]_i_7__0_n_0 ,\count[8]_i_8__0_n_0 ,\count[8]_i_9__0_n_0 }));
  FDRE \count_reg[9] 
       (.C(clk),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[8]_i_1__0_n_6 ),
        .Q(\enc_count[1]_1 [9]),
        .R(p_0_in));
  FDSE \state_d_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(state_d[0]),
        .S(p_0_in));
  FDSE \state_d_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(state_d[1]),
        .S(p_0_in));
endmodule

(* ORIG_REF_NAME = "quad_decoder" *) 
module design_1_fx_system_wrapper_0_1_quad_decoder_1
   (D,
    \enc_count[2]_2 ,
    Q,
    \a_sync_reg[1]_0 ,
    cnt_b__0_8,
    cnt_a__0_9,
    p_0_in,
    clean_b_reg_0,
    clk,
    clean_a_reg_0,
    \cnt_a_reg[0]_0 ,
    rst_n,
    enc_b,
    enc_a);
  output [1:0]D;
  output [15:0]\enc_count[2]_2 ;
  output [0:0]Q;
  output [0:0]\a_sync_reg[1]_0 ;
  output [2:0]cnt_b__0_8;
  output [2:0]cnt_a__0_9;
  input p_0_in;
  input clean_b_reg_0;
  input clk;
  input clean_a_reg_0;
  input \cnt_a_reg[0]_0 ;
  input rst_n;
  input [0:0]enc_b;
  input [0:0]enc_a;

  wire [1:0]D;
  wire [0:0]Q;
  wire [0:0]\a_sync_reg[1]_0 ;
  wire clean_a_reg_0;
  wire clean_b_reg_0;
  wire clk;
  wire \cnt_a[0]_i_1__1_n_0 ;
  wire \cnt_a[1]_i_1__1_n_0 ;
  wire \cnt_a[2]_i_1__1_n_0 ;
  wire \cnt_a[2]_i_2__1_n_0 ;
  wire [2:0]cnt_a__0_9;
  wire \cnt_a_reg[0]_0 ;
  wire \cnt_b[0]_i_1__1_n_0 ;
  wire \cnt_b[1]_i_1__1_n_0 ;
  wire \cnt_b[2]_i_1__1_n_0 ;
  wire \cnt_b[2]_i_2__1_n_0 ;
  wire [2:0]cnt_b__0_8;
  wire \count[0]_i_1__1_n_0 ;
  wire \count[0]_i_3__1_n_0 ;
  wire \count[0]_i_4__1_n_0 ;
  wire \count[0]_i_5__1_n_0 ;
  wire \count[0]_i_6__3_n_0 ;
  wire \count[0]_i_7__1_n_0 ;
  wire \count[0]_i_8__1_n_0 ;
  wire \count[0]_i_9__1_n_0 ;
  wire \count[12]_i_2__1_n_0 ;
  wire \count[12]_i_3__1_n_0 ;
  wire \count[12]_i_4__1_n_0 ;
  wire \count[12]_i_5__1_n_0 ;
  wire \count[12]_i_6__1_n_0 ;
  wire \count[12]_i_7__1_n_0 ;
  wire \count[12]_i_8__1_n_0 ;
  wire \count[4]_i_2__1_n_0 ;
  wire \count[4]_i_3__1_n_0 ;
  wire \count[4]_i_4__1_n_0 ;
  wire \count[4]_i_5__1_n_0 ;
  wire \count[4]_i_6__1_n_0 ;
  wire \count[4]_i_7__1_n_0 ;
  wire \count[4]_i_8__1_n_0 ;
  wire \count[4]_i_9__1_n_0 ;
  wire \count[8]_i_2__1_n_0 ;
  wire \count[8]_i_3__1_n_0 ;
  wire \count[8]_i_4__1_n_0 ;
  wire \count[8]_i_5__1_n_0 ;
  wire \count[8]_i_6__1_n_0 ;
  wire \count[8]_i_7__1_n_0 ;
  wire \count[8]_i_8__1_n_0 ;
  wire \count[8]_i_9__1_n_0 ;
  wire \count_reg[0]_i_2__1_n_0 ;
  wire \count_reg[0]_i_2__1_n_1 ;
  wire \count_reg[0]_i_2__1_n_2 ;
  wire \count_reg[0]_i_2__1_n_3 ;
  wire \count_reg[0]_i_2__1_n_4 ;
  wire \count_reg[0]_i_2__1_n_5 ;
  wire \count_reg[0]_i_2__1_n_6 ;
  wire \count_reg[0]_i_2__1_n_7 ;
  wire \count_reg[12]_i_1__1_n_1 ;
  wire \count_reg[12]_i_1__1_n_2 ;
  wire \count_reg[12]_i_1__1_n_3 ;
  wire \count_reg[12]_i_1__1_n_4 ;
  wire \count_reg[12]_i_1__1_n_5 ;
  wire \count_reg[12]_i_1__1_n_6 ;
  wire \count_reg[12]_i_1__1_n_7 ;
  wire \count_reg[4]_i_1__1_n_0 ;
  wire \count_reg[4]_i_1__1_n_1 ;
  wire \count_reg[4]_i_1__1_n_2 ;
  wire \count_reg[4]_i_1__1_n_3 ;
  wire \count_reg[4]_i_1__1_n_4 ;
  wire \count_reg[4]_i_1__1_n_5 ;
  wire \count_reg[4]_i_1__1_n_6 ;
  wire \count_reg[4]_i_1__1_n_7 ;
  wire \count_reg[8]_i_1__1_n_0 ;
  wire \count_reg[8]_i_1__1_n_1 ;
  wire \count_reg[8]_i_1__1_n_2 ;
  wire \count_reg[8]_i_1__1_n_3 ;
  wire \count_reg[8]_i_1__1_n_4 ;
  wire \count_reg[8]_i_1__1_n_5 ;
  wire \count_reg[8]_i_1__1_n_6 ;
  wire \count_reg[8]_i_1__1_n_7 ;
  wire [0:0]enc_a;
  wire [0:0]enc_b;
  wire [15:0]\enc_count[2]_2 ;
  wire p_0_in;
  wire [1:1]p_0_in_0;
  wire [1:1]p_0_in__0;
  wire rst_n;
  wire [1:0]state_d;
  wire [3:3]\NLW_count_reg[12]_i_1__1_CO_UNCONNECTED ;

  FDRE \a_sync_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(enc_a),
        .Q(p_0_in__0),
        .R(1'b0));
  FDRE \a_sync_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0),
        .Q(\a_sync_reg[1]_0 ),
        .R(1'b0));
  FDRE \b_sync_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(enc_b),
        .Q(p_0_in_0),
        .R(1'b0));
  FDRE \b_sync_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in_0),
        .Q(Q),
        .R(1'b0));
  FDSE clean_a_reg
       (.C(clk),
        .CE(1'b1),
        .D(clean_a_reg_0),
        .Q(D[1]),
        .S(p_0_in));
  FDSE clean_b_reg
       (.C(clk),
        .CE(1'b1),
        .D(clean_b_reg_0),
        .Q(D[0]),
        .S(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h08484808)) 
    \cnt_a[0]_i_1__1 
       (.I0(cnt_a__0_9[0]),
        .I1(rst_n),
        .I2(\cnt_a_reg[0]_0 ),
        .I3(D[1]),
        .I4(\a_sync_reg[1]_0 ),
        .O(\cnt_a[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h00A060A060A000A0)) 
    \cnt_a[1]_i_1__1 
       (.I0(cnt_a__0_9[1]),
        .I1(cnt_a__0_9[0]),
        .I2(rst_n),
        .I3(\cnt_a_reg[0]_0 ),
        .I4(D[1]),
        .I5(\a_sync_reg[1]_0 ),
        .O(\cnt_a[1]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \cnt_a[2]_i_1__1 
       (.I0(cnt_a__0_9[2]),
        .I1(\cnt_a_reg[0]_0 ),
        .I2(cnt_a__0_9[0]),
        .I3(cnt_a__0_9[1]),
        .I4(\cnt_a[2]_i_2__1_n_0 ),
        .O(\cnt_a[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h90FF)) 
    \cnt_a[2]_i_2__1 
       (.I0(\a_sync_reg[1]_0 ),
        .I1(D[1]),
        .I2(\cnt_a_reg[0]_0 ),
        .I3(rst_n),
        .O(\cnt_a[2]_i_2__1_n_0 ));
  FDRE \cnt_a_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_a[0]_i_1__1_n_0 ),
        .Q(cnt_a__0_9[0]),
        .R(1'b0));
  FDRE \cnt_a_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_a[1]_i_1__1_n_0 ),
        .Q(cnt_a__0_9[1]),
        .R(1'b0));
  FDRE \cnt_a_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_a[2]_i_1__1_n_0 ),
        .Q(cnt_a__0_9[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h08484808)) 
    \cnt_b[0]_i_1__1 
       (.I0(cnt_b__0_8[0]),
        .I1(rst_n),
        .I2(\cnt_a_reg[0]_0 ),
        .I3(D[0]),
        .I4(Q),
        .O(\cnt_b[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h00A060A060A000A0)) 
    \cnt_b[1]_i_1__1 
       (.I0(cnt_b__0_8[1]),
        .I1(cnt_b__0_8[0]),
        .I2(rst_n),
        .I3(\cnt_a_reg[0]_0 ),
        .I4(D[0]),
        .I5(Q),
        .O(\cnt_b[1]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \cnt_b[2]_i_1__1 
       (.I0(cnt_b__0_8[2]),
        .I1(\cnt_a_reg[0]_0 ),
        .I2(cnt_b__0_8[0]),
        .I3(cnt_b__0_8[1]),
        .I4(\cnt_b[2]_i_2__1_n_0 ),
        .O(\cnt_b[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h90FF)) 
    \cnt_b[2]_i_2__1 
       (.I0(Q),
        .I1(D[0]),
        .I2(\cnt_a_reg[0]_0 ),
        .I3(rst_n),
        .O(\cnt_b[2]_i_2__1_n_0 ));
  FDRE \cnt_b_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_b[0]_i_1__1_n_0 ),
        .Q(cnt_b__0_8[0]),
        .R(1'b0));
  FDRE \cnt_b_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_b[1]_i_1__1_n_0 ),
        .Q(cnt_b__0_8[1]),
        .R(1'b0));
  FDRE \cnt_b_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_b[2]_i_1__1_n_0 ),
        .Q(cnt_b__0_8[2]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6000)) 
    \count[0]_i_1__1 
       (.I0(state_d[0]),
        .I1(state_d[1]),
        .I2(D[1]),
        .I3(D[0]),
        .O(\count[0]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[0]_i_3__1 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[0]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[0]_i_4__1 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[0]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[0]_i_5__1 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[0]_i_5__1_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[0]_i_6__3 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[2]_2 [3]),
        .O(\count[0]_i_6__3_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[0]_i_7__1 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[2]_2 [2]),
        .O(\count[0]_i_7__1_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[0]_i_8__1 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[2]_2 [1]),
        .O(\count[0]_i_8__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_9__1 
       (.I0(\enc_count[2]_2 [0]),
        .O(\count[0]_i_9__1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[12]_i_2__1 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[12]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[12]_i_3__1 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[12]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[12]_i_4__1 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[12]_i_4__1_n_0 ));
  LUT3 #(
    .INIT(8'h65)) 
    \count[12]_i_5__1 
       (.I0(\enc_count[2]_2 [15]),
        .I1(state_d[1]),
        .I2(state_d[0]),
        .O(\count[12]_i_5__1_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[12]_i_6__1 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[2]_2 [14]),
        .O(\count[12]_i_6__1_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[12]_i_7__1 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[2]_2 [13]),
        .O(\count[12]_i_7__1_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[12]_i_8__1 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[2]_2 [12]),
        .O(\count[12]_i_8__1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[4]_i_2__1 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[4]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[4]_i_3__1 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[4]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[4]_i_4__1 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[4]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[4]_i_5__1 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[4]_i_5__1_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[4]_i_6__1 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[2]_2 [7]),
        .O(\count[4]_i_6__1_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[4]_i_7__1 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[2]_2 [6]),
        .O(\count[4]_i_7__1_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[4]_i_8__1 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[2]_2 [5]),
        .O(\count[4]_i_8__1_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[4]_i_9__1 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[2]_2 [4]),
        .O(\count[4]_i_9__1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[8]_i_2__1 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[8]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[8]_i_3__1 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[8]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[8]_i_4__1 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[8]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[8]_i_5__1 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[8]_i_5__1_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[8]_i_6__1 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[2]_2 [11]),
        .O(\count[8]_i_6__1_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[8]_i_7__1 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[2]_2 [10]),
        .O(\count[8]_i_7__1_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[8]_i_8__1 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[2]_2 [9]),
        .O(\count[8]_i_8__1_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[8]_i_9__1 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[2]_2 [8]),
        .O(\count[8]_i_9__1_n_0 ));
  FDRE \count_reg[0] 
       (.C(clk),
        .CE(\count[0]_i_1__1_n_0 ),
        .D(\count_reg[0]_i_2__1_n_7 ),
        .Q(\enc_count[2]_2 [0]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_2__1 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2__1_n_0 ,\count_reg[0]_i_2__1_n_1 ,\count_reg[0]_i_2__1_n_2 ,\count_reg[0]_i_2__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\count[0]_i_3__1_n_0 ,\count[0]_i_4__1_n_0 ,\count[0]_i_5__1_n_0 ,1'b1}),
        .O({\count_reg[0]_i_2__1_n_4 ,\count_reg[0]_i_2__1_n_5 ,\count_reg[0]_i_2__1_n_6 ,\count_reg[0]_i_2__1_n_7 }),
        .S({\count[0]_i_6__3_n_0 ,\count[0]_i_7__1_n_0 ,\count[0]_i_8__1_n_0 ,\count[0]_i_9__1_n_0 }));
  FDRE \count_reg[10] 
       (.C(clk),
        .CE(\count[0]_i_1__1_n_0 ),
        .D(\count_reg[8]_i_1__1_n_5 ),
        .Q(\enc_count[2]_2 [10]),
        .R(p_0_in));
  FDRE \count_reg[11] 
       (.C(clk),
        .CE(\count[0]_i_1__1_n_0 ),
        .D(\count_reg[8]_i_1__1_n_4 ),
        .Q(\enc_count[2]_2 [11]),
        .R(p_0_in));
  FDRE \count_reg[12] 
       (.C(clk),
        .CE(\count[0]_i_1__1_n_0 ),
        .D(\count_reg[12]_i_1__1_n_7 ),
        .Q(\enc_count[2]_2 [12]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1__1 
       (.CI(\count_reg[8]_i_1__1_n_0 ),
        .CO({\NLW_count_reg[12]_i_1__1_CO_UNCONNECTED [3],\count_reg[12]_i_1__1_n_1 ,\count_reg[12]_i_1__1_n_2 ,\count_reg[12]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\count[12]_i_2__1_n_0 ,\count[12]_i_3__1_n_0 ,\count[12]_i_4__1_n_0 }),
        .O({\count_reg[12]_i_1__1_n_4 ,\count_reg[12]_i_1__1_n_5 ,\count_reg[12]_i_1__1_n_6 ,\count_reg[12]_i_1__1_n_7 }),
        .S({\count[12]_i_5__1_n_0 ,\count[12]_i_6__1_n_0 ,\count[12]_i_7__1_n_0 ,\count[12]_i_8__1_n_0 }));
  FDRE \count_reg[13] 
       (.C(clk),
        .CE(\count[0]_i_1__1_n_0 ),
        .D(\count_reg[12]_i_1__1_n_6 ),
        .Q(\enc_count[2]_2 [13]),
        .R(p_0_in));
  FDRE \count_reg[14] 
       (.C(clk),
        .CE(\count[0]_i_1__1_n_0 ),
        .D(\count_reg[12]_i_1__1_n_5 ),
        .Q(\enc_count[2]_2 [14]),
        .R(p_0_in));
  FDRE \count_reg[15] 
       (.C(clk),
        .CE(\count[0]_i_1__1_n_0 ),
        .D(\count_reg[12]_i_1__1_n_4 ),
        .Q(\enc_count[2]_2 [15]),
        .R(p_0_in));
  FDRE \count_reg[1] 
       (.C(clk),
        .CE(\count[0]_i_1__1_n_0 ),
        .D(\count_reg[0]_i_2__1_n_6 ),
        .Q(\enc_count[2]_2 [1]),
        .R(p_0_in));
  FDRE \count_reg[2] 
       (.C(clk),
        .CE(\count[0]_i_1__1_n_0 ),
        .D(\count_reg[0]_i_2__1_n_5 ),
        .Q(\enc_count[2]_2 [2]),
        .R(p_0_in));
  FDRE \count_reg[3] 
       (.C(clk),
        .CE(\count[0]_i_1__1_n_0 ),
        .D(\count_reg[0]_i_2__1_n_4 ),
        .Q(\enc_count[2]_2 [3]),
        .R(p_0_in));
  FDRE \count_reg[4] 
       (.C(clk),
        .CE(\count[0]_i_1__1_n_0 ),
        .D(\count_reg[4]_i_1__1_n_7 ),
        .Q(\enc_count[2]_2 [4]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1__1 
       (.CI(\count_reg[0]_i_2__1_n_0 ),
        .CO({\count_reg[4]_i_1__1_n_0 ,\count_reg[4]_i_1__1_n_1 ,\count_reg[4]_i_1__1_n_2 ,\count_reg[4]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\count[4]_i_2__1_n_0 ,\count[4]_i_3__1_n_0 ,\count[4]_i_4__1_n_0 ,\count[4]_i_5__1_n_0 }),
        .O({\count_reg[4]_i_1__1_n_4 ,\count_reg[4]_i_1__1_n_5 ,\count_reg[4]_i_1__1_n_6 ,\count_reg[4]_i_1__1_n_7 }),
        .S({\count[4]_i_6__1_n_0 ,\count[4]_i_7__1_n_0 ,\count[4]_i_8__1_n_0 ,\count[4]_i_9__1_n_0 }));
  FDRE \count_reg[5] 
       (.C(clk),
        .CE(\count[0]_i_1__1_n_0 ),
        .D(\count_reg[4]_i_1__1_n_6 ),
        .Q(\enc_count[2]_2 [5]),
        .R(p_0_in));
  FDRE \count_reg[6] 
       (.C(clk),
        .CE(\count[0]_i_1__1_n_0 ),
        .D(\count_reg[4]_i_1__1_n_5 ),
        .Q(\enc_count[2]_2 [6]),
        .R(p_0_in));
  FDRE \count_reg[7] 
       (.C(clk),
        .CE(\count[0]_i_1__1_n_0 ),
        .D(\count_reg[4]_i_1__1_n_4 ),
        .Q(\enc_count[2]_2 [7]),
        .R(p_0_in));
  FDRE \count_reg[8] 
       (.C(clk),
        .CE(\count[0]_i_1__1_n_0 ),
        .D(\count_reg[8]_i_1__1_n_7 ),
        .Q(\enc_count[2]_2 [8]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1__1 
       (.CI(\count_reg[4]_i_1__1_n_0 ),
        .CO({\count_reg[8]_i_1__1_n_0 ,\count_reg[8]_i_1__1_n_1 ,\count_reg[8]_i_1__1_n_2 ,\count_reg[8]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\count[8]_i_2__1_n_0 ,\count[8]_i_3__1_n_0 ,\count[8]_i_4__1_n_0 ,\count[8]_i_5__1_n_0 }),
        .O({\count_reg[8]_i_1__1_n_4 ,\count_reg[8]_i_1__1_n_5 ,\count_reg[8]_i_1__1_n_6 ,\count_reg[8]_i_1__1_n_7 }),
        .S({\count[8]_i_6__1_n_0 ,\count[8]_i_7__1_n_0 ,\count[8]_i_8__1_n_0 ,\count[8]_i_9__1_n_0 }));
  FDRE \count_reg[9] 
       (.C(clk),
        .CE(\count[0]_i_1__1_n_0 ),
        .D(\count_reg[8]_i_1__1_n_6 ),
        .Q(\enc_count[2]_2 [9]),
        .R(p_0_in));
  FDSE \state_d_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(state_d[0]),
        .S(p_0_in));
  FDSE \state_d_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(state_d[1]),
        .S(p_0_in));
endmodule

(* ORIG_REF_NAME = "quad_decoder" *) 
module design_1_fx_system_wrapper_0_1_quad_decoder_2
   (D,
    \s_axi_araddr[7] ,
    \count_reg[15]_0 ,
    Q,
    \a_sync_reg[1]_0 ,
    \count_reg[0]_0 ,
    \count_reg[13]_0 ,
    \count_reg[12]_0 ,
    \count_reg[11]_0 ,
    \count_reg[10]_0 ,
    \count_reg[9]_0 ,
    \count_reg[7]_0 ,
    \count_reg[6]_0 ,
    \count_reg[5]_0 ,
    \count_reg[3]_0 ,
    \count_reg[2]_0 ,
    \count_reg[1]_0 ,
    cnt_b__0_10,
    cnt_a__0_11,
    p_0_in,
    clean_b_reg_0,
    clk,
    clean_a_reg_0,
    s_axi_araddr,
    \s_axi_rdata_reg[17] ,
    \s_axi_rdata_reg[17]_0 ,
    \s_axi_rdata_reg[17]_1 ,
    \s_axi_rdata_reg[17]_2 ,
    \s_axi_rdata_reg[20] ,
    \s_axi_rdata_reg[22] ,
    \s_axi_rdata_reg[24] ,
    \s_axi_rdata_reg[29] ,
    \cnt_a_reg[0]_0 ,
    rst_n,
    \s_axi_rdata_reg[14] ,
    \s_axi_rdata_reg[14]_0 ,
    \s_axi_rdata_reg[8] ,
    \s_axi_rdata_reg[8]_0 ,
    \s_axi_rdata_reg[4] ,
    \s_axi_rdata_reg[4]_0 ,
    \enc_count[2]_2 ,
    \enc_count[1]_1 ,
    \enc_count[0]_0 ,
    enc_b,
    enc_a);
  output [1:0]D;
  output [7:0]\s_axi_araddr[7] ;
  output \count_reg[15]_0 ;
  output [0:0]Q;
  output [0:0]\a_sync_reg[1]_0 ;
  output \count_reg[0]_0 ;
  output \count_reg[13]_0 ;
  output \count_reg[12]_0 ;
  output \count_reg[11]_0 ;
  output \count_reg[10]_0 ;
  output \count_reg[9]_0 ;
  output \count_reg[7]_0 ;
  output \count_reg[6]_0 ;
  output \count_reg[5]_0 ;
  output \count_reg[3]_0 ;
  output \count_reg[2]_0 ;
  output \count_reg[1]_0 ;
  output [2:0]cnt_b__0_10;
  output [2:0]cnt_a__0_11;
  input p_0_in;
  input clean_b_reg_0;
  input clk;
  input clean_a_reg_0;
  input [2:0]s_axi_araddr;
  input \s_axi_rdata_reg[17] ;
  input \s_axi_rdata_reg[17]_0 ;
  input \s_axi_rdata_reg[17]_1 ;
  input \s_axi_rdata_reg[17]_2 ;
  input \s_axi_rdata_reg[20] ;
  input \s_axi_rdata_reg[22] ;
  input \s_axi_rdata_reg[24] ;
  input \s_axi_rdata_reg[29] ;
  input \cnt_a_reg[0]_0 ;
  input rst_n;
  input \s_axi_rdata_reg[14] ;
  input \s_axi_rdata_reg[14]_0 ;
  input \s_axi_rdata_reg[8] ;
  input \s_axi_rdata_reg[8]_0 ;
  input \s_axi_rdata_reg[4] ;
  input \s_axi_rdata_reg[4]_0 ;
  input [15:0]\enc_count[2]_2 ;
  input [15:0]\enc_count[1]_1 ;
  input [15:0]\enc_count[0]_0 ;
  input [0:0]enc_b;
  input [0:0]enc_a;

  wire [1:0]D;
  wire [0:0]Q;
  wire [0:0]\a_sync_reg[1]_0 ;
  wire clean_a_reg_0;
  wire clean_b_reg_0;
  wire clk;
  wire \cnt_a[0]_i_1__2_n_0 ;
  wire \cnt_a[1]_i_1__2_n_0 ;
  wire \cnt_a[2]_i_1__2_n_0 ;
  wire \cnt_a[2]_i_2__2_n_0 ;
  wire [2:0]cnt_a__0_11;
  wire \cnt_a_reg[0]_0 ;
  wire \cnt_b[0]_i_1__2_n_0 ;
  wire \cnt_b[1]_i_1__2_n_0 ;
  wire \cnt_b[2]_i_1__2_n_0 ;
  wire \cnt_b[2]_i_2__2_n_0 ;
  wire [2:0]cnt_b__0_10;
  wire \count[0]_i_1__2_n_0 ;
  wire \count[0]_i_3__2_n_0 ;
  wire \count[0]_i_4__2_n_0 ;
  wire \count[0]_i_5__2_n_0 ;
  wire \count[0]_i_6__4_n_0 ;
  wire \count[0]_i_7__2_n_0 ;
  wire \count[0]_i_8__2_n_0 ;
  wire \count[0]_i_9__2_n_0 ;
  wire \count[12]_i_2__2_n_0 ;
  wire \count[12]_i_3__2_n_0 ;
  wire \count[12]_i_4__2_n_0 ;
  wire \count[12]_i_5__2_n_0 ;
  wire \count[12]_i_6__2_n_0 ;
  wire \count[12]_i_7__2_n_0 ;
  wire \count[12]_i_8__2_n_0 ;
  wire \count[4]_i_2__2_n_0 ;
  wire \count[4]_i_3__2_n_0 ;
  wire \count[4]_i_4__2_n_0 ;
  wire \count[4]_i_5__2_n_0 ;
  wire \count[4]_i_6__2_n_0 ;
  wire \count[4]_i_7__2_n_0 ;
  wire \count[4]_i_8__2_n_0 ;
  wire \count[4]_i_9__2_n_0 ;
  wire \count[8]_i_2__2_n_0 ;
  wire \count[8]_i_3__2_n_0 ;
  wire \count[8]_i_4__2_n_0 ;
  wire \count[8]_i_5__2_n_0 ;
  wire \count[8]_i_6__2_n_0 ;
  wire \count[8]_i_7__2_n_0 ;
  wire \count[8]_i_8__2_n_0 ;
  wire \count[8]_i_9__2_n_0 ;
  wire \count_reg[0]_0 ;
  wire \count_reg[0]_i_2__2_n_0 ;
  wire \count_reg[0]_i_2__2_n_1 ;
  wire \count_reg[0]_i_2__2_n_2 ;
  wire \count_reg[0]_i_2__2_n_3 ;
  wire \count_reg[0]_i_2__2_n_4 ;
  wire \count_reg[0]_i_2__2_n_5 ;
  wire \count_reg[0]_i_2__2_n_6 ;
  wire \count_reg[0]_i_2__2_n_7 ;
  wire \count_reg[10]_0 ;
  wire \count_reg[11]_0 ;
  wire \count_reg[12]_0 ;
  wire \count_reg[12]_i_1__2_n_1 ;
  wire \count_reg[12]_i_1__2_n_2 ;
  wire \count_reg[12]_i_1__2_n_3 ;
  wire \count_reg[12]_i_1__2_n_4 ;
  wire \count_reg[12]_i_1__2_n_5 ;
  wire \count_reg[12]_i_1__2_n_6 ;
  wire \count_reg[12]_i_1__2_n_7 ;
  wire \count_reg[13]_0 ;
  wire \count_reg[15]_0 ;
  wire \count_reg[1]_0 ;
  wire \count_reg[2]_0 ;
  wire \count_reg[3]_0 ;
  wire \count_reg[4]_i_1__2_n_0 ;
  wire \count_reg[4]_i_1__2_n_1 ;
  wire \count_reg[4]_i_1__2_n_2 ;
  wire \count_reg[4]_i_1__2_n_3 ;
  wire \count_reg[4]_i_1__2_n_4 ;
  wire \count_reg[4]_i_1__2_n_5 ;
  wire \count_reg[4]_i_1__2_n_6 ;
  wire \count_reg[4]_i_1__2_n_7 ;
  wire \count_reg[5]_0 ;
  wire \count_reg[6]_0 ;
  wire \count_reg[7]_0 ;
  wire \count_reg[8]_i_1__2_n_0 ;
  wire \count_reg[8]_i_1__2_n_1 ;
  wire \count_reg[8]_i_1__2_n_2 ;
  wire \count_reg[8]_i_1__2_n_3 ;
  wire \count_reg[8]_i_1__2_n_4 ;
  wire \count_reg[8]_i_1__2_n_5 ;
  wire \count_reg[8]_i_1__2_n_6 ;
  wire \count_reg[8]_i_1__2_n_7 ;
  wire \count_reg[9]_0 ;
  wire [0:0]enc_a;
  wire [0:0]enc_b;
  wire [15:0]\enc_count[0]_0 ;
  wire [15:0]\enc_count[1]_1 ;
  wire [15:0]\enc_count[2]_2 ;
  wire [15:0]\enc_count[3]_3 ;
  wire p_0_in;
  wire [1:1]p_0_in_0;
  wire [1:1]p_0_in__0;
  wire rst_n;
  wire [2:0]s_axi_araddr;
  wire [7:0]\s_axi_araddr[7] ;
  wire \s_axi_rdata[14]_i_2_n_0 ;
  wire \s_axi_rdata[4]_i_2_n_0 ;
  wire \s_axi_rdata[8]_i_2_n_0 ;
  wire \s_axi_rdata_reg[14] ;
  wire \s_axi_rdata_reg[14]_0 ;
  wire \s_axi_rdata_reg[17] ;
  wire \s_axi_rdata_reg[17]_0 ;
  wire \s_axi_rdata_reg[17]_1 ;
  wire \s_axi_rdata_reg[17]_2 ;
  wire \s_axi_rdata_reg[20] ;
  wire \s_axi_rdata_reg[22] ;
  wire \s_axi_rdata_reg[24] ;
  wire \s_axi_rdata_reg[29] ;
  wire \s_axi_rdata_reg[4] ;
  wire \s_axi_rdata_reg[4]_0 ;
  wire \s_axi_rdata_reg[8] ;
  wire \s_axi_rdata_reg[8]_0 ;
  wire [1:0]state_d;
  wire [3:3]\NLW_count_reg[12]_i_1__2_CO_UNCONNECTED ;

  FDRE \a_sync_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(enc_a),
        .Q(p_0_in__0),
        .R(1'b0));
  FDRE \a_sync_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0),
        .Q(\a_sync_reg[1]_0 ),
        .R(1'b0));
  FDRE \b_sync_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(enc_b),
        .Q(p_0_in_0),
        .R(1'b0));
  FDRE \b_sync_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in_0),
        .Q(Q),
        .R(1'b0));
  FDSE clean_a_reg
       (.C(clk),
        .CE(1'b1),
        .D(clean_a_reg_0),
        .Q(D[1]),
        .S(p_0_in));
  FDSE clean_b_reg
       (.C(clk),
        .CE(1'b1),
        .D(clean_b_reg_0),
        .Q(D[0]),
        .S(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h08484808)) 
    \cnt_a[0]_i_1__2 
       (.I0(cnt_a__0_11[0]),
        .I1(rst_n),
        .I2(\cnt_a_reg[0]_0 ),
        .I3(D[1]),
        .I4(\a_sync_reg[1]_0 ),
        .O(\cnt_a[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h00A060A060A000A0)) 
    \cnt_a[1]_i_1__2 
       (.I0(cnt_a__0_11[1]),
        .I1(cnt_a__0_11[0]),
        .I2(rst_n),
        .I3(\cnt_a_reg[0]_0 ),
        .I4(D[1]),
        .I5(\a_sync_reg[1]_0 ),
        .O(\cnt_a[1]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \cnt_a[2]_i_1__2 
       (.I0(cnt_a__0_11[2]),
        .I1(\cnt_a_reg[0]_0 ),
        .I2(cnt_a__0_11[0]),
        .I3(cnt_a__0_11[1]),
        .I4(\cnt_a[2]_i_2__2_n_0 ),
        .O(\cnt_a[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h90FF)) 
    \cnt_a[2]_i_2__2 
       (.I0(\a_sync_reg[1]_0 ),
        .I1(D[1]),
        .I2(\cnt_a_reg[0]_0 ),
        .I3(rst_n),
        .O(\cnt_a[2]_i_2__2_n_0 ));
  FDRE \cnt_a_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_a[0]_i_1__2_n_0 ),
        .Q(cnt_a__0_11[0]),
        .R(1'b0));
  FDRE \cnt_a_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_a[1]_i_1__2_n_0 ),
        .Q(cnt_a__0_11[1]),
        .R(1'b0));
  FDRE \cnt_a_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_a[2]_i_1__2_n_0 ),
        .Q(cnt_a__0_11[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h08484808)) 
    \cnt_b[0]_i_1__2 
       (.I0(cnt_b__0_10[0]),
        .I1(rst_n),
        .I2(\cnt_a_reg[0]_0 ),
        .I3(D[0]),
        .I4(Q),
        .O(\cnt_b[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h00A060A060A000A0)) 
    \cnt_b[1]_i_1__2 
       (.I0(cnt_b__0_10[1]),
        .I1(cnt_b__0_10[0]),
        .I2(rst_n),
        .I3(\cnt_a_reg[0]_0 ),
        .I4(D[0]),
        .I5(Q),
        .O(\cnt_b[1]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \cnt_b[2]_i_1__2 
       (.I0(cnt_b__0_10[2]),
        .I1(\cnt_a_reg[0]_0 ),
        .I2(cnt_b__0_10[0]),
        .I3(cnt_b__0_10[1]),
        .I4(\cnt_b[2]_i_2__2_n_0 ),
        .O(\cnt_b[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h90FF)) 
    \cnt_b[2]_i_2__2 
       (.I0(Q),
        .I1(D[0]),
        .I2(\cnt_a_reg[0]_0 ),
        .I3(rst_n),
        .O(\cnt_b[2]_i_2__2_n_0 ));
  FDRE \cnt_b_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_b[0]_i_1__2_n_0 ),
        .Q(cnt_b__0_10[0]),
        .R(1'b0));
  FDRE \cnt_b_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_b[1]_i_1__2_n_0 ),
        .Q(cnt_b__0_10[1]),
        .R(1'b0));
  FDRE \cnt_b_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_b[2]_i_1__2_n_0 ),
        .Q(cnt_b__0_10[2]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6000)) 
    \count[0]_i_1__2 
       (.I0(state_d[0]),
        .I1(state_d[1]),
        .I2(D[1]),
        .I3(D[0]),
        .O(\count[0]_i_1__2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[0]_i_3__2 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[0]_i_3__2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[0]_i_4__2 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[0]_i_4__2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[0]_i_5__2 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[0]_i_5__2_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[0]_i_6__4 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[3]_3 [3]),
        .O(\count[0]_i_6__4_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[0]_i_7__2 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[3]_3 [2]),
        .O(\count[0]_i_7__2_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[0]_i_8__2 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[3]_3 [1]),
        .O(\count[0]_i_8__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_9__2 
       (.I0(\enc_count[3]_3 [0]),
        .O(\count[0]_i_9__2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[12]_i_2__2 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[12]_i_2__2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[12]_i_3__2 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[12]_i_3__2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[12]_i_4__2 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[12]_i_4__2_n_0 ));
  LUT3 #(
    .INIT(8'h65)) 
    \count[12]_i_5__2 
       (.I0(\enc_count[3]_3 [15]),
        .I1(state_d[1]),
        .I2(state_d[0]),
        .O(\count[12]_i_5__2_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[12]_i_6__2 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[3]_3 [14]),
        .O(\count[12]_i_6__2_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[12]_i_7__2 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[3]_3 [13]),
        .O(\count[12]_i_7__2_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[12]_i_8__2 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[3]_3 [12]),
        .O(\count[12]_i_8__2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[4]_i_2__2 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[4]_i_2__2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[4]_i_3__2 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[4]_i_3__2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[4]_i_4__2 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[4]_i_4__2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[4]_i_5__2 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[4]_i_5__2_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[4]_i_6__2 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[3]_3 [7]),
        .O(\count[4]_i_6__2_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[4]_i_7__2 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[3]_3 [6]),
        .O(\count[4]_i_7__2_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[4]_i_8__2 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[3]_3 [5]),
        .O(\count[4]_i_8__2_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[4]_i_9__2 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[3]_3 [4]),
        .O(\count[4]_i_9__2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[8]_i_2__2 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[8]_i_2__2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[8]_i_3__2 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[8]_i_3__2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[8]_i_4__2 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[8]_i_4__2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \count[8]_i_5__2 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .O(\count[8]_i_5__2_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[8]_i_6__2 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[3]_3 [11]),
        .O(\count[8]_i_6__2_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[8]_i_7__2 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[3]_3 [10]),
        .O(\count[8]_i_7__2_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[8]_i_8__2 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[3]_3 [9]),
        .O(\count[8]_i_8__2_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[8]_i_9__2 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[3]_3 [8]),
        .O(\count[8]_i_9__2_n_0 ));
  FDRE \count_reg[0] 
       (.C(clk),
        .CE(\count[0]_i_1__2_n_0 ),
        .D(\count_reg[0]_i_2__2_n_7 ),
        .Q(\enc_count[3]_3 [0]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_2__2 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2__2_n_0 ,\count_reg[0]_i_2__2_n_1 ,\count_reg[0]_i_2__2_n_2 ,\count_reg[0]_i_2__2_n_3 }),
        .CYINIT(1'b0),
        .DI({\count[0]_i_3__2_n_0 ,\count[0]_i_4__2_n_0 ,\count[0]_i_5__2_n_0 ,1'b1}),
        .O({\count_reg[0]_i_2__2_n_4 ,\count_reg[0]_i_2__2_n_5 ,\count_reg[0]_i_2__2_n_6 ,\count_reg[0]_i_2__2_n_7 }),
        .S({\count[0]_i_6__4_n_0 ,\count[0]_i_7__2_n_0 ,\count[0]_i_8__2_n_0 ,\count[0]_i_9__2_n_0 }));
  FDRE \count_reg[10] 
       (.C(clk),
        .CE(\count[0]_i_1__2_n_0 ),
        .D(\count_reg[8]_i_1__2_n_5 ),
        .Q(\enc_count[3]_3 [10]),
        .R(p_0_in));
  FDRE \count_reg[11] 
       (.C(clk),
        .CE(\count[0]_i_1__2_n_0 ),
        .D(\count_reg[8]_i_1__2_n_4 ),
        .Q(\enc_count[3]_3 [11]),
        .R(p_0_in));
  FDRE \count_reg[12] 
       (.C(clk),
        .CE(\count[0]_i_1__2_n_0 ),
        .D(\count_reg[12]_i_1__2_n_7 ),
        .Q(\enc_count[3]_3 [12]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1__2 
       (.CI(\count_reg[8]_i_1__2_n_0 ),
        .CO({\NLW_count_reg[12]_i_1__2_CO_UNCONNECTED [3],\count_reg[12]_i_1__2_n_1 ,\count_reg[12]_i_1__2_n_2 ,\count_reg[12]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\count[12]_i_2__2_n_0 ,\count[12]_i_3__2_n_0 ,\count[12]_i_4__2_n_0 }),
        .O({\count_reg[12]_i_1__2_n_4 ,\count_reg[12]_i_1__2_n_5 ,\count_reg[12]_i_1__2_n_6 ,\count_reg[12]_i_1__2_n_7 }),
        .S({\count[12]_i_5__2_n_0 ,\count[12]_i_6__2_n_0 ,\count[12]_i_7__2_n_0 ,\count[12]_i_8__2_n_0 }));
  FDRE \count_reg[13] 
       (.C(clk),
        .CE(\count[0]_i_1__2_n_0 ),
        .D(\count_reg[12]_i_1__2_n_6 ),
        .Q(\enc_count[3]_3 [13]),
        .R(p_0_in));
  FDRE \count_reg[14] 
       (.C(clk),
        .CE(\count[0]_i_1__2_n_0 ),
        .D(\count_reg[12]_i_1__2_n_5 ),
        .Q(\enc_count[3]_3 [14]),
        .R(p_0_in));
  FDRE \count_reg[15] 
       (.C(clk),
        .CE(\count[0]_i_1__2_n_0 ),
        .D(\count_reg[12]_i_1__2_n_4 ),
        .Q(\enc_count[3]_3 [15]),
        .R(p_0_in));
  FDRE \count_reg[1] 
       (.C(clk),
        .CE(\count[0]_i_1__2_n_0 ),
        .D(\count_reg[0]_i_2__2_n_6 ),
        .Q(\enc_count[3]_3 [1]),
        .R(p_0_in));
  FDRE \count_reg[2] 
       (.C(clk),
        .CE(\count[0]_i_1__2_n_0 ),
        .D(\count_reg[0]_i_2__2_n_5 ),
        .Q(\enc_count[3]_3 [2]),
        .R(p_0_in));
  FDRE \count_reg[3] 
       (.C(clk),
        .CE(\count[0]_i_1__2_n_0 ),
        .D(\count_reg[0]_i_2__2_n_4 ),
        .Q(\enc_count[3]_3 [3]),
        .R(p_0_in));
  FDRE \count_reg[4] 
       (.C(clk),
        .CE(\count[0]_i_1__2_n_0 ),
        .D(\count_reg[4]_i_1__2_n_7 ),
        .Q(\enc_count[3]_3 [4]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1__2 
       (.CI(\count_reg[0]_i_2__2_n_0 ),
        .CO({\count_reg[4]_i_1__2_n_0 ,\count_reg[4]_i_1__2_n_1 ,\count_reg[4]_i_1__2_n_2 ,\count_reg[4]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({\count[4]_i_2__2_n_0 ,\count[4]_i_3__2_n_0 ,\count[4]_i_4__2_n_0 ,\count[4]_i_5__2_n_0 }),
        .O({\count_reg[4]_i_1__2_n_4 ,\count_reg[4]_i_1__2_n_5 ,\count_reg[4]_i_1__2_n_6 ,\count_reg[4]_i_1__2_n_7 }),
        .S({\count[4]_i_6__2_n_0 ,\count[4]_i_7__2_n_0 ,\count[4]_i_8__2_n_0 ,\count[4]_i_9__2_n_0 }));
  FDRE \count_reg[5] 
       (.C(clk),
        .CE(\count[0]_i_1__2_n_0 ),
        .D(\count_reg[4]_i_1__2_n_6 ),
        .Q(\enc_count[3]_3 [5]),
        .R(p_0_in));
  FDRE \count_reg[6] 
       (.C(clk),
        .CE(\count[0]_i_1__2_n_0 ),
        .D(\count_reg[4]_i_1__2_n_5 ),
        .Q(\enc_count[3]_3 [6]),
        .R(p_0_in));
  FDRE \count_reg[7] 
       (.C(clk),
        .CE(\count[0]_i_1__2_n_0 ),
        .D(\count_reg[4]_i_1__2_n_4 ),
        .Q(\enc_count[3]_3 [7]),
        .R(p_0_in));
  FDRE \count_reg[8] 
       (.C(clk),
        .CE(\count[0]_i_1__2_n_0 ),
        .D(\count_reg[8]_i_1__2_n_7 ),
        .Q(\enc_count[3]_3 [8]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1__2 
       (.CI(\count_reg[4]_i_1__2_n_0 ),
        .CO({\count_reg[8]_i_1__2_n_0 ,\count_reg[8]_i_1__2_n_1 ,\count_reg[8]_i_1__2_n_2 ,\count_reg[8]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({\count[8]_i_2__2_n_0 ,\count[8]_i_3__2_n_0 ,\count[8]_i_4__2_n_0 ,\count[8]_i_5__2_n_0 }),
        .O({\count_reg[8]_i_1__2_n_4 ,\count_reg[8]_i_1__2_n_5 ,\count_reg[8]_i_1__2_n_6 ,\count_reg[8]_i_1__2_n_7 }),
        .S({\count[8]_i_6__2_n_0 ,\count[8]_i_7__2_n_0 ,\count[8]_i_8__2_n_0 ,\count[8]_i_9__2_n_0 }));
  FDRE \count_reg[9] 
       (.C(clk),
        .CE(\count[0]_i_1__2_n_0 ),
        .D(\count_reg[8]_i_1__2_n_6 ),
        .Q(\enc_count[3]_3 [9]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \s_axi_rdata[0]_i_3 
       (.I0(\enc_count[3]_3 [0]),
        .I1(\enc_count[2]_2 [0]),
        .I2(s_axi_araddr[1]),
        .I3(\enc_count[1]_1 [0]),
        .I4(s_axi_araddr[0]),
        .I5(\enc_count[0]_0 [0]),
        .O(\count_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \s_axi_rdata[10]_i_3 
       (.I0(\enc_count[3]_3 [10]),
        .I1(\enc_count[2]_2 [10]),
        .I2(s_axi_araddr[1]),
        .I3(\enc_count[1]_1 [10]),
        .I4(s_axi_araddr[0]),
        .I5(\enc_count[0]_0 [10]),
        .O(\count_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \s_axi_rdata[11]_i_3 
       (.I0(\enc_count[3]_3 [11]),
        .I1(\enc_count[2]_2 [11]),
        .I2(s_axi_araddr[1]),
        .I3(\enc_count[1]_1 [11]),
        .I4(s_axi_araddr[0]),
        .I5(\enc_count[0]_0 [11]),
        .O(\count_reg[11]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \s_axi_rdata[12]_i_3 
       (.I0(\enc_count[3]_3 [12]),
        .I1(\enc_count[2]_2 [12]),
        .I2(s_axi_araddr[1]),
        .I3(\enc_count[1]_1 [12]),
        .I4(s_axi_araddr[0]),
        .I5(\enc_count[0]_0 [12]),
        .O(\count_reg[12]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \s_axi_rdata[13]_i_3 
       (.I0(\enc_count[3]_3 [13]),
        .I1(\enc_count[2]_2 [13]),
        .I2(s_axi_araddr[1]),
        .I3(\enc_count[1]_1 [13]),
        .I4(s_axi_araddr[0]),
        .I5(\enc_count[0]_0 [13]),
        .O(\count_reg[13]_0 ));
  LUT6 #(
    .INIT(64'h5404000055555555)) 
    \s_axi_rdata[14]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(\s_axi_rdata[14]_i_2_n_0 ),
        .I2(\s_axi_rdata_reg[17] ),
        .I3(\s_axi_rdata_reg[14] ),
        .I4(\s_axi_rdata_reg[17]_1 ),
        .I5(\s_axi_rdata_reg[14]_0 ),
        .O(\s_axi_araddr[7] [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[14]_i_2 
       (.I0(\enc_count[3]_3 [14]),
        .I1(\enc_count[2]_2 [14]),
        .I2(s_axi_araddr[1]),
        .I3(\enc_count[1]_1 [14]),
        .I4(s_axi_araddr[0]),
        .I5(\enc_count[0]_0 [14]),
        .O(\s_axi_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5404000055555555)) 
    \s_axi_rdata[17]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(\count_reg[15]_0 ),
        .I2(\s_axi_rdata_reg[17] ),
        .I3(\s_axi_rdata_reg[17]_0 ),
        .I4(\s_axi_rdata_reg[17]_1 ),
        .I5(\s_axi_rdata_reg[17]_2 ),
        .O(\s_axi_araddr[7] [3]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \s_axi_rdata[1]_i_3 
       (.I0(\enc_count[3]_3 [1]),
        .I1(\enc_count[2]_2 [1]),
        .I2(s_axi_araddr[1]),
        .I3(\enc_count[1]_1 [1]),
        .I4(s_axi_araddr[0]),
        .I5(\enc_count[0]_0 [1]),
        .O(\count_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h5404000055555555)) 
    \s_axi_rdata[20]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(\count_reg[15]_0 ),
        .I2(\s_axi_rdata_reg[17] ),
        .I3(\s_axi_rdata_reg[20] ),
        .I4(\s_axi_rdata_reg[17]_1 ),
        .I5(\s_axi_rdata_reg[17]_2 ),
        .O(\s_axi_araddr[7] [4]));
  LUT6 #(
    .INIT(64'h5404000055555555)) 
    \s_axi_rdata[22]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(\count_reg[15]_0 ),
        .I2(\s_axi_rdata_reg[17] ),
        .I3(\s_axi_rdata_reg[22] ),
        .I4(\s_axi_rdata_reg[17]_1 ),
        .I5(\s_axi_rdata_reg[17]_2 ),
        .O(\s_axi_araddr[7] [5]));
  LUT6 #(
    .INIT(64'h5404000055555555)) 
    \s_axi_rdata[24]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(\count_reg[15]_0 ),
        .I2(\s_axi_rdata_reg[17] ),
        .I3(\s_axi_rdata_reg[24] ),
        .I4(\s_axi_rdata_reg[17]_1 ),
        .I5(\s_axi_rdata_reg[17]_2 ),
        .O(\s_axi_araddr[7] [6]));
  LUT6 #(
    .INIT(64'h5404000055555555)) 
    \s_axi_rdata[29]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(\count_reg[15]_0 ),
        .I2(\s_axi_rdata_reg[17] ),
        .I3(\s_axi_rdata_reg[29] ),
        .I4(\s_axi_rdata_reg[17]_1 ),
        .I5(\s_axi_rdata_reg[17]_2 ),
        .O(\s_axi_araddr[7] [7]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \s_axi_rdata[2]_i_3 
       (.I0(\enc_count[3]_3 [2]),
        .I1(\enc_count[2]_2 [2]),
        .I2(s_axi_araddr[1]),
        .I3(\enc_count[1]_1 [2]),
        .I4(s_axi_araddr[0]),
        .I5(\enc_count[0]_0 [2]),
        .O(\count_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[31]_i_3 
       (.I0(\enc_count[3]_3 [15]),
        .I1(\enc_count[2]_2 [15]),
        .I2(s_axi_araddr[1]),
        .I3(\enc_count[1]_1 [15]),
        .I4(s_axi_araddr[0]),
        .I5(\enc_count[0]_0 [15]),
        .O(\count_reg[15]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \s_axi_rdata[3]_i_3 
       (.I0(\enc_count[3]_3 [3]),
        .I1(\enc_count[2]_2 [3]),
        .I2(s_axi_araddr[1]),
        .I3(\enc_count[1]_1 [3]),
        .I4(s_axi_araddr[0]),
        .I5(\enc_count[0]_0 [3]),
        .O(\count_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h5404000055555555)) 
    \s_axi_rdata[4]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(\s_axi_rdata[4]_i_2_n_0 ),
        .I2(\s_axi_rdata_reg[17] ),
        .I3(\s_axi_rdata_reg[4] ),
        .I4(\s_axi_rdata_reg[17]_1 ),
        .I5(\s_axi_rdata_reg[4]_0 ),
        .O(\s_axi_araddr[7] [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[4]_i_2 
       (.I0(\enc_count[3]_3 [4]),
        .I1(\enc_count[2]_2 [4]),
        .I2(s_axi_araddr[1]),
        .I3(\enc_count[1]_1 [4]),
        .I4(s_axi_araddr[0]),
        .I5(\enc_count[0]_0 [4]),
        .O(\s_axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \s_axi_rdata[5]_i_3 
       (.I0(\enc_count[3]_3 [5]),
        .I1(\enc_count[2]_2 [5]),
        .I2(s_axi_araddr[1]),
        .I3(\enc_count[1]_1 [5]),
        .I4(s_axi_araddr[0]),
        .I5(\enc_count[0]_0 [5]),
        .O(\count_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \s_axi_rdata[6]_i_3 
       (.I0(\enc_count[3]_3 [6]),
        .I1(\enc_count[2]_2 [6]),
        .I2(s_axi_araddr[1]),
        .I3(\enc_count[1]_1 [6]),
        .I4(s_axi_araddr[0]),
        .I5(\enc_count[0]_0 [6]),
        .O(\count_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \s_axi_rdata[7]_i_3 
       (.I0(\enc_count[3]_3 [7]),
        .I1(\enc_count[2]_2 [7]),
        .I2(s_axi_araddr[1]),
        .I3(\enc_count[1]_1 [7]),
        .I4(s_axi_araddr[0]),
        .I5(\enc_count[0]_0 [7]),
        .O(\count_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h5404000055555555)) 
    \s_axi_rdata[8]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(\s_axi_rdata[8]_i_2_n_0 ),
        .I2(\s_axi_rdata_reg[17] ),
        .I3(\s_axi_rdata_reg[8] ),
        .I4(\s_axi_rdata_reg[17]_1 ),
        .I5(\s_axi_rdata_reg[8]_0 ),
        .O(\s_axi_araddr[7] [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[8]_i_2 
       (.I0(\enc_count[3]_3 [8]),
        .I1(\enc_count[2]_2 [8]),
        .I2(s_axi_araddr[1]),
        .I3(\enc_count[1]_1 [8]),
        .I4(s_axi_araddr[0]),
        .I5(\enc_count[0]_0 [8]),
        .O(\s_axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \s_axi_rdata[9]_i_3 
       (.I0(\enc_count[3]_3 [9]),
        .I1(\enc_count[2]_2 [9]),
        .I2(s_axi_araddr[1]),
        .I3(\enc_count[1]_1 [9]),
        .I4(s_axi_araddr[0]),
        .I5(\enc_count[0]_0 [9]),
        .O(\count_reg[9]_0 ));
  FDSE \state_d_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(state_d[0]),
        .S(p_0_in));
  FDSE \state_d_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(state_d[1]),
        .S(p_0_in));
endmodule

(* ORIG_REF_NAME = "quad_decoder" *) 
module design_1_fx_system_wrapper_0_1_quad_decoder_3
   (D,
    \count_reg[15]_0 ,
    \s_axi_araddr[7] ,
    Q,
    \a_sync_reg[1]_0 ,
    cnt_b__0_12,
    cnt_a__0_13,
    p_0_in,
    clean_b_reg_0,
    clk,
    clean_a_reg_0,
    s_axi_araddr,
    \s_axi_rdata_reg[0] ,
    \s_axi_rdata_reg[0]_0 ,
    \s_axi_rdata_reg[0]_1 ,
    \s_axi_rdata_reg[0]_2 ,
    \cnt_a_reg[0]_0 ,
    rst_n,
    \s_axi_rdata_reg[1] ,
    \s_axi_rdata_reg[1]_0 ,
    \s_axi_rdata_reg[2] ,
    \s_axi_rdata_reg[2]_0 ,
    \s_axi_rdata_reg[3] ,
    \s_axi_rdata_reg[3]_0 ,
    \s_axi_rdata_reg[5] ,
    \s_axi_rdata_reg[5]_0 ,
    \s_axi_rdata_reg[6] ,
    \s_axi_rdata_reg[6]_0 ,
    \s_axi_rdata_reg[7] ,
    \s_axi_rdata_reg[7]_0 ,
    \s_axi_rdata_reg[9] ,
    \s_axi_rdata_reg[9]_0 ,
    \s_axi_rdata_reg[10] ,
    \s_axi_rdata_reg[10]_0 ,
    \s_axi_rdata_reg[11] ,
    \s_axi_rdata_reg[11]_0 ,
    \s_axi_rdata_reg[12] ,
    \s_axi_rdata_reg[12]_0 ,
    \s_axi_rdata_reg[13] ,
    \s_axi_rdata_reg[13]_0 ,
    \enc_count[5]_5 ,
    enc_b,
    enc_a);
  output [1:0]D;
  output [3:0]\count_reg[15]_0 ;
  output [11:0]\s_axi_araddr[7] ;
  output [0:0]Q;
  output [0:0]\a_sync_reg[1]_0 ;
  output [2:0]cnt_b__0_12;
  output [2:0]cnt_a__0_13;
  input p_0_in;
  input clean_b_reg_0;
  input clk;
  input clean_a_reg_0;
  input [3:0]s_axi_araddr;
  input \s_axi_rdata_reg[0] ;
  input \s_axi_rdata_reg[0]_0 ;
  input \s_axi_rdata_reg[0]_1 ;
  input \s_axi_rdata_reg[0]_2 ;
  input \cnt_a_reg[0]_0 ;
  input rst_n;
  input \s_axi_rdata_reg[1] ;
  input \s_axi_rdata_reg[1]_0 ;
  input \s_axi_rdata_reg[2] ;
  input \s_axi_rdata_reg[2]_0 ;
  input \s_axi_rdata_reg[3] ;
  input \s_axi_rdata_reg[3]_0 ;
  input \s_axi_rdata_reg[5] ;
  input \s_axi_rdata_reg[5]_0 ;
  input \s_axi_rdata_reg[6] ;
  input \s_axi_rdata_reg[6]_0 ;
  input \s_axi_rdata_reg[7] ;
  input \s_axi_rdata_reg[7]_0 ;
  input \s_axi_rdata_reg[9] ;
  input \s_axi_rdata_reg[9]_0 ;
  input \s_axi_rdata_reg[10] ;
  input \s_axi_rdata_reg[10]_0 ;
  input \s_axi_rdata_reg[11] ;
  input \s_axi_rdata_reg[11]_0 ;
  input \s_axi_rdata_reg[12] ;
  input \s_axi_rdata_reg[12]_0 ;
  input \s_axi_rdata_reg[13] ;
  input \s_axi_rdata_reg[13]_0 ;
  input [11:0]\enc_count[5]_5 ;
  input [0:0]enc_b;
  input [0:0]enc_a;

  wire [1:0]D;
  wire [0:0]Q;
  wire [0:0]\a_sync_reg[1]_0 ;
  wire clean_a_reg_0;
  wire clean_b_reg_0;
  wire clk;
  wire \cnt_a[0]_i_1__3_n_0 ;
  wire \cnt_a[1]_i_1__3_n_0 ;
  wire \cnt_a[2]_i_1__3_n_0 ;
  wire \cnt_a[2]_i_2__3_n_0 ;
  wire [2:0]cnt_a__0_13;
  wire \cnt_a_reg[0]_0 ;
  wire \cnt_b[0]_i_1__3_n_0 ;
  wire \cnt_b[1]_i_1__3_n_0 ;
  wire \cnt_b[2]_i_1__3_n_0 ;
  wire \cnt_b[2]_i_2__3_n_0 ;
  wire [2:0]cnt_b__0_12;
  wire \count[0]_i_1__3_n_0 ;
  wire \count[0]_i_3__3_n_0 ;
  wire \count[0]_i_4__3_n_0 ;
  wire \count[0]_i_5__3_n_0 ;
  wire \count[0]_i_6_n_0 ;
  wire \count[12]_i_2__3_n_0 ;
  wire \count[12]_i_3__3_n_0 ;
  wire \count[12]_i_4__3_n_0 ;
  wire \count[12]_i_5__3_n_0 ;
  wire \count[4]_i_2__3_n_0 ;
  wire \count[4]_i_3__3_n_0 ;
  wire \count[4]_i_4__3_n_0 ;
  wire \count[4]_i_5__3_n_0 ;
  wire \count[8]_i_2__3_n_0 ;
  wire \count[8]_i_3__3_n_0 ;
  wire \count[8]_i_4__3_n_0 ;
  wire \count[8]_i_5__3_n_0 ;
  wire \count_reg[0]_i_2__3_n_0 ;
  wire \count_reg[0]_i_2__3_n_1 ;
  wire \count_reg[0]_i_2__3_n_2 ;
  wire \count_reg[0]_i_2__3_n_3 ;
  wire \count_reg[0]_i_2__3_n_4 ;
  wire \count_reg[0]_i_2__3_n_5 ;
  wire \count_reg[0]_i_2__3_n_6 ;
  wire \count_reg[0]_i_2__3_n_7 ;
  wire \count_reg[12]_i_1__3_n_1 ;
  wire \count_reg[12]_i_1__3_n_2 ;
  wire \count_reg[12]_i_1__3_n_3 ;
  wire \count_reg[12]_i_1__3_n_4 ;
  wire \count_reg[12]_i_1__3_n_5 ;
  wire \count_reg[12]_i_1__3_n_6 ;
  wire \count_reg[12]_i_1__3_n_7 ;
  wire [3:0]\count_reg[15]_0 ;
  wire \count_reg[4]_i_1__3_n_0 ;
  wire \count_reg[4]_i_1__3_n_1 ;
  wire \count_reg[4]_i_1__3_n_2 ;
  wire \count_reg[4]_i_1__3_n_3 ;
  wire \count_reg[4]_i_1__3_n_4 ;
  wire \count_reg[4]_i_1__3_n_5 ;
  wire \count_reg[4]_i_1__3_n_6 ;
  wire \count_reg[4]_i_1__3_n_7 ;
  wire \count_reg[8]_i_1__3_n_0 ;
  wire \count_reg[8]_i_1__3_n_1 ;
  wire \count_reg[8]_i_1__3_n_2 ;
  wire \count_reg[8]_i_1__3_n_3 ;
  wire \count_reg[8]_i_1__3_n_4 ;
  wire \count_reg[8]_i_1__3_n_5 ;
  wire \count_reg[8]_i_1__3_n_6 ;
  wire \count_reg[8]_i_1__3_n_7 ;
  wire [0:0]enc_a;
  wire [0:0]enc_b;
  wire [13:0]\enc_count[4]_4 ;
  wire [11:0]\enc_count[5]_5 ;
  wire p_0_in;
  wire [1:1]p_0_in_0;
  wire [1:1]p_0_in__0;
  wire rst_n;
  wire [3:0]s_axi_araddr;
  wire [11:0]\s_axi_araddr[7] ;
  wire \s_axi_rdata[0]_i_2_n_0 ;
  wire \s_axi_rdata[10]_i_2_n_0 ;
  wire \s_axi_rdata[11]_i_2_n_0 ;
  wire \s_axi_rdata[12]_i_2_n_0 ;
  wire \s_axi_rdata[13]_i_2_n_0 ;
  wire \s_axi_rdata[1]_i_2_n_0 ;
  wire \s_axi_rdata[2]_i_2_n_0 ;
  wire \s_axi_rdata[3]_i_2_n_0 ;
  wire \s_axi_rdata[5]_i_2_n_0 ;
  wire \s_axi_rdata[6]_i_2_n_0 ;
  wire \s_axi_rdata[7]_i_2_n_0 ;
  wire \s_axi_rdata[9]_i_2_n_0 ;
  wire \s_axi_rdata_reg[0] ;
  wire \s_axi_rdata_reg[0]_0 ;
  wire \s_axi_rdata_reg[0]_1 ;
  wire \s_axi_rdata_reg[0]_2 ;
  wire \s_axi_rdata_reg[10] ;
  wire \s_axi_rdata_reg[10]_0 ;
  wire \s_axi_rdata_reg[11] ;
  wire \s_axi_rdata_reg[11]_0 ;
  wire \s_axi_rdata_reg[12] ;
  wire \s_axi_rdata_reg[12]_0 ;
  wire \s_axi_rdata_reg[13] ;
  wire \s_axi_rdata_reg[13]_0 ;
  wire \s_axi_rdata_reg[1] ;
  wire \s_axi_rdata_reg[1]_0 ;
  wire \s_axi_rdata_reg[2] ;
  wire \s_axi_rdata_reg[2]_0 ;
  wire \s_axi_rdata_reg[3] ;
  wire \s_axi_rdata_reg[3]_0 ;
  wire \s_axi_rdata_reg[5] ;
  wire \s_axi_rdata_reg[5]_0 ;
  wire \s_axi_rdata_reg[6] ;
  wire \s_axi_rdata_reg[6]_0 ;
  wire \s_axi_rdata_reg[7] ;
  wire \s_axi_rdata_reg[7]_0 ;
  wire \s_axi_rdata_reg[9] ;
  wire \s_axi_rdata_reg[9]_0 ;
  wire [1:0]state_d;
  wire [3:3]\NLW_count_reg[12]_i_1__3_CO_UNCONNECTED ;

  FDRE \a_sync_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(enc_a),
        .Q(p_0_in__0),
        .R(1'b0));
  FDRE \a_sync_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0),
        .Q(\a_sync_reg[1]_0 ),
        .R(1'b0));
  FDRE \b_sync_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(enc_b),
        .Q(p_0_in_0),
        .R(1'b0));
  FDRE \b_sync_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in_0),
        .Q(Q),
        .R(1'b0));
  FDSE clean_a_reg
       (.C(clk),
        .CE(1'b1),
        .D(clean_a_reg_0),
        .Q(D[1]),
        .S(p_0_in));
  FDSE clean_b_reg
       (.C(clk),
        .CE(1'b1),
        .D(clean_b_reg_0),
        .Q(D[0]),
        .S(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h08484808)) 
    \cnt_a[0]_i_1__3 
       (.I0(cnt_a__0_13[0]),
        .I1(rst_n),
        .I2(\cnt_a_reg[0]_0 ),
        .I3(D[1]),
        .I4(\a_sync_reg[1]_0 ),
        .O(\cnt_a[0]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h00A060A060A000A0)) 
    \cnt_a[1]_i_1__3 
       (.I0(cnt_a__0_13[1]),
        .I1(cnt_a__0_13[0]),
        .I2(rst_n),
        .I3(\cnt_a_reg[0]_0 ),
        .I4(D[1]),
        .I5(\a_sync_reg[1]_0 ),
        .O(\cnt_a[1]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \cnt_a[2]_i_1__3 
       (.I0(cnt_a__0_13[2]),
        .I1(\cnt_a_reg[0]_0 ),
        .I2(cnt_a__0_13[0]),
        .I3(cnt_a__0_13[1]),
        .I4(\cnt_a[2]_i_2__3_n_0 ),
        .O(\cnt_a[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h90FF)) 
    \cnt_a[2]_i_2__3 
       (.I0(\a_sync_reg[1]_0 ),
        .I1(D[1]),
        .I2(\cnt_a_reg[0]_0 ),
        .I3(rst_n),
        .O(\cnt_a[2]_i_2__3_n_0 ));
  FDRE \cnt_a_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_a[0]_i_1__3_n_0 ),
        .Q(cnt_a__0_13[0]),
        .R(1'b0));
  FDRE \cnt_a_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_a[1]_i_1__3_n_0 ),
        .Q(cnt_a__0_13[1]),
        .R(1'b0));
  FDRE \cnt_a_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_a[2]_i_1__3_n_0 ),
        .Q(cnt_a__0_13[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h08484808)) 
    \cnt_b[0]_i_1__3 
       (.I0(cnt_b__0_12[0]),
        .I1(rst_n),
        .I2(\cnt_a_reg[0]_0 ),
        .I3(D[0]),
        .I4(Q),
        .O(\cnt_b[0]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h00A060A060A000A0)) 
    \cnt_b[1]_i_1__3 
       (.I0(cnt_b__0_12[1]),
        .I1(cnt_b__0_12[0]),
        .I2(rst_n),
        .I3(\cnt_a_reg[0]_0 ),
        .I4(D[0]),
        .I5(Q),
        .O(\cnt_b[1]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \cnt_b[2]_i_1__3 
       (.I0(cnt_b__0_12[2]),
        .I1(\cnt_a_reg[0]_0 ),
        .I2(cnt_b__0_12[0]),
        .I3(cnt_b__0_12[1]),
        .I4(\cnt_b[2]_i_2__3_n_0 ),
        .O(\cnt_b[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h90FF)) 
    \cnt_b[2]_i_2__3 
       (.I0(Q),
        .I1(D[0]),
        .I2(\cnt_a_reg[0]_0 ),
        .I3(rst_n),
        .O(\cnt_b[2]_i_2__3_n_0 ));
  FDRE \cnt_b_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_b[0]_i_1__3_n_0 ),
        .Q(cnt_b__0_12[0]),
        .R(1'b0));
  FDRE \cnt_b_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_b[1]_i_1__3_n_0 ),
        .Q(cnt_b__0_12[1]),
        .R(1'b0));
  FDRE \cnt_b_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_b[2]_i_1__3_n_0 ),
        .Q(cnt_b__0_12[2]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6000)) 
    \count[0]_i_1__3 
       (.I0(state_d[0]),
        .I1(state_d[1]),
        .I2(D[1]),
        .I3(D[0]),
        .O(\count[0]_i_1__3_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[0]_i_3__3 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[4]_4 [3]),
        .O(\count[0]_i_3__3_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[0]_i_4__3 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[4]_4 [2]),
        .O(\count[0]_i_4__3_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[0]_i_5__3 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[4]_4 [1]),
        .O(\count[0]_i_5__3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_6 
       (.I0(\enc_count[4]_4 [0]),
        .O(\count[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h65)) 
    \count[12]_i_2__3 
       (.I0(\count_reg[15]_0 [3]),
        .I1(state_d[1]),
        .I2(state_d[0]),
        .O(\count[12]_i_2__3_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[12]_i_3__3 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\count_reg[15]_0 [2]),
        .O(\count[12]_i_3__3_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[12]_i_4__3 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[4]_4 [13]),
        .O(\count[12]_i_4__3_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[12]_i_5__3 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[4]_4 [12]),
        .O(\count[12]_i_5__3_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[4]_i_2__3 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[4]_4 [7]),
        .O(\count[4]_i_2__3_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[4]_i_3__3 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[4]_4 [6]),
        .O(\count[4]_i_3__3_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[4]_i_4__3 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[4]_4 [5]),
        .O(\count[4]_i_4__3_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[4]_i_5__3 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\count_reg[15]_0 [0]),
        .O(\count[4]_i_5__3_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[8]_i_2__3 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[4]_4 [11]),
        .O(\count[8]_i_2__3_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[8]_i_3__3 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[4]_4 [10]),
        .O(\count[8]_i_3__3_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[8]_i_4__3 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[4]_4 [9]),
        .O(\count[8]_i_4__3_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[8]_i_5__3 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\count_reg[15]_0 [1]),
        .O(\count[8]_i_5__3_n_0 ));
  FDRE \count_reg[0] 
       (.C(clk),
        .CE(\count[0]_i_1__3_n_0 ),
        .D(\count_reg[0]_i_2__3_n_7 ),
        .Q(\enc_count[4]_4 [0]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_2__3 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2__3_n_0 ,\count_reg[0]_i_2__3_n_1 ,\count_reg[0]_i_2__3_n_2 ,\count_reg[0]_i_2__3_n_3 }),
        .CYINIT(1'b0),
        .DI({\enc_count[4]_4 [3:1],1'b1}),
        .O({\count_reg[0]_i_2__3_n_4 ,\count_reg[0]_i_2__3_n_5 ,\count_reg[0]_i_2__3_n_6 ,\count_reg[0]_i_2__3_n_7 }),
        .S({\count[0]_i_3__3_n_0 ,\count[0]_i_4__3_n_0 ,\count[0]_i_5__3_n_0 ,\count[0]_i_6_n_0 }));
  FDRE \count_reg[10] 
       (.C(clk),
        .CE(\count[0]_i_1__3_n_0 ),
        .D(\count_reg[8]_i_1__3_n_5 ),
        .Q(\enc_count[4]_4 [10]),
        .R(p_0_in));
  FDRE \count_reg[11] 
       (.C(clk),
        .CE(\count[0]_i_1__3_n_0 ),
        .D(\count_reg[8]_i_1__3_n_4 ),
        .Q(\enc_count[4]_4 [11]),
        .R(p_0_in));
  FDRE \count_reg[12] 
       (.C(clk),
        .CE(\count[0]_i_1__3_n_0 ),
        .D(\count_reg[12]_i_1__3_n_7 ),
        .Q(\enc_count[4]_4 [12]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1__3 
       (.CI(\count_reg[8]_i_1__3_n_0 ),
        .CO({\NLW_count_reg[12]_i_1__3_CO_UNCONNECTED [3],\count_reg[12]_i_1__3_n_1 ,\count_reg[12]_i_1__3_n_2 ,\count_reg[12]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\count_reg[15]_0 [2],\enc_count[4]_4 [13:12]}),
        .O({\count_reg[12]_i_1__3_n_4 ,\count_reg[12]_i_1__3_n_5 ,\count_reg[12]_i_1__3_n_6 ,\count_reg[12]_i_1__3_n_7 }),
        .S({\count[12]_i_2__3_n_0 ,\count[12]_i_3__3_n_0 ,\count[12]_i_4__3_n_0 ,\count[12]_i_5__3_n_0 }));
  FDRE \count_reg[13] 
       (.C(clk),
        .CE(\count[0]_i_1__3_n_0 ),
        .D(\count_reg[12]_i_1__3_n_6 ),
        .Q(\enc_count[4]_4 [13]),
        .R(p_0_in));
  FDRE \count_reg[14] 
       (.C(clk),
        .CE(\count[0]_i_1__3_n_0 ),
        .D(\count_reg[12]_i_1__3_n_5 ),
        .Q(\count_reg[15]_0 [2]),
        .R(p_0_in));
  FDRE \count_reg[15] 
       (.C(clk),
        .CE(\count[0]_i_1__3_n_0 ),
        .D(\count_reg[12]_i_1__3_n_4 ),
        .Q(\count_reg[15]_0 [3]),
        .R(p_0_in));
  FDRE \count_reg[1] 
       (.C(clk),
        .CE(\count[0]_i_1__3_n_0 ),
        .D(\count_reg[0]_i_2__3_n_6 ),
        .Q(\enc_count[4]_4 [1]),
        .R(p_0_in));
  FDRE \count_reg[2] 
       (.C(clk),
        .CE(\count[0]_i_1__3_n_0 ),
        .D(\count_reg[0]_i_2__3_n_5 ),
        .Q(\enc_count[4]_4 [2]),
        .R(p_0_in));
  FDRE \count_reg[3] 
       (.C(clk),
        .CE(\count[0]_i_1__3_n_0 ),
        .D(\count_reg[0]_i_2__3_n_4 ),
        .Q(\enc_count[4]_4 [3]),
        .R(p_0_in));
  FDRE \count_reg[4] 
       (.C(clk),
        .CE(\count[0]_i_1__3_n_0 ),
        .D(\count_reg[4]_i_1__3_n_7 ),
        .Q(\count_reg[15]_0 [0]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1__3 
       (.CI(\count_reg[0]_i_2__3_n_0 ),
        .CO({\count_reg[4]_i_1__3_n_0 ,\count_reg[4]_i_1__3_n_1 ,\count_reg[4]_i_1__3_n_2 ,\count_reg[4]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI({\enc_count[4]_4 [7:5],\count_reg[15]_0 [0]}),
        .O({\count_reg[4]_i_1__3_n_4 ,\count_reg[4]_i_1__3_n_5 ,\count_reg[4]_i_1__3_n_6 ,\count_reg[4]_i_1__3_n_7 }),
        .S({\count[4]_i_2__3_n_0 ,\count[4]_i_3__3_n_0 ,\count[4]_i_4__3_n_0 ,\count[4]_i_5__3_n_0 }));
  FDRE \count_reg[5] 
       (.C(clk),
        .CE(\count[0]_i_1__3_n_0 ),
        .D(\count_reg[4]_i_1__3_n_6 ),
        .Q(\enc_count[4]_4 [5]),
        .R(p_0_in));
  FDRE \count_reg[6] 
       (.C(clk),
        .CE(\count[0]_i_1__3_n_0 ),
        .D(\count_reg[4]_i_1__3_n_5 ),
        .Q(\enc_count[4]_4 [6]),
        .R(p_0_in));
  FDRE \count_reg[7] 
       (.C(clk),
        .CE(\count[0]_i_1__3_n_0 ),
        .D(\count_reg[4]_i_1__3_n_4 ),
        .Q(\enc_count[4]_4 [7]),
        .R(p_0_in));
  FDRE \count_reg[8] 
       (.C(clk),
        .CE(\count[0]_i_1__3_n_0 ),
        .D(\count_reg[8]_i_1__3_n_7 ),
        .Q(\count_reg[15]_0 [1]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1__3 
       (.CI(\count_reg[4]_i_1__3_n_0 ),
        .CO({\count_reg[8]_i_1__3_n_0 ,\count_reg[8]_i_1__3_n_1 ,\count_reg[8]_i_1__3_n_2 ,\count_reg[8]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI({\enc_count[4]_4 [11:9],\count_reg[15]_0 [1]}),
        .O({\count_reg[8]_i_1__3_n_4 ,\count_reg[8]_i_1__3_n_5 ,\count_reg[8]_i_1__3_n_6 ,\count_reg[8]_i_1__3_n_7 }),
        .S({\count[8]_i_2__3_n_0 ,\count[8]_i_3__3_n_0 ,\count[8]_i_4__3_n_0 ,\count[8]_i_5__3_n_0 }));
  FDRE \count_reg[9] 
       (.C(clk),
        .CE(\count[0]_i_1__3_n_0 ),
        .D(\count_reg[8]_i_1__3_n_6 ),
        .Q(\enc_count[4]_4 [9]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hABABABFBFBFBABFB)) 
    \s_axi_rdata[0]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(\s_axi_rdata[0]_i_2_n_0 ),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(\s_axi_rdata_reg[0]_0 ),
        .I4(\s_axi_rdata_reg[0]_1 ),
        .I5(\s_axi_rdata_reg[0]_2 ),
        .O(\s_axi_araddr[7] [0]));
  LUT6 #(
    .INIT(64'h0035000000000000)) 
    \s_axi_rdata[0]_i_2 
       (.I0(\enc_count[4]_4 [0]),
        .I1(\enc_count[5]_5 [0]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[2]),
        .I5(\s_axi_rdata_reg[0]_1 ),
        .O(\s_axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABABABFBFBFBABFB)) 
    \s_axi_rdata[10]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(\s_axi_rdata[10]_i_2_n_0 ),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(\s_axi_rdata_reg[10] ),
        .I4(\s_axi_rdata_reg[0]_1 ),
        .I5(\s_axi_rdata_reg[10]_0 ),
        .O(\s_axi_araddr[7] [8]));
  LUT6 #(
    .INIT(64'h0035000000000000)) 
    \s_axi_rdata[10]_i_2 
       (.I0(\enc_count[4]_4 [10]),
        .I1(\enc_count[5]_5 [8]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[2]),
        .I5(\s_axi_rdata_reg[0]_1 ),
        .O(\s_axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABABABFBFBFBABFB)) 
    \s_axi_rdata[11]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(\s_axi_rdata[11]_i_2_n_0 ),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(\s_axi_rdata_reg[11] ),
        .I4(\s_axi_rdata_reg[0]_1 ),
        .I5(\s_axi_rdata_reg[11]_0 ),
        .O(\s_axi_araddr[7] [9]));
  LUT6 #(
    .INIT(64'h0035000000000000)) 
    \s_axi_rdata[11]_i_2 
       (.I0(\enc_count[4]_4 [11]),
        .I1(\enc_count[5]_5 [9]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[2]),
        .I5(\s_axi_rdata_reg[0]_1 ),
        .O(\s_axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABABABFBFBFBABFB)) 
    \s_axi_rdata[12]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(\s_axi_rdata[12]_i_2_n_0 ),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(\s_axi_rdata_reg[12] ),
        .I4(\s_axi_rdata_reg[0]_1 ),
        .I5(\s_axi_rdata_reg[12]_0 ),
        .O(\s_axi_araddr[7] [10]));
  LUT6 #(
    .INIT(64'h0035000000000000)) 
    \s_axi_rdata[12]_i_2 
       (.I0(\enc_count[4]_4 [12]),
        .I1(\enc_count[5]_5 [10]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[2]),
        .I5(\s_axi_rdata_reg[0]_1 ),
        .O(\s_axi_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABABABFBFBFBABFB)) 
    \s_axi_rdata[13]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(\s_axi_rdata[13]_i_2_n_0 ),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(\s_axi_rdata_reg[13] ),
        .I4(\s_axi_rdata_reg[0]_1 ),
        .I5(\s_axi_rdata_reg[13]_0 ),
        .O(\s_axi_araddr[7] [11]));
  LUT6 #(
    .INIT(64'h0035000000000000)) 
    \s_axi_rdata[13]_i_2 
       (.I0(\enc_count[4]_4 [13]),
        .I1(\enc_count[5]_5 [11]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[2]),
        .I5(\s_axi_rdata_reg[0]_1 ),
        .O(\s_axi_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABABABFBFBFBABFB)) 
    \s_axi_rdata[1]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(\s_axi_rdata[1]_i_2_n_0 ),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(\s_axi_rdata_reg[1] ),
        .I4(\s_axi_rdata_reg[0]_1 ),
        .I5(\s_axi_rdata_reg[1]_0 ),
        .O(\s_axi_araddr[7] [1]));
  LUT6 #(
    .INIT(64'h0035000000000000)) 
    \s_axi_rdata[1]_i_2 
       (.I0(\enc_count[4]_4 [1]),
        .I1(\enc_count[5]_5 [1]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[2]),
        .I5(\s_axi_rdata_reg[0]_1 ),
        .O(\s_axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABABABFBFBFBABFB)) 
    \s_axi_rdata[2]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(\s_axi_rdata[2]_i_2_n_0 ),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(\s_axi_rdata_reg[2] ),
        .I4(\s_axi_rdata_reg[0]_1 ),
        .I5(\s_axi_rdata_reg[2]_0 ),
        .O(\s_axi_araddr[7] [2]));
  LUT6 #(
    .INIT(64'h0035000000000000)) 
    \s_axi_rdata[2]_i_2 
       (.I0(\enc_count[4]_4 [2]),
        .I1(\enc_count[5]_5 [2]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[2]),
        .I5(\s_axi_rdata_reg[0]_1 ),
        .O(\s_axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABABABFBFBFBABFB)) 
    \s_axi_rdata[3]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(\s_axi_rdata[3]_i_2_n_0 ),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(\s_axi_rdata_reg[3] ),
        .I4(\s_axi_rdata_reg[0]_1 ),
        .I5(\s_axi_rdata_reg[3]_0 ),
        .O(\s_axi_araddr[7] [3]));
  LUT6 #(
    .INIT(64'h0035000000000000)) 
    \s_axi_rdata[3]_i_2 
       (.I0(\enc_count[4]_4 [3]),
        .I1(\enc_count[5]_5 [3]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[2]),
        .I5(\s_axi_rdata_reg[0]_1 ),
        .O(\s_axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABABABFBFBFBABFB)) 
    \s_axi_rdata[5]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(\s_axi_rdata[5]_i_2_n_0 ),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(\s_axi_rdata_reg[5] ),
        .I4(\s_axi_rdata_reg[0]_1 ),
        .I5(\s_axi_rdata_reg[5]_0 ),
        .O(\s_axi_araddr[7] [4]));
  LUT6 #(
    .INIT(64'h0035000000000000)) 
    \s_axi_rdata[5]_i_2 
       (.I0(\enc_count[4]_4 [5]),
        .I1(\enc_count[5]_5 [4]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[2]),
        .I5(\s_axi_rdata_reg[0]_1 ),
        .O(\s_axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABABABFBFBFBABFB)) 
    \s_axi_rdata[6]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(\s_axi_rdata[6]_i_2_n_0 ),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(\s_axi_rdata_reg[6] ),
        .I4(\s_axi_rdata_reg[0]_1 ),
        .I5(\s_axi_rdata_reg[6]_0 ),
        .O(\s_axi_araddr[7] [5]));
  LUT6 #(
    .INIT(64'h0035000000000000)) 
    \s_axi_rdata[6]_i_2 
       (.I0(\enc_count[4]_4 [6]),
        .I1(\enc_count[5]_5 [5]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[2]),
        .I5(\s_axi_rdata_reg[0]_1 ),
        .O(\s_axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABABABFBFBFBABFB)) 
    \s_axi_rdata[7]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(\s_axi_rdata[7]_i_2_n_0 ),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(\s_axi_rdata_reg[7] ),
        .I4(\s_axi_rdata_reg[0]_1 ),
        .I5(\s_axi_rdata_reg[7]_0 ),
        .O(\s_axi_araddr[7] [6]));
  LUT6 #(
    .INIT(64'h0035000000000000)) 
    \s_axi_rdata[7]_i_2 
       (.I0(\enc_count[4]_4 [7]),
        .I1(\enc_count[5]_5 [6]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[2]),
        .I5(\s_axi_rdata_reg[0]_1 ),
        .O(\s_axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABABABFBFBFBABFB)) 
    \s_axi_rdata[9]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(\s_axi_rdata[9]_i_2_n_0 ),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(\s_axi_rdata_reg[9] ),
        .I4(\s_axi_rdata_reg[0]_1 ),
        .I5(\s_axi_rdata_reg[9]_0 ),
        .O(\s_axi_araddr[7] [7]));
  LUT6 #(
    .INIT(64'h0035000000000000)) 
    \s_axi_rdata[9]_i_2 
       (.I0(\enc_count[4]_4 [9]),
        .I1(\enc_count[5]_5 [7]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[2]),
        .I5(\s_axi_rdata_reg[0]_1 ),
        .O(\s_axi_rdata[9]_i_2_n_0 ));
  FDSE \state_d_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(state_d[0]),
        .S(p_0_in));
  FDSE \state_d_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(state_d[1]),
        .S(p_0_in));
endmodule

(* ORIG_REF_NAME = "quad_decoder" *) 
module design_1_fx_system_wrapper_0_1_quad_decoder_4
   (D,
    \count_reg[13]_0 ,
    Q,
    \a_sync_reg[1]_0 ,
    \count_reg[15]_0 ,
    \s_axi_araddr[5] ,
    \s_axi_araddr[7] ,
    \count_reg[4]_0 ,
    \count_reg[8]_0 ,
    \count_reg[14]_0 ,
    cnt_b__0_14,
    cnt_a__0_15,
    p_0_in,
    clean_b_reg_0,
    clk,
    clean_a_reg_0,
    \cnt_a_reg[0]_0 ,
    rst_n,
    s_axi_araddr,
    \s_axi_rdata_reg[17] ,
    \s_axi_rdata_reg[17]_0 ,
    \s_axi_rdata_reg[15] ,
    \s_axi_rdata_reg[15]_0 ,
    \s_axi_rdata_reg[16] ,
    \s_axi_rdata_reg[18] ,
    \s_axi_rdata_reg[19] ,
    \s_axi_rdata_reg[21] ,
    \s_axi_rdata_reg[23] ,
    \s_axi_rdata_reg[25] ,
    \s_axi_rdata_reg[26] ,
    \s_axi_rdata_reg[27] ,
    \s_axi_rdata_reg[28] ,
    \s_axi_rdata_reg[30] ,
    \s_axi_rdata_reg[15]_1 ,
    \s_axi_rdata_reg[15]_2 ,
    \s_axi_rdata_reg[15]_3 ,
    enc_b,
    enc_a);
  output [1:0]D;
  output [11:0]\count_reg[13]_0 ;
  output [0:0]Q;
  output [0:0]\a_sync_reg[1]_0 ;
  output \count_reg[15]_0 ;
  output [10:0]\s_axi_araddr[5] ;
  output \s_axi_araddr[7] ;
  output \count_reg[4]_0 ;
  output \count_reg[8]_0 ;
  output \count_reg[14]_0 ;
  output [2:0]cnt_b__0_14;
  output [2:0]cnt_a__0_15;
  input p_0_in;
  input clean_b_reg_0;
  input clk;
  input clean_a_reg_0;
  input \cnt_a_reg[0]_0 ;
  input rst_n;
  input [5:0]s_axi_araddr;
  input [3:0]\s_axi_rdata_reg[17] ;
  input \s_axi_rdata_reg[17]_0 ;
  input \s_axi_rdata_reg[15] ;
  input \s_axi_rdata_reg[15]_0 ;
  input \s_axi_rdata_reg[16] ;
  input \s_axi_rdata_reg[18] ;
  input \s_axi_rdata_reg[19] ;
  input \s_axi_rdata_reg[21] ;
  input \s_axi_rdata_reg[23] ;
  input \s_axi_rdata_reg[25] ;
  input \s_axi_rdata_reg[26] ;
  input \s_axi_rdata_reg[27] ;
  input \s_axi_rdata_reg[28] ;
  input \s_axi_rdata_reg[30] ;
  input \s_axi_rdata_reg[15]_1 ;
  input \s_axi_rdata_reg[15]_2 ;
  input \s_axi_rdata_reg[15]_3 ;
  input [0:0]enc_b;
  input [0:0]enc_a;

  wire [1:0]D;
  wire [0:0]Q;
  wire [0:0]\a_sync_reg[1]_0 ;
  wire clean_a_reg_0;
  wire clean_b_reg_0;
  wire clk;
  wire \cnt_a[0]_i_1__4_n_0 ;
  wire \cnt_a[1]_i_1__4_n_0 ;
  wire \cnt_a[2]_i_1__4_n_0 ;
  wire \cnt_a[2]_i_2__4_n_0 ;
  wire [2:0]cnt_a__0_15;
  wire \cnt_a_reg[0]_0 ;
  wire \cnt_b[0]_i_1__4_n_0 ;
  wire \cnt_b[1]_i_1__4_n_0 ;
  wire \cnt_b[2]_i_1__4_n_0 ;
  wire \cnt_b[2]_i_2__4_n_0 ;
  wire [2:0]cnt_b__0_14;
  wire \count[0]_i_1__4_n_0 ;
  wire \count[0]_i_3__4_n_0 ;
  wire \count[0]_i_4__4_n_0 ;
  wire \count[0]_i_5__4_n_0 ;
  wire \count[0]_i_6__0_n_0 ;
  wire \count[12]_i_2__4_n_0 ;
  wire \count[12]_i_3__4_n_0 ;
  wire \count[12]_i_4__4_n_0 ;
  wire \count[12]_i_5__4_n_0 ;
  wire \count[4]_i_2__4_n_0 ;
  wire \count[4]_i_3__4_n_0 ;
  wire \count[4]_i_4__4_n_0 ;
  wire \count[4]_i_5__4_n_0 ;
  wire \count[8]_i_2__4_n_0 ;
  wire \count[8]_i_3__4_n_0 ;
  wire \count[8]_i_4__4_n_0 ;
  wire \count[8]_i_5__4_n_0 ;
  wire \count_reg[0]_i_2__4_n_0 ;
  wire \count_reg[0]_i_2__4_n_1 ;
  wire \count_reg[0]_i_2__4_n_2 ;
  wire \count_reg[0]_i_2__4_n_3 ;
  wire \count_reg[0]_i_2__4_n_4 ;
  wire \count_reg[0]_i_2__4_n_5 ;
  wire \count_reg[0]_i_2__4_n_6 ;
  wire \count_reg[0]_i_2__4_n_7 ;
  wire \count_reg[12]_i_1__4_n_1 ;
  wire \count_reg[12]_i_1__4_n_2 ;
  wire \count_reg[12]_i_1__4_n_3 ;
  wire \count_reg[12]_i_1__4_n_4 ;
  wire \count_reg[12]_i_1__4_n_5 ;
  wire \count_reg[12]_i_1__4_n_6 ;
  wire \count_reg[12]_i_1__4_n_7 ;
  wire [11:0]\count_reg[13]_0 ;
  wire \count_reg[14]_0 ;
  wire \count_reg[15]_0 ;
  wire \count_reg[4]_0 ;
  wire \count_reg[4]_i_1__4_n_0 ;
  wire \count_reg[4]_i_1__4_n_1 ;
  wire \count_reg[4]_i_1__4_n_2 ;
  wire \count_reg[4]_i_1__4_n_3 ;
  wire \count_reg[4]_i_1__4_n_4 ;
  wire \count_reg[4]_i_1__4_n_5 ;
  wire \count_reg[4]_i_1__4_n_6 ;
  wire \count_reg[4]_i_1__4_n_7 ;
  wire \count_reg[8]_0 ;
  wire \count_reg[8]_i_1__4_n_0 ;
  wire \count_reg[8]_i_1__4_n_1 ;
  wire \count_reg[8]_i_1__4_n_2 ;
  wire \count_reg[8]_i_1__4_n_3 ;
  wire \count_reg[8]_i_1__4_n_4 ;
  wire \count_reg[8]_i_1__4_n_5 ;
  wire \count_reg[8]_i_1__4_n_6 ;
  wire \count_reg[8]_i_1__4_n_7 ;
  wire [0:0]enc_a;
  wire [0:0]enc_b;
  wire [15:4]\enc_count[5]_5 ;
  wire p_0_in;
  wire [1:1]p_0_in_0;
  wire [1:1]p_0_in__0;
  wire rst_n;
  wire [5:0]s_axi_araddr;
  wire [10:0]\s_axi_araddr[5] ;
  wire \s_axi_araddr[7] ;
  wire \s_axi_rdata_reg[15] ;
  wire \s_axi_rdata_reg[15]_0 ;
  wire \s_axi_rdata_reg[15]_1 ;
  wire \s_axi_rdata_reg[15]_2 ;
  wire \s_axi_rdata_reg[15]_3 ;
  wire \s_axi_rdata_reg[16] ;
  wire [3:0]\s_axi_rdata_reg[17] ;
  wire \s_axi_rdata_reg[17]_0 ;
  wire \s_axi_rdata_reg[18] ;
  wire \s_axi_rdata_reg[19] ;
  wire \s_axi_rdata_reg[21] ;
  wire \s_axi_rdata_reg[23] ;
  wire \s_axi_rdata_reg[25] ;
  wire \s_axi_rdata_reg[26] ;
  wire \s_axi_rdata_reg[27] ;
  wire \s_axi_rdata_reg[28] ;
  wire \s_axi_rdata_reg[30] ;
  wire [1:0]state_d;
  wire [3:3]\NLW_count_reg[12]_i_1__4_CO_UNCONNECTED ;

  FDRE \a_sync_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(enc_a),
        .Q(p_0_in__0),
        .R(1'b0));
  FDRE \a_sync_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0),
        .Q(\a_sync_reg[1]_0 ),
        .R(1'b0));
  FDRE \b_sync_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(enc_b),
        .Q(p_0_in_0),
        .R(1'b0));
  FDRE \b_sync_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in_0),
        .Q(Q),
        .R(1'b0));
  FDSE clean_a_reg
       (.C(clk),
        .CE(1'b1),
        .D(clean_a_reg_0),
        .Q(D[1]),
        .S(p_0_in));
  FDSE clean_b_reg
       (.C(clk),
        .CE(1'b1),
        .D(clean_b_reg_0),
        .Q(D[0]),
        .S(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h08484808)) 
    \cnt_a[0]_i_1__4 
       (.I0(cnt_a__0_15[0]),
        .I1(rst_n),
        .I2(\cnt_a_reg[0]_0 ),
        .I3(D[1]),
        .I4(\a_sync_reg[1]_0 ),
        .O(\cnt_a[0]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h00A060A060A000A0)) 
    \cnt_a[1]_i_1__4 
       (.I0(cnt_a__0_15[1]),
        .I1(cnt_a__0_15[0]),
        .I2(rst_n),
        .I3(\cnt_a_reg[0]_0 ),
        .I4(D[1]),
        .I5(\a_sync_reg[1]_0 ),
        .O(\cnt_a[1]_i_1__4_n_0 ));
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \cnt_a[2]_i_1__4 
       (.I0(cnt_a__0_15[2]),
        .I1(\cnt_a_reg[0]_0 ),
        .I2(cnt_a__0_15[0]),
        .I3(cnt_a__0_15[1]),
        .I4(\cnt_a[2]_i_2__4_n_0 ),
        .O(\cnt_a[2]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h90FF)) 
    \cnt_a[2]_i_2__4 
       (.I0(\a_sync_reg[1]_0 ),
        .I1(D[1]),
        .I2(\cnt_a_reg[0]_0 ),
        .I3(rst_n),
        .O(\cnt_a[2]_i_2__4_n_0 ));
  FDRE \cnt_a_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_a[0]_i_1__4_n_0 ),
        .Q(cnt_a__0_15[0]),
        .R(1'b0));
  FDRE \cnt_a_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_a[1]_i_1__4_n_0 ),
        .Q(cnt_a__0_15[1]),
        .R(1'b0));
  FDRE \cnt_a_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_a[2]_i_1__4_n_0 ),
        .Q(cnt_a__0_15[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h08484808)) 
    \cnt_b[0]_i_1__4 
       (.I0(cnt_b__0_14[0]),
        .I1(rst_n),
        .I2(\cnt_a_reg[0]_0 ),
        .I3(D[0]),
        .I4(Q),
        .O(\cnt_b[0]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h00A060A060A000A0)) 
    \cnt_b[1]_i_1__4 
       (.I0(cnt_b__0_14[1]),
        .I1(cnt_b__0_14[0]),
        .I2(rst_n),
        .I3(\cnt_a_reg[0]_0 ),
        .I4(D[0]),
        .I5(Q),
        .O(\cnt_b[1]_i_1__4_n_0 ));
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \cnt_b[2]_i_1__4 
       (.I0(cnt_b__0_14[2]),
        .I1(\cnt_a_reg[0]_0 ),
        .I2(cnt_b__0_14[0]),
        .I3(cnt_b__0_14[1]),
        .I4(\cnt_b[2]_i_2__4_n_0 ),
        .O(\cnt_b[2]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h90FF)) 
    \cnt_b[2]_i_2__4 
       (.I0(Q),
        .I1(D[0]),
        .I2(\cnt_a_reg[0]_0 ),
        .I3(rst_n),
        .O(\cnt_b[2]_i_2__4_n_0 ));
  FDRE \cnt_b_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_b[0]_i_1__4_n_0 ),
        .Q(cnt_b__0_14[0]),
        .R(1'b0));
  FDRE \cnt_b_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_b[1]_i_1__4_n_0 ),
        .Q(cnt_b__0_14[1]),
        .R(1'b0));
  FDRE \cnt_b_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_b[2]_i_1__4_n_0 ),
        .Q(cnt_b__0_14[2]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6000)) 
    \count[0]_i_1__4 
       (.I0(state_d[0]),
        .I1(state_d[1]),
        .I2(D[1]),
        .I3(D[0]),
        .O(\count[0]_i_1__4_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[0]_i_3__4 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\count_reg[13]_0 [3]),
        .O(\count[0]_i_3__4_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[0]_i_4__4 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\count_reg[13]_0 [2]),
        .O(\count[0]_i_4__4_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[0]_i_5__4 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\count_reg[13]_0 [1]),
        .O(\count[0]_i_5__4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_6__0 
       (.I0(\count_reg[13]_0 [0]),
        .O(\count[0]_i_6__0_n_0 ));
  LUT3 #(
    .INIT(8'h65)) 
    \count[12]_i_2__4 
       (.I0(\enc_count[5]_5 [15]),
        .I1(state_d[1]),
        .I2(state_d[0]),
        .O(\count[12]_i_2__4_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[12]_i_3__4 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[5]_5 [14]),
        .O(\count[12]_i_3__4_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[12]_i_4__4 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\count_reg[13]_0 [11]),
        .O(\count[12]_i_4__4_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[12]_i_5__4 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\count_reg[13]_0 [10]),
        .O(\count[12]_i_5__4_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[4]_i_2__4 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\count_reg[13]_0 [6]),
        .O(\count[4]_i_2__4_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[4]_i_3__4 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\count_reg[13]_0 [5]),
        .O(\count[4]_i_3__4_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[4]_i_4__4 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\count_reg[13]_0 [4]),
        .O(\count[4]_i_4__4_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[4]_i_5__4 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[5]_5 [4]),
        .O(\count[4]_i_5__4_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[8]_i_2__4 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\count_reg[13]_0 [9]),
        .O(\count[8]_i_2__4_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[8]_i_3__4 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\count_reg[13]_0 [8]),
        .O(\count[8]_i_3__4_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[8]_i_4__4 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\count_reg[13]_0 [7]),
        .O(\count[8]_i_4__4_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \count[8]_i_5__4 
       (.I0(state_d[1]),
        .I1(state_d[0]),
        .I2(\enc_count[5]_5 [8]),
        .O(\count[8]_i_5__4_n_0 ));
  FDRE \count_reg[0] 
       (.C(clk),
        .CE(\count[0]_i_1__4_n_0 ),
        .D(\count_reg[0]_i_2__4_n_7 ),
        .Q(\count_reg[13]_0 [0]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_2__4 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2__4_n_0 ,\count_reg[0]_i_2__4_n_1 ,\count_reg[0]_i_2__4_n_2 ,\count_reg[0]_i_2__4_n_3 }),
        .CYINIT(1'b0),
        .DI({\count_reg[13]_0 [3:1],1'b1}),
        .O({\count_reg[0]_i_2__4_n_4 ,\count_reg[0]_i_2__4_n_5 ,\count_reg[0]_i_2__4_n_6 ,\count_reg[0]_i_2__4_n_7 }),
        .S({\count[0]_i_3__4_n_0 ,\count[0]_i_4__4_n_0 ,\count[0]_i_5__4_n_0 ,\count[0]_i_6__0_n_0 }));
  FDRE \count_reg[10] 
       (.C(clk),
        .CE(\count[0]_i_1__4_n_0 ),
        .D(\count_reg[8]_i_1__4_n_5 ),
        .Q(\count_reg[13]_0 [8]),
        .R(p_0_in));
  FDRE \count_reg[11] 
       (.C(clk),
        .CE(\count[0]_i_1__4_n_0 ),
        .D(\count_reg[8]_i_1__4_n_4 ),
        .Q(\count_reg[13]_0 [9]),
        .R(p_0_in));
  FDRE \count_reg[12] 
       (.C(clk),
        .CE(\count[0]_i_1__4_n_0 ),
        .D(\count_reg[12]_i_1__4_n_7 ),
        .Q(\count_reg[13]_0 [10]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1__4 
       (.CI(\count_reg[8]_i_1__4_n_0 ),
        .CO({\NLW_count_reg[12]_i_1__4_CO_UNCONNECTED [3],\count_reg[12]_i_1__4_n_1 ,\count_reg[12]_i_1__4_n_2 ,\count_reg[12]_i_1__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\enc_count[5]_5 [14],\count_reg[13]_0 [11:10]}),
        .O({\count_reg[12]_i_1__4_n_4 ,\count_reg[12]_i_1__4_n_5 ,\count_reg[12]_i_1__4_n_6 ,\count_reg[12]_i_1__4_n_7 }),
        .S({\count[12]_i_2__4_n_0 ,\count[12]_i_3__4_n_0 ,\count[12]_i_4__4_n_0 ,\count[12]_i_5__4_n_0 }));
  FDRE \count_reg[13] 
       (.C(clk),
        .CE(\count[0]_i_1__4_n_0 ),
        .D(\count_reg[12]_i_1__4_n_6 ),
        .Q(\count_reg[13]_0 [11]),
        .R(p_0_in));
  FDRE \count_reg[14] 
       (.C(clk),
        .CE(\count[0]_i_1__4_n_0 ),
        .D(\count_reg[12]_i_1__4_n_5 ),
        .Q(\enc_count[5]_5 [14]),
        .R(p_0_in));
  FDRE \count_reg[15] 
       (.C(clk),
        .CE(\count[0]_i_1__4_n_0 ),
        .D(\count_reg[12]_i_1__4_n_4 ),
        .Q(\enc_count[5]_5 [15]),
        .R(p_0_in));
  FDRE \count_reg[1] 
       (.C(clk),
        .CE(\count[0]_i_1__4_n_0 ),
        .D(\count_reg[0]_i_2__4_n_6 ),
        .Q(\count_reg[13]_0 [1]),
        .R(p_0_in));
  FDRE \count_reg[2] 
       (.C(clk),
        .CE(\count[0]_i_1__4_n_0 ),
        .D(\count_reg[0]_i_2__4_n_5 ),
        .Q(\count_reg[13]_0 [2]),
        .R(p_0_in));
  FDRE \count_reg[3] 
       (.C(clk),
        .CE(\count[0]_i_1__4_n_0 ),
        .D(\count_reg[0]_i_2__4_n_4 ),
        .Q(\count_reg[13]_0 [3]),
        .R(p_0_in));
  FDRE \count_reg[4] 
       (.C(clk),
        .CE(\count[0]_i_1__4_n_0 ),
        .D(\count_reg[4]_i_1__4_n_7 ),
        .Q(\enc_count[5]_5 [4]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1__4 
       (.CI(\count_reg[0]_i_2__4_n_0 ),
        .CO({\count_reg[4]_i_1__4_n_0 ,\count_reg[4]_i_1__4_n_1 ,\count_reg[4]_i_1__4_n_2 ,\count_reg[4]_i_1__4_n_3 }),
        .CYINIT(1'b0),
        .DI({\count_reg[13]_0 [6:4],\enc_count[5]_5 [4]}),
        .O({\count_reg[4]_i_1__4_n_4 ,\count_reg[4]_i_1__4_n_5 ,\count_reg[4]_i_1__4_n_6 ,\count_reg[4]_i_1__4_n_7 }),
        .S({\count[4]_i_2__4_n_0 ,\count[4]_i_3__4_n_0 ,\count[4]_i_4__4_n_0 ,\count[4]_i_5__4_n_0 }));
  FDRE \count_reg[5] 
       (.C(clk),
        .CE(\count[0]_i_1__4_n_0 ),
        .D(\count_reg[4]_i_1__4_n_6 ),
        .Q(\count_reg[13]_0 [4]),
        .R(p_0_in));
  FDRE \count_reg[6] 
       (.C(clk),
        .CE(\count[0]_i_1__4_n_0 ),
        .D(\count_reg[4]_i_1__4_n_5 ),
        .Q(\count_reg[13]_0 [5]),
        .R(p_0_in));
  FDRE \count_reg[7] 
       (.C(clk),
        .CE(\count[0]_i_1__4_n_0 ),
        .D(\count_reg[4]_i_1__4_n_4 ),
        .Q(\count_reg[13]_0 [6]),
        .R(p_0_in));
  FDRE \count_reg[8] 
       (.C(clk),
        .CE(\count[0]_i_1__4_n_0 ),
        .D(\count_reg[8]_i_1__4_n_7 ),
        .Q(\enc_count[5]_5 [8]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1__4 
       (.CI(\count_reg[4]_i_1__4_n_0 ),
        .CO({\count_reg[8]_i_1__4_n_0 ,\count_reg[8]_i_1__4_n_1 ,\count_reg[8]_i_1__4_n_2 ,\count_reg[8]_i_1__4_n_3 }),
        .CYINIT(1'b0),
        .DI({\count_reg[13]_0 [9:7],\enc_count[5]_5 [8]}),
        .O({\count_reg[8]_i_1__4_n_4 ,\count_reg[8]_i_1__4_n_5 ,\count_reg[8]_i_1__4_n_6 ,\count_reg[8]_i_1__4_n_7 }),
        .S({\count[8]_i_2__4_n_0 ,\count[8]_i_3__4_n_0 ,\count[8]_i_4__4_n_0 ,\count[8]_i_5__4_n_0 }));
  FDRE \count_reg[9] 
       (.C(clk),
        .CE(\count[0]_i_1__4_n_0 ),
        .D(\count_reg[8]_i_1__4_n_6 ),
        .Q(\count_reg[13]_0 [7]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFF75FFFFFF7FFFFF)) 
    \s_axi_rdata[14]_i_4 
       (.I0(\s_axi_rdata_reg[17]_0 ),
        .I1(\enc_count[5]_5 [14]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[4]),
        .I5(\s_axi_rdata_reg[17] [2]),
        .O(\count_reg[14]_0 ));
  LUT6 #(
    .INIT(64'hABABABAAAAAAABAA)) 
    \s_axi_rdata[15]_i_1 
       (.I0(\s_axi_araddr[7] ),
        .I1(s_axi_araddr[3]),
        .I2(s_axi_araddr[2]),
        .I3(\s_axi_rdata_reg[15] ),
        .I4(s_axi_araddr[4]),
        .I5(\s_axi_rdata_reg[15]_0 ),
        .O(\s_axi_araddr[5] [0]));
  LUT6 #(
    .INIT(64'hABABABAAAAAAABAA)) 
    \s_axi_rdata[16]_i_1 
       (.I0(\s_axi_araddr[7] ),
        .I1(s_axi_araddr[3]),
        .I2(s_axi_araddr[2]),
        .I3(\s_axi_rdata_reg[16] ),
        .I4(s_axi_araddr[4]),
        .I5(\s_axi_rdata_reg[15]_0 ),
        .O(\s_axi_araddr[5] [1]));
  LUT6 #(
    .INIT(64'hABABABAAAAAAABAA)) 
    \s_axi_rdata[18]_i_1 
       (.I0(\s_axi_araddr[7] ),
        .I1(s_axi_araddr[3]),
        .I2(s_axi_araddr[2]),
        .I3(\s_axi_rdata_reg[18] ),
        .I4(s_axi_araddr[4]),
        .I5(\s_axi_rdata_reg[15]_0 ),
        .O(\s_axi_araddr[5] [2]));
  LUT6 #(
    .INIT(64'hABABABAAAAAAABAA)) 
    \s_axi_rdata[19]_i_1 
       (.I0(\s_axi_araddr[7] ),
        .I1(s_axi_araddr[3]),
        .I2(s_axi_araddr[2]),
        .I3(\s_axi_rdata_reg[19] ),
        .I4(s_axi_araddr[4]),
        .I5(\s_axi_rdata_reg[15]_0 ),
        .O(\s_axi_araddr[5] [3]));
  LUT6 #(
    .INIT(64'hABABABAAAAAAABAA)) 
    \s_axi_rdata[21]_i_1 
       (.I0(\s_axi_araddr[7] ),
        .I1(s_axi_araddr[3]),
        .I2(s_axi_araddr[2]),
        .I3(\s_axi_rdata_reg[21] ),
        .I4(s_axi_araddr[4]),
        .I5(\s_axi_rdata_reg[15]_0 ),
        .O(\s_axi_araddr[5] [4]));
  LUT6 #(
    .INIT(64'hABABABAAAAAAABAA)) 
    \s_axi_rdata[23]_i_1 
       (.I0(\s_axi_araddr[7] ),
        .I1(s_axi_araddr[3]),
        .I2(s_axi_araddr[2]),
        .I3(\s_axi_rdata_reg[23] ),
        .I4(s_axi_araddr[4]),
        .I5(\s_axi_rdata_reg[15]_0 ),
        .O(\s_axi_araddr[5] [5]));
  LUT6 #(
    .INIT(64'hABABABAAAAAAABAA)) 
    \s_axi_rdata[25]_i_1 
       (.I0(\s_axi_araddr[7] ),
        .I1(s_axi_araddr[3]),
        .I2(s_axi_araddr[2]),
        .I3(\s_axi_rdata_reg[25] ),
        .I4(s_axi_araddr[4]),
        .I5(\s_axi_rdata_reg[15]_0 ),
        .O(\s_axi_araddr[5] [6]));
  LUT6 #(
    .INIT(64'hABABABAAAAAAABAA)) 
    \s_axi_rdata[26]_i_1 
       (.I0(\s_axi_araddr[7] ),
        .I1(s_axi_araddr[3]),
        .I2(s_axi_araddr[2]),
        .I3(\s_axi_rdata_reg[26] ),
        .I4(s_axi_araddr[4]),
        .I5(\s_axi_rdata_reg[15]_0 ),
        .O(\s_axi_araddr[5] [7]));
  LUT6 #(
    .INIT(64'hABABABAAAAAAABAA)) 
    \s_axi_rdata[27]_i_1 
       (.I0(\s_axi_araddr[7] ),
        .I1(s_axi_araddr[3]),
        .I2(s_axi_araddr[2]),
        .I3(\s_axi_rdata_reg[27] ),
        .I4(s_axi_araddr[4]),
        .I5(\s_axi_rdata_reg[15]_0 ),
        .O(\s_axi_araddr[5] [8]));
  LUT6 #(
    .INIT(64'hABABABAAAAAAABAA)) 
    \s_axi_rdata[28]_i_1 
       (.I0(\s_axi_araddr[7] ),
        .I1(s_axi_araddr[3]),
        .I2(s_axi_araddr[2]),
        .I3(\s_axi_rdata_reg[28] ),
        .I4(s_axi_araddr[4]),
        .I5(\s_axi_rdata_reg[15]_0 ),
        .O(\s_axi_araddr[5] [9]));
  LUT6 #(
    .INIT(64'hFFFF47FFFFFFFFFF)) 
    \s_axi_rdata[29]_i_5 
       (.I0(\enc_count[5]_5 [15]),
        .I1(s_axi_araddr[0]),
        .I2(\s_axi_rdata_reg[17] [3]),
        .I3(s_axi_araddr[4]),
        .I4(s_axi_araddr[1]),
        .I5(\s_axi_rdata_reg[17]_0 ),
        .O(\count_reg[15]_0 ));
  LUT6 #(
    .INIT(64'hABABABAAAAAAABAA)) 
    \s_axi_rdata[30]_i_1 
       (.I0(\s_axi_araddr[7] ),
        .I1(s_axi_araddr[3]),
        .I2(s_axi_araddr[2]),
        .I3(\s_axi_rdata_reg[30] ),
        .I4(s_axi_araddr[4]),
        .I5(\s_axi_rdata_reg[15]_0 ),
        .O(\s_axi_araddr[5] [10]));
  LUT6 #(
    .INIT(64'hBBBBBBBABABABBBA)) 
    \s_axi_rdata[31]_i_4 
       (.I0(s_axi_araddr[5]),
        .I1(\s_axi_rdata_reg[15]_1 ),
        .I2(\s_axi_rdata_reg[15]_2 ),
        .I3(\enc_count[5]_5 [15]),
        .I4(\s_axi_rdata_reg[15]_3 ),
        .I5(\s_axi_rdata_reg[17] [3]),
        .O(\s_axi_araddr[7] ));
  LUT6 #(
    .INIT(64'hFF75FFFFFF7FFFFF)) 
    \s_axi_rdata[4]_i_4 
       (.I0(\s_axi_rdata_reg[17]_0 ),
        .I1(\enc_count[5]_5 [4]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[4]),
        .I5(\s_axi_rdata_reg[17] [0]),
        .O(\count_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hFF75FFFFFF7FFFFF)) 
    \s_axi_rdata[8]_i_4 
       (.I0(\s_axi_rdata_reg[17]_0 ),
        .I1(\enc_count[5]_5 [8]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[4]),
        .I5(\s_axi_rdata_reg[17] [1]),
        .O(\count_reg[8]_0 ));
  FDSE \state_d_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(state_d[0]),
        .S(p_0_in));
  FDSE \state_d_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(state_d[1]),
        .S(p_0_in));
endmodule

(* ORIG_REF_NAME = "tick_gen" *) 
module design_1_fx_system_wrapper_0_1_tick_gen
   (tick_reg_0,
    p_0_in,
    clk,
    rst_n);
  output tick_reg_0;
  input p_0_in;
  input clk;
  input rst_n;

  wire clk;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[0]_i_3_n_0 ;
  wire [11:0]cnt_reg;
  wire \cnt_reg[0]_i_2_n_0 ;
  wire \cnt_reg[0]_i_2_n_1 ;
  wire \cnt_reg[0]_i_2_n_2 ;
  wire \cnt_reg[0]_i_2_n_3 ;
  wire \cnt_reg[0]_i_2_n_4 ;
  wire \cnt_reg[0]_i_2_n_5 ;
  wire \cnt_reg[0]_i_2_n_6 ;
  wire \cnt_reg[0]_i_2_n_7 ;
  wire \cnt_reg[4]_i_1_n_0 ;
  wire \cnt_reg[4]_i_1_n_1 ;
  wire \cnt_reg[4]_i_1_n_2 ;
  wire \cnt_reg[4]_i_1_n_3 ;
  wire \cnt_reg[4]_i_1_n_4 ;
  wire \cnt_reg[4]_i_1_n_5 ;
  wire \cnt_reg[4]_i_1_n_6 ;
  wire \cnt_reg[4]_i_1_n_7 ;
  wire \cnt_reg[8]_i_1_n_1 ;
  wire \cnt_reg[8]_i_1_n_2 ;
  wire \cnt_reg[8]_i_1_n_3 ;
  wire \cnt_reg[8]_i_1_n_4 ;
  wire \cnt_reg[8]_i_1_n_5 ;
  wire \cnt_reg[8]_i_1_n_6 ;
  wire \cnt_reg[8]_i_1_n_7 ;
  wire p_0_in;
  wire rst_n;
  wire tick_i_1_n_0;
  wire tick_i_2_n_0;
  wire tick_i_3_n_0;
  wire tick_reg_0;
  wire [3:3]\NLW_cnt_reg[8]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hB)) 
    \cnt[0]_i_1 
       (.I0(tick_i_1_n_0),
        .I1(rst_n),
        .O(\cnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_3 
       (.I0(cnt_reg[0]),
        .O(\cnt[0]_i_3_n_0 ));
  FDRE \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_7 ),
        .Q(cnt_reg[0]),
        .R(\cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_2_n_0 ,\cnt_reg[0]_i_2_n_1 ,\cnt_reg[0]_i_2_n_2 ,\cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_reg[0]_i_2_n_4 ,\cnt_reg[0]_i_2_n_5 ,\cnt_reg[0]_i_2_n_6 ,\cnt_reg[0]_i_2_n_7 }),
        .S({cnt_reg[3:1],\cnt[0]_i_3_n_0 }));
  FDRE \cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_5 ),
        .Q(cnt_reg[10]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE \cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_4 ),
        .Q(cnt_reg[11]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_6 ),
        .Q(cnt_reg[1]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE \cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_5 ),
        .Q(cnt_reg[2]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE \cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_4 ),
        .Q(cnt_reg[3]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE \cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_7 ),
        .Q(cnt_reg[4]),
        .R(\cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[4]_i_1 
       (.CI(\cnt_reg[0]_i_2_n_0 ),
        .CO({\cnt_reg[4]_i_1_n_0 ,\cnt_reg[4]_i_1_n_1 ,\cnt_reg[4]_i_1_n_2 ,\cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1_n_4 ,\cnt_reg[4]_i_1_n_5 ,\cnt_reg[4]_i_1_n_6 ,\cnt_reg[4]_i_1_n_7 }),
        .S(cnt_reg[7:4]));
  FDRE \cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_6 ),
        .Q(cnt_reg[5]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE \cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_5 ),
        .Q(cnt_reg[6]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE \cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_4 ),
        .Q(cnt_reg[7]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE \cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_7 ),
        .Q(cnt_reg[8]),
        .R(\cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[8]_i_1 
       (.CI(\cnt_reg[4]_i_1_n_0 ),
        .CO({\NLW_cnt_reg[8]_i_1_CO_UNCONNECTED [3],\cnt_reg[8]_i_1_n_1 ,\cnt_reg[8]_i_1_n_2 ,\cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1_n_4 ,\cnt_reg[8]_i_1_n_5 ,\cnt_reg[8]_i_1_n_6 ,\cnt_reg[8]_i_1_n_7 }),
        .S(cnt_reg[11:8]));
  FDRE \cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_6 ),
        .Q(cnt_reg[9]),
        .R(\cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    tick_i_1
       (.I0(cnt_reg[7]),
        .I1(cnt_reg[11]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[3]),
        .I4(tick_i_2_n_0),
        .I5(tick_i_3_n_0),
        .O(tick_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    tick_i_2
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[5]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[10]),
        .O(tick_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFF7)) 
    tick_i_3
       (.I0(cnt_reg[6]),
        .I1(cnt_reg[8]),
        .I2(cnt_reg[4]),
        .I3(cnt_reg[9]),
        .O(tick_i_3_n_0));
  FDRE tick_reg
       (.C(clk),
        .CE(1'b1),
        .D(tick_i_1_n_0),
        .Q(tick_reg_0),
        .R(p_0_in));
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
