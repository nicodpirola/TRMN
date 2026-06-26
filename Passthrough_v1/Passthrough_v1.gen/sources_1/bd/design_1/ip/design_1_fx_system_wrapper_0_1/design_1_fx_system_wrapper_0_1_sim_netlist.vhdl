-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Sat Jun 20 22:31:55 2026
-- Host        : DESKTOP-FLN9N0C running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/Tesis/Passthrough_v1/Passthrough_v1.gen/sources_1/bd/design_1/ip/design_1_fx_system_wrapper_0_1/design_1_fx_system_wrapper_0_1_sim_netlist.vhdl
-- Design      : design_1_fx_system_wrapper_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fx_system_wrapper_0_1_delay_bram is
  port (
    bram_rd_valid : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_reg_0_7_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg_0_11_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg_0_15_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg_0_19_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg_0_23_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg_0_27_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg_0_31_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rd_en : in STD_LOGIC;
    clk : in STD_LOGIC;
    vld_d2_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_reg_0_30_0 : in STD_LOGIC;
    mem_reg_0_11_1 : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 14 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 14 downto 0 );
    mem_reg_0_31_1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mem_reg_0_11_2 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    mem_reg_0_4_0 : in STD_LOGIC;
    mem_reg_0_6_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    mem_reg_0_10_0 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    mem_reg_0_13_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mem_reg_0_21_0 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    mem_reg_0_14_0 : in STD_LOGIC;
    mem_reg_0_16_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    mem_reg_0_20_0 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    mem_reg_0_23_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mem_reg_0_31_2 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    wr_en : in STD_LOGIC;
    mem_reg_0_26_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_addr : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_fx_system_wrapper_0_1_delay_bram : entity is "delay_bram";
end design_1_fx_system_wrapper_0_1_delay_bram;

architecture STRUCTURE of design_1_fx_system_wrapper_0_1_delay_bram is
  signal \^bram_doutb\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal vld_d1 : STD_LOGIC;
  signal NLW_mem_reg_0_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_0_1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_0_10_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_10_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_10_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_10_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_10_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_10_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_10_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_10_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_10_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_10_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_10_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_10_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_0_11_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_11_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_11_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_11_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_11_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_11_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_11_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_11_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_11_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_11_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_11_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_11_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_0_12_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_12_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_12_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_12_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_12_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_12_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_12_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_12_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_12_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_12_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_12_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_12_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_0_13_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_13_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_13_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_13_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_13_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_13_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_13_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_13_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_13_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_13_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_13_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_13_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_0_14_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_14_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_14_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_14_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_14_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_14_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_14_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_14_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_14_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_14_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_14_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_14_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_0_15_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_15_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_15_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_15_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_15_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_15_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_15_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_0_16_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_16_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_16_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_16_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_16_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_16_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_16_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_16_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_16_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_16_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_16_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_16_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_0_17_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_17_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_17_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_17_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_17_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_17_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_17_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_17_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_17_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_17_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_17_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_17_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_0_18_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_18_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_18_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_18_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_18_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_18_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_18_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_18_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_18_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_18_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_18_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_18_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_0_19_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_19_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_19_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_19_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_19_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_19_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_19_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_19_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_19_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_19_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_19_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_19_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_0_2_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_2_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_2_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_2_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_2_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_2_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_2_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_2_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_2_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_2_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_2_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_2_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_0_20_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_20_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_20_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_20_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_20_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_20_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_20_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_20_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_20_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_20_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_20_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_20_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_0_21_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_21_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_21_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_21_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_21_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_21_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_21_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_21_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_21_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_21_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_21_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_21_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_0_22_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_22_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_22_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_22_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_22_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_22_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_22_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_22_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_22_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_22_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_22_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_22_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_0_23_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_23_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_23_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_23_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_23_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_23_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_23_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_23_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_23_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_23_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_23_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_23_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_0_24_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_24_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_24_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_24_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_24_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_24_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_24_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_24_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_24_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_24_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_24_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_24_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_0_25_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_25_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_25_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_25_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_25_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_25_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_25_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_25_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_25_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_25_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_25_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_25_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_0_26_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_26_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_26_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_26_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_26_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_26_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_26_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_26_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_26_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_26_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_26_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_26_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_0_27_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_27_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_27_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_27_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_27_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_27_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_27_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_27_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_27_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_27_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_27_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_27_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_0_28_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_28_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_28_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_28_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_28_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_28_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_28_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_28_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_28_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_28_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_28_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_28_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_0_29_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_29_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_29_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_29_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_29_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_29_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_29_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_29_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_29_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_29_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_29_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_29_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_0_3_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_3_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_3_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_3_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_3_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_3_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_3_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_3_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_3_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_3_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_3_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_3_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_0_30_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_30_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_30_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_30_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_30_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_30_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_30_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_30_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_30_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_30_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_30_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_30_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_0_31_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_31_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_31_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_31_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_31_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_31_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_31_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_31_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_31_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_31_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_31_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_31_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_0_4_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_4_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_4_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_4_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_4_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_4_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_4_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_4_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_4_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_4_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_4_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_4_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_0_5_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_5_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_5_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_5_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_5_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_5_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_5_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_5_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_5_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_5_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_5_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_5_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_0_6_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_6_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_6_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_6_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_6_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_6_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_6_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_6_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_6_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_6_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_6_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_6_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_0_7_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_7_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_7_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_7_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_7_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_7_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_7_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_7_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_7_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_7_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_7_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_7_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_0_8_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_8_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_8_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_8_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_8_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_8_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_8_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_8_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_8_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_8_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_8_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_8_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_0_9_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_9_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_9_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_9_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_9_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_9_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_9_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_9_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_mem_reg_0_9_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_9_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_9_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_9_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_0 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_0 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_0 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0_0 : label is 1048576;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0_0 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of mem_reg_0_0 : label is "block";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg_0_0 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0_0 : label is 32767;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0_0 : label is 0;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_1 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_1 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_1 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_1 : label is 1048576;
  attribute RTL_RAM_NAME of mem_reg_0_1 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_1 : label is "block";
  attribute RTL_RAM_TYPE of mem_reg_0_1 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_1 : label is 0;
  attribute ram_addr_end of mem_reg_0_1 : label is 32767;
  attribute ram_offset of mem_reg_0_1 : label is 0;
  attribute ram_slice_begin of mem_reg_0_1 : label is 1;
  attribute ram_slice_end of mem_reg_0_1 : label is 1;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_10 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_10 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_10 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_10 : label is 1048576;
  attribute RTL_RAM_NAME of mem_reg_0_10 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_10 : label is "block";
  attribute RTL_RAM_TYPE of mem_reg_0_10 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_10 : label is 0;
  attribute ram_addr_end of mem_reg_0_10 : label is 32767;
  attribute ram_offset of mem_reg_0_10 : label is 0;
  attribute ram_slice_begin of mem_reg_0_10 : label is 10;
  attribute ram_slice_end of mem_reg_0_10 : label is 10;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_11 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_11 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_11 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_11 : label is 1048576;
  attribute RTL_RAM_NAME of mem_reg_0_11 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_11 : label is "block";
  attribute RTL_RAM_TYPE of mem_reg_0_11 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_11 : label is 0;
  attribute ram_addr_end of mem_reg_0_11 : label is 32767;
  attribute ram_offset of mem_reg_0_11 : label is 0;
  attribute ram_slice_begin of mem_reg_0_11 : label is 11;
  attribute ram_slice_end of mem_reg_0_11 : label is 11;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_12 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_12 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_12 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_12 : label is 1048576;
  attribute RTL_RAM_NAME of mem_reg_0_12 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_12 : label is "block";
  attribute RTL_RAM_TYPE of mem_reg_0_12 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_12 : label is 0;
  attribute ram_addr_end of mem_reg_0_12 : label is 32767;
  attribute ram_offset of mem_reg_0_12 : label is 0;
  attribute ram_slice_begin of mem_reg_0_12 : label is 12;
  attribute ram_slice_end of mem_reg_0_12 : label is 12;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_13 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_13 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_13 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_13 : label is 1048576;
  attribute RTL_RAM_NAME of mem_reg_0_13 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_13 : label is "block";
  attribute RTL_RAM_TYPE of mem_reg_0_13 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_13 : label is 0;
  attribute ram_addr_end of mem_reg_0_13 : label is 32767;
  attribute ram_offset of mem_reg_0_13 : label is 0;
  attribute ram_slice_begin of mem_reg_0_13 : label is 13;
  attribute ram_slice_end of mem_reg_0_13 : label is 13;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_14 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_14 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_14 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_14 : label is 1048576;
  attribute RTL_RAM_NAME of mem_reg_0_14 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_14 : label is "block";
  attribute RTL_RAM_TYPE of mem_reg_0_14 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_14 : label is 0;
  attribute ram_addr_end of mem_reg_0_14 : label is 32767;
  attribute ram_offset of mem_reg_0_14 : label is 0;
  attribute ram_slice_begin of mem_reg_0_14 : label is 14;
  attribute ram_slice_end of mem_reg_0_14 : label is 14;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_15 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_15 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_15 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_15 : label is 1048576;
  attribute RTL_RAM_NAME of mem_reg_0_15 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_15 : label is "block";
  attribute RTL_RAM_TYPE of mem_reg_0_15 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_15 : label is 0;
  attribute ram_addr_end of mem_reg_0_15 : label is 32767;
  attribute ram_offset of mem_reg_0_15 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15 : label is 15;
  attribute ram_slice_end of mem_reg_0_15 : label is 15;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_16 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_16 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_16 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_16 : label is 1048576;
  attribute RTL_RAM_NAME of mem_reg_0_16 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_16 : label is "block";
  attribute RTL_RAM_TYPE of mem_reg_0_16 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_16 : label is 0;
  attribute ram_addr_end of mem_reg_0_16 : label is 32767;
  attribute ram_offset of mem_reg_0_16 : label is 0;
  attribute ram_slice_begin of mem_reg_0_16 : label is 16;
  attribute ram_slice_end of mem_reg_0_16 : label is 16;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_17 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_17 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_17 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_17 : label is 1048576;
  attribute RTL_RAM_NAME of mem_reg_0_17 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_17 : label is "block";
  attribute RTL_RAM_TYPE of mem_reg_0_17 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_17 : label is 0;
  attribute ram_addr_end of mem_reg_0_17 : label is 32767;
  attribute ram_offset of mem_reg_0_17 : label is 0;
  attribute ram_slice_begin of mem_reg_0_17 : label is 17;
  attribute ram_slice_end of mem_reg_0_17 : label is 17;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_18 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_18 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_18 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_18 : label is 1048576;
  attribute RTL_RAM_NAME of mem_reg_0_18 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_18 : label is "block";
  attribute RTL_RAM_TYPE of mem_reg_0_18 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_18 : label is 0;
  attribute ram_addr_end of mem_reg_0_18 : label is 32767;
  attribute ram_offset of mem_reg_0_18 : label is 0;
  attribute ram_slice_begin of mem_reg_0_18 : label is 18;
  attribute ram_slice_end of mem_reg_0_18 : label is 18;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_19 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_19 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_19 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_19 : label is 1048576;
  attribute RTL_RAM_NAME of mem_reg_0_19 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_19 : label is "block";
  attribute RTL_RAM_TYPE of mem_reg_0_19 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_19 : label is 0;
  attribute ram_addr_end of mem_reg_0_19 : label is 32767;
  attribute ram_offset of mem_reg_0_19 : label is 0;
  attribute ram_slice_begin of mem_reg_0_19 : label is 19;
  attribute ram_slice_end of mem_reg_0_19 : label is 19;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_2 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_2 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_2 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_2 : label is 1048576;
  attribute RTL_RAM_NAME of mem_reg_0_2 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_2 : label is "block";
  attribute RTL_RAM_TYPE of mem_reg_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_2 : label is 0;
  attribute ram_addr_end of mem_reg_0_2 : label is 32767;
  attribute ram_offset of mem_reg_0_2 : label is 0;
  attribute ram_slice_begin of mem_reg_0_2 : label is 2;
  attribute ram_slice_end of mem_reg_0_2 : label is 2;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_20 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_20 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_20 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_20 : label is 1048576;
  attribute RTL_RAM_NAME of mem_reg_0_20 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_20 : label is "block";
  attribute RTL_RAM_TYPE of mem_reg_0_20 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_20 : label is 0;
  attribute ram_addr_end of mem_reg_0_20 : label is 32767;
  attribute ram_offset of mem_reg_0_20 : label is 0;
  attribute ram_slice_begin of mem_reg_0_20 : label is 20;
  attribute ram_slice_end of mem_reg_0_20 : label is 20;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_21 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_21 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_21 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_21 : label is 1048576;
  attribute RTL_RAM_NAME of mem_reg_0_21 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_21 : label is "block";
  attribute RTL_RAM_TYPE of mem_reg_0_21 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_21 : label is 0;
  attribute ram_addr_end of mem_reg_0_21 : label is 32767;
  attribute ram_offset of mem_reg_0_21 : label is 0;
  attribute ram_slice_begin of mem_reg_0_21 : label is 21;
  attribute ram_slice_end of mem_reg_0_21 : label is 21;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_22 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_22 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_22 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_22 : label is 1048576;
  attribute RTL_RAM_NAME of mem_reg_0_22 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_22 : label is "block";
  attribute RTL_RAM_TYPE of mem_reg_0_22 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_22 : label is 0;
  attribute ram_addr_end of mem_reg_0_22 : label is 32767;
  attribute ram_offset of mem_reg_0_22 : label is 0;
  attribute ram_slice_begin of mem_reg_0_22 : label is 22;
  attribute ram_slice_end of mem_reg_0_22 : label is 22;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_23 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_23 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_23 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_23 : label is 1048576;
  attribute RTL_RAM_NAME of mem_reg_0_23 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_23 : label is "block";
  attribute RTL_RAM_TYPE of mem_reg_0_23 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_23 : label is 0;
  attribute ram_addr_end of mem_reg_0_23 : label is 32767;
  attribute ram_offset of mem_reg_0_23 : label is 0;
  attribute ram_slice_begin of mem_reg_0_23 : label is 23;
  attribute ram_slice_end of mem_reg_0_23 : label is 23;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_24 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_24 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_24 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_24 : label is 1048576;
  attribute RTL_RAM_NAME of mem_reg_0_24 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_24 : label is "block";
  attribute RTL_RAM_TYPE of mem_reg_0_24 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_24 : label is 0;
  attribute ram_addr_end of mem_reg_0_24 : label is 32767;
  attribute ram_offset of mem_reg_0_24 : label is 0;
  attribute ram_slice_begin of mem_reg_0_24 : label is 24;
  attribute ram_slice_end of mem_reg_0_24 : label is 24;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_25 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_25 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_25 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_25 : label is 1048576;
  attribute RTL_RAM_NAME of mem_reg_0_25 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_25 : label is "block";
  attribute RTL_RAM_TYPE of mem_reg_0_25 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_25 : label is 0;
  attribute ram_addr_end of mem_reg_0_25 : label is 32767;
  attribute ram_offset of mem_reg_0_25 : label is 0;
  attribute ram_slice_begin of mem_reg_0_25 : label is 25;
  attribute ram_slice_end of mem_reg_0_25 : label is 25;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_26 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_26 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_26 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_26 : label is 1048576;
  attribute RTL_RAM_NAME of mem_reg_0_26 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_26 : label is "block";
  attribute RTL_RAM_TYPE of mem_reg_0_26 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_26 : label is 0;
  attribute ram_addr_end of mem_reg_0_26 : label is 32767;
  attribute ram_offset of mem_reg_0_26 : label is 0;
  attribute ram_slice_begin of mem_reg_0_26 : label is 26;
  attribute ram_slice_end of mem_reg_0_26 : label is 26;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_27 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_27 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_27 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_27 : label is 1048576;
  attribute RTL_RAM_NAME of mem_reg_0_27 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_27 : label is "block";
  attribute RTL_RAM_TYPE of mem_reg_0_27 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_27 : label is 0;
  attribute ram_addr_end of mem_reg_0_27 : label is 32767;
  attribute ram_offset of mem_reg_0_27 : label is 0;
  attribute ram_slice_begin of mem_reg_0_27 : label is 27;
  attribute ram_slice_end of mem_reg_0_27 : label is 27;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_28 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_28 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_28 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_28 : label is 1048576;
  attribute RTL_RAM_NAME of mem_reg_0_28 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_28 : label is "block";
  attribute RTL_RAM_TYPE of mem_reg_0_28 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_28 : label is 0;
  attribute ram_addr_end of mem_reg_0_28 : label is 32767;
  attribute ram_offset of mem_reg_0_28 : label is 0;
  attribute ram_slice_begin of mem_reg_0_28 : label is 28;
  attribute ram_slice_end of mem_reg_0_28 : label is 28;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_29 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_29 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_29 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_29 : label is 1048576;
  attribute RTL_RAM_NAME of mem_reg_0_29 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_29 : label is "block";
  attribute RTL_RAM_TYPE of mem_reg_0_29 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_29 : label is 0;
  attribute ram_addr_end of mem_reg_0_29 : label is 32767;
  attribute ram_offset of mem_reg_0_29 : label is 0;
  attribute ram_slice_begin of mem_reg_0_29 : label is 29;
  attribute ram_slice_end of mem_reg_0_29 : label is 29;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_3 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_3 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_3 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_3 : label is 1048576;
  attribute RTL_RAM_NAME of mem_reg_0_3 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_3 : label is "block";
  attribute RTL_RAM_TYPE of mem_reg_0_3 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_3 : label is 0;
  attribute ram_addr_end of mem_reg_0_3 : label is 32767;
  attribute ram_offset of mem_reg_0_3 : label is 0;
  attribute ram_slice_begin of mem_reg_0_3 : label is 3;
  attribute ram_slice_end of mem_reg_0_3 : label is 3;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_30 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_30 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_30 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_30 : label is 1048576;
  attribute RTL_RAM_NAME of mem_reg_0_30 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_30 : label is "block";
  attribute RTL_RAM_TYPE of mem_reg_0_30 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_30 : label is 0;
  attribute ram_addr_end of mem_reg_0_30 : label is 32767;
  attribute ram_offset of mem_reg_0_30 : label is 0;
  attribute ram_slice_begin of mem_reg_0_30 : label is 30;
  attribute ram_slice_end of mem_reg_0_30 : label is 30;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_31 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_31 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_31 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_31 : label is 1048576;
  attribute RTL_RAM_NAME of mem_reg_0_31 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_31 : label is "block";
  attribute RTL_RAM_TYPE of mem_reg_0_31 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_31 : label is 0;
  attribute ram_addr_end of mem_reg_0_31 : label is 32767;
  attribute ram_offset of mem_reg_0_31 : label is 0;
  attribute ram_slice_begin of mem_reg_0_31 : label is 31;
  attribute ram_slice_end of mem_reg_0_31 : label is 31;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_4 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_4 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_4 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_4 : label is 1048576;
  attribute RTL_RAM_NAME of mem_reg_0_4 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_4 : label is "block";
  attribute RTL_RAM_TYPE of mem_reg_0_4 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_4 : label is 0;
  attribute ram_addr_end of mem_reg_0_4 : label is 32767;
  attribute ram_offset of mem_reg_0_4 : label is 0;
  attribute ram_slice_begin of mem_reg_0_4 : label is 4;
  attribute ram_slice_end of mem_reg_0_4 : label is 4;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_5 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_5 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_5 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_5 : label is 1048576;
  attribute RTL_RAM_NAME of mem_reg_0_5 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_5 : label is "block";
  attribute RTL_RAM_TYPE of mem_reg_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_5 : label is 0;
  attribute ram_addr_end of mem_reg_0_5 : label is 32767;
  attribute ram_offset of mem_reg_0_5 : label is 0;
  attribute ram_slice_begin of mem_reg_0_5 : label is 5;
  attribute ram_slice_end of mem_reg_0_5 : label is 5;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_6 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_6 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_6 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_6 : label is 1048576;
  attribute RTL_RAM_NAME of mem_reg_0_6 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_6 : label is "block";
  attribute RTL_RAM_TYPE of mem_reg_0_6 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_6 : label is 0;
  attribute ram_addr_end of mem_reg_0_6 : label is 32767;
  attribute ram_offset of mem_reg_0_6 : label is 0;
  attribute ram_slice_begin of mem_reg_0_6 : label is 6;
  attribute ram_slice_end of mem_reg_0_6 : label is 6;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_7 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_7 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_7 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_7 : label is 1048576;
  attribute RTL_RAM_NAME of mem_reg_0_7 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_7 : label is "block";
  attribute RTL_RAM_TYPE of mem_reg_0_7 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_7 : label is 0;
  attribute ram_addr_end of mem_reg_0_7 : label is 32767;
  attribute ram_offset of mem_reg_0_7 : label is 0;
  attribute ram_slice_begin of mem_reg_0_7 : label is 7;
  attribute ram_slice_end of mem_reg_0_7 : label is 7;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_8 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_8 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_8 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_8 : label is 1048576;
  attribute RTL_RAM_NAME of mem_reg_0_8 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_8 : label is "block";
  attribute RTL_RAM_TYPE of mem_reg_0_8 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_8 : label is 0;
  attribute ram_addr_end of mem_reg_0_8 : label is 32767;
  attribute ram_offset of mem_reg_0_8 : label is 0;
  attribute ram_slice_begin of mem_reg_0_8 : label is 8;
  attribute ram_slice_end of mem_reg_0_8 : label is 8;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0_9 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0_9 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_9 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_9 : label is 1048576;
  attribute RTL_RAM_NAME of mem_reg_0_9 : label is "design_1_fx_system_wrapper_0_1/inst/u_core/u_delay/u_dl/bram_u/mem_reg";
  attribute RTL_RAM_STYLE of mem_reg_0_9 : label is "block";
  attribute RTL_RAM_TYPE of mem_reg_0_9 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_9 : label is 0;
  attribute ram_addr_end of mem_reg_0_9 : label is 32767;
  attribute ram_offset of mem_reg_0_9 : label is 0;
  attribute ram_slice_begin of mem_reg_0_9 : label is 9;
  attribute ram_slice_end of mem_reg_0_9 : label is 9;
begin
  bram_doutb(31 downto 0) <= \^bram_doutb\(31 downto 0);
\delta_r0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(7),
      I1 => Q(7),
      O => mem_reg_0_7_0(3)
    );
\delta_r0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(6),
      I1 => Q(6),
      O => mem_reg_0_7_0(2)
    );
\delta_r0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(5),
      I1 => Q(5),
      O => mem_reg_0_7_0(1)
    );
\delta_r0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(4),
      I1 => Q(4),
      O => mem_reg_0_7_0(0)
    );
\delta_r0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(11),
      I1 => Q(11),
      O => mem_reg_0_11_0(3)
    );
\delta_r0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(10),
      I1 => Q(10),
      O => mem_reg_0_11_0(2)
    );
\delta_r0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(9),
      I1 => Q(9),
      O => mem_reg_0_11_0(1)
    );
\delta_r0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(8),
      I1 => Q(8),
      O => mem_reg_0_11_0(0)
    );
\delta_r0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(15),
      I1 => Q(15),
      O => mem_reg_0_15_0(3)
    );
\delta_r0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(14),
      I1 => Q(14),
      O => mem_reg_0_15_0(2)
    );
\delta_r0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(13),
      I1 => Q(13),
      O => mem_reg_0_15_0(1)
    );
\delta_r0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(12),
      I1 => Q(12),
      O => mem_reg_0_15_0(0)
    );
\delta_r0_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(19),
      I1 => Q(19),
      O => mem_reg_0_19_0(3)
    );
\delta_r0_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(18),
      I1 => Q(18),
      O => mem_reg_0_19_0(2)
    );
\delta_r0_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(17),
      I1 => Q(17),
      O => mem_reg_0_19_0(1)
    );
\delta_r0_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(16),
      I1 => Q(16),
      O => mem_reg_0_19_0(0)
    );
\delta_r0_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(23),
      I1 => Q(23),
      O => mem_reg_0_23_0(3)
    );
\delta_r0_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(22),
      I1 => Q(22),
      O => mem_reg_0_23_0(2)
    );
\delta_r0_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(21),
      I1 => Q(21),
      O => mem_reg_0_23_0(1)
    );
\delta_r0_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(20),
      I1 => Q(20),
      O => mem_reg_0_23_0(0)
    );
\delta_r0_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(27),
      I1 => Q(27),
      O => mem_reg_0_27_0(3)
    );
\delta_r0_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(26),
      I1 => Q(26),
      O => mem_reg_0_27_0(2)
    );
\delta_r0_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(25),
      I1 => Q(25),
      O => mem_reg_0_27_0(1)
    );
\delta_r0_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(24),
      I1 => Q(24),
      O => mem_reg_0_27_0(0)
    );
\delta_r0_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(31),
      I1 => Q(31),
      O => mem_reg_0_31_0(3)
    );
\delta_r0_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(30),
      I1 => Q(30),
      O => mem_reg_0_31_0(2)
    );
\delta_r0_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(29),
      I1 => Q(29),
      O => mem_reg_0_31_0(1)
    );
\delta_r0_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(28),
      I1 => Q(28),
      O => mem_reg_0_31_0(0)
    );
delta_r0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(3),
      I1 => Q(3),
      O => S(3)
    );
delta_r0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(2),
      I1 => Q(2),
      O => S(2)
    );
delta_r0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(1),
      I1 => Q(1),
      O => S(1)
    );
delta_r0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bram_doutb\(0),
      I1 => Q(0),
      O => S(0)
    );
mem_reg_0_0: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => ADDRARDADDR(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => ADDRBWRADDR(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_0_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_0_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(0),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_0_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => mem_reg_0_30_0,
      ENBWREN => mem_reg_0_11_1,
      INJECTDBITERR => NLW_mem_reg_0_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_0_SBITERR_UNCONNECTED,
      WEA(3) => WEA(0),
      WEA(2) => WEA(0),
      WEA(1) => WEA(0),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_1: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => ADDRARDADDR(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => ADDRBWRADDR(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(1),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_1_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_1_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(1),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_1_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => mem_reg_0_30_0,
      ENBWREN => mem_reg_0_11_1,
      INJECTDBITERR => NLW_mem_reg_0_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_1_SBITERR_UNCONNECTED,
      WEA(3) => WEA(0),
      WEA(2) => WEA(0),
      WEA(1) => WEA(0),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_10: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => mem_reg_0_11_2(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => mem_reg_0_10_0(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_10_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_10_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_10_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(10),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_10_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_10_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(10),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_10_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_10_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_10_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => mem_reg_0_4_0,
      ENBWREN => mem_reg_0_11_1,
      INJECTDBITERR => NLW_mem_reg_0_10_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_10_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_10_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_10_SBITERR_UNCONNECTED,
      WEA(3) => mem_reg_0_13_0(0),
      WEA(2) => mem_reg_0_13_0(0),
      WEA(1) => mem_reg_0_13_0(0),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_11: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => mem_reg_0_11_2(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => mem_reg_0_10_0(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_11_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_11_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_11_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(11),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_11_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_11_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(11),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_11_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_11_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_11_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => mem_reg_0_4_0,
      ENBWREN => mem_reg_0_11_1,
      INJECTDBITERR => NLW_mem_reg_0_11_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_11_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_11_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_11_SBITERR_UNCONNECTED,
      WEA(3) => mem_reg_0_13_0(0),
      WEA(2) => mem_reg_0_13_0(0),
      WEA(1) => mem_reg_0_13_0(0),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_12: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => mem_reg_0_21_0(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => mem_reg_0_10_0(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_12_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_12_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_12_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(12),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_12_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_12_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(12),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_12_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_12_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_12_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => mem_reg_0_4_0,
      ENBWREN => mem_reg_0_11_1,
      INJECTDBITERR => NLW_mem_reg_0_12_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_12_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_12_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_12_SBITERR_UNCONNECTED,
      WEA(3) => mem_reg_0_13_0(0),
      WEA(2) => mem_reg_0_13_0(0),
      WEA(1) => mem_reg_0_13_0(0),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_13: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => mem_reg_0_21_0(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => mem_reg_0_10_0(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_13_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_13_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_13_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(13),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_13_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_13_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(13),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_13_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_13_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_13_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => mem_reg_0_4_0,
      ENBWREN => mem_reg_0_11_1,
      INJECTDBITERR => NLW_mem_reg_0_13_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_13_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_13_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_13_SBITERR_UNCONNECTED,
      WEA(3) => mem_reg_0_13_0(1),
      WEA(2 downto 1) => mem_reg_0_13_0(1 downto 0),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_14: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => mem_reg_0_21_0(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => mem_reg_0_10_0(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_14_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_14_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_14_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(14),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_14_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_14_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(14),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_14_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_14_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_14_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => mem_reg_0_14_0,
      ENBWREN => mem_reg_0_11_1,
      INJECTDBITERR => NLW_mem_reg_0_14_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_14_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_14_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_14_SBITERR_UNCONNECTED,
      WEA(3) => mem_reg_0_13_0(1),
      WEA(2) => mem_reg_0_13_0(1),
      WEA(1) => mem_reg_0_13_0(1),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_15: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => mem_reg_0_21_0(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => mem_reg_0_10_0(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_15_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_15_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_15_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(15),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_15_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_15_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(15),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_15_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_15_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_15_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => mem_reg_0_14_0,
      ENBWREN => mem_reg_0_11_1,
      INJECTDBITERR => NLW_mem_reg_0_15_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_15_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_15_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_15_SBITERR_UNCONNECTED,
      WEA(3) => mem_reg_0_13_0(1),
      WEA(2) => mem_reg_0_13_0(1),
      WEA(1) => mem_reg_0_13_0(1),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_16: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => mem_reg_0_21_0(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => mem_reg_0_10_0(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_16_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_16_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_16_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(16),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_16_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_16_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(16),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_16_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_16_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_16_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => mem_reg_0_14_0,
      ENBWREN => rd_en,
      INJECTDBITERR => NLW_mem_reg_0_16_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_16_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_16_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_16_SBITERR_UNCONNECTED,
      WEA(3) => mem_reg_0_16_0(0),
      WEA(2) => mem_reg_0_13_0(1),
      WEA(1) => mem_reg_0_13_0(1),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_17: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => mem_reg_0_21_0(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => mem_reg_0_10_0(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_17_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_17_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_17_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(17),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_17_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_17_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(17),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_17_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_17_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_17_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => mem_reg_0_14_0,
      ENBWREN => rd_en,
      INJECTDBITERR => NLW_mem_reg_0_17_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_17_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_17_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_17_SBITERR_UNCONNECTED,
      WEA(3) => mem_reg_0_16_0(0),
      WEA(2) => mem_reg_0_16_0(0),
      WEA(1) => mem_reg_0_16_0(0),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_18: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => mem_reg_0_21_0(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => mem_reg_0_10_0(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_18_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_18_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_18_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(18),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_18_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_18_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(18),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_18_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_18_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_18_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => mem_reg_0_14_0,
      ENBWREN => rd_en,
      INJECTDBITERR => NLW_mem_reg_0_18_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_18_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_18_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_18_SBITERR_UNCONNECTED,
      WEA(3) => mem_reg_0_16_0(0),
      WEA(2) => mem_reg_0_16_0(0),
      WEA(1) => mem_reg_0_16_0(0),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_19: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => mem_reg_0_21_0(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => mem_reg_0_10_0(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_19_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_19_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_19_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(19),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_19_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_19_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(19),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_19_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_19_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_19_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => mem_reg_0_14_0,
      ENBWREN => rd_en,
      INJECTDBITERR => NLW_mem_reg_0_19_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_19_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_19_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_19_SBITERR_UNCONNECTED,
      WEA(3) => mem_reg_0_16_0(0),
      WEA(2) => mem_reg_0_16_0(0),
      WEA(1) => mem_reg_0_16_0(0),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_2: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => mem_reg_0_11_2(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => ADDRBWRADDR(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_2_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_2_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_2_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(2),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_2_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_2_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(2),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_2_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_2_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_2_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => mem_reg_0_30_0,
      ENBWREN => mem_reg_0_11_1,
      INJECTDBITERR => NLW_mem_reg_0_2_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_2_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_2_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_2_SBITERR_UNCONNECTED,
      WEA(3) => WEA(0),
      WEA(2) => WEA(0),
      WEA(1) => WEA(0),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_20: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => mem_reg_0_21_0(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => mem_reg_0_20_0(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_20_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_20_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_20_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(20),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_20_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_20_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(20),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_20_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_20_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_20_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => mem_reg_0_14_0,
      ENBWREN => rd_en,
      INJECTDBITERR => NLW_mem_reg_0_20_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_20_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_20_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_20_SBITERR_UNCONNECTED,
      WEA(3) => mem_reg_0_23_1(0),
      WEA(2) => mem_reg_0_23_1(0),
      WEA(1) => mem_reg_0_23_1(0),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_21: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => mem_reg_0_21_0(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => mem_reg_0_20_0(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_21_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_21_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_21_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(21),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_21_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_21_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(21),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_21_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_21_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_21_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => mem_reg_0_14_0,
      ENBWREN => rd_en,
      INJECTDBITERR => NLW_mem_reg_0_21_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_21_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_21_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_21_SBITERR_UNCONNECTED,
      WEA(3) => mem_reg_0_23_1(0),
      WEA(2) => mem_reg_0_23_1(0),
      WEA(1) => mem_reg_0_23_1(0),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_22: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => mem_reg_0_31_2(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => mem_reg_0_20_0(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_22_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_22_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_22_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(22),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_22_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_22_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(22),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_22_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_22_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_22_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => mem_reg_0_14_0,
      ENBWREN => rd_en,
      INJECTDBITERR => NLW_mem_reg_0_22_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_22_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_22_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_22_SBITERR_UNCONNECTED,
      WEA(3) => mem_reg_0_23_1(0),
      WEA(2) => mem_reg_0_23_1(0),
      WEA(1) => mem_reg_0_23_1(0),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_23: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => mem_reg_0_31_2(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => mem_reg_0_20_0(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_23_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_23_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_23_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(23),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_23_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_23_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(23),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_23_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_23_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_23_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => mem_reg_0_14_0,
      ENBWREN => rd_en,
      INJECTDBITERR => NLW_mem_reg_0_23_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_23_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_23_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_23_SBITERR_UNCONNECTED,
      WEA(3) => mem_reg_0_23_1(1),
      WEA(2 downto 1) => mem_reg_0_23_1(1 downto 0),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_24: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => mem_reg_0_31_2(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => mem_reg_0_20_0(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_24_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_24_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_24_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(24),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_24_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_24_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(24),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_24_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_24_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_24_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => wr_en,
      ENBWREN => rd_en,
      INJECTDBITERR => NLW_mem_reg_0_24_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_24_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_24_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_24_SBITERR_UNCONNECTED,
      WEA(3) => mem_reg_0_23_1(1),
      WEA(2) => mem_reg_0_23_1(1),
      WEA(1) => mem_reg_0_23_1(1),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_25: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => mem_reg_0_31_2(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => mem_reg_0_20_0(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_25_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_25_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_25_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(25),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_25_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_25_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(25),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_25_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_25_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_25_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => wr_en,
      ENBWREN => rd_en,
      INJECTDBITERR => NLW_mem_reg_0_25_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_25_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_25_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_25_SBITERR_UNCONNECTED,
      WEA(3) => mem_reg_0_23_1(1),
      WEA(2) => mem_reg_0_23_1(1),
      WEA(1) => mem_reg_0_23_1(1),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_26: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => mem_reg_0_31_2(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => mem_reg_0_20_0(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_26_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_26_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_26_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(26),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_26_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_26_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(26),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_26_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_26_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_26_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => wr_en,
      ENBWREN => rd_en,
      INJECTDBITERR => NLW_mem_reg_0_26_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_26_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_26_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_26_SBITERR_UNCONNECTED,
      WEA(3) => mem_reg_0_26_0(0),
      WEA(2) => mem_reg_0_23_1(1),
      WEA(1) => mem_reg_0_23_1(1),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_27: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => mem_reg_0_31_2(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => mem_reg_0_20_0(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_27_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_27_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_27_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(27),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_27_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_27_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(27),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_27_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_27_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_27_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => wr_en,
      ENBWREN => rd_en,
      INJECTDBITERR => NLW_mem_reg_0_27_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_27_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_27_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_27_SBITERR_UNCONNECTED,
      WEA(3) => mem_reg_0_26_0(0),
      WEA(2) => mem_reg_0_26_0(0),
      WEA(1) => mem_reg_0_26_0(0),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_28: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => mem_reg_0_31_2(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => mem_reg_0_20_0(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_28_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_28_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_28_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(28),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_28_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_28_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(28),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_28_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_28_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_28_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => wr_en,
      ENBWREN => rd_en,
      INJECTDBITERR => NLW_mem_reg_0_28_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_28_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_28_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_28_SBITERR_UNCONNECTED,
      WEA(3) => mem_reg_0_26_0(0),
      WEA(2) => mem_reg_0_26_0(0),
      WEA(1) => mem_reg_0_26_0(0),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_29: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => mem_reg_0_31_2(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => mem_reg_0_20_0(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_29_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_29_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_29_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(29),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_29_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_29_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(29),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_29_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_29_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_29_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => wr_en,
      ENBWREN => rd_en,
      INJECTDBITERR => NLW_mem_reg_0_29_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_29_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_29_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_29_SBITERR_UNCONNECTED,
      WEA(3) => mem_reg_0_26_0(0),
      WEA(2) => mem_reg_0_26_0(0),
      WEA(1) => mem_reg_0_26_0(0),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_3: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => mem_reg_0_11_2(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => ADDRBWRADDR(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_3_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_3_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_3_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(3),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_3_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_3_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(3),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_3_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_3_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_3_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => mem_reg_0_30_0,
      ENBWREN => mem_reg_0_11_1,
      INJECTDBITERR => NLW_mem_reg_0_3_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_3_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_3_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_3_SBITERR_UNCONNECTED,
      WEA(3) => WEA(1),
      WEA(2 downto 1) => WEA(1 downto 0),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_30: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => mem_reg_0_31_2(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => rd_addr(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_30_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_30_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_30_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(30),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_30_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_30_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(30),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_30_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_30_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_30_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => wr_en,
      ENBWREN => rd_en,
      INJECTDBITERR => NLW_mem_reg_0_30_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_30_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_30_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_30_SBITERR_UNCONNECTED,
      WEA(3) => mem_reg_0_30_0,
      WEA(2) => mem_reg_0_30_0,
      WEA(1) => mem_reg_0_30_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_31: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => mem_reg_0_31_2(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => rd_addr(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_31_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_31_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_31_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(31),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_31_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_31_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(31),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_31_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_31_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_31_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => wr_en,
      ENBWREN => rd_en,
      INJECTDBITERR => NLW_mem_reg_0_31_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_31_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_31_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_31_SBITERR_UNCONNECTED,
      WEA(3) => mem_reg_0_30_0,
      WEA(2) => mem_reg_0_30_0,
      WEA(1) => mem_reg_0_30_0,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_4: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => mem_reg_0_11_2(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => ADDRBWRADDR(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_4_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_4_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_4_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(4),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_4_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_4_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(4),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_4_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_4_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_4_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => mem_reg_0_4_0,
      ENBWREN => mem_reg_0_11_1,
      INJECTDBITERR => NLW_mem_reg_0_4_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_4_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_4_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_4_SBITERR_UNCONNECTED,
      WEA(3) => WEA(1),
      WEA(2) => WEA(1),
      WEA(1) => WEA(1),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_5: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => mem_reg_0_11_2(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => ADDRBWRADDR(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_5_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_5_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_5_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(5),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_5_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_5_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(5),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_5_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_5_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_5_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => mem_reg_0_4_0,
      ENBWREN => mem_reg_0_11_1,
      INJECTDBITERR => NLW_mem_reg_0_5_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_5_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_5_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_5_SBITERR_UNCONNECTED,
      WEA(3) => WEA(1),
      WEA(2) => WEA(1),
      WEA(1) => WEA(1),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_6: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => mem_reg_0_11_2(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => ADDRBWRADDR(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_6_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_6_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_6_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(6),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_6_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_6_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(6),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_6_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_6_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_6_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => mem_reg_0_4_0,
      ENBWREN => mem_reg_0_11_1,
      INJECTDBITERR => NLW_mem_reg_0_6_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_6_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_6_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_6_SBITERR_UNCONNECTED,
      WEA(3) => mem_reg_0_6_0(0),
      WEA(2) => WEA(1),
      WEA(1) => WEA(1),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_7: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => mem_reg_0_11_2(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => ADDRBWRADDR(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_7_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_7_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_7_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(7),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_7_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_7_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(7),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_7_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_7_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_7_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => mem_reg_0_4_0,
      ENBWREN => mem_reg_0_11_1,
      INJECTDBITERR => NLW_mem_reg_0_7_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_7_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_7_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_7_SBITERR_UNCONNECTED,
      WEA(3) => mem_reg_0_6_0(0),
      WEA(2) => mem_reg_0_6_0(0),
      WEA(1) => mem_reg_0_6_0(0),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_8: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => mem_reg_0_11_2(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => ADDRBWRADDR(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_8_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_8_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_8_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(8),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_8_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_8_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(8),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_8_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_8_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_8_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => mem_reg_0_4_0,
      ENBWREN => mem_reg_0_11_1,
      INJECTDBITERR => NLW_mem_reg_0_8_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_8_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_8_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_8_SBITERR_UNCONNECTED,
      WEA(3) => mem_reg_0_6_0(0),
      WEA(2) => mem_reg_0_6_0(0),
      WEA(1) => mem_reg_0_6_0(0),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_9: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => mem_reg_0_11_2(14 downto 0),
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 0) => ADDRBWRADDR(14 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_9_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_9_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_mem_reg_0_9_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => mem_reg_0_31_1(9),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_9_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_mem_reg_0_9_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^bram_doutb\(9),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_9_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_9_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_9_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => mem_reg_0_4_0,
      ENBWREN => mem_reg_0_11_1,
      INJECTDBITERR => NLW_mem_reg_0_9_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_9_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_9_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => vld_d2_reg_0,
      SBITERR => NLW_mem_reg_0_9_SBITERR_UNCONNECTED,
      WEA(3) => mem_reg_0_6_0(0),
      WEA(2) => mem_reg_0_6_0(0),
      WEA(1) => mem_reg_0_6_0(0),
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
vld_d1_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => vld_d2_reg_0,
      D => rd_en,
      Q => vld_d1
    );
vld_d2_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => vld_d2_reg_0,
      D => vld_d1,
      Q => bram_rd_valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fx_system_wrapper_0_1_delay_frac_read is
  port (
    P : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst_n_0 : out STD_LOGIC;
    frac_d_valid : out STD_LOGIC;
    rd_en_reg_0 : out STD_LOGIC;
    \term_r_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rd_en_reg_rep_0 : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[1]_0\ : out STD_LOGIC;
    \FSM_sequential_state_reg[2]_0\ : out STD_LOGIC;
    \FSM_sequential_state_reg[0]_0\ : out STD_LOGIC;
    \FSM_sequential_state_reg[2]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_buf_valid_reg : out STD_LOGIC;
    \state_reg[1]_0\ : out STD_LOGIC;
    \state_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[2]_2\ : out STD_LOGIC;
    \FSM_sequential_state_reg[2]_3\ : out STD_LOGIC;
    \FSM_sequential_state_reg[2]_4\ : out STD_LOGIC;
    out_buf_valid_reg_0 : out STD_LOGIC;
    ADDRBWRADDR : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \rd_addr_reg[14]_rep__0_0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \rd_addr_reg[14]_rep__1_0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    rd_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \s0_reg_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \d_out_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rd_en_reg_1 : in STD_LOGIC;
    \term_r_reg[0]_1\ : in STD_LOGIC;
    rd_en_reg_rep_1 : in STD_LOGIC;
    v1 : in STD_LOGIC;
    v1_0 : in STD_LOGIC;
    \rptr0_reg_reg[14]_0\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \rptr0_reg_reg[14]_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rst_n : in STD_LOGIC;
    state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    out_buf_valid_reg_1 : in STD_LOGIC;
    \FSM_sequential_state_reg[2]_5\ : in STD_LOGIC;
    mono_valid : in STD_LOGIC;
    fx_enable : in STD_LOGIC;
    \x_reg_reg[6]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    out_buf_valid_reg_2 : in STD_LOGIC;
    \FSM_sequential_state_reg[2]_6\ : in STD_LOGIC;
    \term_r0__0_0\ : in STD_LOGIC;
    bram_rd_valid : in STD_LOGIC;
    frac_start : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_1\ : in STD_LOGIC;
    \FSM_sequential_state_reg[2]_7\ : in STD_LOGIC;
    out_buf_valid_reg_3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    out_buf_valid_reg_4 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    term_r0_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    term_r0_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    term_r0_2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \term_r0__0_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \term_r0__0_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \term_r0__0_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \term_r0__0_4\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_fx_system_wrapper_0_1_delay_frac_read : entity is "delay_frac_read";
end design_1_fx_system_wrapper_0_1_delay_frac_read;

architecture STRUCTURE of design_1_fx_system_wrapper_0_1_delay_frac_read is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[0]_0\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[2]_0\ : STD_LOGIC;
  signal d_valid_i_1_n_0 : STD_LOGIC;
  signal delta_r : STD_LOGIC;
  signal delta_r0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \delta_r0_carry__0_n_0\ : STD_LOGIC;
  signal \delta_r0_carry__0_n_1\ : STD_LOGIC;
  signal \delta_r0_carry__0_n_2\ : STD_LOGIC;
  signal \delta_r0_carry__0_n_3\ : STD_LOGIC;
  signal \delta_r0_carry__1_n_0\ : STD_LOGIC;
  signal \delta_r0_carry__1_n_1\ : STD_LOGIC;
  signal \delta_r0_carry__1_n_2\ : STD_LOGIC;
  signal \delta_r0_carry__1_n_3\ : STD_LOGIC;
  signal \delta_r0_carry__2_n_0\ : STD_LOGIC;
  signal \delta_r0_carry__2_n_1\ : STD_LOGIC;
  signal \delta_r0_carry__2_n_2\ : STD_LOGIC;
  signal \delta_r0_carry__2_n_3\ : STD_LOGIC;
  signal \delta_r0_carry__3_n_0\ : STD_LOGIC;
  signal \delta_r0_carry__3_n_1\ : STD_LOGIC;
  signal \delta_r0_carry__3_n_2\ : STD_LOGIC;
  signal \delta_r0_carry__3_n_3\ : STD_LOGIC;
  signal \delta_r0_carry__4_n_0\ : STD_LOGIC;
  signal \delta_r0_carry__4_n_1\ : STD_LOGIC;
  signal \delta_r0_carry__4_n_2\ : STD_LOGIC;
  signal \delta_r0_carry__4_n_3\ : STD_LOGIC;
  signal \delta_r0_carry__5_n_0\ : STD_LOGIC;
  signal \delta_r0_carry__5_n_1\ : STD_LOGIC;
  signal \delta_r0_carry__5_n_2\ : STD_LOGIC;
  signal \delta_r0_carry__5_n_3\ : STD_LOGIC;
  signal \delta_r0_carry__6_n_1\ : STD_LOGIC;
  signal \delta_r0_carry__6_n_2\ : STD_LOGIC;
  signal \delta_r0_carry__6_n_3\ : STD_LOGIC;
  signal delta_r0_carry_n_0 : STD_LOGIC;
  signal delta_r0_carry_n_1 : STD_LOGIC;
  signal delta_r0_carry_n_2 : STD_LOGIC;
  signal delta_r0_carry_n_3 : STD_LOGIC;
  signal \^frac_d_valid\ : STD_LOGIC;
  signal mu_reg : STD_LOGIC;
  signal \^out_buf_valid_reg\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal \rd_addr[0]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[0]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[0]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[0]_rep_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[0]_rep_i_2_n_0\ : STD_LOGIC;
  signal \rd_addr[10]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[10]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[10]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[10]_rep_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[11]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[11]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[11]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[11]_rep_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[12]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[12]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[12]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[12]_rep_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[13]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[13]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[13]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[13]_rep_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[14]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[14]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[14]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[14]_rep_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[1]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[1]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[1]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[1]_rep_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[2]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[2]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[2]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[2]_rep_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[3]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[3]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[3]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[3]_rep_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[4]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[4]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[4]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[4]_rep_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[5]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[5]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[5]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[5]_rep_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[6]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[6]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[6]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[6]_rep_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[7]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[7]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[7]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[7]_rep_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[8]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[8]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[8]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[8]_rep_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[9]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[9]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[9]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[9]_rep_i_1_n_0\ : STD_LOGIC;
  signal rptr0_reg : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal rptr0_reg0 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \rptr0_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \rptr0_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \rptr0_reg[11]_i_4_n_0\ : STD_LOGIC;
  signal \rptr0_reg[11]_i_5_n_0\ : STD_LOGIC;
  signal \rptr0_reg[14]_i_2_n_0\ : STD_LOGIC;
  signal \rptr0_reg[14]_i_3_n_0\ : STD_LOGIC;
  signal \rptr0_reg[14]_i_4_n_0\ : STD_LOGIC;
  signal \rptr0_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \rptr0_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \rptr0_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \rptr0_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \rptr0_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \rptr0_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \rptr0_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \rptr0_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \rptr0_reg_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \rptr0_reg_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \rptr0_reg_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \rptr0_reg_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \rptr0_reg_reg[14]_i_1_n_2\ : STD_LOGIC;
  signal \rptr0_reg_reg[14]_i_1_n_3\ : STD_LOGIC;
  signal \rptr0_reg_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \rptr0_reg_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \rptr0_reg_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \rptr0_reg_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \rptr0_reg_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \rptr0_reg_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \rptr0_reg_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \rptr0_reg_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal rptr1_reg : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal rptr1_reg0 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \rptr1_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \rptr1_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \rptr1_reg[11]_i_4_n_0\ : STD_LOGIC;
  signal \rptr1_reg[11]_i_5_n_0\ : STD_LOGIC;
  signal \rptr1_reg[14]_i_3_n_0\ : STD_LOGIC;
  signal \rptr1_reg[14]_i_4_n_0\ : STD_LOGIC;
  signal \rptr1_reg[14]_i_5_n_0\ : STD_LOGIC;
  signal \rptr1_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \rptr1_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \rptr1_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \rptr1_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \rptr1_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \rptr1_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \rptr1_reg[3]_i_8_n_0\ : STD_LOGIC;
  signal \rptr1_reg[3]_i_9_n_0\ : STD_LOGIC;
  signal \rptr1_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \rptr1_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \rptr1_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \rptr1_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \rptr1_reg_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \rptr1_reg_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \rptr1_reg_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \rptr1_reg_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \rptr1_reg_reg[14]_i_2_n_2\ : STD_LOGIC;
  signal \rptr1_reg_reg[14]_i_2_n_3\ : STD_LOGIC;
  signal \rptr1_reg_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \rptr1_reg_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \rptr1_reg_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \rptr1_reg_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \rptr1_reg_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \rptr1_reg_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \rptr1_reg_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \rptr1_reg_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \^rst_n_0\ : STD_LOGIC;
  signal s0_reg : STD_LOGIC;
  signal \^s0_reg_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \sat_add322_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__0_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__0_n_1\ : STD_LOGIC;
  signal \sat_add322_carry__0_n_2\ : STD_LOGIC;
  signal \sat_add322_carry__0_n_3\ : STD_LOGIC;
  signal \sat_add322_carry__0_n_4\ : STD_LOGIC;
  signal \sat_add322_carry__0_n_5\ : STD_LOGIC;
  signal \sat_add322_carry__0_n_6\ : STD_LOGIC;
  signal \sat_add322_carry__0_n_7\ : STD_LOGIC;
  signal \sat_add322_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__1_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__1_n_1\ : STD_LOGIC;
  signal \sat_add322_carry__1_n_2\ : STD_LOGIC;
  signal \sat_add322_carry__1_n_3\ : STD_LOGIC;
  signal \sat_add322_carry__1_n_4\ : STD_LOGIC;
  signal \sat_add322_carry__1_n_5\ : STD_LOGIC;
  signal \sat_add322_carry__1_n_6\ : STD_LOGIC;
  signal \sat_add322_carry__1_n_7\ : STD_LOGIC;
  signal \sat_add322_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__2_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__2_n_1\ : STD_LOGIC;
  signal \sat_add322_carry__2_n_2\ : STD_LOGIC;
  signal \sat_add322_carry__2_n_3\ : STD_LOGIC;
  signal \sat_add322_carry__2_n_4\ : STD_LOGIC;
  signal \sat_add322_carry__2_n_5\ : STD_LOGIC;
  signal \sat_add322_carry__2_n_6\ : STD_LOGIC;
  signal \sat_add322_carry__2_n_7\ : STD_LOGIC;
  signal \sat_add322_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__3_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__3_n_1\ : STD_LOGIC;
  signal \sat_add322_carry__3_n_2\ : STD_LOGIC;
  signal \sat_add322_carry__3_n_3\ : STD_LOGIC;
  signal \sat_add322_carry__3_n_4\ : STD_LOGIC;
  signal \sat_add322_carry__3_n_5\ : STD_LOGIC;
  signal \sat_add322_carry__3_n_6\ : STD_LOGIC;
  signal \sat_add322_carry__3_n_7\ : STD_LOGIC;
  signal \sat_add322_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__4_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__4_n_1\ : STD_LOGIC;
  signal \sat_add322_carry__4_n_2\ : STD_LOGIC;
  signal \sat_add322_carry__4_n_3\ : STD_LOGIC;
  signal \sat_add322_carry__4_n_4\ : STD_LOGIC;
  signal \sat_add322_carry__4_n_5\ : STD_LOGIC;
  signal \sat_add322_carry__4_n_6\ : STD_LOGIC;
  signal \sat_add322_carry__4_n_7\ : STD_LOGIC;
  signal \sat_add322_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__5_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__5_n_1\ : STD_LOGIC;
  signal \sat_add322_carry__5_n_2\ : STD_LOGIC;
  signal \sat_add322_carry__5_n_3\ : STD_LOGIC;
  signal \sat_add322_carry__5_n_4\ : STD_LOGIC;
  signal \sat_add322_carry__5_n_5\ : STD_LOGIC;
  signal \sat_add322_carry__5_n_6\ : STD_LOGIC;
  signal \sat_add322_carry__5_n_7\ : STD_LOGIC;
  signal \sat_add322_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \sat_add322_carry__6_n_1\ : STD_LOGIC;
  signal \sat_add322_carry__6_n_2\ : STD_LOGIC;
  signal \sat_add322_carry__6_n_3\ : STD_LOGIC;
  signal \sat_add322_carry__6_n_5\ : STD_LOGIC;
  signal \sat_add322_carry__6_n_6\ : STD_LOGIC;
  signal \sat_add322_carry__6_n_7\ : STD_LOGIC;
  signal sat_add322_carry_i_1_n_0 : STD_LOGIC;
  signal sat_add322_carry_i_2_n_0 : STD_LOGIC;
  signal sat_add322_carry_i_3_n_0 : STD_LOGIC;
  signal sat_add322_carry_i_4_n_0 : STD_LOGIC;
  signal sat_add322_carry_n_0 : STD_LOGIC;
  signal sat_add322_carry_n_1 : STD_LOGIC;
  signal sat_add322_carry_n_2 : STD_LOGIC;
  signal sat_add322_carry_n_3 : STD_LOGIC;
  signal sat_add322_carry_n_4 : STD_LOGIC;
  signal sat_add322_carry_n_5 : STD_LOGIC;
  signal sat_add322_carry_n_6 : STD_LOGIC;
  signal sat_add322_carry_n_7 : STD_LOGIC;
  signal sat_add32_return : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^state_reg[1]_0\ : STD_LOGIC;
  signal term_r : STD_LOGIC_VECTOR ( 30 downto 1 );
  signal \term_r0__0_i_1_n_0\ : STD_LOGIC;
  signal \term_r0__0_n_58\ : STD_LOGIC;
  signal \term_r0__0_n_59\ : STD_LOGIC;
  signal \term_r0__0_n_60\ : STD_LOGIC;
  signal \term_r0__0_n_61\ : STD_LOGIC;
  signal \term_r0__0_n_62\ : STD_LOGIC;
  signal \term_r0__0_n_63\ : STD_LOGIC;
  signal \term_r0__0_n_64\ : STD_LOGIC;
  signal \term_r0__0_n_65\ : STD_LOGIC;
  signal \term_r0__0_n_66\ : STD_LOGIC;
  signal \term_r0__0_n_67\ : STD_LOGIC;
  signal \term_r0__0_n_68\ : STD_LOGIC;
  signal \term_r0__0_n_69\ : STD_LOGIC;
  signal \term_r0__0_n_70\ : STD_LOGIC;
  signal \term_r0__0_n_71\ : STD_LOGIC;
  signal \term_r0__0_n_72\ : STD_LOGIC;
  signal \term_r0__0_n_73\ : STD_LOGIC;
  signal \term_r0__0_n_74\ : STD_LOGIC;
  signal term_r0_n_100 : STD_LOGIC;
  signal term_r0_n_101 : STD_LOGIC;
  signal term_r0_n_102 : STD_LOGIC;
  signal term_r0_n_103 : STD_LOGIC;
  signal term_r0_n_104 : STD_LOGIC;
  signal term_r0_n_105 : STD_LOGIC;
  signal term_r0_n_106 : STD_LOGIC;
  signal term_r0_n_107 : STD_LOGIC;
  signal term_r0_n_108 : STD_LOGIC;
  signal term_r0_n_109 : STD_LOGIC;
  signal term_r0_n_110 : STD_LOGIC;
  signal term_r0_n_111 : STD_LOGIC;
  signal term_r0_n_112 : STD_LOGIC;
  signal term_r0_n_113 : STD_LOGIC;
  signal term_r0_n_114 : STD_LOGIC;
  signal term_r0_n_115 : STD_LOGIC;
  signal term_r0_n_116 : STD_LOGIC;
  signal term_r0_n_117 : STD_LOGIC;
  signal term_r0_n_118 : STD_LOGIC;
  signal term_r0_n_119 : STD_LOGIC;
  signal term_r0_n_120 : STD_LOGIC;
  signal term_r0_n_121 : STD_LOGIC;
  signal term_r0_n_122 : STD_LOGIC;
  signal term_r0_n_123 : STD_LOGIC;
  signal term_r0_n_124 : STD_LOGIC;
  signal term_r0_n_125 : STD_LOGIC;
  signal term_r0_n_126 : STD_LOGIC;
  signal term_r0_n_127 : STD_LOGIC;
  signal term_r0_n_128 : STD_LOGIC;
  signal term_r0_n_129 : STD_LOGIC;
  signal term_r0_n_130 : STD_LOGIC;
  signal term_r0_n_131 : STD_LOGIC;
  signal term_r0_n_132 : STD_LOGIC;
  signal term_r0_n_133 : STD_LOGIC;
  signal term_r0_n_134 : STD_LOGIC;
  signal term_r0_n_135 : STD_LOGIC;
  signal term_r0_n_136 : STD_LOGIC;
  signal term_r0_n_137 : STD_LOGIC;
  signal term_r0_n_138 : STD_LOGIC;
  signal term_r0_n_139 : STD_LOGIC;
  signal term_r0_n_140 : STD_LOGIC;
  signal term_r0_n_141 : STD_LOGIC;
  signal term_r0_n_142 : STD_LOGIC;
  signal term_r0_n_143 : STD_LOGIC;
  signal term_r0_n_144 : STD_LOGIC;
  signal term_r0_n_145 : STD_LOGIC;
  signal term_r0_n_146 : STD_LOGIC;
  signal term_r0_n_147 : STD_LOGIC;
  signal term_r0_n_148 : STD_LOGIC;
  signal term_r0_n_149 : STD_LOGIC;
  signal term_r0_n_150 : STD_LOGIC;
  signal term_r0_n_151 : STD_LOGIC;
  signal term_r0_n_152 : STD_LOGIC;
  signal term_r0_n_153 : STD_LOGIC;
  signal term_r0_n_58 : STD_LOGIC;
  signal term_r0_n_59 : STD_LOGIC;
  signal term_r0_n_60 : STD_LOGIC;
  signal term_r0_n_61 : STD_LOGIC;
  signal term_r0_n_62 : STD_LOGIC;
  signal term_r0_n_63 : STD_LOGIC;
  signal term_r0_n_64 : STD_LOGIC;
  signal term_r0_n_65 : STD_LOGIC;
  signal term_r0_n_66 : STD_LOGIC;
  signal term_r0_n_67 : STD_LOGIC;
  signal term_r0_n_68 : STD_LOGIC;
  signal term_r0_n_69 : STD_LOGIC;
  signal term_r0_n_70 : STD_LOGIC;
  signal term_r0_n_71 : STD_LOGIC;
  signal term_r0_n_72 : STD_LOGIC;
  signal term_r0_n_73 : STD_LOGIC;
  signal term_r0_n_74 : STD_LOGIC;
  signal term_r0_n_75 : STD_LOGIC;
  signal term_r0_n_76 : STD_LOGIC;
  signal term_r0_n_77 : STD_LOGIC;
  signal term_r0_n_78 : STD_LOGIC;
  signal term_r0_n_79 : STD_LOGIC;
  signal term_r0_n_80 : STD_LOGIC;
  signal term_r0_n_81 : STD_LOGIC;
  signal term_r0_n_82 : STD_LOGIC;
  signal term_r0_n_83 : STD_LOGIC;
  signal term_r0_n_84 : STD_LOGIC;
  signal term_r0_n_85 : STD_LOGIC;
  signal term_r0_n_86 : STD_LOGIC;
  signal term_r0_n_87 : STD_LOGIC;
  signal term_r0_n_88 : STD_LOGIC;
  signal term_r0_n_90 : STD_LOGIC;
  signal term_r0_n_91 : STD_LOGIC;
  signal term_r0_n_92 : STD_LOGIC;
  signal term_r0_n_93 : STD_LOGIC;
  signal term_r0_n_94 : STD_LOGIC;
  signal term_r0_n_95 : STD_LOGIC;
  signal term_r0_n_96 : STD_LOGIC;
  signal term_r0_n_97 : STD_LOGIC;
  signal term_r0_n_98 : STD_LOGIC;
  signal term_r0_n_99 : STD_LOGIC;
  signal \^term_r_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_delta_r0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rptr0_reg_reg[14]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rptr0_reg_reg[14]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rptr1_reg_reg[14]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rptr1_reg_reg[14]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sat_add322_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_term_r0_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_term_r0_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_term_r0_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_term_r0_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_term_r0_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_term_r0_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_term_r0_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_term_r0_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_term_r0_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_term_r0__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_term_r0__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_term_r0__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_term_r0__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_term_r0__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_term_r0__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_term_r0__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_term_r0__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_term_r0__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_term_r0__0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair15";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ST_IDLE:000,ST_ISSUE0:001,ST_WAIT0:010,ST_ISSUE1:011,ST_WAIT1:100,ST_MUL:101,ST_ADD:110,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ST_IDLE:000,ST_ISSUE0:001,ST_WAIT0:010,ST_ISSUE1:011,ST_WAIT1:100,ST_MUL:101,ST_ADD:110,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "ST_IDLE:000,ST_ISSUE0:001,ST_WAIT0:010,ST_ISSUE1:011,ST_WAIT1:100,ST_MUL:101,ST_ADD:110,";
  attribute SOFT_HLUTNM of \d_out[0]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \d_out[10]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \d_out[11]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \d_out[12]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \d_out[13]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \d_out[14]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \d_out[15]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \d_out[16]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \d_out[17]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \d_out[18]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \d_out[19]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \d_out[1]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \d_out[20]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \d_out[21]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \d_out[22]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \d_out[23]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \d_out[24]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \d_out[25]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \d_out[26]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \d_out[27]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \d_out[28]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \d_out[29]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \d_out[2]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \d_out[30]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \d_out[31]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \d_out[3]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \d_out[4]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \d_out[5]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \d_out[6]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \d_out[7]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \d_out[8]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \d_out[9]_i_1\ : label is "soft_lutpair27";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of delta_r0_carry : label is 35;
  attribute ADDER_THRESHOLD of \delta_r0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \delta_r0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \delta_r0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \delta_r0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \delta_r0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \delta_r0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \delta_r0_carry__6\ : label is 35;
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \rd_addr_reg[0]_rep\ : label is "rd_addr_reg[0]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[0]_rep__0\ : label is "rd_addr_reg[0]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[0]_rep__1\ : label is "rd_addr_reg[0]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[0]_rep__2\ : label is "rd_addr_reg[0]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[10]_rep\ : label is "rd_addr_reg[10]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[10]_rep__0\ : label is "rd_addr_reg[10]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[10]_rep__1\ : label is "rd_addr_reg[10]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[10]_rep__2\ : label is "rd_addr_reg[10]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[11]_rep\ : label is "rd_addr_reg[11]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[11]_rep__0\ : label is "rd_addr_reg[11]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[11]_rep__1\ : label is "rd_addr_reg[11]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[11]_rep__2\ : label is "rd_addr_reg[11]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[12]_rep\ : label is "rd_addr_reg[12]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[12]_rep__0\ : label is "rd_addr_reg[12]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[12]_rep__1\ : label is "rd_addr_reg[12]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[12]_rep__2\ : label is "rd_addr_reg[12]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[13]_rep\ : label is "rd_addr_reg[13]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[13]_rep__0\ : label is "rd_addr_reg[13]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[13]_rep__1\ : label is "rd_addr_reg[13]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[13]_rep__2\ : label is "rd_addr_reg[13]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[14]_rep\ : label is "rd_addr_reg[14]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[14]_rep__0\ : label is "rd_addr_reg[14]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[14]_rep__1\ : label is "rd_addr_reg[14]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[14]_rep__2\ : label is "rd_addr_reg[14]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[1]_rep\ : label is "rd_addr_reg[1]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[1]_rep__0\ : label is "rd_addr_reg[1]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[1]_rep__1\ : label is "rd_addr_reg[1]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[1]_rep__2\ : label is "rd_addr_reg[1]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[2]_rep\ : label is "rd_addr_reg[2]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[2]_rep__0\ : label is "rd_addr_reg[2]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[2]_rep__1\ : label is "rd_addr_reg[2]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[2]_rep__2\ : label is "rd_addr_reg[2]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[3]_rep\ : label is "rd_addr_reg[3]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[3]_rep__0\ : label is "rd_addr_reg[3]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[3]_rep__1\ : label is "rd_addr_reg[3]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[3]_rep__2\ : label is "rd_addr_reg[3]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[4]_rep\ : label is "rd_addr_reg[4]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[4]_rep__0\ : label is "rd_addr_reg[4]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[4]_rep__1\ : label is "rd_addr_reg[4]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[4]_rep__2\ : label is "rd_addr_reg[4]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[5]_rep\ : label is "rd_addr_reg[5]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[5]_rep__0\ : label is "rd_addr_reg[5]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[5]_rep__1\ : label is "rd_addr_reg[5]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[5]_rep__2\ : label is "rd_addr_reg[5]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[6]_rep\ : label is "rd_addr_reg[6]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[6]_rep__0\ : label is "rd_addr_reg[6]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[6]_rep__1\ : label is "rd_addr_reg[6]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[6]_rep__2\ : label is "rd_addr_reg[6]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[7]_rep\ : label is "rd_addr_reg[7]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[7]_rep__0\ : label is "rd_addr_reg[7]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[7]_rep__1\ : label is "rd_addr_reg[7]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[7]_rep__2\ : label is "rd_addr_reg[7]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[8]_rep\ : label is "rd_addr_reg[8]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[8]_rep__0\ : label is "rd_addr_reg[8]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[8]_rep__1\ : label is "rd_addr_reg[8]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[8]_rep__2\ : label is "rd_addr_reg[8]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[9]_rep\ : label is "rd_addr_reg[9]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[9]_rep__0\ : label is "rd_addr_reg[9]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[9]_rep__1\ : label is "rd_addr_reg[9]";
  attribute ORIG_CELL_NAME of \rd_addr_reg[9]_rep__2\ : label is "rd_addr_reg[9]";
  attribute ORIG_CELL_NAME of rd_en_reg : label is "rd_en_reg";
  attribute ORIG_CELL_NAME of rd_en_reg_rep : label is "rd_en_reg";
  attribute ADDER_THRESHOLD of \rptr0_reg_reg[11]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \rptr0_reg_reg[14]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \rptr0_reg_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \rptr0_reg_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \rptr1_reg_reg[11]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \rptr1_reg_reg[14]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \rptr1_reg_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \rptr1_reg_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of sat_add322_carry : label is 35;
  attribute ADDER_THRESHOLD of \sat_add322_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \sat_add322_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \sat_add322_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \sat_add322_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \sat_add322_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \sat_add322_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \sat_add322_carry__6\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of term_r0 : label is "{SYNTH-11 {cell *THIS*}}";
begin
  E(0) <= \^e\(0);
  \FSM_sequential_state_reg[0]_0\ <= \^fsm_sequential_state_reg[0]_0\;
  \FSM_sequential_state_reg[1]_0\ <= \^fsm_sequential_state_reg[1]_0\;
  \FSM_sequential_state_reg[2]_0\ <= \^fsm_sequential_state_reg[2]_0\;
  frac_d_valid <= \^frac_d_valid\;
  out_buf_valid_reg <= \^out_buf_valid_reg\;
  rst_n_0 <= \^rst_n_0\;
  \s0_reg_reg[31]_0\(31 downto 0) <= \^s0_reg_reg[31]_0\(31 downto 0);
  \state_reg[1]_0\ <= \^state_reg[1]_0\;
  \term_r_reg[0]_0\(0) <= \^term_r_reg[0]_0\(0);
\D_reg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => fx_enable,
      I1 => \x_reg_reg[6]\(0),
      I2 => mono_valid,
      I3 => \^state_reg[1]_0\,
      I4 => \^out_buf_valid_reg\,
      O => \^e\(0)
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC0030E2"
    )
        port map (
      I0 => frac_start,
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => bram_rd_valid,
      I3 => \^fsm_sequential_state_reg[2]_0\,
      I4 => \^fsm_sequential_state_reg[0]_0\,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A1ACA1A4"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => state(2),
      I2 => state(0),
      I3 => state(1),
      I4 => \FSM_sequential_state_reg[0]_1\,
      I5 => \FSM_sequential_state_reg[2]_7\,
      O => \FSM_sequential_state_reg[2]_4\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[1]_0\,
      I1 => \^fsm_sequential_state_reg[2]_0\,
      I2 => \^fsm_sequential_state_reg[0]_0\,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA0CBA04"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => state(2),
      I2 => state(0),
      I3 => state(1),
      I4 => \FSM_sequential_state_reg[0]_1\,
      I5 => \FSM_sequential_state_reg[2]_7\,
      O => \FSM_sequential_state_reg[2]_3\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABBBABBBBBBBBB"
    )
        port map (
      I0 => state(2),
      I1 => \FSM_sequential_state_reg[2]_5\,
      I2 => \^out_buf_valid_reg\,
      I3 => out_buf_valid_reg_1,
      I4 => \^state_reg[1]_0\,
      I5 => mono_valid,
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[1]_0\,
      I1 => \^fsm_sequential_state_reg[2]_0\,
      I2 => \^fsm_sequential_state_reg[0]_0\,
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA45AAEF"
    )
        port map (
      I0 => state(2),
      I1 => \FSM_sequential_state_reg[2]_5\,
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => \FSM_sequential_state_reg[2]_6\,
      I4 => \FSM_sequential_state_reg[0]_1\,
      I5 => \FSM_sequential_state_reg[2]_7\,
      O => \FSM_sequential_state_reg[2]_2\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFFFEFFFFFFFF"
    )
        port map (
      I0 => out_buf_valid_reg_2,
      I1 => \FSM_sequential_state_reg[2]_6\,
      I2 => state(2),
      I3 => out_buf_valid_reg_1,
      I4 => \^state_reg[1]_0\,
      I5 => mono_valid,
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \^fsm_sequential_state_reg[0]_0\,
      R => \^rst_n_0\
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \^fsm_sequential_state_reg[1]_0\,
      R => \^rst_n_0\
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => \^fsm_sequential_state_reg[2]_0\,
      R => \^rst_n_0\
    );
\d_out[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      I3 => sat_add322_carry_n_7,
      O => sat_add32_return(0)
    );
\d_out[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      I3 => \sat_add322_carry__1_n_5\,
      O => sat_add32_return(10)
    );
\d_out[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      I3 => \sat_add322_carry__1_n_4\,
      O => sat_add32_return(11)
    );
\d_out[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      I3 => \sat_add322_carry__2_n_7\,
      O => sat_add32_return(12)
    );
\d_out[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      I3 => \sat_add322_carry__2_n_6\,
      O => sat_add32_return(13)
    );
\d_out[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      I3 => \sat_add322_carry__2_n_5\,
      O => sat_add32_return(14)
    );
\d_out[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      I3 => \sat_add322_carry__2_n_4\,
      O => sat_add32_return(15)
    );
\d_out[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      I3 => \sat_add322_carry__3_n_7\,
      O => sat_add32_return(16)
    );
\d_out[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      I3 => \sat_add322_carry__3_n_6\,
      O => sat_add32_return(17)
    );
\d_out[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      I3 => \sat_add322_carry__3_n_5\,
      O => sat_add32_return(18)
    );
\d_out[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      I3 => \sat_add322_carry__3_n_4\,
      O => sat_add32_return(19)
    );
\d_out[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      I3 => sat_add322_carry_n_6,
      O => sat_add32_return(1)
    );
\d_out[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      I3 => \sat_add322_carry__4_n_7\,
      O => sat_add32_return(20)
    );
\d_out[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      I3 => \sat_add322_carry__4_n_6\,
      O => sat_add32_return(21)
    );
\d_out[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      I3 => \sat_add322_carry__4_n_5\,
      O => sat_add32_return(22)
    );
\d_out[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      I3 => \sat_add322_carry__4_n_4\,
      O => sat_add32_return(23)
    );
\d_out[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      I3 => \sat_add322_carry__5_n_7\,
      O => sat_add32_return(24)
    );
\d_out[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      I3 => \sat_add322_carry__5_n_6\,
      O => sat_add32_return(25)
    );
\d_out[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      I3 => \sat_add322_carry__5_n_5\,
      O => sat_add32_return(26)
    );
\d_out[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      I3 => \sat_add322_carry__5_n_4\,
      O => sat_add32_return(27)
    );
\d_out[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      I3 => \sat_add322_carry__6_n_7\,
      O => sat_add32_return(28)
    );
\d_out[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      I3 => \sat_add322_carry__6_n_6\,
      O => sat_add32_return(29)
    );
\d_out[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      I3 => sat_add322_carry_n_5,
      O => sat_add32_return(2)
    );
\d_out[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      I3 => \sat_add322_carry__6_n_5\,
      O => sat_add32_return(30)
    );
\d_out[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      O => sat_add32_return(31)
    );
\d_out[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      I3 => sat_add322_carry_n_4,
      O => sat_add32_return(3)
    );
\d_out[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      I3 => \sat_add322_carry__0_n_7\,
      O => sat_add32_return(4)
    );
\d_out[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      I3 => \sat_add322_carry__0_n_6\,
      O => sat_add32_return(5)
    );
\d_out[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      I3 => \sat_add322_carry__0_n_5\,
      O => sat_add32_return(6)
    );
\d_out[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      I3 => \sat_add322_carry__0_n_4\,
      O => sat_add32_return(7)
    );
\d_out[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      I3 => \sat_add322_carry__1_n_7\,
      O => sat_add32_return(8)
    );
\d_out[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF04"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_2_in,
      I2 => p_0_in,
      I3 => \sat_add322_carry__1_n_6\,
      O => sat_add32_return(9)
    );
\d_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(0),
      Q => \d_out_reg[31]_0\(0),
      R => \^rst_n_0\
    );
\d_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(10),
      Q => \d_out_reg[31]_0\(10),
      R => \^rst_n_0\
    );
\d_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(11),
      Q => \d_out_reg[31]_0\(11),
      R => \^rst_n_0\
    );
\d_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(12),
      Q => \d_out_reg[31]_0\(12),
      R => \^rst_n_0\
    );
\d_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(13),
      Q => \d_out_reg[31]_0\(13),
      R => \^rst_n_0\
    );
\d_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(14),
      Q => \d_out_reg[31]_0\(14),
      R => \^rst_n_0\
    );
\d_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(15),
      Q => \d_out_reg[31]_0\(15),
      R => \^rst_n_0\
    );
\d_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(16),
      Q => \d_out_reg[31]_0\(16),
      R => \^rst_n_0\
    );
\d_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(17),
      Q => \d_out_reg[31]_0\(17),
      R => \^rst_n_0\
    );
\d_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(18),
      Q => \d_out_reg[31]_0\(18),
      R => \^rst_n_0\
    );
\d_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(19),
      Q => \d_out_reg[31]_0\(19),
      R => \^rst_n_0\
    );
\d_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(1),
      Q => \d_out_reg[31]_0\(1),
      R => \^rst_n_0\
    );
\d_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(20),
      Q => \d_out_reg[31]_0\(20),
      R => \^rst_n_0\
    );
\d_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(21),
      Q => \d_out_reg[31]_0\(21),
      R => \^rst_n_0\
    );
\d_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(22),
      Q => \d_out_reg[31]_0\(22),
      R => \^rst_n_0\
    );
\d_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(23),
      Q => \d_out_reg[31]_0\(23),
      R => \^rst_n_0\
    );
\d_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(24),
      Q => \d_out_reg[31]_0\(24),
      R => \^rst_n_0\
    );
\d_out_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(25),
      Q => \d_out_reg[31]_0\(25),
      R => \^rst_n_0\
    );
\d_out_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(26),
      Q => \d_out_reg[31]_0\(26),
      R => \^rst_n_0\
    );
\d_out_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(27),
      Q => \d_out_reg[31]_0\(27),
      R => \^rst_n_0\
    );
\d_out_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(28),
      Q => \d_out_reg[31]_0\(28),
      R => \^rst_n_0\
    );
\d_out_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(29),
      Q => \d_out_reg[31]_0\(29),
      R => \^rst_n_0\
    );
\d_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(2),
      Q => \d_out_reg[31]_0\(2),
      R => \^rst_n_0\
    );
\d_out_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(30),
      Q => \d_out_reg[31]_0\(30),
      R => \^rst_n_0\
    );
\d_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(31),
      Q => \d_out_reg[31]_0\(31),
      R => \^rst_n_0\
    );
\d_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(3),
      Q => \d_out_reg[31]_0\(3),
      R => \^rst_n_0\
    );
\d_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(4),
      Q => \d_out_reg[31]_0\(4),
      R => \^rst_n_0\
    );
\d_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(5),
      Q => \d_out_reg[31]_0\(5),
      R => \^rst_n_0\
    );
\d_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(6),
      Q => \d_out_reg[31]_0\(6),
      R => \^rst_n_0\
    );
\d_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(7),
      Q => \d_out_reg[31]_0\(7),
      R => \^rst_n_0\
    );
\d_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(8),
      Q => \d_out_reg[31]_0\(8),
      R => \^rst_n_0\
    );
\d_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => d_valid_i_1_n_0,
      D => sat_add32_return(9),
      Q => \d_out_reg[31]_0\(9),
      R => \^rst_n_0\
    );
d_valid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[1]_0\,
      I1 => \^fsm_sequential_state_reg[2]_0\,
      I2 => \^fsm_sequential_state_reg[0]_0\,
      O => d_valid_i_1_n_0
    );
d_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d_valid_i_1_n_0,
      Q => \^frac_d_valid\,
      R => \^rst_n_0\
    );
delta_r0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => delta_r0_carry_n_0,
      CO(2) => delta_r0_carry_n_1,
      CO(1) => delta_r0_carry_n_2,
      CO(0) => delta_r0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => D(3 downto 0),
      O(3 downto 0) => delta_r0(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\delta_r0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => delta_r0_carry_n_0,
      CO(3) => \delta_r0_carry__0_n_0\,
      CO(2) => \delta_r0_carry__0_n_1\,
      CO(1) => \delta_r0_carry__0_n_2\,
      CO(0) => \delta_r0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => D(7 downto 4),
      O(3 downto 0) => delta_r0(7 downto 4),
      S(3 downto 0) => term_r0_0(3 downto 0)
    );
\delta_r0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \delta_r0_carry__0_n_0\,
      CO(3) => \delta_r0_carry__1_n_0\,
      CO(2) => \delta_r0_carry__1_n_1\,
      CO(1) => \delta_r0_carry__1_n_2\,
      CO(0) => \delta_r0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => D(11 downto 8),
      O(3 downto 0) => delta_r0(11 downto 8),
      S(3 downto 0) => term_r0_1(3 downto 0)
    );
\delta_r0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \delta_r0_carry__1_n_0\,
      CO(3) => \delta_r0_carry__2_n_0\,
      CO(2) => \delta_r0_carry__2_n_1\,
      CO(1) => \delta_r0_carry__2_n_2\,
      CO(0) => \delta_r0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => D(15 downto 12),
      O(3 downto 0) => delta_r0(15 downto 12),
      S(3 downto 0) => term_r0_2(3 downto 0)
    );
\delta_r0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \delta_r0_carry__2_n_0\,
      CO(3) => \delta_r0_carry__3_n_0\,
      CO(2) => \delta_r0_carry__3_n_1\,
      CO(1) => \delta_r0_carry__3_n_2\,
      CO(0) => \delta_r0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => D(19 downto 16),
      O(3 downto 0) => delta_r0(19 downto 16),
      S(3 downto 0) => \term_r0__0_1\(3 downto 0)
    );
\delta_r0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \delta_r0_carry__3_n_0\,
      CO(3) => \delta_r0_carry__4_n_0\,
      CO(2) => \delta_r0_carry__4_n_1\,
      CO(1) => \delta_r0_carry__4_n_2\,
      CO(0) => \delta_r0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => D(23 downto 20),
      O(3 downto 0) => delta_r0(23 downto 20),
      S(3 downto 0) => \term_r0__0_2\(3 downto 0)
    );
\delta_r0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \delta_r0_carry__4_n_0\,
      CO(3) => \delta_r0_carry__5_n_0\,
      CO(2) => \delta_r0_carry__5_n_1\,
      CO(1) => \delta_r0_carry__5_n_2\,
      CO(0) => \delta_r0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => D(27 downto 24),
      O(3 downto 0) => delta_r0(27 downto 24),
      S(3 downto 0) => \term_r0__0_3\(3 downto 0)
    );
\delta_r0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \delta_r0_carry__5_n_0\,
      CO(3) => \NLW_delta_r0_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \delta_r0_carry__6_n_1\,
      CO(1) => \delta_r0_carry__6_n_2\,
      CO(0) => \delta_r0_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => D(30 downto 28),
      O(3 downto 0) => delta_r0(31 downto 28),
      S(3 downto 0) => \term_r0__0_4\(3 downto 0)
    );
\out_buf[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00305555"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_3_n_0\,
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => out_buf_valid_reg_1,
      O => \FSM_sequential_state_reg[2]_1\(0)
    );
out_buf_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBF888F"
    )
        port map (
      I0 => out_buf_valid_reg_3(0),
      I1 => out_buf_valid_reg_4,
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => out_buf_valid_reg_1,
      I4 => out_buf_valid_reg_2,
      O => out_buf_valid_reg_0
    );
\rd_addr[0]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(0),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(0),
      O => \rd_addr[0]_rep__0_i_1_n_0\
    );
\rd_addr[0]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(0),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(0),
      O => \rd_addr[0]_rep__1_i_1_n_0\
    );
\rd_addr[0]_rep__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(0),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(0),
      O => \rd_addr[0]_rep__2_i_1_n_0\
    );
\rd_addr[0]_rep_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[0]_0\,
      I1 => \^fsm_sequential_state_reg[2]_0\,
      O => \rd_addr[0]_rep_i_1_n_0\
    );
\rd_addr[0]_rep_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(0),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(0),
      O => \rd_addr[0]_rep_i_2_n_0\
    );
\rd_addr[10]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(10),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(10),
      O => \rd_addr[10]_rep__0_i_1_n_0\
    );
\rd_addr[10]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(10),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(10),
      O => \rd_addr[10]_rep__1_i_1_n_0\
    );
\rd_addr[10]_rep__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(10),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(10),
      O => \rd_addr[10]_rep__2_i_1_n_0\
    );
\rd_addr[10]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(10),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(10),
      O => \rd_addr[10]_rep_i_1_n_0\
    );
\rd_addr[11]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(11),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(11),
      O => \rd_addr[11]_rep__0_i_1_n_0\
    );
\rd_addr[11]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(11),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(11),
      O => \rd_addr[11]_rep__1_i_1_n_0\
    );
\rd_addr[11]_rep__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(11),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(11),
      O => \rd_addr[11]_rep__2_i_1_n_0\
    );
\rd_addr[11]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(11),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(11),
      O => \rd_addr[11]_rep_i_1_n_0\
    );
\rd_addr[12]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(12),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(12),
      O => \rd_addr[12]_rep__0_i_1_n_0\
    );
\rd_addr[12]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(12),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(12),
      O => \rd_addr[12]_rep__1_i_1_n_0\
    );
\rd_addr[12]_rep__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(12),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(12),
      O => \rd_addr[12]_rep__2_i_1_n_0\
    );
\rd_addr[12]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(12),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(12),
      O => \rd_addr[12]_rep_i_1_n_0\
    );
\rd_addr[13]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(13),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(13),
      O => \rd_addr[13]_rep__0_i_1_n_0\
    );
\rd_addr[13]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(13),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(13),
      O => \rd_addr[13]_rep__1_i_1_n_0\
    );
\rd_addr[13]_rep__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(13),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(13),
      O => \rd_addr[13]_rep__2_i_1_n_0\
    );
\rd_addr[13]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(13),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(13),
      O => \rd_addr[13]_rep_i_1_n_0\
    );
\rd_addr[14]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(14),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(14),
      O => \rd_addr[14]_rep__0_i_1_n_0\
    );
\rd_addr[14]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(14),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(14),
      O => \rd_addr[14]_rep__1_i_1_n_0\
    );
\rd_addr[14]_rep__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(14),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(14),
      O => \rd_addr[14]_rep__2_i_1_n_0\
    );
\rd_addr[14]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(14),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(14),
      O => \rd_addr[14]_rep_i_1_n_0\
    );
\rd_addr[1]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(1),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(1),
      O => \rd_addr[1]_rep__0_i_1_n_0\
    );
\rd_addr[1]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(1),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(1),
      O => \rd_addr[1]_rep__1_i_1_n_0\
    );
\rd_addr[1]_rep__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(1),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(1),
      O => \rd_addr[1]_rep__2_i_1_n_0\
    );
\rd_addr[1]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(1),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(1),
      O => \rd_addr[1]_rep_i_1_n_0\
    );
\rd_addr[2]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(2),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(2),
      O => \rd_addr[2]_rep__0_i_1_n_0\
    );
\rd_addr[2]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(2),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(2),
      O => \rd_addr[2]_rep__1_i_1_n_0\
    );
\rd_addr[2]_rep__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(2),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(2),
      O => \rd_addr[2]_rep__2_i_1_n_0\
    );
\rd_addr[2]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(2),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(2),
      O => \rd_addr[2]_rep_i_1_n_0\
    );
\rd_addr[3]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(3),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(3),
      O => \rd_addr[3]_rep__0_i_1_n_0\
    );
\rd_addr[3]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(3),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(3),
      O => \rd_addr[3]_rep__1_i_1_n_0\
    );
\rd_addr[3]_rep__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(3),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(3),
      O => \rd_addr[3]_rep__2_i_1_n_0\
    );
\rd_addr[3]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(3),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(3),
      O => \rd_addr[3]_rep_i_1_n_0\
    );
\rd_addr[4]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(4),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(4),
      O => \rd_addr[4]_rep__0_i_1_n_0\
    );
\rd_addr[4]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(4),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(4),
      O => \rd_addr[4]_rep__1_i_1_n_0\
    );
\rd_addr[4]_rep__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(4),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(4),
      O => \rd_addr[4]_rep__2_i_1_n_0\
    );
\rd_addr[4]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(4),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(4),
      O => \rd_addr[4]_rep_i_1_n_0\
    );
\rd_addr[5]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(5),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(5),
      O => \rd_addr[5]_rep__0_i_1_n_0\
    );
\rd_addr[5]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(5),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(5),
      O => \rd_addr[5]_rep__1_i_1_n_0\
    );
\rd_addr[5]_rep__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(5),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(5),
      O => \rd_addr[5]_rep__2_i_1_n_0\
    );
\rd_addr[5]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(5),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(5),
      O => \rd_addr[5]_rep_i_1_n_0\
    );
\rd_addr[6]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(6),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(6),
      O => \rd_addr[6]_rep__0_i_1_n_0\
    );
\rd_addr[6]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(6),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(6),
      O => \rd_addr[6]_rep__1_i_1_n_0\
    );
\rd_addr[6]_rep__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(6),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(6),
      O => \rd_addr[6]_rep__2_i_1_n_0\
    );
\rd_addr[6]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(6),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(6),
      O => \rd_addr[6]_rep_i_1_n_0\
    );
\rd_addr[7]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(7),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(7),
      O => \rd_addr[7]_rep__0_i_1_n_0\
    );
\rd_addr[7]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(7),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(7),
      O => \rd_addr[7]_rep__1_i_1_n_0\
    );
\rd_addr[7]_rep__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(7),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(7),
      O => \rd_addr[7]_rep__2_i_1_n_0\
    );
\rd_addr[7]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(7),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(7),
      O => \rd_addr[7]_rep_i_1_n_0\
    );
\rd_addr[8]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(8),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(8),
      O => \rd_addr[8]_rep__0_i_1_n_0\
    );
\rd_addr[8]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(8),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(8),
      O => \rd_addr[8]_rep__1_i_1_n_0\
    );
\rd_addr[8]_rep__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(8),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(8),
      O => \rd_addr[8]_rep__2_i_1_n_0\
    );
\rd_addr[8]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(8),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(8),
      O => \rd_addr[8]_rep_i_1_n_0\
    );
\rd_addr[9]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(9),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(9),
      O => \rd_addr[9]_rep__0_i_1_n_0\
    );
\rd_addr[9]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(9),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(9),
      O => \rd_addr[9]_rep__1_i_1_n_0\
    );
\rd_addr[9]_rep__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(9),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(9),
      O => \rd_addr[9]_rep__2_i_1_n_0\
    );
\rd_addr[9]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => rptr0_reg(9),
      I1 => \^fsm_sequential_state_reg[1]_0\,
      I2 => rptr1_reg(9),
      O => \rd_addr[9]_rep_i_1_n_0\
    );
\rd_addr_reg[0]_rep\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[0]_rep_i_2_n_0\,
      Q => ADDRBWRADDR(0),
      R => \^rst_n_0\
    );
\rd_addr_reg[0]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[0]_rep__0_i_1_n_0\,
      Q => \rd_addr_reg[14]_rep__0_0\(0),
      R => \^rst_n_0\
    );
\rd_addr_reg[0]_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[0]_rep__1_i_1_n_0\,
      Q => \rd_addr_reg[14]_rep__1_0\(0),
      R => \^rst_n_0\
    );
\rd_addr_reg[0]_rep__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[0]_rep__2_i_1_n_0\,
      Q => rd_addr(0),
      R => \^rst_n_0\
    );
\rd_addr_reg[10]_rep\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[10]_rep_i_1_n_0\,
      Q => ADDRBWRADDR(10),
      R => \^rst_n_0\
    );
\rd_addr_reg[10]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[10]_rep__0_i_1_n_0\,
      Q => \rd_addr_reg[14]_rep__0_0\(10),
      R => \^rst_n_0\
    );
\rd_addr_reg[10]_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[10]_rep__1_i_1_n_0\,
      Q => \rd_addr_reg[14]_rep__1_0\(10),
      R => \^rst_n_0\
    );
\rd_addr_reg[10]_rep__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[10]_rep__2_i_1_n_0\,
      Q => rd_addr(10),
      R => \^rst_n_0\
    );
\rd_addr_reg[11]_rep\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[11]_rep_i_1_n_0\,
      Q => ADDRBWRADDR(11),
      R => \^rst_n_0\
    );
\rd_addr_reg[11]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[11]_rep__0_i_1_n_0\,
      Q => \rd_addr_reg[14]_rep__0_0\(11),
      R => \^rst_n_0\
    );
\rd_addr_reg[11]_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[11]_rep__1_i_1_n_0\,
      Q => \rd_addr_reg[14]_rep__1_0\(11),
      R => \^rst_n_0\
    );
\rd_addr_reg[11]_rep__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[11]_rep__2_i_1_n_0\,
      Q => rd_addr(11),
      R => \^rst_n_0\
    );
\rd_addr_reg[12]_rep\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[12]_rep_i_1_n_0\,
      Q => ADDRBWRADDR(12),
      R => \^rst_n_0\
    );
\rd_addr_reg[12]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[12]_rep__0_i_1_n_0\,
      Q => \rd_addr_reg[14]_rep__0_0\(12),
      R => \^rst_n_0\
    );
\rd_addr_reg[12]_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[12]_rep__1_i_1_n_0\,
      Q => \rd_addr_reg[14]_rep__1_0\(12),
      R => \^rst_n_0\
    );
\rd_addr_reg[12]_rep__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[12]_rep__2_i_1_n_0\,
      Q => rd_addr(12),
      R => \^rst_n_0\
    );
\rd_addr_reg[13]_rep\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[13]_rep_i_1_n_0\,
      Q => ADDRBWRADDR(13),
      R => \^rst_n_0\
    );
\rd_addr_reg[13]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[13]_rep__0_i_1_n_0\,
      Q => \rd_addr_reg[14]_rep__0_0\(13),
      R => \^rst_n_0\
    );
\rd_addr_reg[13]_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[13]_rep__1_i_1_n_0\,
      Q => \rd_addr_reg[14]_rep__1_0\(13),
      R => \^rst_n_0\
    );
\rd_addr_reg[13]_rep__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[13]_rep__2_i_1_n_0\,
      Q => rd_addr(13),
      R => \^rst_n_0\
    );
\rd_addr_reg[14]_rep\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[14]_rep_i_1_n_0\,
      Q => ADDRBWRADDR(14),
      R => \^rst_n_0\
    );
\rd_addr_reg[14]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[14]_rep__0_i_1_n_0\,
      Q => \rd_addr_reg[14]_rep__0_0\(14),
      R => \^rst_n_0\
    );
\rd_addr_reg[14]_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[14]_rep__1_i_1_n_0\,
      Q => \rd_addr_reg[14]_rep__1_0\(14),
      R => \^rst_n_0\
    );
\rd_addr_reg[14]_rep__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[14]_rep__2_i_1_n_0\,
      Q => rd_addr(14),
      R => \^rst_n_0\
    );
\rd_addr_reg[1]_rep\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[1]_rep_i_1_n_0\,
      Q => ADDRBWRADDR(1),
      R => \^rst_n_0\
    );
\rd_addr_reg[1]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[1]_rep__0_i_1_n_0\,
      Q => \rd_addr_reg[14]_rep__0_0\(1),
      R => \^rst_n_0\
    );
\rd_addr_reg[1]_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[1]_rep__1_i_1_n_0\,
      Q => \rd_addr_reg[14]_rep__1_0\(1),
      R => \^rst_n_0\
    );
\rd_addr_reg[1]_rep__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[1]_rep__2_i_1_n_0\,
      Q => rd_addr(1),
      R => \^rst_n_0\
    );
\rd_addr_reg[2]_rep\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[2]_rep_i_1_n_0\,
      Q => ADDRBWRADDR(2),
      R => \^rst_n_0\
    );
\rd_addr_reg[2]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[2]_rep__0_i_1_n_0\,
      Q => \rd_addr_reg[14]_rep__0_0\(2),
      R => \^rst_n_0\
    );
\rd_addr_reg[2]_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[2]_rep__1_i_1_n_0\,
      Q => \rd_addr_reg[14]_rep__1_0\(2),
      R => \^rst_n_0\
    );
\rd_addr_reg[2]_rep__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[2]_rep__2_i_1_n_0\,
      Q => rd_addr(2),
      R => \^rst_n_0\
    );
\rd_addr_reg[3]_rep\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[3]_rep_i_1_n_0\,
      Q => ADDRBWRADDR(3),
      R => \^rst_n_0\
    );
\rd_addr_reg[3]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[3]_rep__0_i_1_n_0\,
      Q => \rd_addr_reg[14]_rep__0_0\(3),
      R => \^rst_n_0\
    );
\rd_addr_reg[3]_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[3]_rep__1_i_1_n_0\,
      Q => \rd_addr_reg[14]_rep__1_0\(3),
      R => \^rst_n_0\
    );
\rd_addr_reg[3]_rep__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[3]_rep__2_i_1_n_0\,
      Q => rd_addr(3),
      R => \^rst_n_0\
    );
\rd_addr_reg[4]_rep\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[4]_rep_i_1_n_0\,
      Q => ADDRBWRADDR(4),
      R => \^rst_n_0\
    );
\rd_addr_reg[4]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[4]_rep__0_i_1_n_0\,
      Q => \rd_addr_reg[14]_rep__0_0\(4),
      R => \^rst_n_0\
    );
\rd_addr_reg[4]_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[4]_rep__1_i_1_n_0\,
      Q => \rd_addr_reg[14]_rep__1_0\(4),
      R => \^rst_n_0\
    );
\rd_addr_reg[4]_rep__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[4]_rep__2_i_1_n_0\,
      Q => rd_addr(4),
      R => \^rst_n_0\
    );
\rd_addr_reg[5]_rep\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[5]_rep_i_1_n_0\,
      Q => ADDRBWRADDR(5),
      R => \^rst_n_0\
    );
\rd_addr_reg[5]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[5]_rep__0_i_1_n_0\,
      Q => \rd_addr_reg[14]_rep__0_0\(5),
      R => \^rst_n_0\
    );
\rd_addr_reg[5]_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[5]_rep__1_i_1_n_0\,
      Q => \rd_addr_reg[14]_rep__1_0\(5),
      R => \^rst_n_0\
    );
\rd_addr_reg[5]_rep__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[5]_rep__2_i_1_n_0\,
      Q => rd_addr(5),
      R => \^rst_n_0\
    );
\rd_addr_reg[6]_rep\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[6]_rep_i_1_n_0\,
      Q => ADDRBWRADDR(6),
      R => \^rst_n_0\
    );
\rd_addr_reg[6]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[6]_rep__0_i_1_n_0\,
      Q => \rd_addr_reg[14]_rep__0_0\(6),
      R => \^rst_n_0\
    );
\rd_addr_reg[6]_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[6]_rep__1_i_1_n_0\,
      Q => \rd_addr_reg[14]_rep__1_0\(6),
      R => \^rst_n_0\
    );
\rd_addr_reg[6]_rep__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[6]_rep__2_i_1_n_0\,
      Q => rd_addr(6),
      R => \^rst_n_0\
    );
\rd_addr_reg[7]_rep\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[7]_rep_i_1_n_0\,
      Q => ADDRBWRADDR(7),
      R => \^rst_n_0\
    );
\rd_addr_reg[7]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[7]_rep__0_i_1_n_0\,
      Q => \rd_addr_reg[14]_rep__0_0\(7),
      R => \^rst_n_0\
    );
\rd_addr_reg[7]_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[7]_rep__1_i_1_n_0\,
      Q => \rd_addr_reg[14]_rep__1_0\(7),
      R => \^rst_n_0\
    );
\rd_addr_reg[7]_rep__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[7]_rep__2_i_1_n_0\,
      Q => rd_addr(7),
      R => \^rst_n_0\
    );
\rd_addr_reg[8]_rep\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[8]_rep_i_1_n_0\,
      Q => ADDRBWRADDR(8),
      R => \^rst_n_0\
    );
\rd_addr_reg[8]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[8]_rep__0_i_1_n_0\,
      Q => \rd_addr_reg[14]_rep__0_0\(8),
      R => \^rst_n_0\
    );
\rd_addr_reg[8]_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[8]_rep__1_i_1_n_0\,
      Q => \rd_addr_reg[14]_rep__1_0\(8),
      R => \^rst_n_0\
    );
\rd_addr_reg[8]_rep__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[8]_rep__2_i_1_n_0\,
      Q => rd_addr(8),
      R => \^rst_n_0\
    );
\rd_addr_reg[9]_rep\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[9]_rep_i_1_n_0\,
      Q => ADDRBWRADDR(9),
      R => \^rst_n_0\
    );
\rd_addr_reg[9]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[9]_rep__0_i_1_n_0\,
      Q => \rd_addr_reg[14]_rep__0_0\(9),
      R => \^rst_n_0\
    );
\rd_addr_reg[9]_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[9]_rep__1_i_1_n_0\,
      Q => \rd_addr_reg[14]_rep__1_0\(9),
      R => \^rst_n_0\
    );
\rd_addr_reg[9]_rep__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rd_addr[0]_rep_i_1_n_0\,
      D => \rd_addr[9]_rep__2_i_1_n_0\,
      Q => rd_addr(9),
      R => \^rst_n_0\
    );
rd_en_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rd_en_reg_1,
      Q => rd_en_reg_0,
      R => \^rst_n_0\
    );
rd_en_reg_rep: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rd_en_reg_rep_1,
      Q => rd_en_reg_rep_0,
      R => \^rst_n_0\
    );
\rptr0_reg[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_0\(11),
      I1 => \rptr0_reg_reg[14]_1\(11),
      I2 => \rptr0_reg_reg[14]_1\(15),
      O => \rptr0_reg[11]_i_2_n_0\
    );
\rptr0_reg[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_0\(10),
      I1 => \rptr0_reg_reg[14]_1\(10),
      I2 => \rptr0_reg_reg[14]_1\(15),
      O => \rptr0_reg[11]_i_3_n_0\
    );
\rptr0_reg[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_0\(9),
      I1 => \rptr0_reg_reg[14]_1\(9),
      I2 => \rptr0_reg_reg[14]_1\(15),
      O => \rptr0_reg[11]_i_4_n_0\
    );
\rptr0_reg[11]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_0\(8),
      I1 => \rptr0_reg_reg[14]_1\(8),
      I2 => \rptr0_reg_reg[14]_1\(15),
      O => \rptr0_reg[11]_i_5_n_0\
    );
\rptr0_reg[14]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_0\(14),
      I1 => \rptr0_reg_reg[14]_1\(14),
      I2 => \rptr0_reg_reg[14]_1\(15),
      O => \rptr0_reg[14]_i_2_n_0\
    );
\rptr0_reg[14]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_0\(13),
      I1 => \rptr0_reg_reg[14]_1\(13),
      I2 => \rptr0_reg_reg[14]_1\(15),
      O => \rptr0_reg[14]_i_3_n_0\
    );
\rptr0_reg[14]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_0\(12),
      I1 => \rptr0_reg_reg[14]_1\(12),
      I2 => \rptr0_reg_reg[14]_1\(15),
      O => \rptr0_reg[14]_i_4_n_0\
    );
\rptr0_reg[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_0\(3),
      I1 => \rptr0_reg_reg[14]_1\(3),
      I2 => \rptr0_reg_reg[14]_1\(15),
      O => \rptr0_reg[3]_i_2_n_0\
    );
\rptr0_reg[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_0\(2),
      I1 => \rptr0_reg_reg[14]_1\(2),
      I2 => \rptr0_reg_reg[14]_1\(15),
      O => \rptr0_reg[3]_i_3_n_0\
    );
\rptr0_reg[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_0\(1),
      I1 => \rptr0_reg_reg[14]_1\(1),
      I2 => \rptr0_reg_reg[14]_1\(15),
      O => \rptr0_reg[3]_i_4_n_0\
    );
\rptr0_reg[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_0\(0),
      I1 => \rptr1_reg[3]_i_6_n_0\,
      I2 => \rptr0_reg_reg[14]_1\(0),
      I3 => \rptr0_reg_reg[14]_1\(15),
      O => \rptr0_reg[3]_i_5_n_0\
    );
\rptr0_reg[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_0\(7),
      I1 => \rptr0_reg_reg[14]_1\(7),
      I2 => \rptr0_reg_reg[14]_1\(15),
      O => \rptr0_reg[7]_i_2_n_0\
    );
\rptr0_reg[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_0\(6),
      I1 => \rptr0_reg_reg[14]_1\(6),
      I2 => \rptr0_reg_reg[14]_1\(15),
      O => \rptr0_reg[7]_i_3_n_0\
    );
\rptr0_reg[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_0\(5),
      I1 => \rptr0_reg_reg[14]_1\(5),
      I2 => \rptr0_reg_reg[14]_1\(15),
      O => \rptr0_reg[7]_i_4_n_0\
    );
\rptr0_reg[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_0\(4),
      I1 => \rptr0_reg_reg[14]_1\(4),
      I2 => \rptr0_reg_reg[14]_1\(15),
      O => \rptr0_reg[7]_i_5_n_0\
    );
\rptr0_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mu_reg,
      D => rptr0_reg0(0),
      Q => rptr0_reg(0),
      R => \^rst_n_0\
    );
\rptr0_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mu_reg,
      D => rptr0_reg0(10),
      Q => rptr0_reg(10),
      R => \^rst_n_0\
    );
\rptr0_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mu_reg,
      D => rptr0_reg0(11),
      Q => rptr0_reg(11),
      R => \^rst_n_0\
    );
\rptr0_reg_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rptr0_reg_reg[7]_i_1_n_0\,
      CO(3) => \rptr0_reg_reg[11]_i_1_n_0\,
      CO(2) => \rptr0_reg_reg[11]_i_1_n_1\,
      CO(1) => \rptr0_reg_reg[11]_i_1_n_2\,
      CO(0) => \rptr0_reg_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \rptr0_reg_reg[14]_0\(11 downto 8),
      O(3 downto 0) => rptr0_reg0(11 downto 8),
      S(3) => \rptr0_reg[11]_i_2_n_0\,
      S(2) => \rptr0_reg[11]_i_3_n_0\,
      S(1) => \rptr0_reg[11]_i_4_n_0\,
      S(0) => \rptr0_reg[11]_i_5_n_0\
    );
\rptr0_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mu_reg,
      D => rptr0_reg0(12),
      Q => rptr0_reg(12),
      R => \^rst_n_0\
    );
\rptr0_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mu_reg,
      D => rptr0_reg0(13),
      Q => rptr0_reg(13),
      R => \^rst_n_0\
    );
\rptr0_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mu_reg,
      D => rptr0_reg0(14),
      Q => rptr0_reg(14),
      R => \^rst_n_0\
    );
\rptr0_reg_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rptr0_reg_reg[11]_i_1_n_0\,
      CO(3 downto 2) => \NLW_rptr0_reg_reg[14]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \rptr0_reg_reg[14]_i_1_n_2\,
      CO(0) => \rptr0_reg_reg[14]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \rptr0_reg_reg[14]_0\(13 downto 12),
      O(3) => \NLW_rptr0_reg_reg[14]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => rptr0_reg0(14 downto 12),
      S(3) => '0',
      S(2) => \rptr0_reg[14]_i_2_n_0\,
      S(1) => \rptr0_reg[14]_i_3_n_0\,
      S(0) => \rptr0_reg[14]_i_4_n_0\
    );
\rptr0_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mu_reg,
      D => rptr0_reg0(1),
      Q => rptr0_reg(1),
      R => \^rst_n_0\
    );
\rptr0_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mu_reg,
      D => rptr0_reg0(2),
      Q => rptr0_reg(2),
      R => \^rst_n_0\
    );
\rptr0_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mu_reg,
      D => rptr0_reg0(3),
      Q => rptr0_reg(3),
      R => \^rst_n_0\
    );
\rptr0_reg_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rptr0_reg_reg[3]_i_1_n_0\,
      CO(2) => \rptr0_reg_reg[3]_i_1_n_1\,
      CO(1) => \rptr0_reg_reg[3]_i_1_n_2\,
      CO(0) => \rptr0_reg_reg[3]_i_1_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \rptr0_reg_reg[14]_0\(3 downto 0),
      O(3 downto 0) => rptr0_reg0(3 downto 0),
      S(3) => \rptr0_reg[3]_i_2_n_0\,
      S(2) => \rptr0_reg[3]_i_3_n_0\,
      S(1) => \rptr0_reg[3]_i_4_n_0\,
      S(0) => \rptr0_reg[3]_i_5_n_0\
    );
\rptr0_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mu_reg,
      D => rptr0_reg0(4),
      Q => rptr0_reg(4),
      R => \^rst_n_0\
    );
\rptr0_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mu_reg,
      D => rptr0_reg0(5),
      Q => rptr0_reg(5),
      R => \^rst_n_0\
    );
\rptr0_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mu_reg,
      D => rptr0_reg0(6),
      Q => rptr0_reg(6),
      R => \^rst_n_0\
    );
\rptr0_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mu_reg,
      D => rptr0_reg0(7),
      Q => rptr0_reg(7),
      R => \^rst_n_0\
    );
\rptr0_reg_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rptr0_reg_reg[3]_i_1_n_0\,
      CO(3) => \rptr0_reg_reg[7]_i_1_n_0\,
      CO(2) => \rptr0_reg_reg[7]_i_1_n_1\,
      CO(1) => \rptr0_reg_reg[7]_i_1_n_2\,
      CO(0) => \rptr0_reg_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \rptr0_reg_reg[14]_0\(7 downto 4),
      O(3 downto 0) => rptr0_reg0(7 downto 4),
      S(3) => \rptr0_reg[7]_i_2_n_0\,
      S(2) => \rptr0_reg[7]_i_3_n_0\,
      S(1) => \rptr0_reg[7]_i_4_n_0\,
      S(0) => \rptr0_reg[7]_i_5_n_0\
    );
\rptr0_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mu_reg,
      D => rptr0_reg0(8),
      Q => rptr0_reg(8),
      R => \^rst_n_0\
    );
\rptr0_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mu_reg,
      D => rptr0_reg0(9),
      Q => rptr0_reg(9),
      R => \^rst_n_0\
    );
\rptr1_reg[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_0\(11),
      I1 => \rptr0_reg_reg[14]_1\(11),
      I2 => \rptr0_reg_reg[14]_1\(15),
      O => \rptr1_reg[11]_i_2_n_0\
    );
\rptr1_reg[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_0\(10),
      I1 => \rptr0_reg_reg[14]_1\(10),
      I2 => \rptr0_reg_reg[14]_1\(15),
      O => \rptr1_reg[11]_i_3_n_0\
    );
\rptr1_reg[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_0\(9),
      I1 => \rptr0_reg_reg[14]_1\(9),
      I2 => \rptr0_reg_reg[14]_1\(15),
      O => \rptr1_reg[11]_i_4_n_0\
    );
\rptr1_reg[11]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_0\(8),
      I1 => \rptr0_reg_reg[14]_1\(8),
      I2 => \rptr0_reg_reg[14]_1\(15),
      O => \rptr1_reg[11]_i_5_n_0\
    );
\rptr1_reg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[2]_0\,
      I1 => frac_start,
      I2 => \^fsm_sequential_state_reg[1]_0\,
      I3 => \^fsm_sequential_state_reg[0]_0\,
      O => mu_reg
    );
\rptr1_reg[14]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_0\(14),
      I1 => \rptr0_reg_reg[14]_1\(14),
      I2 => \rptr0_reg_reg[14]_1\(15),
      O => \rptr1_reg[14]_i_3_n_0\
    );
\rptr1_reg[14]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_0\(13),
      I1 => \rptr0_reg_reg[14]_1\(13),
      I2 => \rptr0_reg_reg[14]_1\(15),
      O => \rptr1_reg[14]_i_4_n_0\
    );
\rptr1_reg[14]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_0\(12),
      I1 => \rptr0_reg_reg[14]_1\(12),
      I2 => \rptr0_reg_reg[14]_1\(15),
      O => \rptr1_reg[14]_i_5_n_0\
    );
\rptr1_reg[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_0\(3),
      I1 => \rptr0_reg_reg[14]_1\(3),
      I2 => \rptr0_reg_reg[14]_1\(15),
      O => \rptr1_reg[3]_i_2_n_0\
    );
\rptr1_reg[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_0\(2),
      I1 => \rptr0_reg_reg[14]_1\(2),
      I2 => \rptr0_reg_reg[14]_1\(15),
      O => \rptr1_reg[3]_i_3_n_0\
    );
\rptr1_reg[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_0\(1),
      I1 => \rptr0_reg_reg[14]_1\(1),
      I2 => \rptr0_reg_reg[14]_1\(15),
      O => \rptr1_reg[3]_i_4_n_0\
    );
\rptr1_reg[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_0\(0),
      I1 => \rptr1_reg[3]_i_6_n_0\,
      I2 => \rptr0_reg_reg[14]_1\(0),
      I3 => \rptr0_reg_reg[14]_1\(15),
      O => \rptr1_reg[3]_i_5_n_0\
    );
\rptr1_reg[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \rptr1_reg[3]_i_7_n_0\,
      I1 => \rptr1_reg[3]_i_8_n_0\,
      I2 => \rptr1_reg[3]_i_9_n_0\,
      I3 => \rptr0_reg_reg[14]_1\(12),
      I4 => \rptr0_reg_reg[14]_1\(11),
      I5 => \rptr0_reg_reg[14]_1\(3),
      O => \rptr1_reg[3]_i_6_n_0\
    );
\rptr1_reg[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_1\(8),
      I1 => \rptr0_reg_reg[14]_1\(15),
      I2 => \rptr0_reg_reg[14]_1\(14),
      I3 => \rptr0_reg_reg[14]_1\(2),
      O => \rptr1_reg[3]_i_7_n_0\
    );
\rptr1_reg[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_1\(7),
      I1 => \rptr0_reg_reg[14]_1\(4),
      I2 => \rptr0_reg_reg[14]_1\(9),
      I3 => \rptr0_reg_reg[14]_1\(5),
      O => \rptr1_reg[3]_i_8_n_0\
    );
\rptr1_reg[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_1\(6),
      I1 => \rptr0_reg_reg[14]_1\(1),
      I2 => \rptr0_reg_reg[14]_1\(13),
      I3 => \rptr0_reg_reg[14]_1\(10),
      O => \rptr1_reg[3]_i_9_n_0\
    );
\rptr1_reg[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_0\(7),
      I1 => \rptr0_reg_reg[14]_1\(7),
      I2 => \rptr0_reg_reg[14]_1\(15),
      O => \rptr1_reg[7]_i_2_n_0\
    );
\rptr1_reg[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_0\(6),
      I1 => \rptr0_reg_reg[14]_1\(6),
      I2 => \rptr0_reg_reg[14]_1\(15),
      O => \rptr1_reg[7]_i_3_n_0\
    );
\rptr1_reg[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_0\(5),
      I1 => \rptr0_reg_reg[14]_1\(5),
      I2 => \rptr0_reg_reg[14]_1\(15),
      O => \rptr1_reg[7]_i_4_n_0\
    );
\rptr1_reg[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \rptr0_reg_reg[14]_0\(4),
      I1 => \rptr0_reg_reg[14]_1\(4),
      I2 => \rptr0_reg_reg[14]_1\(15),
      O => \rptr1_reg[7]_i_5_n_0\
    );
\rptr1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mu_reg,
      D => rptr1_reg0(0),
      Q => rptr1_reg(0),
      R => \^rst_n_0\
    );
\rptr1_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mu_reg,
      D => rptr1_reg0(10),
      Q => rptr1_reg(10),
      R => \^rst_n_0\
    );
\rptr1_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mu_reg,
      D => rptr1_reg0(11),
      Q => rptr1_reg(11),
      R => \^rst_n_0\
    );
\rptr1_reg_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rptr1_reg_reg[7]_i_1_n_0\,
      CO(3) => \rptr1_reg_reg[11]_i_1_n_0\,
      CO(2) => \rptr1_reg_reg[11]_i_1_n_1\,
      CO(1) => \rptr1_reg_reg[11]_i_1_n_2\,
      CO(0) => \rptr1_reg_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \rptr0_reg_reg[14]_0\(11 downto 8),
      O(3 downto 0) => rptr1_reg0(11 downto 8),
      S(3) => \rptr1_reg[11]_i_2_n_0\,
      S(2) => \rptr1_reg[11]_i_3_n_0\,
      S(1) => \rptr1_reg[11]_i_4_n_0\,
      S(0) => \rptr1_reg[11]_i_5_n_0\
    );
\rptr1_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mu_reg,
      D => rptr1_reg0(12),
      Q => rptr1_reg(12),
      R => \^rst_n_0\
    );
\rptr1_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mu_reg,
      D => rptr1_reg0(13),
      Q => rptr1_reg(13),
      R => \^rst_n_0\
    );
\rptr1_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mu_reg,
      D => rptr1_reg0(14),
      Q => rptr1_reg(14),
      R => \^rst_n_0\
    );
\rptr1_reg_reg[14]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \rptr1_reg_reg[11]_i_1_n_0\,
      CO(3 downto 2) => \NLW_rptr1_reg_reg[14]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \rptr1_reg_reg[14]_i_2_n_2\,
      CO(0) => \rptr1_reg_reg[14]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \rptr0_reg_reg[14]_0\(13 downto 12),
      O(3) => \NLW_rptr1_reg_reg[14]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => rptr1_reg0(14 downto 12),
      S(3) => '0',
      S(2) => \rptr1_reg[14]_i_3_n_0\,
      S(1) => \rptr1_reg[14]_i_4_n_0\,
      S(0) => \rptr1_reg[14]_i_5_n_0\
    );
\rptr1_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mu_reg,
      D => rptr1_reg0(1),
      Q => rptr1_reg(1),
      R => \^rst_n_0\
    );
\rptr1_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mu_reg,
      D => rptr1_reg0(2),
      Q => rptr1_reg(2),
      R => \^rst_n_0\
    );
\rptr1_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mu_reg,
      D => rptr1_reg0(3),
      Q => rptr1_reg(3),
      R => \^rst_n_0\
    );
\rptr1_reg_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rptr1_reg_reg[3]_i_1_n_0\,
      CO(2) => \rptr1_reg_reg[3]_i_1_n_1\,
      CO(1) => \rptr1_reg_reg[3]_i_1_n_2\,
      CO(0) => \rptr1_reg_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \rptr0_reg_reg[14]_0\(3 downto 0),
      O(3 downto 0) => rptr1_reg0(3 downto 0),
      S(3) => \rptr1_reg[3]_i_2_n_0\,
      S(2) => \rptr1_reg[3]_i_3_n_0\,
      S(1) => \rptr1_reg[3]_i_4_n_0\,
      S(0) => \rptr1_reg[3]_i_5_n_0\
    );
\rptr1_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mu_reg,
      D => rptr1_reg0(4),
      Q => rptr1_reg(4),
      R => \^rst_n_0\
    );
\rptr1_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mu_reg,
      D => rptr1_reg0(5),
      Q => rptr1_reg(5),
      R => \^rst_n_0\
    );
\rptr1_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mu_reg,
      D => rptr1_reg0(6),
      Q => rptr1_reg(6),
      R => \^rst_n_0\
    );
\rptr1_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mu_reg,
      D => rptr1_reg0(7),
      Q => rptr1_reg(7),
      R => \^rst_n_0\
    );
\rptr1_reg_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rptr1_reg_reg[3]_i_1_n_0\,
      CO(3) => \rptr1_reg_reg[7]_i_1_n_0\,
      CO(2) => \rptr1_reg_reg[7]_i_1_n_1\,
      CO(1) => \rptr1_reg_reg[7]_i_1_n_2\,
      CO(0) => \rptr1_reg_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \rptr0_reg_reg[14]_0\(7 downto 4),
      O(3 downto 0) => rptr1_reg0(7 downto 4),
      S(3) => \rptr1_reg[7]_i_2_n_0\,
      S(2) => \rptr1_reg[7]_i_3_n_0\,
      S(1) => \rptr1_reg[7]_i_4_n_0\,
      S(0) => \rptr1_reg[7]_i_5_n_0\
    );
\rptr1_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mu_reg,
      D => rptr1_reg0(8),
      Q => rptr1_reg(8),
      R => \^rst_n_0\
    );
\rptr1_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mu_reg,
      D => rptr1_reg0(9),
      Q => rptr1_reg(9),
      R => \^rst_n_0\
    );
\s0_reg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[1]_0\,
      I1 => bram_rd_valid,
      I2 => \^fsm_sequential_state_reg[2]_0\,
      I3 => \^fsm_sequential_state_reg[0]_0\,
      O => s0_reg
    );
\s0_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(0),
      Q => \^s0_reg_reg[31]_0\(0),
      R => \^rst_n_0\
    );
\s0_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(10),
      Q => \^s0_reg_reg[31]_0\(10),
      R => \^rst_n_0\
    );
\s0_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(11),
      Q => \^s0_reg_reg[31]_0\(11),
      R => \^rst_n_0\
    );
\s0_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(12),
      Q => \^s0_reg_reg[31]_0\(12),
      R => \^rst_n_0\
    );
\s0_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(13),
      Q => \^s0_reg_reg[31]_0\(13),
      R => \^rst_n_0\
    );
\s0_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(14),
      Q => \^s0_reg_reg[31]_0\(14),
      R => \^rst_n_0\
    );
\s0_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(15),
      Q => \^s0_reg_reg[31]_0\(15),
      R => \^rst_n_0\
    );
\s0_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(16),
      Q => \^s0_reg_reg[31]_0\(16),
      R => \^rst_n_0\
    );
\s0_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(17),
      Q => \^s0_reg_reg[31]_0\(17),
      R => \^rst_n_0\
    );
\s0_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(18),
      Q => \^s0_reg_reg[31]_0\(18),
      R => \^rst_n_0\
    );
\s0_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(19),
      Q => \^s0_reg_reg[31]_0\(19),
      R => \^rst_n_0\
    );
\s0_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(1),
      Q => \^s0_reg_reg[31]_0\(1),
      R => \^rst_n_0\
    );
\s0_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(20),
      Q => \^s0_reg_reg[31]_0\(20),
      R => \^rst_n_0\
    );
\s0_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(21),
      Q => \^s0_reg_reg[31]_0\(21),
      R => \^rst_n_0\
    );
\s0_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(22),
      Q => \^s0_reg_reg[31]_0\(22),
      R => \^rst_n_0\
    );
\s0_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(23),
      Q => \^s0_reg_reg[31]_0\(23),
      R => \^rst_n_0\
    );
\s0_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(24),
      Q => \^s0_reg_reg[31]_0\(24),
      R => \^rst_n_0\
    );
\s0_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(25),
      Q => \^s0_reg_reg[31]_0\(25),
      R => \^rst_n_0\
    );
\s0_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(26),
      Q => \^s0_reg_reg[31]_0\(26),
      R => \^rst_n_0\
    );
\s0_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(27),
      Q => \^s0_reg_reg[31]_0\(27),
      R => \^rst_n_0\
    );
\s0_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(28),
      Q => \^s0_reg_reg[31]_0\(28),
      R => \^rst_n_0\
    );
\s0_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(29),
      Q => \^s0_reg_reg[31]_0\(29),
      R => \^rst_n_0\
    );
\s0_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(2),
      Q => \^s0_reg_reg[31]_0\(2),
      R => \^rst_n_0\
    );
\s0_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(30),
      Q => \^s0_reg_reg[31]_0\(30),
      R => \^rst_n_0\
    );
\s0_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(31),
      Q => \^s0_reg_reg[31]_0\(31),
      R => \^rst_n_0\
    );
\s0_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(3),
      Q => \^s0_reg_reg[31]_0\(3),
      R => \^rst_n_0\
    );
\s0_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(4),
      Q => \^s0_reg_reg[31]_0\(4),
      R => \^rst_n_0\
    );
\s0_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(5),
      Q => \^s0_reg_reg[31]_0\(5),
      R => \^rst_n_0\
    );
\s0_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(6),
      Q => \^s0_reg_reg[31]_0\(6),
      R => \^rst_n_0\
    );
\s0_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(7),
      Q => \^s0_reg_reg[31]_0\(7),
      R => \^rst_n_0\
    );
\s0_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(8),
      Q => \^s0_reg_reg[31]_0\(8),
      R => \^rst_n_0\
    );
\s0_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s0_reg,
      D => D(9),
      Q => \^s0_reg_reg[31]_0\(9),
      R => \^rst_n_0\
    );
s_axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \^rst_n_0\
    );
s_axis_tready_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => v1,
      I1 => v1_0,
      I2 => \term_r0__0_0\,
      I3 => \^fsm_sequential_state_reg[1]_0\,
      I4 => \^fsm_sequential_state_reg[0]_0\,
      I5 => \^fsm_sequential_state_reg[2]_0\,
      O => \^state_reg[1]_0\
    );
s_axis_tready_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => out_buf_valid_reg_2,
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      O => \^out_buf_valid_reg\
    );
sat_add322_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sat_add322_carry_n_0,
      CO(2) => sat_add322_carry_n_1,
      CO(1) => sat_add322_carry_n_2,
      CO(0) => sat_add322_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \^s0_reg_reg[31]_0\(3 downto 0),
      O(3) => sat_add322_carry_n_4,
      O(2) => sat_add322_carry_n_5,
      O(1) => sat_add322_carry_n_6,
      O(0) => sat_add322_carry_n_7,
      S(3) => sat_add322_carry_i_1_n_0,
      S(2) => sat_add322_carry_i_2_n_0,
      S(1) => sat_add322_carry_i_3_n_0,
      S(0) => sat_add322_carry_i_4_n_0
    );
\sat_add322_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sat_add322_carry_n_0,
      CO(3) => \sat_add322_carry__0_n_0\,
      CO(2) => \sat_add322_carry__0_n_1\,
      CO(1) => \sat_add322_carry__0_n_2\,
      CO(0) => \sat_add322_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^s0_reg_reg[31]_0\(7 downto 4),
      O(3) => \sat_add322_carry__0_n_4\,
      O(2) => \sat_add322_carry__0_n_5\,
      O(1) => \sat_add322_carry__0_n_6\,
      O(0) => \sat_add322_carry__0_n_7\,
      S(3) => \sat_add322_carry__0_i_1_n_0\,
      S(2) => \sat_add322_carry__0_i_2_n_0\,
      S(1) => \sat_add322_carry__0_i_3_n_0\,
      S(0) => \sat_add322_carry__0_i_4_n_0\
    );
\sat_add322_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(7),
      I1 => term_r(7),
      O => \sat_add322_carry__0_i_1_n_0\
    );
\sat_add322_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(6),
      I1 => term_r(6),
      O => \sat_add322_carry__0_i_2_n_0\
    );
\sat_add322_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(5),
      I1 => term_r(5),
      O => \sat_add322_carry__0_i_3_n_0\
    );
\sat_add322_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(4),
      I1 => term_r(4),
      O => \sat_add322_carry__0_i_4_n_0\
    );
\sat_add322_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sat_add322_carry__0_n_0\,
      CO(3) => \sat_add322_carry__1_n_0\,
      CO(2) => \sat_add322_carry__1_n_1\,
      CO(1) => \sat_add322_carry__1_n_2\,
      CO(0) => \sat_add322_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^s0_reg_reg[31]_0\(11 downto 8),
      O(3) => \sat_add322_carry__1_n_4\,
      O(2) => \sat_add322_carry__1_n_5\,
      O(1) => \sat_add322_carry__1_n_6\,
      O(0) => \sat_add322_carry__1_n_7\,
      S(3) => \sat_add322_carry__1_i_1_n_0\,
      S(2) => \sat_add322_carry__1_i_2_n_0\,
      S(1) => \sat_add322_carry__1_i_3_n_0\,
      S(0) => \sat_add322_carry__1_i_4_n_0\
    );
\sat_add322_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(11),
      I1 => term_r(11),
      O => \sat_add322_carry__1_i_1_n_0\
    );
\sat_add322_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(10),
      I1 => term_r(10),
      O => \sat_add322_carry__1_i_2_n_0\
    );
\sat_add322_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(9),
      I1 => term_r(9),
      O => \sat_add322_carry__1_i_3_n_0\
    );
\sat_add322_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(8),
      I1 => term_r(8),
      O => \sat_add322_carry__1_i_4_n_0\
    );
\sat_add322_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sat_add322_carry__1_n_0\,
      CO(3) => \sat_add322_carry__2_n_0\,
      CO(2) => \sat_add322_carry__2_n_1\,
      CO(1) => \sat_add322_carry__2_n_2\,
      CO(0) => \sat_add322_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^s0_reg_reg[31]_0\(15 downto 12),
      O(3) => \sat_add322_carry__2_n_4\,
      O(2) => \sat_add322_carry__2_n_5\,
      O(1) => \sat_add322_carry__2_n_6\,
      O(0) => \sat_add322_carry__2_n_7\,
      S(3) => \sat_add322_carry__2_i_1_n_0\,
      S(2) => \sat_add322_carry__2_i_2_n_0\,
      S(1) => \sat_add322_carry__2_i_3_n_0\,
      S(0) => \sat_add322_carry__2_i_4_n_0\
    );
\sat_add322_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(15),
      I1 => term_r(15),
      O => \sat_add322_carry__2_i_1_n_0\
    );
\sat_add322_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(14),
      I1 => term_r(14),
      O => \sat_add322_carry__2_i_2_n_0\
    );
\sat_add322_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(13),
      I1 => term_r(13),
      O => \sat_add322_carry__2_i_3_n_0\
    );
\sat_add322_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(12),
      I1 => term_r(12),
      O => \sat_add322_carry__2_i_4_n_0\
    );
\sat_add322_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \sat_add322_carry__2_n_0\,
      CO(3) => \sat_add322_carry__3_n_0\,
      CO(2) => \sat_add322_carry__3_n_1\,
      CO(1) => \sat_add322_carry__3_n_2\,
      CO(0) => \sat_add322_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^s0_reg_reg[31]_0\(19 downto 16),
      O(3) => \sat_add322_carry__3_n_4\,
      O(2) => \sat_add322_carry__3_n_5\,
      O(1) => \sat_add322_carry__3_n_6\,
      O(0) => \sat_add322_carry__3_n_7\,
      S(3) => \sat_add322_carry__3_i_1_n_0\,
      S(2) => \sat_add322_carry__3_i_2_n_0\,
      S(1) => \sat_add322_carry__3_i_3_n_0\,
      S(0) => \sat_add322_carry__3_i_4_n_0\
    );
\sat_add322_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(19),
      I1 => term_r(19),
      O => \sat_add322_carry__3_i_1_n_0\
    );
\sat_add322_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(18),
      I1 => term_r(18),
      O => \sat_add322_carry__3_i_2_n_0\
    );
\sat_add322_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(17),
      I1 => term_r(17),
      O => \sat_add322_carry__3_i_3_n_0\
    );
\sat_add322_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(16),
      I1 => term_r(16),
      O => \sat_add322_carry__3_i_4_n_0\
    );
\sat_add322_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \sat_add322_carry__3_n_0\,
      CO(3) => \sat_add322_carry__4_n_0\,
      CO(2) => \sat_add322_carry__4_n_1\,
      CO(1) => \sat_add322_carry__4_n_2\,
      CO(0) => \sat_add322_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^s0_reg_reg[31]_0\(23 downto 20),
      O(3) => \sat_add322_carry__4_n_4\,
      O(2) => \sat_add322_carry__4_n_5\,
      O(1) => \sat_add322_carry__4_n_6\,
      O(0) => \sat_add322_carry__4_n_7\,
      S(3) => \sat_add322_carry__4_i_1_n_0\,
      S(2) => \sat_add322_carry__4_i_2_n_0\,
      S(1) => \sat_add322_carry__4_i_3_n_0\,
      S(0) => \sat_add322_carry__4_i_4_n_0\
    );
\sat_add322_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(23),
      I1 => term_r(23),
      O => \sat_add322_carry__4_i_1_n_0\
    );
\sat_add322_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(22),
      I1 => term_r(22),
      O => \sat_add322_carry__4_i_2_n_0\
    );
\sat_add322_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(21),
      I1 => term_r(21),
      O => \sat_add322_carry__4_i_3_n_0\
    );
\sat_add322_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(20),
      I1 => term_r(20),
      O => \sat_add322_carry__4_i_4_n_0\
    );
\sat_add322_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sat_add322_carry__4_n_0\,
      CO(3) => \sat_add322_carry__5_n_0\,
      CO(2) => \sat_add322_carry__5_n_1\,
      CO(1) => \sat_add322_carry__5_n_2\,
      CO(0) => \sat_add322_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^s0_reg_reg[31]_0\(27 downto 24),
      O(3) => \sat_add322_carry__5_n_4\,
      O(2) => \sat_add322_carry__5_n_5\,
      O(1) => \sat_add322_carry__5_n_6\,
      O(0) => \sat_add322_carry__5_n_7\,
      S(3) => \sat_add322_carry__5_i_1_n_0\,
      S(2) => \sat_add322_carry__5_i_2_n_0\,
      S(1) => \sat_add322_carry__5_i_3_n_0\,
      S(0) => \sat_add322_carry__5_i_4_n_0\
    );
\sat_add322_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(27),
      I1 => term_r(27),
      O => \sat_add322_carry__5_i_1_n_0\
    );
\sat_add322_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(26),
      I1 => term_r(26),
      O => \sat_add322_carry__5_i_2_n_0\
    );
\sat_add322_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(25),
      I1 => term_r(25),
      O => \sat_add322_carry__5_i_3_n_0\
    );
\sat_add322_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(24),
      I1 => term_r(24),
      O => \sat_add322_carry__5_i_4_n_0\
    );
\sat_add322_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \sat_add322_carry__5_n_0\,
      CO(3) => \NLW_sat_add322_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \sat_add322_carry__6_n_1\,
      CO(1) => \sat_add322_carry__6_n_2\,
      CO(0) => \sat_add322_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^s0_reg_reg[31]_0\(30 downto 28),
      O(3) => p_2_in,
      O(2) => \sat_add322_carry__6_n_5\,
      O(1) => \sat_add322_carry__6_n_6\,
      O(0) => \sat_add322_carry__6_n_7\,
      S(3) => \sat_add322_carry__6_i_1_n_0\,
      S(2) => \sat_add322_carry__6_i_2_n_0\,
      S(1) => \sat_add322_carry__6_i_3_n_0\,
      S(0) => \sat_add322_carry__6_i_4_n_0\
    );
\sat_add322_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(31),
      I1 => p_0_in,
      O => \sat_add322_carry__6_i_1_n_0\
    );
\sat_add322_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(30),
      I1 => term_r(30),
      O => \sat_add322_carry__6_i_2_n_0\
    );
\sat_add322_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(29),
      I1 => term_r(29),
      O => \sat_add322_carry__6_i_3_n_0\
    );
\sat_add322_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(28),
      I1 => term_r(28),
      O => \sat_add322_carry__6_i_4_n_0\
    );
sat_add322_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(3),
      I1 => term_r(3),
      O => sat_add322_carry_i_1_n_0
    );
sat_add322_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(2),
      I1 => term_r(2),
      O => sat_add322_carry_i_2_n_0
    );
sat_add322_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(1),
      I1 => term_r(1),
      O => sat_add322_carry_i_3_n_0
    );
sat_add322_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s0_reg_reg[31]_0\(0),
      I1 => \^term_r_reg[0]_0\(0),
      O => sat_add322_carry_i_4_n_0
    );
term_r0: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => delta_r0(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_term_r0_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 16) => B"00",
      B(15 downto 0) => Q(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_term_r0_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_term_r0_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_term_r0_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => delta_r,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => \^e\(0),
      CEB2 => mu_reg,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_term_r0_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_term_r0_OVERFLOW_UNCONNECTED,
      P(47) => term_r0_n_58,
      P(46) => term_r0_n_59,
      P(45) => term_r0_n_60,
      P(44) => term_r0_n_61,
      P(43) => term_r0_n_62,
      P(42) => term_r0_n_63,
      P(41) => term_r0_n_64,
      P(40) => term_r0_n_65,
      P(39) => term_r0_n_66,
      P(38) => term_r0_n_67,
      P(37) => term_r0_n_68,
      P(36) => term_r0_n_69,
      P(35) => term_r0_n_70,
      P(34) => term_r0_n_71,
      P(33) => term_r0_n_72,
      P(32) => term_r0_n_73,
      P(31) => term_r0_n_74,
      P(30) => term_r0_n_75,
      P(29) => term_r0_n_76,
      P(28) => term_r0_n_77,
      P(27) => term_r0_n_78,
      P(26) => term_r0_n_79,
      P(25) => term_r0_n_80,
      P(24) => term_r0_n_81,
      P(23) => term_r0_n_82,
      P(22) => term_r0_n_83,
      P(21) => term_r0_n_84,
      P(20) => term_r0_n_85,
      P(19) => term_r0_n_86,
      P(18) => term_r0_n_87,
      P(17) => term_r0_n_88,
      P(16) => P(0),
      P(15) => term_r0_n_90,
      P(14) => term_r0_n_91,
      P(13) => term_r0_n_92,
      P(12) => term_r0_n_93,
      P(11) => term_r0_n_94,
      P(10) => term_r0_n_95,
      P(9) => term_r0_n_96,
      P(8) => term_r0_n_97,
      P(7) => term_r0_n_98,
      P(6) => term_r0_n_99,
      P(5) => term_r0_n_100,
      P(4) => term_r0_n_101,
      P(3) => term_r0_n_102,
      P(2) => term_r0_n_103,
      P(1) => term_r0_n_104,
      P(0) => term_r0_n_105,
      PATTERNBDETECT => NLW_term_r0_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_term_r0_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => term_r0_n_106,
      PCOUT(46) => term_r0_n_107,
      PCOUT(45) => term_r0_n_108,
      PCOUT(44) => term_r0_n_109,
      PCOUT(43) => term_r0_n_110,
      PCOUT(42) => term_r0_n_111,
      PCOUT(41) => term_r0_n_112,
      PCOUT(40) => term_r0_n_113,
      PCOUT(39) => term_r0_n_114,
      PCOUT(38) => term_r0_n_115,
      PCOUT(37) => term_r0_n_116,
      PCOUT(36) => term_r0_n_117,
      PCOUT(35) => term_r0_n_118,
      PCOUT(34) => term_r0_n_119,
      PCOUT(33) => term_r0_n_120,
      PCOUT(32) => term_r0_n_121,
      PCOUT(31) => term_r0_n_122,
      PCOUT(30) => term_r0_n_123,
      PCOUT(29) => term_r0_n_124,
      PCOUT(28) => term_r0_n_125,
      PCOUT(27) => term_r0_n_126,
      PCOUT(26) => term_r0_n_127,
      PCOUT(25) => term_r0_n_128,
      PCOUT(24) => term_r0_n_129,
      PCOUT(23) => term_r0_n_130,
      PCOUT(22) => term_r0_n_131,
      PCOUT(21) => term_r0_n_132,
      PCOUT(20) => term_r0_n_133,
      PCOUT(19) => term_r0_n_134,
      PCOUT(18) => term_r0_n_135,
      PCOUT(17) => term_r0_n_136,
      PCOUT(16) => term_r0_n_137,
      PCOUT(15) => term_r0_n_138,
      PCOUT(14) => term_r0_n_139,
      PCOUT(13) => term_r0_n_140,
      PCOUT(12) => term_r0_n_141,
      PCOUT(11) => term_r0_n_142,
      PCOUT(10) => term_r0_n_143,
      PCOUT(9) => term_r0_n_144,
      PCOUT(8) => term_r0_n_145,
      PCOUT(7) => term_r0_n_146,
      PCOUT(6) => term_r0_n_147,
      PCOUT(5) => term_r0_n_148,
      PCOUT(4) => term_r0_n_149,
      PCOUT(3) => term_r0_n_150,
      PCOUT(2) => term_r0_n_151,
      PCOUT(1) => term_r0_n_152,
      PCOUT(0) => term_r0_n_153,
      RSTA => \^rst_n_0\,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => \^rst_n_0\,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_term_r0_UNDERFLOW_UNCONNECTED
    );
\term_r0__0\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 16) => B"00000000000000",
      A(15 downto 0) => Q(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_term_r0__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => delta_r0(31),
      B(16) => delta_r0(31),
      B(15) => delta_r0(31),
      B(14 downto 0) => delta_r0(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_term_r0__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_term_r0__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_term_r0__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => \^e\(0),
      CEA2 => mu_reg,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => delta_r,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => \term_r0__0_i_1_n_0\,
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_term_r0__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_term_r0__0_OVERFLOW_UNCONNECTED\,
      P(47) => \term_r0__0_n_58\,
      P(46) => \term_r0__0_n_59\,
      P(45) => \term_r0__0_n_60\,
      P(44) => \term_r0__0_n_61\,
      P(43) => \term_r0__0_n_62\,
      P(42) => \term_r0__0_n_63\,
      P(41) => \term_r0__0_n_64\,
      P(40) => \term_r0__0_n_65\,
      P(39) => \term_r0__0_n_66\,
      P(38) => \term_r0__0_n_67\,
      P(37) => \term_r0__0_n_68\,
      P(36) => \term_r0__0_n_69\,
      P(35) => \term_r0__0_n_70\,
      P(34) => \term_r0__0_n_71\,
      P(33) => \term_r0__0_n_72\,
      P(32) => \term_r0__0_n_73\,
      P(31) => \term_r0__0_n_74\,
      P(30) => p_0_in,
      P(29 downto 0) => term_r(30 downto 1),
      PATTERNBDETECT => \NLW_term_r0__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_term_r0__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => term_r0_n_106,
      PCIN(46) => term_r0_n_107,
      PCIN(45) => term_r0_n_108,
      PCIN(44) => term_r0_n_109,
      PCIN(43) => term_r0_n_110,
      PCIN(42) => term_r0_n_111,
      PCIN(41) => term_r0_n_112,
      PCIN(40) => term_r0_n_113,
      PCIN(39) => term_r0_n_114,
      PCIN(38) => term_r0_n_115,
      PCIN(37) => term_r0_n_116,
      PCIN(36) => term_r0_n_117,
      PCIN(35) => term_r0_n_118,
      PCIN(34) => term_r0_n_119,
      PCIN(33) => term_r0_n_120,
      PCIN(32) => term_r0_n_121,
      PCIN(31) => term_r0_n_122,
      PCIN(30) => term_r0_n_123,
      PCIN(29) => term_r0_n_124,
      PCIN(28) => term_r0_n_125,
      PCIN(27) => term_r0_n_126,
      PCIN(26) => term_r0_n_127,
      PCIN(25) => term_r0_n_128,
      PCIN(24) => term_r0_n_129,
      PCIN(23) => term_r0_n_130,
      PCIN(22) => term_r0_n_131,
      PCIN(21) => term_r0_n_132,
      PCIN(20) => term_r0_n_133,
      PCIN(19) => term_r0_n_134,
      PCIN(18) => term_r0_n_135,
      PCIN(17) => term_r0_n_136,
      PCIN(16) => term_r0_n_137,
      PCIN(15) => term_r0_n_138,
      PCIN(14) => term_r0_n_139,
      PCIN(13) => term_r0_n_140,
      PCIN(12) => term_r0_n_141,
      PCIN(11) => term_r0_n_142,
      PCIN(10) => term_r0_n_143,
      PCIN(9) => term_r0_n_144,
      PCIN(8) => term_r0_n_145,
      PCIN(7) => term_r0_n_146,
      PCIN(6) => term_r0_n_147,
      PCIN(5) => term_r0_n_148,
      PCIN(4) => term_r0_n_149,
      PCIN(3) => term_r0_n_150,
      PCIN(2) => term_r0_n_151,
      PCIN(1) => term_r0_n_152,
      PCIN(0) => term_r0_n_153,
      PCOUT(47 downto 0) => \NLW_term_r0__0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => \^rst_n_0\,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => \^rst_n_0\,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => \^rst_n_0\,
      UNDERFLOW => \NLW_term_r0__0_UNDERFLOW_UNCONNECTED\
    );
\term_r0__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[1]_0\,
      I1 => \^fsm_sequential_state_reg[2]_0\,
      I2 => \^fsm_sequential_state_reg[0]_0\,
      O => \term_r0__0_i_1_n_0\
    );
term_r0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[1]_0\,
      I1 => \^fsm_sequential_state_reg[0]_0\,
      I2 => bram_rd_valid,
      I3 => \^fsm_sequential_state_reg[2]_0\,
      O => delta_r
    );
\term_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \term_r_reg[0]_1\,
      Q => \^term_r_reg[0]_0\(0),
      R => \^rst_n_0\
    );
v1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => v1,
      I1 => v1_0,
      I2 => \^frac_d_valid\,
      O => \state_reg[1]\
    );
\x_reg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007000"
    )
        port map (
      I0 => v1_0,
      I1 => v1,
      I2 => fx_enable,
      I3 => \x_reg_reg[6]\(0),
      I4 => \FSM_sequential_state[2]_i_3_n_0\,
      O => \state_reg[0]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fx_system_wrapper_0_1_fx_axis_mono_adapter is
  port (
    mono_valid : out STD_LOGIC;
    \in_state_reg[0]_0\ : out STD_LOGIC;
    inflight_reg_0 : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 25 downto 0 );
    inflight0 : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    \in_data_reg[31]_0\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    p_0_in : in STD_LOGIC;
    clk : in STD_LOGIC;
    \in_state_reg[0]_1\ : in STD_LOGIC;
    s_axis_tready : in STD_LOGIC;
    s_axis_tready_0 : in STD_LOGIC;
    s_axis_tready_1 : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    ret_valid : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 25 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_fx_system_wrapper_0_1_fx_axis_mono_adapter : entity is "fx_axis_mono_adapter";
end design_1_fx_system_wrapper_0_1_fx_axis_mono_adapter;

architecture STRUCTURE of design_1_fx_system_wrapper_0_1_fx_axis_mono_adapter is
  signal \FSM_onehot_out_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_out_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_out_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_out_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_out_state_reg_n_0_[2]\ : STD_LOGIC;
  signal audio_out_241 : STD_LOGIC;
  signal audio_out_2410_in : STD_LOGIC;
  signal audio_out_241_carry_i_1_n_0 : STD_LOGIC;
  signal audio_out_241_carry_i_2_n_0 : STD_LOGIC;
  signal audio_out_241_carry_i_3_n_0 : STD_LOGIC;
  signal audio_out_241_carry_i_4_n_0 : STD_LOGIC;
  signal audio_out_241_carry_i_5_n_0 : STD_LOGIC;
  signal audio_out_241_carry_i_6_n_0 : STD_LOGIC;
  signal audio_out_241_carry_n_0 : STD_LOGIC;
  signal audio_out_241_carry_n_1 : STD_LOGIC;
  signal audio_out_241_carry_n_2 : STD_LOGIC;
  signal audio_out_241_carry_n_3 : STD_LOGIC;
  signal \audio_out_241_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \audio_out_241_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \audio_out_241_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \audio_out_241_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \^in_state_reg[0]_0\ : STD_LOGIC;
  signal in_valid_i_1_n_0 : STD_LOGIC;
  signal \^inflight0\ : STD_LOGIC;
  signal inflight_i_1_n_0 : STD_LOGIC;
  signal inflight_i_2_n_0 : STD_LOGIC;
  signal \^inflight_reg_0\ : STD_LOGIC;
  signal inflight_reg_n_0 : STD_LOGIC;
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal p_0_in0 : STD_LOGIC;
  signal s_axis_tready_INST_0_i_1_n_0 : STD_LOGIC;
  signal \y_buf_reg_n_0_[10]\ : STD_LOGIC;
  signal \y_buf_reg_n_0_[11]\ : STD_LOGIC;
  signal \y_buf_reg_n_0_[12]\ : STD_LOGIC;
  signal \y_buf_reg_n_0_[13]\ : STD_LOGIC;
  signal \y_buf_reg_n_0_[14]\ : STD_LOGIC;
  signal \y_buf_reg_n_0_[15]\ : STD_LOGIC;
  signal \y_buf_reg_n_0_[16]\ : STD_LOGIC;
  signal \y_buf_reg_n_0_[17]\ : STD_LOGIC;
  signal \y_buf_reg_n_0_[18]\ : STD_LOGIC;
  signal \y_buf_reg_n_0_[19]\ : STD_LOGIC;
  signal \y_buf_reg_n_0_[20]\ : STD_LOGIC;
  signal \y_buf_reg_n_0_[21]\ : STD_LOGIC;
  signal \y_buf_reg_n_0_[22]\ : STD_LOGIC;
  signal \y_buf_reg_n_0_[23]\ : STD_LOGIC;
  signal \y_buf_reg_n_0_[24]\ : STD_LOGIC;
  signal \y_buf_reg_n_0_[25]\ : STD_LOGIC;
  signal \y_buf_reg_n_0_[26]\ : STD_LOGIC;
  signal \y_buf_reg_n_0_[27]\ : STD_LOGIC;
  signal \y_buf_reg_n_0_[28]\ : STD_LOGIC;
  signal \y_buf_reg_n_0_[29]\ : STD_LOGIC;
  signal \y_buf_reg_n_0_[30]\ : STD_LOGIC;
  signal \y_buf_reg_n_0_[6]\ : STD_LOGIC;
  signal \y_buf_reg_n_0_[7]\ : STD_LOGIC;
  signal \y_buf_reg_n_0_[8]\ : STD_LOGIC;
  signal \y_buf_reg_n_0_[9]\ : STD_LOGIC;
  signal y_buf_valid : STD_LOGIC;
  signal y_buf_valid_i_1_n_0 : STD_LOGIC;
  signal NLW_audio_out_241_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_audio_out_241_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_audio_out_241_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_audio_out_241_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_audio_out_241_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_audio_out_241_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_out_state[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_onehot_out_state[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_onehot_out_state[2]_i_1\ : label is "soft_lutpair13";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_out_state_reg[0]\ : label is "OUT_IDLE:001,OUT_SEND_L:100,OUT_SEND_R:010,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_out_state_reg[1]\ : label is "OUT_IDLE:001,OUT_SEND_L:100,OUT_SEND_R:010,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_out_state_reg[2]\ : label is "OUT_IDLE:001,OUT_SEND_L:100,OUT_SEND_R:010,";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of audio_out_241_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \audio_out_241_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \audio_out_241_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \audio_out_241_inferred__0/i__carry__0\ : label is 11;
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0_i_1 : label is "soft_lutpair14";
begin
  \in_state_reg[0]_0\ <= \^in_state_reg[0]_0\;
  inflight0 <= \^inflight0\;
  inflight_reg_0 <= \^inflight_reg_0\;
  m_axis_tdata(25 downto 0) <= \^m_axis_tdata\(25 downto 0);
\FSM_onehot_out_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC44"
    )
        port map (
      I0 => y_buf_valid,
      I1 => \FSM_onehot_out_state_reg_n_0_[0]\,
      I2 => m_axis_tready,
      I3 => \^m_axis_tdata\(1),
      O => \FSM_onehot_out_state[0]_i_1_n_0\
    );
\FSM_onehot_out_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF47B800"
    )
        port map (
      I0 => y_buf_valid,
      I1 => \FSM_onehot_out_state_reg_n_0_[0]\,
      I2 => m_axis_tready,
      I3 => \FSM_onehot_out_state_reg_n_0_[2]\,
      I4 => \^m_axis_tdata\(1),
      O => \FSM_onehot_out_state[1]_i_1_n_0\
    );
\FSM_onehot_out_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CF88"
    )
        port map (
      I0 => y_buf_valid,
      I1 => \FSM_onehot_out_state_reg_n_0_[0]\,
      I2 => m_axis_tready,
      I3 => \FSM_onehot_out_state_reg_n_0_[2]\,
      O => \FSM_onehot_out_state[2]_i_1_n_0\
    );
\FSM_onehot_out_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_out_state[0]_i_1_n_0\,
      Q => \FSM_onehot_out_state_reg_n_0_[0]\,
      S => p_0_in
    );
\FSM_onehot_out_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_out_state[1]_i_1_n_0\,
      Q => \^m_axis_tdata\(1),
      R => p_0_in
    );
\FSM_onehot_out_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_out_state[2]_i_1_n_0\,
      Q => \FSM_onehot_out_state_reg_n_0_[2]\,
      R => p_0_in
    );
audio_out_241_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => audio_out_241_carry_n_0,
      CO(2) => audio_out_241_carry_n_1,
      CO(1) => audio_out_241_carry_n_2,
      CO(0) => audio_out_241_carry_n_3,
      CYINIT => '0',
      DI(3) => audio_out_241_carry_i_1_n_0,
      DI(2) => audio_out_241_carry_i_2_n_0,
      DI(1) => audio_out_241_carry_i_3_n_0,
      DI(0) => audio_out_241_carry_i_4_n_0,
      O(3 downto 0) => NLW_audio_out_241_carry_O_UNCONNECTED(3 downto 0),
      S(3) => p_0_in0,
      S(2) => p_0_in0,
      S(1) => audio_out_241_carry_i_5_n_0,
      S(0) => audio_out_241_carry_i_6_n_0
    );
\audio_out_241_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => audio_out_241_carry_n_0,
      CO(3 downto 1) => \NLW_audio_out_241_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => audio_out_241,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_audio_out_241_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => p_0_in0
    );
audio_out_241_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in0,
      O => audio_out_241_carry_i_1_n_0
    );
audio_out_241_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in0,
      O => audio_out_241_carry_i_2_n_0
    );
audio_out_241_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \y_buf_reg_n_0_[30]\,
      I1 => p_0_in0,
      O => audio_out_241_carry_i_3_n_0
    );
audio_out_241_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \y_buf_reg_n_0_[29]\,
      O => audio_out_241_carry_i_4_n_0
    );
audio_out_241_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in0,
      I1 => \y_buf_reg_n_0_[30]\,
      O => audio_out_241_carry_i_5_n_0
    );
audio_out_241_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \y_buf_reg_n_0_[29]\,
      I1 => \y_buf_reg_n_0_[28]\,
      O => audio_out_241_carry_i_6_n_0
    );
\audio_out_241_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \audio_out_241_inferred__0/i__carry_n_0\,
      CO(2) => \audio_out_241_inferred__0/i__carry_n_1\,
      CO(1) => \audio_out_241_inferred__0/i__carry_n_2\,
      CO(0) => \audio_out_241_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => p_0_in0,
      DI(2) => p_0_in0,
      DI(1) => \i__carry_i_1_n_0\,
      DI(0) => \y_buf_reg_n_0_[29]\,
      O(3 downto 0) => \NLW_audio_out_241_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_2_n_0\,
      S(2) => \i__carry_i_3_n_0\,
      S(1) => \i__carry_i_4_n_0\,
      S(0) => \i__carry_i_5_n_0\
    );
\audio_out_241_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \audio_out_241_inferred__0/i__carry_n_0\,
      CO(3 downto 1) => \NLW_audio_out_241_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => audio_out_2410_in,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_audio_out_241_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in0,
      O => \i__carry__0_i_1_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \y_buf_reg_n_0_[30]\,
      I1 => p_0_in0,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in0,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in0,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in0,
      I1 => \y_buf_reg_n_0_[30]\,
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \y_buf_reg_n_0_[28]\,
      I1 => \y_buf_reg_n_0_[29]\,
      O => \i__carry_i_5_n_0\
    );
\in_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => in_valid_i_1_n_0,
      D => s_axis_tdata(4),
      Q => \in_data_reg[31]_0\(4),
      R => p_0_in
    );
\in_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => in_valid_i_1_n_0,
      D => s_axis_tdata(5),
      Q => \in_data_reg[31]_0\(5),
      R => p_0_in
    );
\in_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => in_valid_i_1_n_0,
      D => s_axis_tdata(6),
      Q => \in_data_reg[31]_0\(6),
      R => p_0_in
    );
\in_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => in_valid_i_1_n_0,
      D => s_axis_tdata(7),
      Q => \in_data_reg[31]_0\(7),
      R => p_0_in
    );
\in_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => in_valid_i_1_n_0,
      D => s_axis_tdata(8),
      Q => \in_data_reg[31]_0\(8),
      R => p_0_in
    );
\in_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => in_valid_i_1_n_0,
      D => s_axis_tdata(9),
      Q => \in_data_reg[31]_0\(9),
      R => p_0_in
    );
\in_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => in_valid_i_1_n_0,
      D => s_axis_tdata(10),
      Q => \in_data_reg[31]_0\(10),
      R => p_0_in
    );
\in_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => in_valid_i_1_n_0,
      D => s_axis_tdata(11),
      Q => \in_data_reg[31]_0\(11),
      R => p_0_in
    );
\in_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => in_valid_i_1_n_0,
      D => s_axis_tdata(12),
      Q => \in_data_reg[31]_0\(12),
      R => p_0_in
    );
\in_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => in_valid_i_1_n_0,
      D => s_axis_tdata(13),
      Q => \in_data_reg[31]_0\(13),
      R => p_0_in
    );
\in_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => in_valid_i_1_n_0,
      D => s_axis_tdata(14),
      Q => \in_data_reg[31]_0\(14),
      R => p_0_in
    );
\in_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => in_valid_i_1_n_0,
      D => s_axis_tdata(15),
      Q => \in_data_reg[31]_0\(15),
      R => p_0_in
    );
\in_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => in_valid_i_1_n_0,
      D => s_axis_tdata(16),
      Q => \in_data_reg[31]_0\(16),
      R => p_0_in
    );
\in_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => in_valid_i_1_n_0,
      D => s_axis_tdata(17),
      Q => \in_data_reg[31]_0\(17),
      R => p_0_in
    );
\in_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => in_valid_i_1_n_0,
      D => s_axis_tdata(18),
      Q => \in_data_reg[31]_0\(18),
      R => p_0_in
    );
\in_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => in_valid_i_1_n_0,
      D => s_axis_tdata(19),
      Q => \in_data_reg[31]_0\(19),
      R => p_0_in
    );
\in_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => in_valid_i_1_n_0,
      D => s_axis_tdata(20),
      Q => \in_data_reg[31]_0\(20),
      R => p_0_in
    );
\in_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => in_valid_i_1_n_0,
      D => s_axis_tdata(21),
      Q => \in_data_reg[31]_0\(21),
      R => p_0_in
    );
\in_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => in_valid_i_1_n_0,
      D => s_axis_tdata(22),
      Q => \in_data_reg[31]_0\(22),
      R => p_0_in
    );
\in_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => in_valid_i_1_n_0,
      D => s_axis_tdata(23),
      Q => \in_data_reg[31]_0\(23),
      R => p_0_in
    );
\in_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => in_valid_i_1_n_0,
      D => s_axis_tdata(0),
      Q => \in_data_reg[31]_0\(0),
      R => p_0_in
    );
\in_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => in_valid_i_1_n_0,
      D => s_axis_tdata(1),
      Q => \in_data_reg[31]_0\(1),
      R => p_0_in
    );
\in_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => in_valid_i_1_n_0,
      D => s_axis_tdata(2),
      Q => \in_data_reg[31]_0\(2),
      R => p_0_in
    );
\in_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => in_valid_i_1_n_0,
      D => s_axis_tdata(3),
      Q => \in_data_reg[31]_0\(3),
      R => p_0_in
    );
\in_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \in_state_reg[0]_1\,
      Q => \^in_state_reg[0]_0\,
      R => p_0_in
    );
in_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \^inflight_reg_0\,
      I1 => s_axis_tvalid,
      I2 => \^in_state_reg[0]_0\,
      I3 => s_axis_tid(0),
      I4 => s_axis_tid(2),
      I5 => s_axis_tid(1),
      O => in_valid_i_1_n_0
    );
in_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => in_valid_i_1_n_0,
      Q => mono_valid,
      R => p_0_in
    );
inflight_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF400000"
    )
        port map (
      I0 => inflight_i_2_n_0,
      I1 => s_axis_tvalid,
      I2 => \^inflight_reg_0\,
      I3 => inflight_reg_n_0,
      I4 => rst_n,
      I5 => \^inflight0\,
      O => inflight_i_1_n_0
    );
inflight_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => s_axis_tid(1),
      I1 => s_axis_tid(2),
      I2 => s_axis_tid(0),
      I3 => \^in_state_reg[0]_0\,
      O => inflight_i_2_n_0
    );
inflight_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => inflight_i_1_n_0,
      Q => inflight_reg_n_0,
      R => '0'
    );
\m_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_out_state_reg_n_0_[2]\,
      I1 => \^m_axis_tdata\(1),
      O => \^m_axis_tdata\(0)
    );
\m_axis_tdata[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEE00E0"
    )
        port map (
      I0 => \FSM_onehot_out_state_reg_n_0_[2]\,
      I1 => \^m_axis_tdata\(1),
      I2 => \y_buf_reg_n_0_[12]\,
      I3 => audio_out_241,
      I4 => audio_out_2410_in,
      O => \^m_axis_tdata\(8)
    );
\m_axis_tdata[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEE00E0"
    )
        port map (
      I0 => \FSM_onehot_out_state_reg_n_0_[2]\,
      I1 => \^m_axis_tdata\(1),
      I2 => \y_buf_reg_n_0_[13]\,
      I3 => audio_out_241,
      I4 => audio_out_2410_in,
      O => \^m_axis_tdata\(9)
    );
\m_axis_tdata[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEE00E0"
    )
        port map (
      I0 => \FSM_onehot_out_state_reg_n_0_[2]\,
      I1 => \^m_axis_tdata\(1),
      I2 => \y_buf_reg_n_0_[14]\,
      I3 => audio_out_241,
      I4 => audio_out_2410_in,
      O => \^m_axis_tdata\(10)
    );
\m_axis_tdata[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEE00E0"
    )
        port map (
      I0 => \FSM_onehot_out_state_reg_n_0_[2]\,
      I1 => \^m_axis_tdata\(1),
      I2 => \y_buf_reg_n_0_[15]\,
      I3 => audio_out_241,
      I4 => audio_out_2410_in,
      O => \^m_axis_tdata\(11)
    );
\m_axis_tdata[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEE00E0"
    )
        port map (
      I0 => \FSM_onehot_out_state_reg_n_0_[2]\,
      I1 => \^m_axis_tdata\(1),
      I2 => \y_buf_reg_n_0_[16]\,
      I3 => audio_out_241,
      I4 => audio_out_2410_in,
      O => \^m_axis_tdata\(12)
    );
\m_axis_tdata[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEE00E0"
    )
        port map (
      I0 => \FSM_onehot_out_state_reg_n_0_[2]\,
      I1 => \^m_axis_tdata\(1),
      I2 => \y_buf_reg_n_0_[17]\,
      I3 => audio_out_241,
      I4 => audio_out_2410_in,
      O => \^m_axis_tdata\(13)
    );
\m_axis_tdata[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEE00E0"
    )
        port map (
      I0 => \FSM_onehot_out_state_reg_n_0_[2]\,
      I1 => \^m_axis_tdata\(1),
      I2 => \y_buf_reg_n_0_[18]\,
      I3 => audio_out_241,
      I4 => audio_out_2410_in,
      O => \^m_axis_tdata\(14)
    );
\m_axis_tdata[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEE00E0"
    )
        port map (
      I0 => \FSM_onehot_out_state_reg_n_0_[2]\,
      I1 => \^m_axis_tdata\(1),
      I2 => \y_buf_reg_n_0_[19]\,
      I3 => audio_out_241,
      I4 => audio_out_2410_in,
      O => \^m_axis_tdata\(15)
    );
\m_axis_tdata[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEE00E0"
    )
        port map (
      I0 => \FSM_onehot_out_state_reg_n_0_[2]\,
      I1 => \^m_axis_tdata\(1),
      I2 => \y_buf_reg_n_0_[20]\,
      I3 => audio_out_241,
      I4 => audio_out_2410_in,
      O => \^m_axis_tdata\(16)
    );
\m_axis_tdata[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEE00E0"
    )
        port map (
      I0 => \FSM_onehot_out_state_reg_n_0_[2]\,
      I1 => \^m_axis_tdata\(1),
      I2 => \y_buf_reg_n_0_[21]\,
      I3 => audio_out_241,
      I4 => audio_out_2410_in,
      O => \^m_axis_tdata\(17)
    );
\m_axis_tdata[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEE00E0"
    )
        port map (
      I0 => \FSM_onehot_out_state_reg_n_0_[2]\,
      I1 => \^m_axis_tdata\(1),
      I2 => \y_buf_reg_n_0_[22]\,
      I3 => audio_out_241,
      I4 => audio_out_2410_in,
      O => \^m_axis_tdata\(18)
    );
\m_axis_tdata[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEE00E0"
    )
        port map (
      I0 => \FSM_onehot_out_state_reg_n_0_[2]\,
      I1 => \^m_axis_tdata\(1),
      I2 => \y_buf_reg_n_0_[23]\,
      I3 => audio_out_241,
      I4 => audio_out_2410_in,
      O => \^m_axis_tdata\(19)
    );
\m_axis_tdata[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEE00E0"
    )
        port map (
      I0 => \FSM_onehot_out_state_reg_n_0_[2]\,
      I1 => \^m_axis_tdata\(1),
      I2 => \y_buf_reg_n_0_[24]\,
      I3 => audio_out_241,
      I4 => audio_out_2410_in,
      O => \^m_axis_tdata\(20)
    );
\m_axis_tdata[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEE00E0"
    )
        port map (
      I0 => \FSM_onehot_out_state_reg_n_0_[2]\,
      I1 => \^m_axis_tdata\(1),
      I2 => \y_buf_reg_n_0_[25]\,
      I3 => audio_out_241,
      I4 => audio_out_2410_in,
      O => \^m_axis_tdata\(21)
    );
\m_axis_tdata[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEE00E0"
    )
        port map (
      I0 => \FSM_onehot_out_state_reg_n_0_[2]\,
      I1 => \^m_axis_tdata\(1),
      I2 => \y_buf_reg_n_0_[26]\,
      I3 => audio_out_241,
      I4 => audio_out_2410_in,
      O => \^m_axis_tdata\(22)
    );
\m_axis_tdata[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEE00E0"
    )
        port map (
      I0 => \FSM_onehot_out_state_reg_n_0_[2]\,
      I1 => \^m_axis_tdata\(1),
      I2 => \y_buf_reg_n_0_[27]\,
      I3 => audio_out_241,
      I4 => audio_out_2410_in,
      O => \^m_axis_tdata\(23)
    );
\m_axis_tdata[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEE00E0"
    )
        port map (
      I0 => \FSM_onehot_out_state_reg_n_0_[2]\,
      I1 => \^m_axis_tdata\(1),
      I2 => \y_buf_reg_n_0_[28]\,
      I3 => audio_out_241,
      I4 => audio_out_2410_in,
      O => \^m_axis_tdata\(24)
    );
\m_axis_tdata[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EEE0"
    )
        port map (
      I0 => \FSM_onehot_out_state_reg_n_0_[2]\,
      I1 => \^m_axis_tdata\(1),
      I2 => \y_buf_reg_n_0_[29]\,
      I3 => audio_out_241,
      I4 => audio_out_2410_in,
      O => \^m_axis_tdata\(25)
    );
\m_axis_tdata[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEE00E0"
    )
        port map (
      I0 => \FSM_onehot_out_state_reg_n_0_[2]\,
      I1 => \^m_axis_tdata\(1),
      I2 => \y_buf_reg_n_0_[6]\,
      I3 => audio_out_241,
      I4 => audio_out_2410_in,
      O => \^m_axis_tdata\(2)
    );
\m_axis_tdata[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEE00E0"
    )
        port map (
      I0 => \FSM_onehot_out_state_reg_n_0_[2]\,
      I1 => \^m_axis_tdata\(1),
      I2 => \y_buf_reg_n_0_[7]\,
      I3 => audio_out_241,
      I4 => audio_out_2410_in,
      O => \^m_axis_tdata\(3)
    );
\m_axis_tdata[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEE00E0"
    )
        port map (
      I0 => \FSM_onehot_out_state_reg_n_0_[2]\,
      I1 => \^m_axis_tdata\(1),
      I2 => \y_buf_reg_n_0_[8]\,
      I3 => audio_out_241,
      I4 => audio_out_2410_in,
      O => \^m_axis_tdata\(4)
    );
\m_axis_tdata[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEE00E0"
    )
        port map (
      I0 => \FSM_onehot_out_state_reg_n_0_[2]\,
      I1 => \^m_axis_tdata\(1),
      I2 => \y_buf_reg_n_0_[9]\,
      I3 => audio_out_241,
      I4 => audio_out_2410_in,
      O => \^m_axis_tdata\(5)
    );
\m_axis_tdata[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEE00E0"
    )
        port map (
      I0 => \FSM_onehot_out_state_reg_n_0_[2]\,
      I1 => \^m_axis_tdata\(1),
      I2 => \y_buf_reg_n_0_[10]\,
      I3 => audio_out_241,
      I4 => audio_out_2410_in,
      O => \^m_axis_tdata\(6)
    );
\m_axis_tdata[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEE00E0"
    )
        port map (
      I0 => \FSM_onehot_out_state_reg_n_0_[2]\,
      I1 => \^m_axis_tdata\(1),
      I2 => \y_buf_reg_n_0_[11]\,
      I3 => audio_out_241,
      I4 => audio_out_2410_in,
      O => \^m_axis_tdata\(7)
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_out_state_reg_n_0_[0]\,
      O => m_axis_tvalid
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10110000FFFFFFFF"
    )
        port map (
      I0 => inflight_reg_n_0,
      I1 => s_axis_tready_INST_0_i_1_n_0,
      I2 => s_axis_tready,
      I3 => s_axis_tready_0,
      I4 => s_axis_tready_1,
      I5 => \^in_state_reg[0]_0\,
      O => \^inflight_reg_0\
    );
s_axis_tready_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => y_buf_valid,
      I1 => \FSM_onehot_out_state_reg_n_0_[0]\,
      O => s_axis_tready_INST_0_i_1_n_0
    );
\y_buf[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \FSM_onehot_out_state_reg_n_0_[0]\,
      I1 => y_buf_valid,
      I2 => ret_valid,
      I3 => inflight_reg_n_0,
      O => \^inflight0\
    );
\y_buf_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inflight0\,
      D => Q(4),
      Q => \y_buf_reg_n_0_[10]\,
      R => p_0_in
    );
\y_buf_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inflight0\,
      D => Q(5),
      Q => \y_buf_reg_n_0_[11]\,
      R => p_0_in
    );
\y_buf_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inflight0\,
      D => Q(6),
      Q => \y_buf_reg_n_0_[12]\,
      R => p_0_in
    );
\y_buf_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inflight0\,
      D => Q(7),
      Q => \y_buf_reg_n_0_[13]\,
      R => p_0_in
    );
\y_buf_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inflight0\,
      D => Q(8),
      Q => \y_buf_reg_n_0_[14]\,
      R => p_0_in
    );
\y_buf_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inflight0\,
      D => Q(9),
      Q => \y_buf_reg_n_0_[15]\,
      R => p_0_in
    );
\y_buf_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inflight0\,
      D => Q(10),
      Q => \y_buf_reg_n_0_[16]\,
      R => p_0_in
    );
\y_buf_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inflight0\,
      D => Q(11),
      Q => \y_buf_reg_n_0_[17]\,
      R => p_0_in
    );
\y_buf_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inflight0\,
      D => Q(12),
      Q => \y_buf_reg_n_0_[18]\,
      R => p_0_in
    );
\y_buf_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inflight0\,
      D => Q(13),
      Q => \y_buf_reg_n_0_[19]\,
      R => p_0_in
    );
\y_buf_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inflight0\,
      D => Q(14),
      Q => \y_buf_reg_n_0_[20]\,
      R => p_0_in
    );
\y_buf_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inflight0\,
      D => Q(15),
      Q => \y_buf_reg_n_0_[21]\,
      R => p_0_in
    );
\y_buf_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inflight0\,
      D => Q(16),
      Q => \y_buf_reg_n_0_[22]\,
      R => p_0_in
    );
\y_buf_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inflight0\,
      D => Q(17),
      Q => \y_buf_reg_n_0_[23]\,
      R => p_0_in
    );
\y_buf_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inflight0\,
      D => Q(18),
      Q => \y_buf_reg_n_0_[24]\,
      R => p_0_in
    );
\y_buf_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inflight0\,
      D => Q(19),
      Q => \y_buf_reg_n_0_[25]\,
      R => p_0_in
    );
\y_buf_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inflight0\,
      D => Q(20),
      Q => \y_buf_reg_n_0_[26]\,
      R => p_0_in
    );
\y_buf_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inflight0\,
      D => Q(21),
      Q => \y_buf_reg_n_0_[27]\,
      R => p_0_in
    );
\y_buf_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inflight0\,
      D => Q(22),
      Q => \y_buf_reg_n_0_[28]\,
      R => p_0_in
    );
\y_buf_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inflight0\,
      D => Q(23),
      Q => \y_buf_reg_n_0_[29]\,
      R => p_0_in
    );
\y_buf_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inflight0\,
      D => Q(24),
      Q => \y_buf_reg_n_0_[30]\,
      R => p_0_in
    );
\y_buf_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inflight0\,
      D => Q(25),
      Q => p_0_in0,
      R => p_0_in
    );
\y_buf_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inflight0\,
      D => Q(0),
      Q => \y_buf_reg_n_0_[6]\,
      R => p_0_in
    );
\y_buf_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inflight0\,
      D => Q(1),
      Q => \y_buf_reg_n_0_[7]\,
      R => p_0_in
    );
\y_buf_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inflight0\,
      D => Q(2),
      Q => \y_buf_reg_n_0_[8]\,
      R => p_0_in
    );
\y_buf_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^inflight0\,
      D => Q(3),
      Q => \y_buf_reg_n_0_[9]\,
      R => p_0_in
    );
y_buf_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7F7F70000000000"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^m_axis_tdata\(1),
      I2 => \FSM_onehot_out_state_reg_n_0_[0]\,
      I3 => \^inflight0\,
      I4 => y_buf_valid,
      I5 => rst_n,
      O => y_buf_valid_i_1_n_0
    );
y_buf_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => y_buf_valid_i_1_n_0,
      Q => y_buf_valid,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fx_system_wrapper_0_1_fx_regmap is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    w_done_reg_0 : out STD_LOGIC;
    aw_done_reg_0 : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    fx_enable_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_araddr[5]\ : out STD_LOGIC;
    \s_axi_araddr[6]\ : out STD_LOGIC;
    s_axi_araddr_4_sp_1 : out STD_LOGIC;
    \s_axi_araddr[5]_0\ : out STD_LOGIC;
    \reg_wet_reg[31]_0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \reg_fb_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \reg_delay_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \reg_wet_reg[30]_0\ : out STD_LOGIC;
    \reg_wet_reg[29]_0\ : out STD_LOGIC;
    \reg_wet_reg[28]_0\ : out STD_LOGIC;
    \reg_wet_reg[27]_0\ : out STD_LOGIC;
    \reg_wet_reg[26]_0\ : out STD_LOGIC;
    \reg_wet_reg[25]_0\ : out STD_LOGIC;
    \reg_wet_reg[24]_0\ : out STD_LOGIC;
    \reg_wet_reg[23]_0\ : out STD_LOGIC;
    \reg_wet_reg[22]_0\ : out STD_LOGIC;
    \reg_wet_reg[21]_0\ : out STD_LOGIC;
    \reg_wet_reg[20]_0\ : out STD_LOGIC;
    \reg_wet_reg[19]_0\ : out STD_LOGIC;
    \reg_wet_reg[18]_0\ : out STD_LOGIC;
    \reg_wet_reg[17]_0\ : out STD_LOGIC;
    \reg_wet_reg[16]_0\ : out STD_LOGIC;
    \reg_wet_reg[15]_0\ : out STD_LOGIC;
    \reg_wet_reg[14]_0\ : out STD_LOGIC;
    \reg_wet_reg[13]_0\ : out STD_LOGIC;
    \reg_wet_reg[12]_0\ : out STD_LOGIC;
    \reg_wet_reg[11]_0\ : out STD_LOGIC;
    \reg_wet_reg[10]_0\ : out STD_LOGIC;
    \reg_wet_reg[9]_0\ : out STD_LOGIC;
    \reg_wet_reg[8]_0\ : out STD_LOGIC;
    \reg_wet_reg[7]_0\ : out STD_LOGIC;
    \reg_wet_reg[6]_0\ : out STD_LOGIC;
    \reg_wet_reg[5]_0\ : out STD_LOGIC;
    \reg_wet_reg[4]_0\ : out STD_LOGIC;
    \reg_wet_reg[3]_0\ : out STD_LOGIC;
    \reg_wet_reg[2]_0\ : out STD_LOGIC;
    \reg_wet_reg[1]_0\ : out STD_LOGIC;
    \reg_wet_reg[0]_0\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    p_0_in : in STD_LOGIC;
    clk : in STD_LOGIC;
    w_done_reg_1 : in STD_LOGIC;
    aw_done_reg_1 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 30 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \s_axi_rdata_reg[31]_0\ : in STD_LOGIC;
    \s_axi_rdata_reg[31]_1\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    fx_enable : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_fx_system_wrapper_0_1_fx_regmap : entity is "fx_regmap";
end design_1_fx_system_wrapper_0_1_fx_regmap;

architecture STRUCTURE of design_1_fx_system_wrapper_0_1_fx_regmap is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^aw_done_reg_0\ : STD_LOGIC;
  signal p_0_in0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 to 31 );
  signal reg_ctrl : STD_LOGIC;
  signal \reg_ctrl[31]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[10]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[11]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[12]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[13]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[14]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[15]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[16]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[17]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[18]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[19]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[1]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[20]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[21]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[22]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[23]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[24]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[25]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[26]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[27]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[28]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[29]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[2]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[30]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[31]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[4]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[5]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[6]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[7]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[8]\ : STD_LOGIC;
  signal \reg_ctrl_reg_n_0_[9]\ : STD_LOGIC;
  signal reg_delay : STD_LOGIC;
  signal \reg_delay[31]_i_2_n_0\ : STD_LOGIC;
  signal \^reg_delay_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_fb : STD_LOGIC;
  signal \^reg_fb_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_wet_q1_31 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \^reg_wet_reg[31]_0\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal s_axi_araddr_4_sn_1 : STD_LOGIC;
  signal s_axi_arready0 : STD_LOGIC;
  signal s_axi_awready0 : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal s_axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \s_axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal s_axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal s_axi_wready0 : STD_LOGIC;
  signal \^w_done_reg_0\ : STD_LOGIC;
  signal wr_addr_lat : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \wr_addr_lat_reg_n_0_[3]\ : STD_LOGIC;
  signal \wr_addr_lat_reg_n_0_[4]\ : STD_LOGIC;
  signal \wr_addr_lat_reg_n_0_[5]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \reg_ctrl[31]_i_2\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \reg_delay[31]_i_2\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \s_axi_rdata[29]_i_2\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \s_axi_rdata[31]_i_5\ : label is "soft_lutpair105";
begin
  E(0) <= \^e\(0);
  Q(0) <= \^q\(0);
  aw_done_reg_0 <= \^aw_done_reg_0\;
  \reg_delay_reg[31]_0\(31 downto 0) <= \^reg_delay_reg[31]_0\(31 downto 0);
  \reg_fb_reg[31]_0\(31 downto 0) <= \^reg_fb_reg[31]_0\(31 downto 0);
  \reg_wet_reg[31]_0\(14 downto 0) <= \^reg_wet_reg[31]_0\(14 downto 0);
  s_axi_araddr_4_sp_1 <= s_axi_araddr_4_sn_1;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
  w_done_reg_0 <= \^w_done_reg_0\;
aw_done_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => aw_done_reg_1,
      Q => \^aw_done_reg_0\,
      R => '0'
    );
enable_d_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => fx_enable,
      I1 => \^q\(0),
      O => fx_enable_0
    );
\reg_ctrl[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => wr_addr_lat(1),
      I1 => \^w_done_reg_0\,
      I2 => \^aw_done_reg_0\,
      I3 => \reg_ctrl[31]_i_2_n_0\,
      O => reg_ctrl
    );
\reg_ctrl[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => wr_addr_lat(0),
      I1 => \wr_addr_lat_reg_n_0_[3]\,
      I2 => \wr_addr_lat_reg_n_0_[4]\,
      I3 => p_0_in0,
      I4 => \wr_addr_lat_reg_n_0_[5]\,
      O => \reg_ctrl[31]_i_2_n_0\
    );
\reg_ctrl_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(0),
      Q => \^q\(0),
      S => p_0_in
    );
\reg_ctrl_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(10),
      Q => \reg_ctrl_reg_n_0_[10]\,
      R => p_0_in
    );
\reg_ctrl_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(11),
      Q => \reg_ctrl_reg_n_0_[11]\,
      R => p_0_in
    );
\reg_ctrl_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(12),
      Q => \reg_ctrl_reg_n_0_[12]\,
      R => p_0_in
    );
\reg_ctrl_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(13),
      Q => \reg_ctrl_reg_n_0_[13]\,
      R => p_0_in
    );
\reg_ctrl_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(14),
      Q => \reg_ctrl_reg_n_0_[14]\,
      R => p_0_in
    );
\reg_ctrl_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(15),
      Q => \reg_ctrl_reg_n_0_[15]\,
      R => p_0_in
    );
\reg_ctrl_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(16),
      Q => \reg_ctrl_reg_n_0_[16]\,
      R => p_0_in
    );
\reg_ctrl_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(17),
      Q => \reg_ctrl_reg_n_0_[17]\,
      R => p_0_in
    );
\reg_ctrl_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(18),
      Q => \reg_ctrl_reg_n_0_[18]\,
      R => p_0_in
    );
\reg_ctrl_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(19),
      Q => \reg_ctrl_reg_n_0_[19]\,
      R => p_0_in
    );
\reg_ctrl_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(1),
      Q => \reg_ctrl_reg_n_0_[1]\,
      R => p_0_in
    );
\reg_ctrl_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(20),
      Q => \reg_ctrl_reg_n_0_[20]\,
      R => p_0_in
    );
\reg_ctrl_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(21),
      Q => \reg_ctrl_reg_n_0_[21]\,
      R => p_0_in
    );
\reg_ctrl_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(22),
      Q => \reg_ctrl_reg_n_0_[22]\,
      R => p_0_in
    );
\reg_ctrl_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(23),
      Q => \reg_ctrl_reg_n_0_[23]\,
      R => p_0_in
    );
\reg_ctrl_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(24),
      Q => \reg_ctrl_reg_n_0_[24]\,
      R => p_0_in
    );
\reg_ctrl_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(25),
      Q => \reg_ctrl_reg_n_0_[25]\,
      R => p_0_in
    );
\reg_ctrl_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(26),
      Q => \reg_ctrl_reg_n_0_[26]\,
      R => p_0_in
    );
\reg_ctrl_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(27),
      Q => \reg_ctrl_reg_n_0_[27]\,
      R => p_0_in
    );
\reg_ctrl_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(28),
      Q => \reg_ctrl_reg_n_0_[28]\,
      R => p_0_in
    );
\reg_ctrl_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(29),
      Q => \reg_ctrl_reg_n_0_[29]\,
      R => p_0_in
    );
\reg_ctrl_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(2),
      Q => \reg_ctrl_reg_n_0_[2]\,
      R => p_0_in
    );
\reg_ctrl_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(30),
      Q => \reg_ctrl_reg_n_0_[30]\,
      R => p_0_in
    );
\reg_ctrl_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(31),
      Q => \reg_ctrl_reg_n_0_[31]\,
      R => p_0_in
    );
\reg_ctrl_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(3),
      Q => \reg_ctrl_reg_n_0_[3]\,
      R => p_0_in
    );
\reg_ctrl_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(4),
      Q => \reg_ctrl_reg_n_0_[4]\,
      R => p_0_in
    );
\reg_ctrl_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(5),
      Q => \reg_ctrl_reg_n_0_[5]\,
      R => p_0_in
    );
\reg_ctrl_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(6),
      Q => \reg_ctrl_reg_n_0_[6]\,
      R => p_0_in
    );
\reg_ctrl_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(7),
      Q => \reg_ctrl_reg_n_0_[7]\,
      R => p_0_in
    );
\reg_ctrl_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(8),
      Q => \reg_ctrl_reg_n_0_[8]\,
      R => p_0_in
    );
\reg_ctrl_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_ctrl,
      D => s_axi_wdata(9),
      Q => \reg_ctrl_reg_n_0_[9]\,
      R => p_0_in
    );
\reg_delay[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => wr_addr_lat(1),
      I1 => \^w_done_reg_0\,
      I2 => \^aw_done_reg_0\,
      I3 => \reg_delay[31]_i_2_n_0\,
      O => reg_delay
    );
\reg_delay[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => wr_addr_lat(0),
      I1 => \wr_addr_lat_reg_n_0_[3]\,
      I2 => \wr_addr_lat_reg_n_0_[4]\,
      I3 => p_0_in0,
      I4 => \wr_addr_lat_reg_n_0_[5]\,
      O => \reg_delay[31]_i_2_n_0\
    );
\reg_delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(0),
      Q => \^reg_delay_reg[31]_0\(0),
      R => p_0_in
    );
\reg_delay_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(10),
      Q => \^reg_delay_reg[31]_0\(10),
      R => p_0_in
    );
\reg_delay_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(11),
      Q => \^reg_delay_reg[31]_0\(11),
      R => p_0_in
    );
\reg_delay_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(12),
      Q => \^reg_delay_reg[31]_0\(12),
      R => p_0_in
    );
\reg_delay_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(13),
      Q => \^reg_delay_reg[31]_0\(13),
      R => p_0_in
    );
\reg_delay_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(14),
      Q => \^reg_delay_reg[31]_0\(14),
      R => p_0_in
    );
\reg_delay_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(15),
      Q => \^reg_delay_reg[31]_0\(15),
      R => p_0_in
    );
\reg_delay_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(16),
      Q => \^reg_delay_reg[31]_0\(16),
      R => p_0_in
    );
\reg_delay_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(17),
      Q => \^reg_delay_reg[31]_0\(17),
      R => p_0_in
    );
\reg_delay_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(18),
      Q => \^reg_delay_reg[31]_0\(18),
      R => p_0_in
    );
\reg_delay_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(19),
      Q => \^reg_delay_reg[31]_0\(19),
      R => p_0_in
    );
\reg_delay_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(1),
      Q => \^reg_delay_reg[31]_0\(1),
      R => p_0_in
    );
\reg_delay_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(20),
      Q => \^reg_delay_reg[31]_0\(20),
      R => p_0_in
    );
\reg_delay_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(21),
      Q => \^reg_delay_reg[31]_0\(21),
      R => p_0_in
    );
\reg_delay_reg[22]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(22),
      Q => \^reg_delay_reg[31]_0\(22),
      S => p_0_in
    );
\reg_delay_reg[23]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(23),
      Q => \^reg_delay_reg[31]_0\(23),
      S => p_0_in
    );
\reg_delay_reg[24]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(24),
      Q => \^reg_delay_reg[31]_0\(24),
      S => p_0_in
    );
\reg_delay_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(25),
      Q => \^reg_delay_reg[31]_0\(25),
      R => p_0_in
    );
\reg_delay_reg[26]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(26),
      Q => \^reg_delay_reg[31]_0\(26),
      S => p_0_in
    );
\reg_delay_reg[27]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(27),
      Q => \^reg_delay_reg[31]_0\(27),
      S => p_0_in
    );
\reg_delay_reg[28]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(28),
      Q => \^reg_delay_reg[31]_0\(28),
      S => p_0_in
    );
\reg_delay_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(29),
      Q => \^reg_delay_reg[31]_0\(29),
      R => p_0_in
    );
\reg_delay_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(2),
      Q => \^reg_delay_reg[31]_0\(2),
      R => p_0_in
    );
\reg_delay_reg[30]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(30),
      Q => \^reg_delay_reg[31]_0\(30),
      S => p_0_in
    );
\reg_delay_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(31),
      Q => \^reg_delay_reg[31]_0\(31),
      R => p_0_in
    );
\reg_delay_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(3),
      Q => \^reg_delay_reg[31]_0\(3),
      R => p_0_in
    );
\reg_delay_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(4),
      Q => \^reg_delay_reg[31]_0\(4),
      R => p_0_in
    );
\reg_delay_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(5),
      Q => \^reg_delay_reg[31]_0\(5),
      R => p_0_in
    );
\reg_delay_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(6),
      Q => \^reg_delay_reg[31]_0\(6),
      R => p_0_in
    );
\reg_delay_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(7),
      Q => \^reg_delay_reg[31]_0\(7),
      R => p_0_in
    );
\reg_delay_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(8),
      Q => \^reg_delay_reg[31]_0\(8),
      R => p_0_in
    );
\reg_delay_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_delay,
      D => s_axi_wdata(9),
      Q => \^reg_delay_reg[31]_0\(9),
      R => p_0_in
    );
\reg_fb[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \reg_ctrl[31]_i_2_n_0\,
      I1 => \^w_done_reg_0\,
      I2 => \^aw_done_reg_0\,
      I3 => wr_addr_lat(1),
      O => reg_fb
    );
\reg_fb_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(0),
      Q => \^reg_fb_reg[31]_0\(0),
      S => p_0_in
    );
\reg_fb_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(10),
      Q => \^reg_fb_reg[31]_0\(10),
      R => p_0_in
    );
\reg_fb_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(11),
      Q => \^reg_fb_reg[31]_0\(11),
      R => p_0_in
    );
\reg_fb_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(12),
      Q => \^reg_fb_reg[31]_0\(12),
      S => p_0_in
    );
\reg_fb_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(13),
      Q => \^reg_fb_reg[31]_0\(13),
      S => p_0_in
    );
\reg_fb_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(14),
      Q => \^reg_fb_reg[31]_0\(14),
      R => p_0_in
    );
\reg_fb_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(15),
      Q => \^reg_fb_reg[31]_0\(15),
      R => p_0_in
    );
\reg_fb_reg[16]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(16),
      Q => \^reg_fb_reg[31]_0\(16),
      S => p_0_in
    );
\reg_fb_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(17),
      Q => \^reg_fb_reg[31]_0\(17),
      S => p_0_in
    );
\reg_fb_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(18),
      Q => \^reg_fb_reg[31]_0\(18),
      R => p_0_in
    );
\reg_fb_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(19),
      Q => \^reg_fb_reg[31]_0\(19),
      R => p_0_in
    );
\reg_fb_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(1),
      Q => \^reg_fb_reg[31]_0\(1),
      S => p_0_in
    );
\reg_fb_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(20),
      Q => \^reg_fb_reg[31]_0\(20),
      S => p_0_in
    );
\reg_fb_reg[21]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(21),
      Q => \^reg_fb_reg[31]_0\(21),
      S => p_0_in
    );
\reg_fb_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(22),
      Q => \^reg_fb_reg[31]_0\(22),
      R => p_0_in
    );
\reg_fb_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(23),
      Q => \^reg_fb_reg[31]_0\(23),
      R => p_0_in
    );
\reg_fb_reg[24]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(24),
      Q => \^reg_fb_reg[31]_0\(24),
      S => p_0_in
    );
\reg_fb_reg[25]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(25),
      Q => \^reg_fb_reg[31]_0\(25),
      S => p_0_in
    );
\reg_fb_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(26),
      Q => \^reg_fb_reg[31]_0\(26),
      R => p_0_in
    );
\reg_fb_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(27),
      Q => \^reg_fb_reg[31]_0\(27),
      R => p_0_in
    );
\reg_fb_reg[28]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(28),
      Q => \^reg_fb_reg[31]_0\(28),
      S => p_0_in
    );
\reg_fb_reg[29]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(29),
      Q => \^reg_fb_reg[31]_0\(29),
      S => p_0_in
    );
\reg_fb_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(2),
      Q => \^reg_fb_reg[31]_0\(2),
      R => p_0_in
    );
\reg_fb_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(30),
      Q => \^reg_fb_reg[31]_0\(30),
      R => p_0_in
    );
\reg_fb_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(31),
      Q => \^reg_fb_reg[31]_0\(31),
      R => p_0_in
    );
\reg_fb_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(3),
      Q => \^reg_fb_reg[31]_0\(3),
      R => p_0_in
    );
\reg_fb_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(4),
      Q => \^reg_fb_reg[31]_0\(4),
      S => p_0_in
    );
\reg_fb_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(5),
      Q => \^reg_fb_reg[31]_0\(5),
      S => p_0_in
    );
\reg_fb_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(6),
      Q => \^reg_fb_reg[31]_0\(6),
      R => p_0_in
    );
\reg_fb_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(7),
      Q => \^reg_fb_reg[31]_0\(7),
      R => p_0_in
    );
\reg_fb_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(8),
      Q => \^reg_fb_reg[31]_0\(8),
      S => p_0_in
    );
\reg_fb_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => reg_fb,
      D => s_axi_wdata(9),
      Q => \^reg_fb_reg[31]_0\(9),
      S => p_0_in
    );
\reg_wet[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \reg_delay[31]_i_2_n_0\,
      I1 => \^w_done_reg_0\,
      I2 => \^aw_done_reg_0\,
      I3 => wr_addr_lat(1),
      O => \^e\(0)
    );
\reg_wet_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(0),
      Q => reg_wet_q1_31(0),
      R => p_0_in
    );
\reg_wet_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(10),
      Q => reg_wet_q1_31(10),
      R => p_0_in
    );
\reg_wet_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(11),
      Q => reg_wet_q1_31(11),
      R => p_0_in
    );
\reg_wet_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(12),
      Q => reg_wet_q1_31(12),
      R => p_0_in
    );
\reg_wet_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(13),
      Q => reg_wet_q1_31(13),
      R => p_0_in
    );
\reg_wet_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(14),
      Q => reg_wet_q1_31(14),
      R => p_0_in
    );
\reg_wet_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(15),
      Q => reg_wet_q1_31(15),
      R => p_0_in
    );
\reg_wet_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(16),
      Q => reg_wet_q1_31(16),
      R => p_0_in
    );
\reg_wet_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(17),
      Q => \^reg_wet_reg[31]_0\(0),
      R => p_0_in
    );
\reg_wet_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(18),
      Q => \^reg_wet_reg[31]_0\(1),
      R => p_0_in
    );
\reg_wet_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(19),
      Q => \^reg_wet_reg[31]_0\(2),
      R => p_0_in
    );
\reg_wet_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(1),
      Q => reg_wet_q1_31(1),
      R => p_0_in
    );
\reg_wet_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(20),
      Q => \^reg_wet_reg[31]_0\(3),
      R => p_0_in
    );
\reg_wet_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(21),
      Q => \^reg_wet_reg[31]_0\(4),
      R => p_0_in
    );
\reg_wet_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(22),
      Q => \^reg_wet_reg[31]_0\(5),
      R => p_0_in
    );
\reg_wet_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(23),
      Q => \^reg_wet_reg[31]_0\(6),
      R => p_0_in
    );
\reg_wet_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(24),
      Q => \^reg_wet_reg[31]_0\(7),
      R => p_0_in
    );
\reg_wet_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(25),
      Q => \^reg_wet_reg[31]_0\(8),
      R => p_0_in
    );
\reg_wet_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(26),
      Q => \^reg_wet_reg[31]_0\(9),
      R => p_0_in
    );
\reg_wet_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(27),
      Q => \^reg_wet_reg[31]_0\(10),
      R => p_0_in
    );
\reg_wet_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(28),
      Q => \^reg_wet_reg[31]_0\(11),
      R => p_0_in
    );
\reg_wet_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(29),
      Q => \^reg_wet_reg[31]_0\(12),
      R => p_0_in
    );
\reg_wet_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(2),
      Q => reg_wet_q1_31(2),
      R => p_0_in
    );
\reg_wet_reg[30]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(30),
      Q => \^reg_wet_reg[31]_0\(13),
      S => p_0_in
    );
\reg_wet_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(31),
      Q => \^reg_wet_reg[31]_0\(14),
      R => p_0_in
    );
\reg_wet_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(3),
      Q => reg_wet_q1_31(3),
      R => p_0_in
    );
\reg_wet_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(4),
      Q => reg_wet_q1_31(4),
      R => p_0_in
    );
\reg_wet_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(5),
      Q => reg_wet_q1_31(5),
      R => p_0_in
    );
\reg_wet_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(6),
      Q => reg_wet_q1_31(6),
      R => p_0_in
    );
\reg_wet_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(7),
      Q => reg_wet_q1_31(7),
      R => p_0_in
    );
\reg_wet_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(8),
      Q => reg_wet_q1_31(8),
      R => p_0_in
    );
\reg_wet_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => s_axi_wdata(9),
      Q => reg_wet_q1_31(9),
      R => p_0_in
    );
s_axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_rvalid\,
      O => s_axi_arready0
    );
s_axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_arready0,
      Q => s_axi_arready,
      R => p_0_in
    );
s_axi_awready_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \^aw_done_reg_0\,
      O => s_axi_awready0
    );
s_axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_awready0,
      Q => s_axi_awready,
      R => p_0_in
    );
s_axi_bvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55C00000"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^aw_done_reg_0\,
      I2 => \^w_done_reg_0\,
      I3 => \^s_axi_bvalid\,
      I4 => rst_n,
      O => s_axi_bvalid_i_1_n_0
    );
s_axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => '0'
    );
\s_axi_rdata[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => reg_wet_q1_31(0),
      I1 => \^reg_fb_reg[31]_0\(0),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(0),
      I4 => s_axi_araddr(0),
      I5 => \^q\(0),
      O => \reg_wet_reg[0]_0\
    );
\s_axi_rdata[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => reg_wet_q1_31(10),
      I1 => \^reg_fb_reg[31]_0\(10),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(10),
      I4 => s_axi_araddr(0),
      I5 => \reg_ctrl_reg_n_0_[10]\,
      O => \reg_wet_reg[10]_0\
    );
\s_axi_rdata[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => reg_wet_q1_31(11),
      I1 => \^reg_fb_reg[31]_0\(11),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(11),
      I4 => s_axi_araddr(0),
      I5 => \reg_ctrl_reg_n_0_[11]\,
      O => \reg_wet_reg[11]_0\
    );
\s_axi_rdata[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => reg_wet_q1_31(12),
      I1 => \^reg_fb_reg[31]_0\(12),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(12),
      I4 => s_axi_araddr(0),
      I5 => \reg_ctrl_reg_n_0_[12]\,
      O => \reg_wet_reg[12]_0\
    );
\s_axi_rdata[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => reg_wet_q1_31(13),
      I1 => \^reg_fb_reg[31]_0\(13),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(13),
      I4 => s_axi_araddr(0),
      I5 => \reg_ctrl_reg_n_0_[13]\,
      O => \reg_wet_reg[13]_0\
    );
\s_axi_rdata[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg_wet_q1_31(14),
      I1 => \^reg_fb_reg[31]_0\(14),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(14),
      I4 => s_axi_araddr(0),
      I5 => \reg_ctrl_reg_n_0_[14]\,
      O => \reg_wet_reg[14]_0\
    );
\s_axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg_wet_q1_31(15),
      I1 => \^reg_fb_reg[31]_0\(15),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(15),
      I4 => s_axi_araddr(0),
      I5 => \reg_ctrl_reg_n_0_[15]\,
      O => \reg_wet_reg[15]_0\
    );
\s_axi_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg_wet_q1_31(16),
      I1 => \^reg_fb_reg[31]_0\(16),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(16),
      I4 => s_axi_araddr(0),
      I5 => \reg_ctrl_reg_n_0_[16]\,
      O => \reg_wet_reg[16]_0\
    );
\s_axi_rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_wet_reg[31]_0\(0),
      I1 => \^reg_fb_reg[31]_0\(17),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(17),
      I4 => s_axi_araddr(0),
      I5 => \reg_ctrl_reg_n_0_[17]\,
      O => \reg_wet_reg[17]_0\
    );
\s_axi_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_wet_reg[31]_0\(1),
      I1 => \^reg_fb_reg[31]_0\(18),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(18),
      I4 => s_axi_araddr(0),
      I5 => \reg_ctrl_reg_n_0_[18]\,
      O => \reg_wet_reg[18]_0\
    );
\s_axi_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_wet_reg[31]_0\(2),
      I1 => \^reg_fb_reg[31]_0\(19),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(19),
      I4 => s_axi_araddr(0),
      I5 => \reg_ctrl_reg_n_0_[19]\,
      O => \reg_wet_reg[19]_0\
    );
\s_axi_rdata[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => reg_wet_q1_31(1),
      I1 => \^reg_fb_reg[31]_0\(1),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(1),
      I4 => s_axi_araddr(0),
      I5 => \reg_ctrl_reg_n_0_[1]\,
      O => \reg_wet_reg[1]_0\
    );
\s_axi_rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_wet_reg[31]_0\(3),
      I1 => \^reg_fb_reg[31]_0\(20),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(20),
      I4 => s_axi_araddr(0),
      I5 => \reg_ctrl_reg_n_0_[20]\,
      O => \reg_wet_reg[20]_0\
    );
\s_axi_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_wet_reg[31]_0\(4),
      I1 => \^reg_fb_reg[31]_0\(21),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(21),
      I4 => s_axi_araddr(0),
      I5 => \reg_ctrl_reg_n_0_[21]\,
      O => \reg_wet_reg[21]_0\
    );
\s_axi_rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_wet_reg[31]_0\(5),
      I1 => \^reg_fb_reg[31]_0\(22),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(22),
      I4 => s_axi_araddr(0),
      I5 => \reg_ctrl_reg_n_0_[22]\,
      O => \reg_wet_reg[22]_0\
    );
\s_axi_rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_wet_reg[31]_0\(6),
      I1 => \^reg_fb_reg[31]_0\(23),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(23),
      I4 => s_axi_araddr(0),
      I5 => \reg_ctrl_reg_n_0_[23]\,
      O => \reg_wet_reg[23]_0\
    );
\s_axi_rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_wet_reg[31]_0\(7),
      I1 => \^reg_fb_reg[31]_0\(24),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(24),
      I4 => s_axi_araddr(0),
      I5 => \reg_ctrl_reg_n_0_[24]\,
      O => \reg_wet_reg[24]_0\
    );
\s_axi_rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_wet_reg[31]_0\(8),
      I1 => \^reg_fb_reg[31]_0\(25),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(25),
      I4 => s_axi_araddr(0),
      I5 => \reg_ctrl_reg_n_0_[25]\,
      O => \reg_wet_reg[25]_0\
    );
\s_axi_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_wet_reg[31]_0\(9),
      I1 => \^reg_fb_reg[31]_0\(26),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(26),
      I4 => s_axi_araddr(0),
      I5 => \reg_ctrl_reg_n_0_[26]\,
      O => \reg_wet_reg[26]_0\
    );
\s_axi_rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_wet_reg[31]_0\(10),
      I1 => \^reg_fb_reg[31]_0\(27),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(27),
      I4 => s_axi_araddr(0),
      I5 => \reg_ctrl_reg_n_0_[27]\,
      O => \reg_wet_reg[27]_0\
    );
\s_axi_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_wet_reg[31]_0\(11),
      I1 => \^reg_fb_reg[31]_0\(28),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(28),
      I4 => s_axi_araddr(0),
      I5 => \reg_ctrl_reg_n_0_[28]\,
      O => \reg_wet_reg[28]_0\
    );
\s_axi_rdata[29]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_araddr(2),
      I2 => s_axi_araddr(4),
      O => \s_axi_araddr[5]_0\
    );
\s_axi_rdata[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_wet_reg[31]_0\(12),
      I1 => \^reg_fb_reg[31]_0\(29),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(29),
      I4 => s_axi_araddr(0),
      I5 => \reg_ctrl_reg_n_0_[29]\,
      O => \reg_wet_reg[29]_0\
    );
\s_axi_rdata[29]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_araddr(2),
      O => \s_axi_araddr[5]\
    );
\s_axi_rdata[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => reg_wet_q1_31(2),
      I1 => \^reg_fb_reg[31]_0\(2),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(2),
      I4 => s_axi_araddr(0),
      I5 => \reg_ctrl_reg_n_0_[2]\,
      O => \reg_wet_reg[2]_0\
    );
\s_axi_rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_wet_reg[31]_0\(13),
      I1 => \^reg_fb_reg[31]_0\(30),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(30),
      I4 => s_axi_araddr(0),
      I5 => \reg_ctrl_reg_n_0_[30]\,
      O => \reg_wet_reg[30]_0\
    );
\s_axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF11100010"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_araddr(2),
      I2 => \s_axi_rdata[31]_i_2_n_0\,
      I3 => s_axi_araddr(4),
      I4 => \s_axi_rdata_reg[31]_0\,
      I5 => \s_axi_rdata_reg[31]_1\,
      O => p_1_in(31)
    );
\s_axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_wet_reg[31]_0\(14),
      I1 => \^reg_fb_reg[31]_0\(31),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(31),
      I4 => s_axi_araddr(0),
      I5 => \reg_ctrl_reg_n_0_[31]\,
      O => \s_axi_rdata[31]_i_2_n_0\
    );
\s_axi_rdata[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(4),
      O => s_axi_araddr_4_sn_1
    );
\s_axi_rdata[31]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(0),
      O => \s_axi_araddr[6]\
    );
\s_axi_rdata[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => reg_wet_q1_31(3),
      I1 => \^reg_fb_reg[31]_0\(3),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(3),
      I4 => s_axi_araddr(0),
      I5 => \reg_ctrl_reg_n_0_[3]\,
      O => \reg_wet_reg[3]_0\
    );
\s_axi_rdata[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg_wet_q1_31(4),
      I1 => \^reg_fb_reg[31]_0\(4),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(4),
      I4 => s_axi_araddr(0),
      I5 => \reg_ctrl_reg_n_0_[4]\,
      O => \reg_wet_reg[4]_0\
    );
\s_axi_rdata[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => reg_wet_q1_31(5),
      I1 => \^reg_fb_reg[31]_0\(5),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(5),
      I4 => s_axi_araddr(0),
      I5 => \reg_ctrl_reg_n_0_[5]\,
      O => \reg_wet_reg[5]_0\
    );
\s_axi_rdata[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => reg_wet_q1_31(6),
      I1 => \^reg_fb_reg[31]_0\(6),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(6),
      I4 => s_axi_araddr(0),
      I5 => \reg_ctrl_reg_n_0_[6]\,
      O => \reg_wet_reg[6]_0\
    );
\s_axi_rdata[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => reg_wet_q1_31(7),
      I1 => \^reg_fb_reg[31]_0\(7),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(7),
      I4 => s_axi_araddr(0),
      I5 => \reg_ctrl_reg_n_0_[7]\,
      O => \reg_wet_reg[7]_0\
    );
\s_axi_rdata[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg_wet_q1_31(8),
      I1 => \^reg_fb_reg[31]_0\(8),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(8),
      I4 => s_axi_araddr(0),
      I5 => \reg_ctrl_reg_n_0_[8]\,
      O => \reg_wet_reg[8]_0\
    );
\s_axi_rdata[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => reg_wet_q1_31(9),
      I1 => \^reg_fb_reg[31]_0\(9),
      I2 => s_axi_araddr(1),
      I3 => \^reg_delay_reg[31]_0\(9),
      I4 => s_axi_araddr(0),
      I5 => \reg_ctrl_reg_n_0_[9]\,
      O => \reg_wet_reg[9]_0\
    );
\s_axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => D(0),
      Q => s_axi_rdata(0),
      R => p_0_in
    );
\s_axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => D(10),
      Q => s_axi_rdata(10),
      R => p_0_in
    );
\s_axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => D(11),
      Q => s_axi_rdata(11),
      R => p_0_in
    );
\s_axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => D(12),
      Q => s_axi_rdata(12),
      R => p_0_in
    );
\s_axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => D(13),
      Q => s_axi_rdata(13),
      R => p_0_in
    );
\s_axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => D(14),
      Q => s_axi_rdata(14),
      R => p_0_in
    );
\s_axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => D(15),
      Q => s_axi_rdata(15),
      R => p_0_in
    );
\s_axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => D(16),
      Q => s_axi_rdata(16),
      R => p_0_in
    );
\s_axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => D(17),
      Q => s_axi_rdata(17),
      R => p_0_in
    );
\s_axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => D(18),
      Q => s_axi_rdata(18),
      R => p_0_in
    );
\s_axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => D(19),
      Q => s_axi_rdata(19),
      R => p_0_in
    );
\s_axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => D(1),
      Q => s_axi_rdata(1),
      R => p_0_in
    );
\s_axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => D(20),
      Q => s_axi_rdata(20),
      R => p_0_in
    );
\s_axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => D(21),
      Q => s_axi_rdata(21),
      R => p_0_in
    );
\s_axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => D(22),
      Q => s_axi_rdata(22),
      R => p_0_in
    );
\s_axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => D(23),
      Q => s_axi_rdata(23),
      R => p_0_in
    );
\s_axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => D(24),
      Q => s_axi_rdata(24),
      R => p_0_in
    );
\s_axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => D(25),
      Q => s_axi_rdata(25),
      R => p_0_in
    );
\s_axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => D(26),
      Q => s_axi_rdata(26),
      R => p_0_in
    );
\s_axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => D(27),
      Q => s_axi_rdata(27),
      R => p_0_in
    );
\s_axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => D(28),
      Q => s_axi_rdata(28),
      R => p_0_in
    );
\s_axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => D(29),
      Q => s_axi_rdata(29),
      R => p_0_in
    );
\s_axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => D(2),
      Q => s_axi_rdata(2),
      R => p_0_in
    );
\s_axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => D(30),
      Q => s_axi_rdata(30),
      R => p_0_in
    );
\s_axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => p_1_in(31),
      Q => s_axi_rdata(31),
      R => p_0_in
    );
\s_axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => D(3),
      Q => s_axi_rdata(3),
      R => p_0_in
    );
\s_axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => D(4),
      Q => s_axi_rdata(4),
      R => p_0_in
    );
\s_axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => D(5),
      Q => s_axi_rdata(5),
      R => p_0_in
    );
\s_axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => D(6),
      Q => s_axi_rdata(6),
      R => p_0_in
    );
\s_axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => D(7),
      Q => s_axi_rdata(7),
      R => p_0_in
    );
\s_axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => D(8),
      Q => s_axi_rdata(8),
      R => p_0_in
    );
\s_axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_arready0,
      D => D(9),
      Q => s_axi_rdata(9),
      R => p_0_in
    );
s_axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5C00"
    )
        port map (
      I0 => s_axi_rready,
      I1 => s_axi_arvalid,
      I2 => \^s_axi_rvalid\,
      I3 => rst_n,
      O => s_axi_rvalid_i_1_n_0
    );
s_axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => '0'
    );
s_axi_wready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \^w_done_reg_0\,
      O => s_axi_wready0
    );
s_axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_wready0,
      Q => s_axi_wready,
      R => p_0_in
    );
w_done_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => w_done_reg_1,
      Q => \^w_done_reg_0\,
      R => '0'
    );
\wr_addr_lat_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_awready0,
      D => s_axi_awaddr(0),
      Q => wr_addr_lat(0),
      R => p_0_in
    );
\wr_addr_lat_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_awready0,
      D => s_axi_awaddr(1),
      Q => wr_addr_lat(1),
      R => p_0_in
    );
\wr_addr_lat_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_awready0,
      D => s_axi_awaddr(2),
      Q => p_0_in0,
      R => p_0_in
    );
\wr_addr_lat_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_awready0,
      D => s_axi_awaddr(3),
      Q => \wr_addr_lat_reg_n_0_[3]\,
      R => p_0_in
    );
\wr_addr_lat_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_awready0,
      D => s_axi_awaddr(4),
      Q => \wr_addr_lat_reg_n_0_[4]\,
      R => p_0_in
    );
\wr_addr_lat_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => s_axi_awready0,
      D => s_axi_awaddr(5),
      Q => \wr_addr_lat_reg_n_0_[5]\,
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fx_system_wrapper_0_1_quad_decoder is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \enc_count[0]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \a_sync_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cnt_b__0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \cnt_a__0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    p_0_in : in STD_LOGIC;
    clean_b_reg_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    clean_a_reg_0 : in STD_LOGIC;
    \cnt_a_reg[0]_0\ : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    enc_b : in STD_LOGIC_VECTOR ( 0 to 0 );
    enc_a : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_fx_system_wrapper_0_1_quad_decoder : entity is "quad_decoder";
end design_1_fx_system_wrapper_0_1_quad_decoder;

architecture STRUCTURE of design_1_fx_system_wrapper_0_1_quad_decoder is
  signal \^d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^a_sync_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \cnt_a[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_a[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_a[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_a[2]_i_2_n_0\ : STD_LOGIC;
  signal \^cnt_a__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \cnt_b[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_b[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_b[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_b[2]_i_2_n_0\ : STD_LOGIC;
  signal \^cnt_b__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[0]_i_3_n_0\ : STD_LOGIC;
  signal \count[0]_i_4_n_0\ : STD_LOGIC;
  signal \count[0]_i_5_n_0\ : STD_LOGIC;
  signal \count[0]_i_6__1_n_0\ : STD_LOGIC;
  signal \count[0]_i_7_n_0\ : STD_LOGIC;
  signal \count[0]_i_8_n_0\ : STD_LOGIC;
  signal \count[0]_i_9_n_0\ : STD_LOGIC;
  signal \count[12]_i_2_n_0\ : STD_LOGIC;
  signal \count[12]_i_3_n_0\ : STD_LOGIC;
  signal \count[12]_i_4_n_0\ : STD_LOGIC;
  signal \count[12]_i_5_n_0\ : STD_LOGIC;
  signal \count[12]_i_6_n_0\ : STD_LOGIC;
  signal \count[12]_i_7_n_0\ : STD_LOGIC;
  signal \count[12]_i_8_n_0\ : STD_LOGIC;
  signal \count[4]_i_2_n_0\ : STD_LOGIC;
  signal \count[4]_i_3_n_0\ : STD_LOGIC;
  signal \count[4]_i_4_n_0\ : STD_LOGIC;
  signal \count[4]_i_5_n_0\ : STD_LOGIC;
  signal \count[4]_i_6_n_0\ : STD_LOGIC;
  signal \count[4]_i_7_n_0\ : STD_LOGIC;
  signal \count[4]_i_8_n_0\ : STD_LOGIC;
  signal \count[4]_i_9_n_0\ : STD_LOGIC;
  signal \count[8]_i_2_n_0\ : STD_LOGIC;
  signal \count[8]_i_3_n_0\ : STD_LOGIC;
  signal \count[8]_i_4_n_0\ : STD_LOGIC;
  signal \count[8]_i_5_n_0\ : STD_LOGIC;
  signal \count[8]_i_6_n_0\ : STD_LOGIC;
  signal \count[8]_i_7_n_0\ : STD_LOGIC;
  signal \count[8]_i_8_n_0\ : STD_LOGIC;
  signal \count[8]_i_9_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^enc_count[0]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal state_d : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_count_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_a[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt_a[2]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt_b[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt_b[2]_i_2\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[8]_i_1\ : label is 11;
begin
  D(1 downto 0) <= \^d\(1 downto 0);
  Q(0) <= \^q\(0);
  \a_sync_reg[1]_0\(0) <= \^a_sync_reg[1]_0\(0);
  \cnt_a__0\(2 downto 0) <= \^cnt_a__0\(2 downto 0);
  \cnt_b__0\(2 downto 0) <= \^cnt_b__0\(2 downto 0);
  \enc_count[0]_0\(15 downto 0) <= \^enc_count[0]_0\(15 downto 0);
\a_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => enc_a(0),
      Q => \p_0_in__0\(1),
      R => '0'
    );
\a_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => \^a_sync_reg[1]_0\(0),
      R => '0'
    );
\b_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => enc_b(0),
      Q => p_0_in_0(1),
      R => '0'
    );
\b_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in_0(1),
      Q => \^q\(0),
      R => '0'
    );
clean_a_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => clean_a_reg_0,
      Q => \^d\(1),
      S => p_0_in
    );
clean_b_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => clean_b_reg_0,
      Q => \^d\(0),
      S => p_0_in
    );
\cnt_a[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08484808"
    )
        port map (
      I0 => \^cnt_a__0\(0),
      I1 => rst_n,
      I2 => \cnt_a_reg[0]_0\,
      I3 => \^d\(1),
      I4 => \^a_sync_reg[1]_0\(0),
      O => \cnt_a[0]_i_1_n_0\
    );
\cnt_a[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A060A060A000A0"
    )
        port map (
      I0 => \^cnt_a__0\(1),
      I1 => \^cnt_a__0\(0),
      I2 => rst_n,
      I3 => \cnt_a_reg[0]_0\,
      I4 => \^d\(1),
      I5 => \^a_sync_reg[1]_0\(0),
      O => \cnt_a[1]_i_1_n_0\
    );
\cnt_a[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \^cnt_a__0\(2),
      I1 => \cnt_a_reg[0]_0\,
      I2 => \^cnt_a__0\(0),
      I3 => \^cnt_a__0\(1),
      I4 => \cnt_a[2]_i_2_n_0\,
      O => \cnt_a[2]_i_1_n_0\
    );
\cnt_a[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"90FF"
    )
        port map (
      I0 => \^a_sync_reg[1]_0\(0),
      I1 => \^d\(1),
      I2 => \cnt_a_reg[0]_0\,
      I3 => rst_n,
      O => \cnt_a[2]_i_2_n_0\
    );
\cnt_a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_a[0]_i_1_n_0\,
      Q => \^cnt_a__0\(0),
      R => '0'
    );
\cnt_a_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_a[1]_i_1_n_0\,
      Q => \^cnt_a__0\(1),
      R => '0'
    );
\cnt_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_a[2]_i_1_n_0\,
      Q => \^cnt_a__0\(2),
      R => '0'
    );
\cnt_b[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08484808"
    )
        port map (
      I0 => \^cnt_b__0\(0),
      I1 => rst_n,
      I2 => \cnt_a_reg[0]_0\,
      I3 => \^d\(0),
      I4 => \^q\(0),
      O => \cnt_b[0]_i_1_n_0\
    );
\cnt_b[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A060A060A000A0"
    )
        port map (
      I0 => \^cnt_b__0\(1),
      I1 => \^cnt_b__0\(0),
      I2 => rst_n,
      I3 => \cnt_a_reg[0]_0\,
      I4 => \^d\(0),
      I5 => \^q\(0),
      O => \cnt_b[1]_i_1_n_0\
    );
\cnt_b[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \^cnt_b__0\(2),
      I1 => \cnt_a_reg[0]_0\,
      I2 => \^cnt_b__0\(0),
      I3 => \^cnt_b__0\(1),
      I4 => \cnt_b[2]_i_2_n_0\,
      O => \cnt_b[2]_i_1_n_0\
    );
\cnt_b[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"90FF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^d\(0),
      I2 => \cnt_a_reg[0]_0\,
      I3 => rst_n,
      O => \cnt_b[2]_i_2_n_0\
    );
\cnt_b_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_b[0]_i_1_n_0\,
      Q => \^cnt_b__0\(0),
      R => '0'
    );
\cnt_b_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_b[1]_i_1_n_0\,
      Q => \^cnt_b__0\(1),
      R => '0'
    );
\cnt_b_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_b[2]_i_1_n_0\,
      Q => \^cnt_b__0\(2),
      R => '0'
    );
\count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6000"
    )
        port map (
      I0 => state_d(0),
      I1 => state_d(1),
      I2 => \^d\(1),
      I3 => \^d\(0),
      O => \count[0]_i_1_n_0\
    );
\count[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[0]_i_3_n_0\
    );
\count[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[0]_i_4_n_0\
    );
\count[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[0]_i_5_n_0\
    );
\count[0]_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[0]_0\(3),
      O => \count[0]_i_6__1_n_0\
    );
\count[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[0]_0\(2),
      O => \count[0]_i_7_n_0\
    );
\count[0]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[0]_0\(1),
      O => \count[0]_i_8_n_0\
    );
\count[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^enc_count[0]_0\(0),
      O => \count[0]_i_9_n_0\
    );
\count[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[12]_i_2_n_0\
    );
\count[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[12]_i_3_n_0\
    );
\count[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[12]_i_4_n_0\
    );
\count[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => \^enc_count[0]_0\(15),
      I1 => state_d(1),
      I2 => state_d(0),
      O => \count[12]_i_5_n_0\
    );
\count[12]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[0]_0\(14),
      O => \count[12]_i_6_n_0\
    );
\count[12]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[0]_0\(13),
      O => \count[12]_i_7_n_0\
    );
\count[12]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[0]_0\(12),
      O => \count[12]_i_8_n_0\
    );
\count[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[4]_i_2_n_0\
    );
\count[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[4]_i_3_n_0\
    );
\count[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[4]_i_4_n_0\
    );
\count[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[4]_i_5_n_0\
    );
\count[4]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[0]_0\(7),
      O => \count[4]_i_6_n_0\
    );
\count[4]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[0]_0\(6),
      O => \count[4]_i_7_n_0\
    );
\count[4]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[0]_0\(5),
      O => \count[4]_i_8_n_0\
    );
\count[4]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[0]_0\(4),
      O => \count[4]_i_9_n_0\
    );
\count[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[8]_i_2_n_0\
    );
\count[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[8]_i_3_n_0\
    );
\count[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[8]_i_4_n_0\
    );
\count[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[8]_i_5_n_0\
    );
\count[8]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[0]_0\(11),
      O => \count[8]_i_6_n_0\
    );
\count[8]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[0]_0\(10),
      O => \count[8]_i_7_n_0\
    );
\count[8]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[0]_0\(9),
      O => \count[8]_i_8_n_0\
    );
\count[8]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[0]_0\(8),
      O => \count[8]_i_9_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      D => \count_reg[0]_i_2_n_7\,
      Q => \^enc_count[0]_0\(0),
      R => p_0_in
    );
\count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_2_n_0\,
      CO(2) => \count_reg[0]_i_2_n_1\,
      CO(1) => \count_reg[0]_i_2_n_2\,
      CO(0) => \count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \count[0]_i_3_n_0\,
      DI(2) => \count[0]_i_4_n_0\,
      DI(1) => \count[0]_i_5_n_0\,
      DI(0) => '1',
      O(3) => \count_reg[0]_i_2_n_4\,
      O(2) => \count_reg[0]_i_2_n_5\,
      O(1) => \count_reg[0]_i_2_n_6\,
      O(0) => \count_reg[0]_i_2_n_7\,
      S(3) => \count[0]_i_6__1_n_0\,
      S(2) => \count[0]_i_7_n_0\,
      S(1) => \count[0]_i_8_n_0\,
      S(0) => \count[0]_i_9_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      D => \count_reg[8]_i_1_n_5\,
      Q => \^enc_count[0]_0\(10),
      R => p_0_in
    );
\count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      D => \count_reg[8]_i_1_n_4\,
      Q => \^enc_count[0]_0\(11),
      R => p_0_in
    );
\count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      D => \count_reg[12]_i_1_n_7\,
      Q => \^enc_count[0]_0\(12),
      R => p_0_in
    );
\count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1_n_0\,
      CO(3) => \NLW_count_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \count_reg[12]_i_1_n_1\,
      CO(1) => \count_reg[12]_i_1_n_2\,
      CO(0) => \count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \count[12]_i_2_n_0\,
      DI(1) => \count[12]_i_3_n_0\,
      DI(0) => \count[12]_i_4_n_0\,
      O(3) => \count_reg[12]_i_1_n_4\,
      O(2) => \count_reg[12]_i_1_n_5\,
      O(1) => \count_reg[12]_i_1_n_6\,
      O(0) => \count_reg[12]_i_1_n_7\,
      S(3) => \count[12]_i_5_n_0\,
      S(2) => \count[12]_i_6_n_0\,
      S(1) => \count[12]_i_7_n_0\,
      S(0) => \count[12]_i_8_n_0\
    );
\count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      D => \count_reg[12]_i_1_n_6\,
      Q => \^enc_count[0]_0\(13),
      R => p_0_in
    );
\count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      D => \count_reg[12]_i_1_n_5\,
      Q => \^enc_count[0]_0\(14),
      R => p_0_in
    );
\count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      D => \count_reg[12]_i_1_n_4\,
      Q => \^enc_count[0]_0\(15),
      R => p_0_in
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      D => \count_reg[0]_i_2_n_6\,
      Q => \^enc_count[0]_0\(1),
      R => p_0_in
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      D => \count_reg[0]_i_2_n_5\,
      Q => \^enc_count[0]_0\(2),
      R => p_0_in
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      D => \count_reg[0]_i_2_n_4\,
      Q => \^enc_count[0]_0\(3),
      R => p_0_in
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      D => \count_reg[4]_i_1_n_7\,
      Q => \^enc_count[0]_0\(4),
      R => p_0_in
    );
\count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_2_n_0\,
      CO(3) => \count_reg[4]_i_1_n_0\,
      CO(2) => \count_reg[4]_i_1_n_1\,
      CO(1) => \count_reg[4]_i_1_n_2\,
      CO(0) => \count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \count[4]_i_2_n_0\,
      DI(2) => \count[4]_i_3_n_0\,
      DI(1) => \count[4]_i_4_n_0\,
      DI(0) => \count[4]_i_5_n_0\,
      O(3) => \count_reg[4]_i_1_n_4\,
      O(2) => \count_reg[4]_i_1_n_5\,
      O(1) => \count_reg[4]_i_1_n_6\,
      O(0) => \count_reg[4]_i_1_n_7\,
      S(3) => \count[4]_i_6_n_0\,
      S(2) => \count[4]_i_7_n_0\,
      S(1) => \count[4]_i_8_n_0\,
      S(0) => \count[4]_i_9_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      D => \count_reg[4]_i_1_n_6\,
      Q => \^enc_count[0]_0\(5),
      R => p_0_in
    );
\count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      D => \count_reg[4]_i_1_n_5\,
      Q => \^enc_count[0]_0\(6),
      R => p_0_in
    );
\count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      D => \count_reg[4]_i_1_n_4\,
      Q => \^enc_count[0]_0\(7),
      R => p_0_in
    );
\count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      D => \count_reg[8]_i_1_n_7\,
      Q => \^enc_count[0]_0\(8),
      R => p_0_in
    );
\count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1_n_0\,
      CO(3) => \count_reg[8]_i_1_n_0\,
      CO(2) => \count_reg[8]_i_1_n_1\,
      CO(1) => \count_reg[8]_i_1_n_2\,
      CO(0) => \count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \count[8]_i_2_n_0\,
      DI(2) => \count[8]_i_3_n_0\,
      DI(1) => \count[8]_i_4_n_0\,
      DI(0) => \count[8]_i_5_n_0\,
      O(3) => \count_reg[8]_i_1_n_4\,
      O(2) => \count_reg[8]_i_1_n_5\,
      O(1) => \count_reg[8]_i_1_n_6\,
      O(0) => \count_reg[8]_i_1_n_7\,
      S(3) => \count[8]_i_6_n_0\,
      S(2) => \count[8]_i_7_n_0\,
      S(1) => \count[8]_i_8_n_0\,
      S(0) => \count[8]_i_9_n_0\
    );
\count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1_n_0\,
      D => \count_reg[8]_i_1_n_6\,
      Q => \^enc_count[0]_0\(9),
      R => p_0_in
    );
\state_d_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \^d\(0),
      Q => state_d(0),
      S => p_0_in
    );
\state_d_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \^d\(1),
      Q => state_d(1),
      S => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fx_system_wrapper_0_1_quad_decoder_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \enc_count[1]_1\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \a_sync_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cnt_b__0_6\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \cnt_a__0_7\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    p_0_in : in STD_LOGIC;
    clean_b_reg_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    clean_a_reg_0 : in STD_LOGIC;
    \cnt_a_reg[0]_0\ : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    enc_b : in STD_LOGIC_VECTOR ( 0 to 0 );
    enc_a : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_fx_system_wrapper_0_1_quad_decoder_0 : entity is "quad_decoder";
end design_1_fx_system_wrapper_0_1_quad_decoder_0;

architecture STRUCTURE of design_1_fx_system_wrapper_0_1_quad_decoder_0 is
  signal \^d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^a_sync_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \cnt_a[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_a[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_a[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_a[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \^cnt_a__0_7\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \cnt_b[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_b[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_b[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_b[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \^cnt_b__0_6\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \count[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \count[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \count[0]_i_6__2_n_0\ : STD_LOGIC;
  signal \count[0]_i_7__0_n_0\ : STD_LOGIC;
  signal \count[0]_i_8__0_n_0\ : STD_LOGIC;
  signal \count[0]_i_9__0_n_0\ : STD_LOGIC;
  signal \count[12]_i_2__0_n_0\ : STD_LOGIC;
  signal \count[12]_i_3__0_n_0\ : STD_LOGIC;
  signal \count[12]_i_4__0_n_0\ : STD_LOGIC;
  signal \count[12]_i_5__0_n_0\ : STD_LOGIC;
  signal \count[12]_i_6__0_n_0\ : STD_LOGIC;
  signal \count[12]_i_7__0_n_0\ : STD_LOGIC;
  signal \count[12]_i_8__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_6__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_7__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_8__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_9__0_n_0\ : STD_LOGIC;
  signal \count[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \count[8]_i_3__0_n_0\ : STD_LOGIC;
  signal \count[8]_i_4__0_n_0\ : STD_LOGIC;
  signal \count[8]_i_5__0_n_0\ : STD_LOGIC;
  signal \count[8]_i_6__0_n_0\ : STD_LOGIC;
  signal \count[8]_i_7__0_n_0\ : STD_LOGIC;
  signal \count[8]_i_8__0_n_0\ : STD_LOGIC;
  signal \count[8]_i_9__0_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_2__0_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_2__0_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_2__0_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_2__0_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \^enc_count[1]_1\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal state_d : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_count_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_a[0]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt_a[2]_i_2__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt_b[0]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt_b[2]_i_2__0\ : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_reg[0]_i_2__0\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[12]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[4]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[8]_i_1__0\ : label is 11;
begin
  D(1 downto 0) <= \^d\(1 downto 0);
  Q(0) <= \^q\(0);
  \a_sync_reg[1]_0\(0) <= \^a_sync_reg[1]_0\(0);
  \cnt_a__0_7\(2 downto 0) <= \^cnt_a__0_7\(2 downto 0);
  \cnt_b__0_6\(2 downto 0) <= \^cnt_b__0_6\(2 downto 0);
  \enc_count[1]_1\(15 downto 0) <= \^enc_count[1]_1\(15 downto 0);
\a_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => enc_a(0),
      Q => \p_0_in__0\(1),
      R => '0'
    );
\a_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => \^a_sync_reg[1]_0\(0),
      R => '0'
    );
\b_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => enc_b(0),
      Q => p_0_in_0(1),
      R => '0'
    );
\b_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in_0(1),
      Q => \^q\(0),
      R => '0'
    );
clean_a_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => clean_a_reg_0,
      Q => \^d\(1),
      S => p_0_in
    );
clean_b_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => clean_b_reg_0,
      Q => \^d\(0),
      S => p_0_in
    );
\cnt_a[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08484808"
    )
        port map (
      I0 => \^cnt_a__0_7\(0),
      I1 => rst_n,
      I2 => \cnt_a_reg[0]_0\,
      I3 => \^d\(1),
      I4 => \^a_sync_reg[1]_0\(0),
      O => \cnt_a[0]_i_1__0_n_0\
    );
\cnt_a[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A060A060A000A0"
    )
        port map (
      I0 => \^cnt_a__0_7\(1),
      I1 => \^cnt_a__0_7\(0),
      I2 => rst_n,
      I3 => \cnt_a_reg[0]_0\,
      I4 => \^d\(1),
      I5 => \^a_sync_reg[1]_0\(0),
      O => \cnt_a[1]_i_1__0_n_0\
    );
\cnt_a[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \^cnt_a__0_7\(2),
      I1 => \cnt_a_reg[0]_0\,
      I2 => \^cnt_a__0_7\(0),
      I3 => \^cnt_a__0_7\(1),
      I4 => \cnt_a[2]_i_2__0_n_0\,
      O => \cnt_a[2]_i_1__0_n_0\
    );
\cnt_a[2]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"90FF"
    )
        port map (
      I0 => \^a_sync_reg[1]_0\(0),
      I1 => \^d\(1),
      I2 => \cnt_a_reg[0]_0\,
      I3 => rst_n,
      O => \cnt_a[2]_i_2__0_n_0\
    );
\cnt_a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_a[0]_i_1__0_n_0\,
      Q => \^cnt_a__0_7\(0),
      R => '0'
    );
\cnt_a_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_a[1]_i_1__0_n_0\,
      Q => \^cnt_a__0_7\(1),
      R => '0'
    );
\cnt_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_a[2]_i_1__0_n_0\,
      Q => \^cnt_a__0_7\(2),
      R => '0'
    );
\cnt_b[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08484808"
    )
        port map (
      I0 => \^cnt_b__0_6\(0),
      I1 => rst_n,
      I2 => \cnt_a_reg[0]_0\,
      I3 => \^d\(0),
      I4 => \^q\(0),
      O => \cnt_b[0]_i_1__0_n_0\
    );
\cnt_b[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A060A060A000A0"
    )
        port map (
      I0 => \^cnt_b__0_6\(1),
      I1 => \^cnt_b__0_6\(0),
      I2 => rst_n,
      I3 => \cnt_a_reg[0]_0\,
      I4 => \^d\(0),
      I5 => \^q\(0),
      O => \cnt_b[1]_i_1__0_n_0\
    );
\cnt_b[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \^cnt_b__0_6\(2),
      I1 => \cnt_a_reg[0]_0\,
      I2 => \^cnt_b__0_6\(0),
      I3 => \^cnt_b__0_6\(1),
      I4 => \cnt_b[2]_i_2__0_n_0\,
      O => \cnt_b[2]_i_1__0_n_0\
    );
\cnt_b[2]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"90FF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^d\(0),
      I2 => \cnt_a_reg[0]_0\,
      I3 => rst_n,
      O => \cnt_b[2]_i_2__0_n_0\
    );
\cnt_b_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_b[0]_i_1__0_n_0\,
      Q => \^cnt_b__0_6\(0),
      R => '0'
    );
\cnt_b_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_b[1]_i_1__0_n_0\,
      Q => \^cnt_b__0_6\(1),
      R => '0'
    );
\cnt_b_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_b[2]_i_1__0_n_0\,
      Q => \^cnt_b__0_6\(2),
      R => '0'
    );
\count[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6000"
    )
        port map (
      I0 => state_d(0),
      I1 => state_d(1),
      I2 => \^d\(1),
      I3 => \^d\(0),
      O => \count[0]_i_1__0_n_0\
    );
\count[0]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[0]_i_3__0_n_0\
    );
\count[0]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[0]_i_4__0_n_0\
    );
\count[0]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[0]_i_5__0_n_0\
    );
\count[0]_i_6__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[1]_1\(3),
      O => \count[0]_i_6__2_n_0\
    );
\count[0]_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[1]_1\(2),
      O => \count[0]_i_7__0_n_0\
    );
\count[0]_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[1]_1\(1),
      O => \count[0]_i_8__0_n_0\
    );
\count[0]_i_9__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^enc_count[1]_1\(0),
      O => \count[0]_i_9__0_n_0\
    );
\count[12]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[12]_i_2__0_n_0\
    );
\count[12]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[12]_i_3__0_n_0\
    );
\count[12]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[12]_i_4__0_n_0\
    );
\count[12]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => \^enc_count[1]_1\(15),
      I1 => state_d(1),
      I2 => state_d(0),
      O => \count[12]_i_5__0_n_0\
    );
\count[12]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[1]_1\(14),
      O => \count[12]_i_6__0_n_0\
    );
\count[12]_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[1]_1\(13),
      O => \count[12]_i_7__0_n_0\
    );
\count[12]_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[1]_1\(12),
      O => \count[12]_i_8__0_n_0\
    );
\count[4]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[4]_i_2__0_n_0\
    );
\count[4]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[4]_i_3__0_n_0\
    );
\count[4]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[4]_i_4__0_n_0\
    );
\count[4]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[4]_i_5__0_n_0\
    );
\count[4]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[1]_1\(7),
      O => \count[4]_i_6__0_n_0\
    );
\count[4]_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[1]_1\(6),
      O => \count[4]_i_7__0_n_0\
    );
\count[4]_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[1]_1\(5),
      O => \count[4]_i_8__0_n_0\
    );
\count[4]_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[1]_1\(4),
      O => \count[4]_i_9__0_n_0\
    );
\count[8]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[8]_i_2__0_n_0\
    );
\count[8]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[8]_i_3__0_n_0\
    );
\count[8]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[8]_i_4__0_n_0\
    );
\count[8]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[8]_i_5__0_n_0\
    );
\count[8]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[1]_1\(11),
      O => \count[8]_i_6__0_n_0\
    );
\count[8]_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[1]_1\(10),
      O => \count[8]_i_7__0_n_0\
    );
\count[8]_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[1]_1\(9),
      O => \count[8]_i_8__0_n_0\
    );
\count[8]_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[1]_1\(8),
      O => \count[8]_i_9__0_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[0]_i_2__0_n_7\,
      Q => \^enc_count[1]_1\(0),
      R => p_0_in
    );
\count_reg[0]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_2__0_n_0\,
      CO(2) => \count_reg[0]_i_2__0_n_1\,
      CO(1) => \count_reg[0]_i_2__0_n_2\,
      CO(0) => \count_reg[0]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3) => \count[0]_i_3__0_n_0\,
      DI(2) => \count[0]_i_4__0_n_0\,
      DI(1) => \count[0]_i_5__0_n_0\,
      DI(0) => '1',
      O(3) => \count_reg[0]_i_2__0_n_4\,
      O(2) => \count_reg[0]_i_2__0_n_5\,
      O(1) => \count_reg[0]_i_2__0_n_6\,
      O(0) => \count_reg[0]_i_2__0_n_7\,
      S(3) => \count[0]_i_6__2_n_0\,
      S(2) => \count[0]_i_7__0_n_0\,
      S(1) => \count[0]_i_8__0_n_0\,
      S(0) => \count[0]_i_9__0_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[8]_i_1__0_n_5\,
      Q => \^enc_count[1]_1\(10),
      R => p_0_in
    );
\count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[8]_i_1__0_n_4\,
      Q => \^enc_count[1]_1\(11),
      R => p_0_in
    );
\count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[12]_i_1__0_n_7\,
      Q => \^enc_count[1]_1\(12),
      R => p_0_in
    );
\count_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1__0_n_0\,
      CO(3) => \NLW_count_reg[12]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \count_reg[12]_i_1__0_n_1\,
      CO(1) => \count_reg[12]_i_1__0_n_2\,
      CO(0) => \count_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \count[12]_i_2__0_n_0\,
      DI(1) => \count[12]_i_3__0_n_0\,
      DI(0) => \count[12]_i_4__0_n_0\,
      O(3) => \count_reg[12]_i_1__0_n_4\,
      O(2) => \count_reg[12]_i_1__0_n_5\,
      O(1) => \count_reg[12]_i_1__0_n_6\,
      O(0) => \count_reg[12]_i_1__0_n_7\,
      S(3) => \count[12]_i_5__0_n_0\,
      S(2) => \count[12]_i_6__0_n_0\,
      S(1) => \count[12]_i_7__0_n_0\,
      S(0) => \count[12]_i_8__0_n_0\
    );
\count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[12]_i_1__0_n_6\,
      Q => \^enc_count[1]_1\(13),
      R => p_0_in
    );
\count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[12]_i_1__0_n_5\,
      Q => \^enc_count[1]_1\(14),
      R => p_0_in
    );
\count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[12]_i_1__0_n_4\,
      Q => \^enc_count[1]_1\(15),
      R => p_0_in
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[0]_i_2__0_n_6\,
      Q => \^enc_count[1]_1\(1),
      R => p_0_in
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[0]_i_2__0_n_5\,
      Q => \^enc_count[1]_1\(2),
      R => p_0_in
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[0]_i_2__0_n_4\,
      Q => \^enc_count[1]_1\(3),
      R => p_0_in
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[4]_i_1__0_n_7\,
      Q => \^enc_count[1]_1\(4),
      R => p_0_in
    );
\count_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_2__0_n_0\,
      CO(3) => \count_reg[4]_i_1__0_n_0\,
      CO(2) => \count_reg[4]_i_1__0_n_1\,
      CO(1) => \count_reg[4]_i_1__0_n_2\,
      CO(0) => \count_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3) => \count[4]_i_2__0_n_0\,
      DI(2) => \count[4]_i_3__0_n_0\,
      DI(1) => \count[4]_i_4__0_n_0\,
      DI(0) => \count[4]_i_5__0_n_0\,
      O(3) => \count_reg[4]_i_1__0_n_4\,
      O(2) => \count_reg[4]_i_1__0_n_5\,
      O(1) => \count_reg[4]_i_1__0_n_6\,
      O(0) => \count_reg[4]_i_1__0_n_7\,
      S(3) => \count[4]_i_6__0_n_0\,
      S(2) => \count[4]_i_7__0_n_0\,
      S(1) => \count[4]_i_8__0_n_0\,
      S(0) => \count[4]_i_9__0_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[4]_i_1__0_n_6\,
      Q => \^enc_count[1]_1\(5),
      R => p_0_in
    );
\count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[4]_i_1__0_n_5\,
      Q => \^enc_count[1]_1\(6),
      R => p_0_in
    );
\count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[4]_i_1__0_n_4\,
      Q => \^enc_count[1]_1\(7),
      R => p_0_in
    );
\count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[8]_i_1__0_n_7\,
      Q => \^enc_count[1]_1\(8),
      R => p_0_in
    );
\count_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1__0_n_0\,
      CO(3) => \count_reg[8]_i_1__0_n_0\,
      CO(2) => \count_reg[8]_i_1__0_n_1\,
      CO(1) => \count_reg[8]_i_1__0_n_2\,
      CO(0) => \count_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3) => \count[8]_i_2__0_n_0\,
      DI(2) => \count[8]_i_3__0_n_0\,
      DI(1) => \count[8]_i_4__0_n_0\,
      DI(0) => \count[8]_i_5__0_n_0\,
      O(3) => \count_reg[8]_i_1__0_n_4\,
      O(2) => \count_reg[8]_i_1__0_n_5\,
      O(1) => \count_reg[8]_i_1__0_n_6\,
      O(0) => \count_reg[8]_i_1__0_n_7\,
      S(3) => \count[8]_i_6__0_n_0\,
      S(2) => \count[8]_i_7__0_n_0\,
      S(1) => \count[8]_i_8__0_n_0\,
      S(0) => \count[8]_i_9__0_n_0\
    );
\count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[8]_i_1__0_n_6\,
      Q => \^enc_count[1]_1\(9),
      R => p_0_in
    );
\state_d_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \^d\(0),
      Q => state_d(0),
      S => p_0_in
    );
\state_d_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \^d\(1),
      Q => state_d(1),
      S => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fx_system_wrapper_0_1_quad_decoder_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \enc_count[2]_2\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \a_sync_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cnt_b__0_8\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \cnt_a__0_9\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    p_0_in : in STD_LOGIC;
    clean_b_reg_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    clean_a_reg_0 : in STD_LOGIC;
    \cnt_a_reg[0]_0\ : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    enc_b : in STD_LOGIC_VECTOR ( 0 to 0 );
    enc_a : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_fx_system_wrapper_0_1_quad_decoder_1 : entity is "quad_decoder";
end design_1_fx_system_wrapper_0_1_quad_decoder_1;

architecture STRUCTURE of design_1_fx_system_wrapper_0_1_quad_decoder_1 is
  signal \^d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^a_sync_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \cnt_a[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt_a[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt_a[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt_a[2]_i_2__1_n_0\ : STD_LOGIC;
  signal \^cnt_a__0_9\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \cnt_b[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt_b[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt_b[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt_b[2]_i_2__1_n_0\ : STD_LOGIC;
  signal \^cnt_b__0_8\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \count[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count[0]_i_3__1_n_0\ : STD_LOGIC;
  signal \count[0]_i_4__1_n_0\ : STD_LOGIC;
  signal \count[0]_i_5__1_n_0\ : STD_LOGIC;
  signal \count[0]_i_6__3_n_0\ : STD_LOGIC;
  signal \count[0]_i_7__1_n_0\ : STD_LOGIC;
  signal \count[0]_i_8__1_n_0\ : STD_LOGIC;
  signal \count[0]_i_9__1_n_0\ : STD_LOGIC;
  signal \count[12]_i_2__1_n_0\ : STD_LOGIC;
  signal \count[12]_i_3__1_n_0\ : STD_LOGIC;
  signal \count[12]_i_4__1_n_0\ : STD_LOGIC;
  signal \count[12]_i_5__1_n_0\ : STD_LOGIC;
  signal \count[12]_i_6__1_n_0\ : STD_LOGIC;
  signal \count[12]_i_7__1_n_0\ : STD_LOGIC;
  signal \count[12]_i_8__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_2__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_3__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_4__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_5__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_6__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_7__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_8__1_n_0\ : STD_LOGIC;
  signal \count[4]_i_9__1_n_0\ : STD_LOGIC;
  signal \count[8]_i_2__1_n_0\ : STD_LOGIC;
  signal \count[8]_i_3__1_n_0\ : STD_LOGIC;
  signal \count[8]_i_4__1_n_0\ : STD_LOGIC;
  signal \count[8]_i_5__1_n_0\ : STD_LOGIC;
  signal \count[8]_i_6__1_n_0\ : STD_LOGIC;
  signal \count[8]_i_7__1_n_0\ : STD_LOGIC;
  signal \count[8]_i_8__1_n_0\ : STD_LOGIC;
  signal \count[8]_i_9__1_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_2__1_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_2__1_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_2__1_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_2__1_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_2__1_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_2__1_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_2__1_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1__1_n_7\ : STD_LOGIC;
  signal \^enc_count[2]_2\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal state_d : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_count_reg[12]_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_a[0]_i_1__1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt_a[2]_i_2__1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt_b[0]_i_1__1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt_b[2]_i_2__1\ : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_reg[0]_i_2__1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[12]_i_1__1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[4]_i_1__1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[8]_i_1__1\ : label is 11;
begin
  D(1 downto 0) <= \^d\(1 downto 0);
  Q(0) <= \^q\(0);
  \a_sync_reg[1]_0\(0) <= \^a_sync_reg[1]_0\(0);
  \cnt_a__0_9\(2 downto 0) <= \^cnt_a__0_9\(2 downto 0);
  \cnt_b__0_8\(2 downto 0) <= \^cnt_b__0_8\(2 downto 0);
  \enc_count[2]_2\(15 downto 0) <= \^enc_count[2]_2\(15 downto 0);
\a_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => enc_a(0),
      Q => \p_0_in__0\(1),
      R => '0'
    );
\a_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => \^a_sync_reg[1]_0\(0),
      R => '0'
    );
\b_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => enc_b(0),
      Q => p_0_in_0(1),
      R => '0'
    );
\b_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in_0(1),
      Q => \^q\(0),
      R => '0'
    );
clean_a_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => clean_a_reg_0,
      Q => \^d\(1),
      S => p_0_in
    );
clean_b_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => clean_b_reg_0,
      Q => \^d\(0),
      S => p_0_in
    );
\cnt_a[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08484808"
    )
        port map (
      I0 => \^cnt_a__0_9\(0),
      I1 => rst_n,
      I2 => \cnt_a_reg[0]_0\,
      I3 => \^d\(1),
      I4 => \^a_sync_reg[1]_0\(0),
      O => \cnt_a[0]_i_1__1_n_0\
    );
\cnt_a[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A060A060A000A0"
    )
        port map (
      I0 => \^cnt_a__0_9\(1),
      I1 => \^cnt_a__0_9\(0),
      I2 => rst_n,
      I3 => \cnt_a_reg[0]_0\,
      I4 => \^d\(1),
      I5 => \^a_sync_reg[1]_0\(0),
      O => \cnt_a[1]_i_1__1_n_0\
    );
\cnt_a[2]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \^cnt_a__0_9\(2),
      I1 => \cnt_a_reg[0]_0\,
      I2 => \^cnt_a__0_9\(0),
      I3 => \^cnt_a__0_9\(1),
      I4 => \cnt_a[2]_i_2__1_n_0\,
      O => \cnt_a[2]_i_1__1_n_0\
    );
\cnt_a[2]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"90FF"
    )
        port map (
      I0 => \^a_sync_reg[1]_0\(0),
      I1 => \^d\(1),
      I2 => \cnt_a_reg[0]_0\,
      I3 => rst_n,
      O => \cnt_a[2]_i_2__1_n_0\
    );
\cnt_a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_a[0]_i_1__1_n_0\,
      Q => \^cnt_a__0_9\(0),
      R => '0'
    );
\cnt_a_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_a[1]_i_1__1_n_0\,
      Q => \^cnt_a__0_9\(1),
      R => '0'
    );
\cnt_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_a[2]_i_1__1_n_0\,
      Q => \^cnt_a__0_9\(2),
      R => '0'
    );
\cnt_b[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08484808"
    )
        port map (
      I0 => \^cnt_b__0_8\(0),
      I1 => rst_n,
      I2 => \cnt_a_reg[0]_0\,
      I3 => \^d\(0),
      I4 => \^q\(0),
      O => \cnt_b[0]_i_1__1_n_0\
    );
\cnt_b[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A060A060A000A0"
    )
        port map (
      I0 => \^cnt_b__0_8\(1),
      I1 => \^cnt_b__0_8\(0),
      I2 => rst_n,
      I3 => \cnt_a_reg[0]_0\,
      I4 => \^d\(0),
      I5 => \^q\(0),
      O => \cnt_b[1]_i_1__1_n_0\
    );
\cnt_b[2]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \^cnt_b__0_8\(2),
      I1 => \cnt_a_reg[0]_0\,
      I2 => \^cnt_b__0_8\(0),
      I3 => \^cnt_b__0_8\(1),
      I4 => \cnt_b[2]_i_2__1_n_0\,
      O => \cnt_b[2]_i_1__1_n_0\
    );
\cnt_b[2]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"90FF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^d\(0),
      I2 => \cnt_a_reg[0]_0\,
      I3 => rst_n,
      O => \cnt_b[2]_i_2__1_n_0\
    );
\cnt_b_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_b[0]_i_1__1_n_0\,
      Q => \^cnt_b__0_8\(0),
      R => '0'
    );
\cnt_b_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_b[1]_i_1__1_n_0\,
      Q => \^cnt_b__0_8\(1),
      R => '0'
    );
\cnt_b_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_b[2]_i_1__1_n_0\,
      Q => \^cnt_b__0_8\(2),
      R => '0'
    );
\count[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6000"
    )
        port map (
      I0 => state_d(0),
      I1 => state_d(1),
      I2 => \^d\(1),
      I3 => \^d\(0),
      O => \count[0]_i_1__1_n_0\
    );
\count[0]_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[0]_i_3__1_n_0\
    );
\count[0]_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[0]_i_4__1_n_0\
    );
\count[0]_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[0]_i_5__1_n_0\
    );
\count[0]_i_6__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[2]_2\(3),
      O => \count[0]_i_6__3_n_0\
    );
\count[0]_i_7__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[2]_2\(2),
      O => \count[0]_i_7__1_n_0\
    );
\count[0]_i_8__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[2]_2\(1),
      O => \count[0]_i_8__1_n_0\
    );
\count[0]_i_9__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^enc_count[2]_2\(0),
      O => \count[0]_i_9__1_n_0\
    );
\count[12]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[12]_i_2__1_n_0\
    );
\count[12]_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[12]_i_3__1_n_0\
    );
\count[12]_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[12]_i_4__1_n_0\
    );
\count[12]_i_5__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => \^enc_count[2]_2\(15),
      I1 => state_d(1),
      I2 => state_d(0),
      O => \count[12]_i_5__1_n_0\
    );
\count[12]_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[2]_2\(14),
      O => \count[12]_i_6__1_n_0\
    );
\count[12]_i_7__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[2]_2\(13),
      O => \count[12]_i_7__1_n_0\
    );
\count[12]_i_8__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[2]_2\(12),
      O => \count[12]_i_8__1_n_0\
    );
\count[4]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[4]_i_2__1_n_0\
    );
\count[4]_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[4]_i_3__1_n_0\
    );
\count[4]_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[4]_i_4__1_n_0\
    );
\count[4]_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[4]_i_5__1_n_0\
    );
\count[4]_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[2]_2\(7),
      O => \count[4]_i_6__1_n_0\
    );
\count[4]_i_7__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[2]_2\(6),
      O => \count[4]_i_7__1_n_0\
    );
\count[4]_i_8__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[2]_2\(5),
      O => \count[4]_i_8__1_n_0\
    );
\count[4]_i_9__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[2]_2\(4),
      O => \count[4]_i_9__1_n_0\
    );
\count[8]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[8]_i_2__1_n_0\
    );
\count[8]_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[8]_i_3__1_n_0\
    );
\count[8]_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[8]_i_4__1_n_0\
    );
\count[8]_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[8]_i_5__1_n_0\
    );
\count[8]_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[2]_2\(11),
      O => \count[8]_i_6__1_n_0\
    );
\count[8]_i_7__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[2]_2\(10),
      O => \count[8]_i_7__1_n_0\
    );
\count[8]_i_8__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[2]_2\(9),
      O => \count[8]_i_8__1_n_0\
    );
\count[8]_i_9__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^enc_count[2]_2\(8),
      O => \count[8]_i_9__1_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__1_n_0\,
      D => \count_reg[0]_i_2__1_n_7\,
      Q => \^enc_count[2]_2\(0),
      R => p_0_in
    );
\count_reg[0]_i_2__1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_2__1_n_0\,
      CO(2) => \count_reg[0]_i_2__1_n_1\,
      CO(1) => \count_reg[0]_i_2__1_n_2\,
      CO(0) => \count_reg[0]_i_2__1_n_3\,
      CYINIT => '0',
      DI(3) => \count[0]_i_3__1_n_0\,
      DI(2) => \count[0]_i_4__1_n_0\,
      DI(1) => \count[0]_i_5__1_n_0\,
      DI(0) => '1',
      O(3) => \count_reg[0]_i_2__1_n_4\,
      O(2) => \count_reg[0]_i_2__1_n_5\,
      O(1) => \count_reg[0]_i_2__1_n_6\,
      O(0) => \count_reg[0]_i_2__1_n_7\,
      S(3) => \count[0]_i_6__3_n_0\,
      S(2) => \count[0]_i_7__1_n_0\,
      S(1) => \count[0]_i_8__1_n_0\,
      S(0) => \count[0]_i_9__1_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__1_n_0\,
      D => \count_reg[8]_i_1__1_n_5\,
      Q => \^enc_count[2]_2\(10),
      R => p_0_in
    );
\count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__1_n_0\,
      D => \count_reg[8]_i_1__1_n_4\,
      Q => \^enc_count[2]_2\(11),
      R => p_0_in
    );
\count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__1_n_0\,
      D => \count_reg[12]_i_1__1_n_7\,
      Q => \^enc_count[2]_2\(12),
      R => p_0_in
    );
\count_reg[12]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1__1_n_0\,
      CO(3) => \NLW_count_reg[12]_i_1__1_CO_UNCONNECTED\(3),
      CO(2) => \count_reg[12]_i_1__1_n_1\,
      CO(1) => \count_reg[12]_i_1__1_n_2\,
      CO(0) => \count_reg[12]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \count[12]_i_2__1_n_0\,
      DI(1) => \count[12]_i_3__1_n_0\,
      DI(0) => \count[12]_i_4__1_n_0\,
      O(3) => \count_reg[12]_i_1__1_n_4\,
      O(2) => \count_reg[12]_i_1__1_n_5\,
      O(1) => \count_reg[12]_i_1__1_n_6\,
      O(0) => \count_reg[12]_i_1__1_n_7\,
      S(3) => \count[12]_i_5__1_n_0\,
      S(2) => \count[12]_i_6__1_n_0\,
      S(1) => \count[12]_i_7__1_n_0\,
      S(0) => \count[12]_i_8__1_n_0\
    );
\count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__1_n_0\,
      D => \count_reg[12]_i_1__1_n_6\,
      Q => \^enc_count[2]_2\(13),
      R => p_0_in
    );
\count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__1_n_0\,
      D => \count_reg[12]_i_1__1_n_5\,
      Q => \^enc_count[2]_2\(14),
      R => p_0_in
    );
\count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__1_n_0\,
      D => \count_reg[12]_i_1__1_n_4\,
      Q => \^enc_count[2]_2\(15),
      R => p_0_in
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__1_n_0\,
      D => \count_reg[0]_i_2__1_n_6\,
      Q => \^enc_count[2]_2\(1),
      R => p_0_in
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__1_n_0\,
      D => \count_reg[0]_i_2__1_n_5\,
      Q => \^enc_count[2]_2\(2),
      R => p_0_in
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__1_n_0\,
      D => \count_reg[0]_i_2__1_n_4\,
      Q => \^enc_count[2]_2\(3),
      R => p_0_in
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__1_n_0\,
      D => \count_reg[4]_i_1__1_n_7\,
      Q => \^enc_count[2]_2\(4),
      R => p_0_in
    );
\count_reg[4]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_2__1_n_0\,
      CO(3) => \count_reg[4]_i_1__1_n_0\,
      CO(2) => \count_reg[4]_i_1__1_n_1\,
      CO(1) => \count_reg[4]_i_1__1_n_2\,
      CO(0) => \count_reg[4]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3) => \count[4]_i_2__1_n_0\,
      DI(2) => \count[4]_i_3__1_n_0\,
      DI(1) => \count[4]_i_4__1_n_0\,
      DI(0) => \count[4]_i_5__1_n_0\,
      O(3) => \count_reg[4]_i_1__1_n_4\,
      O(2) => \count_reg[4]_i_1__1_n_5\,
      O(1) => \count_reg[4]_i_1__1_n_6\,
      O(0) => \count_reg[4]_i_1__1_n_7\,
      S(3) => \count[4]_i_6__1_n_0\,
      S(2) => \count[4]_i_7__1_n_0\,
      S(1) => \count[4]_i_8__1_n_0\,
      S(0) => \count[4]_i_9__1_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__1_n_0\,
      D => \count_reg[4]_i_1__1_n_6\,
      Q => \^enc_count[2]_2\(5),
      R => p_0_in
    );
\count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__1_n_0\,
      D => \count_reg[4]_i_1__1_n_5\,
      Q => \^enc_count[2]_2\(6),
      R => p_0_in
    );
\count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__1_n_0\,
      D => \count_reg[4]_i_1__1_n_4\,
      Q => \^enc_count[2]_2\(7),
      R => p_0_in
    );
\count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__1_n_0\,
      D => \count_reg[8]_i_1__1_n_7\,
      Q => \^enc_count[2]_2\(8),
      R => p_0_in
    );
\count_reg[8]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1__1_n_0\,
      CO(3) => \count_reg[8]_i_1__1_n_0\,
      CO(2) => \count_reg[8]_i_1__1_n_1\,
      CO(1) => \count_reg[8]_i_1__1_n_2\,
      CO(0) => \count_reg[8]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3) => \count[8]_i_2__1_n_0\,
      DI(2) => \count[8]_i_3__1_n_0\,
      DI(1) => \count[8]_i_4__1_n_0\,
      DI(0) => \count[8]_i_5__1_n_0\,
      O(3) => \count_reg[8]_i_1__1_n_4\,
      O(2) => \count_reg[8]_i_1__1_n_5\,
      O(1) => \count_reg[8]_i_1__1_n_6\,
      O(0) => \count_reg[8]_i_1__1_n_7\,
      S(3) => \count[8]_i_6__1_n_0\,
      S(2) => \count[8]_i_7__1_n_0\,
      S(1) => \count[8]_i_8__1_n_0\,
      S(0) => \count[8]_i_9__1_n_0\
    );
\count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__1_n_0\,
      D => \count_reg[8]_i_1__1_n_6\,
      Q => \^enc_count[2]_2\(9),
      R => p_0_in
    );
\state_d_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \^d\(0),
      Q => state_d(0),
      S => p_0_in
    );
\state_d_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \^d\(1),
      Q => state_d(1),
      S => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fx_system_wrapper_0_1_quad_decoder_2 is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \s_axi_araddr[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \count_reg[15]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \a_sync_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[0]_0\ : out STD_LOGIC;
    \count_reg[13]_0\ : out STD_LOGIC;
    \count_reg[12]_0\ : out STD_LOGIC;
    \count_reg[11]_0\ : out STD_LOGIC;
    \count_reg[10]_0\ : out STD_LOGIC;
    \count_reg[9]_0\ : out STD_LOGIC;
    \count_reg[7]_0\ : out STD_LOGIC;
    \count_reg[6]_0\ : out STD_LOGIC;
    \count_reg[5]_0\ : out STD_LOGIC;
    \count_reg[3]_0\ : out STD_LOGIC;
    \count_reg[2]_0\ : out STD_LOGIC;
    \count_reg[1]_0\ : out STD_LOGIC;
    \cnt_b__0_10\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \cnt_a__0_11\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    p_0_in : in STD_LOGIC;
    clean_b_reg_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    clean_a_reg_0 : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_axi_rdata_reg[17]\ : in STD_LOGIC;
    \s_axi_rdata_reg[17]_0\ : in STD_LOGIC;
    \s_axi_rdata_reg[17]_1\ : in STD_LOGIC;
    \s_axi_rdata_reg[17]_2\ : in STD_LOGIC;
    \s_axi_rdata_reg[20]\ : in STD_LOGIC;
    \s_axi_rdata_reg[22]\ : in STD_LOGIC;
    \s_axi_rdata_reg[24]\ : in STD_LOGIC;
    \s_axi_rdata_reg[29]\ : in STD_LOGIC;
    \cnt_a_reg[0]_0\ : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    \s_axi_rdata_reg[14]\ : in STD_LOGIC;
    \s_axi_rdata_reg[14]_0\ : in STD_LOGIC;
    \s_axi_rdata_reg[8]\ : in STD_LOGIC;
    \s_axi_rdata_reg[8]_0\ : in STD_LOGIC;
    \s_axi_rdata_reg[4]\ : in STD_LOGIC;
    \s_axi_rdata_reg[4]_0\ : in STD_LOGIC;
    \enc_count[2]_2\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \enc_count[1]_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \enc_count[0]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    enc_b : in STD_LOGIC_VECTOR ( 0 to 0 );
    enc_a : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_fx_system_wrapper_0_1_quad_decoder_2 : entity is "quad_decoder";
end design_1_fx_system_wrapper_0_1_quad_decoder_2;

architecture STRUCTURE of design_1_fx_system_wrapper_0_1_quad_decoder_2 is
  signal \^d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^a_sync_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \cnt_a[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt_a[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt_a[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt_a[2]_i_2__2_n_0\ : STD_LOGIC;
  signal \^cnt_a__0_11\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \cnt_b[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt_b[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt_b[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt_b[2]_i_2__2_n_0\ : STD_LOGIC;
  signal \^cnt_b__0_10\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \count[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count[0]_i_3__2_n_0\ : STD_LOGIC;
  signal \count[0]_i_4__2_n_0\ : STD_LOGIC;
  signal \count[0]_i_5__2_n_0\ : STD_LOGIC;
  signal \count[0]_i_6__4_n_0\ : STD_LOGIC;
  signal \count[0]_i_7__2_n_0\ : STD_LOGIC;
  signal \count[0]_i_8__2_n_0\ : STD_LOGIC;
  signal \count[0]_i_9__2_n_0\ : STD_LOGIC;
  signal \count[12]_i_2__2_n_0\ : STD_LOGIC;
  signal \count[12]_i_3__2_n_0\ : STD_LOGIC;
  signal \count[12]_i_4__2_n_0\ : STD_LOGIC;
  signal \count[12]_i_5__2_n_0\ : STD_LOGIC;
  signal \count[12]_i_6__2_n_0\ : STD_LOGIC;
  signal \count[12]_i_7__2_n_0\ : STD_LOGIC;
  signal \count[12]_i_8__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_2__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_3__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_4__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_5__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_6__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_7__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_8__2_n_0\ : STD_LOGIC;
  signal \count[4]_i_9__2_n_0\ : STD_LOGIC;
  signal \count[8]_i_2__2_n_0\ : STD_LOGIC;
  signal \count[8]_i_3__2_n_0\ : STD_LOGIC;
  signal \count[8]_i_4__2_n_0\ : STD_LOGIC;
  signal \count[8]_i_5__2_n_0\ : STD_LOGIC;
  signal \count[8]_i_6__2_n_0\ : STD_LOGIC;
  signal \count[8]_i_7__2_n_0\ : STD_LOGIC;
  signal \count[8]_i_8__2_n_0\ : STD_LOGIC;
  signal \count[8]_i_9__2_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_2__2_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_2__2_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_2__2_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_2__2_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_2__2_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_2__2_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_2__2_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_2__2_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1__2_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1__2_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1__2_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1__2_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1__2_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1__2_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1__2_n_7\ : STD_LOGIC;
  signal \^count_reg[15]_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1__2_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1__2_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1__2_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1__2_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1__2_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1__2_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1__2_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1__2_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1__2_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1__2_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1__2_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1__2_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1__2_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1__2_n_7\ : STD_LOGIC;
  signal \enc_count[3]_3\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \s_axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal state_d : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_count_reg[12]_i_1__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_a[0]_i_1__2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt_a[2]_i_2__2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt_b[0]_i_1__2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt_b[2]_i_2__2\ : label is "soft_lutpair6";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_reg[0]_i_2__2\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[12]_i_1__2\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[4]_i_1__2\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[8]_i_1__2\ : label is 11;
begin
  D(1 downto 0) <= \^d\(1 downto 0);
  Q(0) <= \^q\(0);
  \a_sync_reg[1]_0\(0) <= \^a_sync_reg[1]_0\(0);
  \cnt_a__0_11\(2 downto 0) <= \^cnt_a__0_11\(2 downto 0);
  \cnt_b__0_10\(2 downto 0) <= \^cnt_b__0_10\(2 downto 0);
  \count_reg[15]_0\ <= \^count_reg[15]_0\;
\a_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => enc_a(0),
      Q => \p_0_in__0\(1),
      R => '0'
    );
\a_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => \^a_sync_reg[1]_0\(0),
      R => '0'
    );
\b_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => enc_b(0),
      Q => p_0_in_0(1),
      R => '0'
    );
\b_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in_0(1),
      Q => \^q\(0),
      R => '0'
    );
clean_a_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => clean_a_reg_0,
      Q => \^d\(1),
      S => p_0_in
    );
clean_b_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => clean_b_reg_0,
      Q => \^d\(0),
      S => p_0_in
    );
\cnt_a[0]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08484808"
    )
        port map (
      I0 => \^cnt_a__0_11\(0),
      I1 => rst_n,
      I2 => \cnt_a_reg[0]_0\,
      I3 => \^d\(1),
      I4 => \^a_sync_reg[1]_0\(0),
      O => \cnt_a[0]_i_1__2_n_0\
    );
\cnt_a[1]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A060A060A000A0"
    )
        port map (
      I0 => \^cnt_a__0_11\(1),
      I1 => \^cnt_a__0_11\(0),
      I2 => rst_n,
      I3 => \cnt_a_reg[0]_0\,
      I4 => \^d\(1),
      I5 => \^a_sync_reg[1]_0\(0),
      O => \cnt_a[1]_i_1__2_n_0\
    );
\cnt_a[2]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \^cnt_a__0_11\(2),
      I1 => \cnt_a_reg[0]_0\,
      I2 => \^cnt_a__0_11\(0),
      I3 => \^cnt_a__0_11\(1),
      I4 => \cnt_a[2]_i_2__2_n_0\,
      O => \cnt_a[2]_i_1__2_n_0\
    );
\cnt_a[2]_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"90FF"
    )
        port map (
      I0 => \^a_sync_reg[1]_0\(0),
      I1 => \^d\(1),
      I2 => \cnt_a_reg[0]_0\,
      I3 => rst_n,
      O => \cnt_a[2]_i_2__2_n_0\
    );
\cnt_a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_a[0]_i_1__2_n_0\,
      Q => \^cnt_a__0_11\(0),
      R => '0'
    );
\cnt_a_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_a[1]_i_1__2_n_0\,
      Q => \^cnt_a__0_11\(1),
      R => '0'
    );
\cnt_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_a[2]_i_1__2_n_0\,
      Q => \^cnt_a__0_11\(2),
      R => '0'
    );
\cnt_b[0]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08484808"
    )
        port map (
      I0 => \^cnt_b__0_10\(0),
      I1 => rst_n,
      I2 => \cnt_a_reg[0]_0\,
      I3 => \^d\(0),
      I4 => \^q\(0),
      O => \cnt_b[0]_i_1__2_n_0\
    );
\cnt_b[1]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A060A060A000A0"
    )
        port map (
      I0 => \^cnt_b__0_10\(1),
      I1 => \^cnt_b__0_10\(0),
      I2 => rst_n,
      I3 => \cnt_a_reg[0]_0\,
      I4 => \^d\(0),
      I5 => \^q\(0),
      O => \cnt_b[1]_i_1__2_n_0\
    );
\cnt_b[2]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \^cnt_b__0_10\(2),
      I1 => \cnt_a_reg[0]_0\,
      I2 => \^cnt_b__0_10\(0),
      I3 => \^cnt_b__0_10\(1),
      I4 => \cnt_b[2]_i_2__2_n_0\,
      O => \cnt_b[2]_i_1__2_n_0\
    );
\cnt_b[2]_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"90FF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^d\(0),
      I2 => \cnt_a_reg[0]_0\,
      I3 => rst_n,
      O => \cnt_b[2]_i_2__2_n_0\
    );
\cnt_b_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_b[0]_i_1__2_n_0\,
      Q => \^cnt_b__0_10\(0),
      R => '0'
    );
\cnt_b_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_b[1]_i_1__2_n_0\,
      Q => \^cnt_b__0_10\(1),
      R => '0'
    );
\cnt_b_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_b[2]_i_1__2_n_0\,
      Q => \^cnt_b__0_10\(2),
      R => '0'
    );
\count[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6000"
    )
        port map (
      I0 => state_d(0),
      I1 => state_d(1),
      I2 => \^d\(1),
      I3 => \^d\(0),
      O => \count[0]_i_1__2_n_0\
    );
\count[0]_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[0]_i_3__2_n_0\
    );
\count[0]_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[0]_i_4__2_n_0\
    );
\count[0]_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[0]_i_5__2_n_0\
    );
\count[0]_i_6__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \enc_count[3]_3\(3),
      O => \count[0]_i_6__4_n_0\
    );
\count[0]_i_7__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \enc_count[3]_3\(2),
      O => \count[0]_i_7__2_n_0\
    );
\count[0]_i_8__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \enc_count[3]_3\(1),
      O => \count[0]_i_8__2_n_0\
    );
\count[0]_i_9__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \enc_count[3]_3\(0),
      O => \count[0]_i_9__2_n_0\
    );
\count[12]_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[12]_i_2__2_n_0\
    );
\count[12]_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[12]_i_3__2_n_0\
    );
\count[12]_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[12]_i_4__2_n_0\
    );
\count[12]_i_5__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => \enc_count[3]_3\(15),
      I1 => state_d(1),
      I2 => state_d(0),
      O => \count[12]_i_5__2_n_0\
    );
\count[12]_i_6__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \enc_count[3]_3\(14),
      O => \count[12]_i_6__2_n_0\
    );
\count[12]_i_7__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \enc_count[3]_3\(13),
      O => \count[12]_i_7__2_n_0\
    );
\count[12]_i_8__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \enc_count[3]_3\(12),
      O => \count[12]_i_8__2_n_0\
    );
\count[4]_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[4]_i_2__2_n_0\
    );
\count[4]_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[4]_i_3__2_n_0\
    );
\count[4]_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[4]_i_4__2_n_0\
    );
\count[4]_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[4]_i_5__2_n_0\
    );
\count[4]_i_6__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \enc_count[3]_3\(7),
      O => \count[4]_i_6__2_n_0\
    );
\count[4]_i_7__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \enc_count[3]_3\(6),
      O => \count[4]_i_7__2_n_0\
    );
\count[4]_i_8__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \enc_count[3]_3\(5),
      O => \count[4]_i_8__2_n_0\
    );
\count[4]_i_9__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \enc_count[3]_3\(4),
      O => \count[4]_i_9__2_n_0\
    );
\count[8]_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[8]_i_2__2_n_0\
    );
\count[8]_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[8]_i_3__2_n_0\
    );
\count[8]_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[8]_i_4__2_n_0\
    );
\count[8]_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      O => \count[8]_i_5__2_n_0\
    );
\count[8]_i_6__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \enc_count[3]_3\(11),
      O => \count[8]_i_6__2_n_0\
    );
\count[8]_i_7__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \enc_count[3]_3\(10),
      O => \count[8]_i_7__2_n_0\
    );
\count[8]_i_8__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \enc_count[3]_3\(9),
      O => \count[8]_i_8__2_n_0\
    );
\count[8]_i_9__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \enc_count[3]_3\(8),
      O => \count[8]_i_9__2_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__2_n_0\,
      D => \count_reg[0]_i_2__2_n_7\,
      Q => \enc_count[3]_3\(0),
      R => p_0_in
    );
\count_reg[0]_i_2__2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_2__2_n_0\,
      CO(2) => \count_reg[0]_i_2__2_n_1\,
      CO(1) => \count_reg[0]_i_2__2_n_2\,
      CO(0) => \count_reg[0]_i_2__2_n_3\,
      CYINIT => '0',
      DI(3) => \count[0]_i_3__2_n_0\,
      DI(2) => \count[0]_i_4__2_n_0\,
      DI(1) => \count[0]_i_5__2_n_0\,
      DI(0) => '1',
      O(3) => \count_reg[0]_i_2__2_n_4\,
      O(2) => \count_reg[0]_i_2__2_n_5\,
      O(1) => \count_reg[0]_i_2__2_n_6\,
      O(0) => \count_reg[0]_i_2__2_n_7\,
      S(3) => \count[0]_i_6__4_n_0\,
      S(2) => \count[0]_i_7__2_n_0\,
      S(1) => \count[0]_i_8__2_n_0\,
      S(0) => \count[0]_i_9__2_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__2_n_0\,
      D => \count_reg[8]_i_1__2_n_5\,
      Q => \enc_count[3]_3\(10),
      R => p_0_in
    );
\count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__2_n_0\,
      D => \count_reg[8]_i_1__2_n_4\,
      Q => \enc_count[3]_3\(11),
      R => p_0_in
    );
\count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__2_n_0\,
      D => \count_reg[12]_i_1__2_n_7\,
      Q => \enc_count[3]_3\(12),
      R => p_0_in
    );
\count_reg[12]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1__2_n_0\,
      CO(3) => \NLW_count_reg[12]_i_1__2_CO_UNCONNECTED\(3),
      CO(2) => \count_reg[12]_i_1__2_n_1\,
      CO(1) => \count_reg[12]_i_1__2_n_2\,
      CO(0) => \count_reg[12]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \count[12]_i_2__2_n_0\,
      DI(1) => \count[12]_i_3__2_n_0\,
      DI(0) => \count[12]_i_4__2_n_0\,
      O(3) => \count_reg[12]_i_1__2_n_4\,
      O(2) => \count_reg[12]_i_1__2_n_5\,
      O(1) => \count_reg[12]_i_1__2_n_6\,
      O(0) => \count_reg[12]_i_1__2_n_7\,
      S(3) => \count[12]_i_5__2_n_0\,
      S(2) => \count[12]_i_6__2_n_0\,
      S(1) => \count[12]_i_7__2_n_0\,
      S(0) => \count[12]_i_8__2_n_0\
    );
\count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__2_n_0\,
      D => \count_reg[12]_i_1__2_n_6\,
      Q => \enc_count[3]_3\(13),
      R => p_0_in
    );
\count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__2_n_0\,
      D => \count_reg[12]_i_1__2_n_5\,
      Q => \enc_count[3]_3\(14),
      R => p_0_in
    );
\count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__2_n_0\,
      D => \count_reg[12]_i_1__2_n_4\,
      Q => \enc_count[3]_3\(15),
      R => p_0_in
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__2_n_0\,
      D => \count_reg[0]_i_2__2_n_6\,
      Q => \enc_count[3]_3\(1),
      R => p_0_in
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__2_n_0\,
      D => \count_reg[0]_i_2__2_n_5\,
      Q => \enc_count[3]_3\(2),
      R => p_0_in
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__2_n_0\,
      D => \count_reg[0]_i_2__2_n_4\,
      Q => \enc_count[3]_3\(3),
      R => p_0_in
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__2_n_0\,
      D => \count_reg[4]_i_1__2_n_7\,
      Q => \enc_count[3]_3\(4),
      R => p_0_in
    );
\count_reg[4]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_2__2_n_0\,
      CO(3) => \count_reg[4]_i_1__2_n_0\,
      CO(2) => \count_reg[4]_i_1__2_n_1\,
      CO(1) => \count_reg[4]_i_1__2_n_2\,
      CO(0) => \count_reg[4]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3) => \count[4]_i_2__2_n_0\,
      DI(2) => \count[4]_i_3__2_n_0\,
      DI(1) => \count[4]_i_4__2_n_0\,
      DI(0) => \count[4]_i_5__2_n_0\,
      O(3) => \count_reg[4]_i_1__2_n_4\,
      O(2) => \count_reg[4]_i_1__2_n_5\,
      O(1) => \count_reg[4]_i_1__2_n_6\,
      O(0) => \count_reg[4]_i_1__2_n_7\,
      S(3) => \count[4]_i_6__2_n_0\,
      S(2) => \count[4]_i_7__2_n_0\,
      S(1) => \count[4]_i_8__2_n_0\,
      S(0) => \count[4]_i_9__2_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__2_n_0\,
      D => \count_reg[4]_i_1__2_n_6\,
      Q => \enc_count[3]_3\(5),
      R => p_0_in
    );
\count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__2_n_0\,
      D => \count_reg[4]_i_1__2_n_5\,
      Q => \enc_count[3]_3\(6),
      R => p_0_in
    );
\count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__2_n_0\,
      D => \count_reg[4]_i_1__2_n_4\,
      Q => \enc_count[3]_3\(7),
      R => p_0_in
    );
\count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__2_n_0\,
      D => \count_reg[8]_i_1__2_n_7\,
      Q => \enc_count[3]_3\(8),
      R => p_0_in
    );
\count_reg[8]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1__2_n_0\,
      CO(3) => \count_reg[8]_i_1__2_n_0\,
      CO(2) => \count_reg[8]_i_1__2_n_1\,
      CO(1) => \count_reg[8]_i_1__2_n_2\,
      CO(0) => \count_reg[8]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3) => \count[8]_i_2__2_n_0\,
      DI(2) => \count[8]_i_3__2_n_0\,
      DI(1) => \count[8]_i_4__2_n_0\,
      DI(0) => \count[8]_i_5__2_n_0\,
      O(3) => \count_reg[8]_i_1__2_n_4\,
      O(2) => \count_reg[8]_i_1__2_n_5\,
      O(1) => \count_reg[8]_i_1__2_n_6\,
      O(0) => \count_reg[8]_i_1__2_n_7\,
      S(3) => \count[8]_i_6__2_n_0\,
      S(2) => \count[8]_i_7__2_n_0\,
      S(1) => \count[8]_i_8__2_n_0\,
      S(0) => \count[8]_i_9__2_n_0\
    );
\count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__2_n_0\,
      D => \count_reg[8]_i_1__2_n_6\,
      Q => \enc_count[3]_3\(9),
      R => p_0_in
    );
\s_axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \enc_count[3]_3\(0),
      I1 => \enc_count[2]_2\(0),
      I2 => s_axi_araddr(1),
      I3 => \enc_count[1]_1\(0),
      I4 => s_axi_araddr(0),
      I5 => \enc_count[0]_0\(0),
      O => \count_reg[0]_0\
    );
\s_axi_rdata[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \enc_count[3]_3\(10),
      I1 => \enc_count[2]_2\(10),
      I2 => s_axi_araddr(1),
      I3 => \enc_count[1]_1\(10),
      I4 => s_axi_araddr(0),
      I5 => \enc_count[0]_0\(10),
      O => \count_reg[10]_0\
    );
\s_axi_rdata[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \enc_count[3]_3\(11),
      I1 => \enc_count[2]_2\(11),
      I2 => s_axi_araddr(1),
      I3 => \enc_count[1]_1\(11),
      I4 => s_axi_araddr(0),
      I5 => \enc_count[0]_0\(11),
      O => \count_reg[11]_0\
    );
\s_axi_rdata[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \enc_count[3]_3\(12),
      I1 => \enc_count[2]_2\(12),
      I2 => s_axi_araddr(1),
      I3 => \enc_count[1]_1\(12),
      I4 => s_axi_araddr(0),
      I5 => \enc_count[0]_0\(12),
      O => \count_reg[12]_0\
    );
\s_axi_rdata[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \enc_count[3]_3\(13),
      I1 => \enc_count[2]_2\(13),
      I2 => s_axi_araddr(1),
      I3 => \enc_count[1]_1\(13),
      I4 => s_axi_araddr(0),
      I5 => \enc_count[0]_0\(13),
      O => \count_reg[13]_0\
    );
\s_axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5404000055555555"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => \s_axi_rdata[14]_i_2_n_0\,
      I2 => \s_axi_rdata_reg[17]\,
      I3 => \s_axi_rdata_reg[14]\,
      I4 => \s_axi_rdata_reg[17]_1\,
      I5 => \s_axi_rdata_reg[14]_0\,
      O => \s_axi_araddr[7]\(2)
    );
\s_axi_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \enc_count[3]_3\(14),
      I1 => \enc_count[2]_2\(14),
      I2 => s_axi_araddr(1),
      I3 => \enc_count[1]_1\(14),
      I4 => s_axi_araddr(0),
      I5 => \enc_count[0]_0\(14),
      O => \s_axi_rdata[14]_i_2_n_0\
    );
\s_axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5404000055555555"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => \^count_reg[15]_0\,
      I2 => \s_axi_rdata_reg[17]\,
      I3 => \s_axi_rdata_reg[17]_0\,
      I4 => \s_axi_rdata_reg[17]_1\,
      I5 => \s_axi_rdata_reg[17]_2\,
      O => \s_axi_araddr[7]\(3)
    );
\s_axi_rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \enc_count[3]_3\(1),
      I1 => \enc_count[2]_2\(1),
      I2 => s_axi_araddr(1),
      I3 => \enc_count[1]_1\(1),
      I4 => s_axi_araddr(0),
      I5 => \enc_count[0]_0\(1),
      O => \count_reg[1]_0\
    );
\s_axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5404000055555555"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => \^count_reg[15]_0\,
      I2 => \s_axi_rdata_reg[17]\,
      I3 => \s_axi_rdata_reg[20]\,
      I4 => \s_axi_rdata_reg[17]_1\,
      I5 => \s_axi_rdata_reg[17]_2\,
      O => \s_axi_araddr[7]\(4)
    );
\s_axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5404000055555555"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => \^count_reg[15]_0\,
      I2 => \s_axi_rdata_reg[17]\,
      I3 => \s_axi_rdata_reg[22]\,
      I4 => \s_axi_rdata_reg[17]_1\,
      I5 => \s_axi_rdata_reg[17]_2\,
      O => \s_axi_araddr[7]\(5)
    );
\s_axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5404000055555555"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => \^count_reg[15]_0\,
      I2 => \s_axi_rdata_reg[17]\,
      I3 => \s_axi_rdata_reg[24]\,
      I4 => \s_axi_rdata_reg[17]_1\,
      I5 => \s_axi_rdata_reg[17]_2\,
      O => \s_axi_araddr[7]\(6)
    );
\s_axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5404000055555555"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => \^count_reg[15]_0\,
      I2 => \s_axi_rdata_reg[17]\,
      I3 => \s_axi_rdata_reg[29]\,
      I4 => \s_axi_rdata_reg[17]_1\,
      I5 => \s_axi_rdata_reg[17]_2\,
      O => \s_axi_araddr[7]\(7)
    );
\s_axi_rdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \enc_count[3]_3\(2),
      I1 => \enc_count[2]_2\(2),
      I2 => s_axi_araddr(1),
      I3 => \enc_count[1]_1\(2),
      I4 => s_axi_araddr(0),
      I5 => \enc_count[0]_0\(2),
      O => \count_reg[2]_0\
    );
\s_axi_rdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \enc_count[3]_3\(15),
      I1 => \enc_count[2]_2\(15),
      I2 => s_axi_araddr(1),
      I3 => \enc_count[1]_1\(15),
      I4 => s_axi_araddr(0),
      I5 => \enc_count[0]_0\(15),
      O => \^count_reg[15]_0\
    );
\s_axi_rdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \enc_count[3]_3\(3),
      I1 => \enc_count[2]_2\(3),
      I2 => s_axi_araddr(1),
      I3 => \enc_count[1]_1\(3),
      I4 => s_axi_araddr(0),
      I5 => \enc_count[0]_0\(3),
      O => \count_reg[3]_0\
    );
\s_axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5404000055555555"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => \s_axi_rdata[4]_i_2_n_0\,
      I2 => \s_axi_rdata_reg[17]\,
      I3 => \s_axi_rdata_reg[4]\,
      I4 => \s_axi_rdata_reg[17]_1\,
      I5 => \s_axi_rdata_reg[4]_0\,
      O => \s_axi_araddr[7]\(0)
    );
\s_axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \enc_count[3]_3\(4),
      I1 => \enc_count[2]_2\(4),
      I2 => s_axi_araddr(1),
      I3 => \enc_count[1]_1\(4),
      I4 => s_axi_araddr(0),
      I5 => \enc_count[0]_0\(4),
      O => \s_axi_rdata[4]_i_2_n_0\
    );
\s_axi_rdata[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \enc_count[3]_3\(5),
      I1 => \enc_count[2]_2\(5),
      I2 => s_axi_araddr(1),
      I3 => \enc_count[1]_1\(5),
      I4 => s_axi_araddr(0),
      I5 => \enc_count[0]_0\(5),
      O => \count_reg[5]_0\
    );
\s_axi_rdata[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \enc_count[3]_3\(6),
      I1 => \enc_count[2]_2\(6),
      I2 => s_axi_araddr(1),
      I3 => \enc_count[1]_1\(6),
      I4 => s_axi_araddr(0),
      I5 => \enc_count[0]_0\(6),
      O => \count_reg[6]_0\
    );
\s_axi_rdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \enc_count[3]_3\(7),
      I1 => \enc_count[2]_2\(7),
      I2 => s_axi_araddr(1),
      I3 => \enc_count[1]_1\(7),
      I4 => s_axi_araddr(0),
      I5 => \enc_count[0]_0\(7),
      O => \count_reg[7]_0\
    );
\s_axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5404000055555555"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => \s_axi_rdata[8]_i_2_n_0\,
      I2 => \s_axi_rdata_reg[17]\,
      I3 => \s_axi_rdata_reg[8]\,
      I4 => \s_axi_rdata_reg[17]_1\,
      I5 => \s_axi_rdata_reg[8]_0\,
      O => \s_axi_araddr[7]\(1)
    );
\s_axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \enc_count[3]_3\(8),
      I1 => \enc_count[2]_2\(8),
      I2 => s_axi_araddr(1),
      I3 => \enc_count[1]_1\(8),
      I4 => s_axi_araddr(0),
      I5 => \enc_count[0]_0\(8),
      O => \s_axi_rdata[8]_i_2_n_0\
    );
\s_axi_rdata[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \enc_count[3]_3\(9),
      I1 => \enc_count[2]_2\(9),
      I2 => s_axi_araddr(1),
      I3 => \enc_count[1]_1\(9),
      I4 => s_axi_araddr(0),
      I5 => \enc_count[0]_0\(9),
      O => \count_reg[9]_0\
    );
\state_d_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \^d\(0),
      Q => state_d(0),
      S => p_0_in
    );
\state_d_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \^d\(1),
      Q => state_d(1),
      S => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fx_system_wrapper_0_1_quad_decoder_3 is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg[15]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_araddr[7]\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \a_sync_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cnt_b__0_12\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \cnt_a__0_13\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    p_0_in : in STD_LOGIC;
    clean_b_reg_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    clean_a_reg_0 : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_rdata_reg[0]\ : in STD_LOGIC;
    \s_axi_rdata_reg[0]_0\ : in STD_LOGIC;
    \s_axi_rdata_reg[0]_1\ : in STD_LOGIC;
    \s_axi_rdata_reg[0]_2\ : in STD_LOGIC;
    \cnt_a_reg[0]_0\ : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    \s_axi_rdata_reg[1]\ : in STD_LOGIC;
    \s_axi_rdata_reg[1]_0\ : in STD_LOGIC;
    \s_axi_rdata_reg[2]\ : in STD_LOGIC;
    \s_axi_rdata_reg[2]_0\ : in STD_LOGIC;
    \s_axi_rdata_reg[3]\ : in STD_LOGIC;
    \s_axi_rdata_reg[3]_0\ : in STD_LOGIC;
    \s_axi_rdata_reg[5]\ : in STD_LOGIC;
    \s_axi_rdata_reg[5]_0\ : in STD_LOGIC;
    \s_axi_rdata_reg[6]\ : in STD_LOGIC;
    \s_axi_rdata_reg[6]_0\ : in STD_LOGIC;
    \s_axi_rdata_reg[7]\ : in STD_LOGIC;
    \s_axi_rdata_reg[7]_0\ : in STD_LOGIC;
    \s_axi_rdata_reg[9]\ : in STD_LOGIC;
    \s_axi_rdata_reg[9]_0\ : in STD_LOGIC;
    \s_axi_rdata_reg[10]\ : in STD_LOGIC;
    \s_axi_rdata_reg[10]_0\ : in STD_LOGIC;
    \s_axi_rdata_reg[11]\ : in STD_LOGIC;
    \s_axi_rdata_reg[11]_0\ : in STD_LOGIC;
    \s_axi_rdata_reg[12]\ : in STD_LOGIC;
    \s_axi_rdata_reg[12]_0\ : in STD_LOGIC;
    \s_axi_rdata_reg[13]\ : in STD_LOGIC;
    \s_axi_rdata_reg[13]_0\ : in STD_LOGIC;
    \enc_count[5]_5\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    enc_b : in STD_LOGIC_VECTOR ( 0 to 0 );
    enc_a : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_fx_system_wrapper_0_1_quad_decoder_3 : entity is "quad_decoder";
end design_1_fx_system_wrapper_0_1_quad_decoder_3;

architecture STRUCTURE of design_1_fx_system_wrapper_0_1_quad_decoder_3 is
  signal \^d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^a_sync_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \cnt_a[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \cnt_a[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \cnt_a[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \cnt_a[2]_i_2__3_n_0\ : STD_LOGIC;
  signal \^cnt_a__0_13\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \cnt_b[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \cnt_b[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \cnt_b[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \cnt_b[2]_i_2__3_n_0\ : STD_LOGIC;
  signal \^cnt_b__0_12\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \count[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \count[0]_i_3__3_n_0\ : STD_LOGIC;
  signal \count[0]_i_4__3_n_0\ : STD_LOGIC;
  signal \count[0]_i_5__3_n_0\ : STD_LOGIC;
  signal \count[0]_i_6_n_0\ : STD_LOGIC;
  signal \count[12]_i_2__3_n_0\ : STD_LOGIC;
  signal \count[12]_i_3__3_n_0\ : STD_LOGIC;
  signal \count[12]_i_4__3_n_0\ : STD_LOGIC;
  signal \count[12]_i_5__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_2__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_3__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_4__3_n_0\ : STD_LOGIC;
  signal \count[4]_i_5__3_n_0\ : STD_LOGIC;
  signal \count[8]_i_2__3_n_0\ : STD_LOGIC;
  signal \count[8]_i_3__3_n_0\ : STD_LOGIC;
  signal \count[8]_i_4__3_n_0\ : STD_LOGIC;
  signal \count[8]_i_5__3_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_2__3_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_2__3_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_2__3_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_2__3_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_2__3_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_2__3_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_2__3_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_2__3_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1__3_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1__3_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1__3_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1__3_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1__3_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1__3_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1__3_n_7\ : STD_LOGIC;
  signal \^count_reg[15]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_reg[4]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1__3_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1__3_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1__3_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1__3_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1__3_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1__3_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1__3_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1__3_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1__3_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1__3_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1__3_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1__3_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1__3_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1__3_n_7\ : STD_LOGIC;
  signal \enc_count[4]_4\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \s_axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal state_d : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_count_reg[12]_i_1__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_a[0]_i_1__3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt_a[2]_i_2__3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt_b[0]_i_1__3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt_b[2]_i_2__3\ : label is "soft_lutpair8";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_reg[0]_i_2__3\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[12]_i_1__3\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[4]_i_1__3\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[8]_i_1__3\ : label is 11;
begin
  D(1 downto 0) <= \^d\(1 downto 0);
  Q(0) <= \^q\(0);
  \a_sync_reg[1]_0\(0) <= \^a_sync_reg[1]_0\(0);
  \cnt_a__0_13\(2 downto 0) <= \^cnt_a__0_13\(2 downto 0);
  \cnt_b__0_12\(2 downto 0) <= \^cnt_b__0_12\(2 downto 0);
  \count_reg[15]_0\(3 downto 0) <= \^count_reg[15]_0\(3 downto 0);
\a_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => enc_a(0),
      Q => \p_0_in__0\(1),
      R => '0'
    );
\a_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => \^a_sync_reg[1]_0\(0),
      R => '0'
    );
\b_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => enc_b(0),
      Q => p_0_in_0(1),
      R => '0'
    );
\b_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in_0(1),
      Q => \^q\(0),
      R => '0'
    );
clean_a_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => clean_a_reg_0,
      Q => \^d\(1),
      S => p_0_in
    );
clean_b_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => clean_b_reg_0,
      Q => \^d\(0),
      S => p_0_in
    );
\cnt_a[0]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08484808"
    )
        port map (
      I0 => \^cnt_a__0_13\(0),
      I1 => rst_n,
      I2 => \cnt_a_reg[0]_0\,
      I3 => \^d\(1),
      I4 => \^a_sync_reg[1]_0\(0),
      O => \cnt_a[0]_i_1__3_n_0\
    );
\cnt_a[1]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A060A060A000A0"
    )
        port map (
      I0 => \^cnt_a__0_13\(1),
      I1 => \^cnt_a__0_13\(0),
      I2 => rst_n,
      I3 => \cnt_a_reg[0]_0\,
      I4 => \^d\(1),
      I5 => \^a_sync_reg[1]_0\(0),
      O => \cnt_a[1]_i_1__3_n_0\
    );
\cnt_a[2]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \^cnt_a__0_13\(2),
      I1 => \cnt_a_reg[0]_0\,
      I2 => \^cnt_a__0_13\(0),
      I3 => \^cnt_a__0_13\(1),
      I4 => \cnt_a[2]_i_2__3_n_0\,
      O => \cnt_a[2]_i_1__3_n_0\
    );
\cnt_a[2]_i_2__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"90FF"
    )
        port map (
      I0 => \^a_sync_reg[1]_0\(0),
      I1 => \^d\(1),
      I2 => \cnt_a_reg[0]_0\,
      I3 => rst_n,
      O => \cnt_a[2]_i_2__3_n_0\
    );
\cnt_a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_a[0]_i_1__3_n_0\,
      Q => \^cnt_a__0_13\(0),
      R => '0'
    );
\cnt_a_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_a[1]_i_1__3_n_0\,
      Q => \^cnt_a__0_13\(1),
      R => '0'
    );
\cnt_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_a[2]_i_1__3_n_0\,
      Q => \^cnt_a__0_13\(2),
      R => '0'
    );
\cnt_b[0]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08484808"
    )
        port map (
      I0 => \^cnt_b__0_12\(0),
      I1 => rst_n,
      I2 => \cnt_a_reg[0]_0\,
      I3 => \^d\(0),
      I4 => \^q\(0),
      O => \cnt_b[0]_i_1__3_n_0\
    );
\cnt_b[1]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A060A060A000A0"
    )
        port map (
      I0 => \^cnt_b__0_12\(1),
      I1 => \^cnt_b__0_12\(0),
      I2 => rst_n,
      I3 => \cnt_a_reg[0]_0\,
      I4 => \^d\(0),
      I5 => \^q\(0),
      O => \cnt_b[1]_i_1__3_n_0\
    );
\cnt_b[2]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \^cnt_b__0_12\(2),
      I1 => \cnt_a_reg[0]_0\,
      I2 => \^cnt_b__0_12\(0),
      I3 => \^cnt_b__0_12\(1),
      I4 => \cnt_b[2]_i_2__3_n_0\,
      O => \cnt_b[2]_i_1__3_n_0\
    );
\cnt_b[2]_i_2__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"90FF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^d\(0),
      I2 => \cnt_a_reg[0]_0\,
      I3 => rst_n,
      O => \cnt_b[2]_i_2__3_n_0\
    );
\cnt_b_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_b[0]_i_1__3_n_0\,
      Q => \^cnt_b__0_12\(0),
      R => '0'
    );
\cnt_b_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_b[1]_i_1__3_n_0\,
      Q => \^cnt_b__0_12\(1),
      R => '0'
    );
\cnt_b_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_b[2]_i_1__3_n_0\,
      Q => \^cnt_b__0_12\(2),
      R => '0'
    );
\count[0]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6000"
    )
        port map (
      I0 => state_d(0),
      I1 => state_d(1),
      I2 => \^d\(1),
      I3 => \^d\(0),
      O => \count[0]_i_1__3_n_0\
    );
\count[0]_i_3__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \enc_count[4]_4\(3),
      O => \count[0]_i_3__3_n_0\
    );
\count[0]_i_4__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \enc_count[4]_4\(2),
      O => \count[0]_i_4__3_n_0\
    );
\count[0]_i_5__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \enc_count[4]_4\(1),
      O => \count[0]_i_5__3_n_0\
    );
\count[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \enc_count[4]_4\(0),
      O => \count[0]_i_6_n_0\
    );
\count[12]_i_2__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => \^count_reg[15]_0\(3),
      I1 => state_d(1),
      I2 => state_d(0),
      O => \count[12]_i_2__3_n_0\
    );
\count[12]_i_3__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^count_reg[15]_0\(2),
      O => \count[12]_i_3__3_n_0\
    );
\count[12]_i_4__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \enc_count[4]_4\(13),
      O => \count[12]_i_4__3_n_0\
    );
\count[12]_i_5__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \enc_count[4]_4\(12),
      O => \count[12]_i_5__3_n_0\
    );
\count[4]_i_2__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \enc_count[4]_4\(7),
      O => \count[4]_i_2__3_n_0\
    );
\count[4]_i_3__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \enc_count[4]_4\(6),
      O => \count[4]_i_3__3_n_0\
    );
\count[4]_i_4__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \enc_count[4]_4\(5),
      O => \count[4]_i_4__3_n_0\
    );
\count[4]_i_5__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^count_reg[15]_0\(0),
      O => \count[4]_i_5__3_n_0\
    );
\count[8]_i_2__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \enc_count[4]_4\(11),
      O => \count[8]_i_2__3_n_0\
    );
\count[8]_i_3__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \enc_count[4]_4\(10),
      O => \count[8]_i_3__3_n_0\
    );
\count[8]_i_4__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \enc_count[4]_4\(9),
      O => \count[8]_i_4__3_n_0\
    );
\count[8]_i_5__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^count_reg[15]_0\(1),
      O => \count[8]_i_5__3_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__3_n_0\,
      D => \count_reg[0]_i_2__3_n_7\,
      Q => \enc_count[4]_4\(0),
      R => p_0_in
    );
\count_reg[0]_i_2__3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_2__3_n_0\,
      CO(2) => \count_reg[0]_i_2__3_n_1\,
      CO(1) => \count_reg[0]_i_2__3_n_2\,
      CO(0) => \count_reg[0]_i_2__3_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => \enc_count[4]_4\(3 downto 1),
      DI(0) => '1',
      O(3) => \count_reg[0]_i_2__3_n_4\,
      O(2) => \count_reg[0]_i_2__3_n_5\,
      O(1) => \count_reg[0]_i_2__3_n_6\,
      O(0) => \count_reg[0]_i_2__3_n_7\,
      S(3) => \count[0]_i_3__3_n_0\,
      S(2) => \count[0]_i_4__3_n_0\,
      S(1) => \count[0]_i_5__3_n_0\,
      S(0) => \count[0]_i_6_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__3_n_0\,
      D => \count_reg[8]_i_1__3_n_5\,
      Q => \enc_count[4]_4\(10),
      R => p_0_in
    );
\count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__3_n_0\,
      D => \count_reg[8]_i_1__3_n_4\,
      Q => \enc_count[4]_4\(11),
      R => p_0_in
    );
\count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__3_n_0\,
      D => \count_reg[12]_i_1__3_n_7\,
      Q => \enc_count[4]_4\(12),
      R => p_0_in
    );
\count_reg[12]_i_1__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1__3_n_0\,
      CO(3) => \NLW_count_reg[12]_i_1__3_CO_UNCONNECTED\(3),
      CO(2) => \count_reg[12]_i_1__3_n_1\,
      CO(1) => \count_reg[12]_i_1__3_n_2\,
      CO(0) => \count_reg[12]_i_1__3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \^count_reg[15]_0\(2),
      DI(1 downto 0) => \enc_count[4]_4\(13 downto 12),
      O(3) => \count_reg[12]_i_1__3_n_4\,
      O(2) => \count_reg[12]_i_1__3_n_5\,
      O(1) => \count_reg[12]_i_1__3_n_6\,
      O(0) => \count_reg[12]_i_1__3_n_7\,
      S(3) => \count[12]_i_2__3_n_0\,
      S(2) => \count[12]_i_3__3_n_0\,
      S(1) => \count[12]_i_4__3_n_0\,
      S(0) => \count[12]_i_5__3_n_0\
    );
\count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__3_n_0\,
      D => \count_reg[12]_i_1__3_n_6\,
      Q => \enc_count[4]_4\(13),
      R => p_0_in
    );
\count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__3_n_0\,
      D => \count_reg[12]_i_1__3_n_5\,
      Q => \^count_reg[15]_0\(2),
      R => p_0_in
    );
\count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__3_n_0\,
      D => \count_reg[12]_i_1__3_n_4\,
      Q => \^count_reg[15]_0\(3),
      R => p_0_in
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__3_n_0\,
      D => \count_reg[0]_i_2__3_n_6\,
      Q => \enc_count[4]_4\(1),
      R => p_0_in
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__3_n_0\,
      D => \count_reg[0]_i_2__3_n_5\,
      Q => \enc_count[4]_4\(2),
      R => p_0_in
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__3_n_0\,
      D => \count_reg[0]_i_2__3_n_4\,
      Q => \enc_count[4]_4\(3),
      R => p_0_in
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__3_n_0\,
      D => \count_reg[4]_i_1__3_n_7\,
      Q => \^count_reg[15]_0\(0),
      R => p_0_in
    );
\count_reg[4]_i_1__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_2__3_n_0\,
      CO(3) => \count_reg[4]_i_1__3_n_0\,
      CO(2) => \count_reg[4]_i_1__3_n_1\,
      CO(1) => \count_reg[4]_i_1__3_n_2\,
      CO(0) => \count_reg[4]_i_1__3_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => \enc_count[4]_4\(7 downto 5),
      DI(0) => \^count_reg[15]_0\(0),
      O(3) => \count_reg[4]_i_1__3_n_4\,
      O(2) => \count_reg[4]_i_1__3_n_5\,
      O(1) => \count_reg[4]_i_1__3_n_6\,
      O(0) => \count_reg[4]_i_1__3_n_7\,
      S(3) => \count[4]_i_2__3_n_0\,
      S(2) => \count[4]_i_3__3_n_0\,
      S(1) => \count[4]_i_4__3_n_0\,
      S(0) => \count[4]_i_5__3_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__3_n_0\,
      D => \count_reg[4]_i_1__3_n_6\,
      Q => \enc_count[4]_4\(5),
      R => p_0_in
    );
\count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__3_n_0\,
      D => \count_reg[4]_i_1__3_n_5\,
      Q => \enc_count[4]_4\(6),
      R => p_0_in
    );
\count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__3_n_0\,
      D => \count_reg[4]_i_1__3_n_4\,
      Q => \enc_count[4]_4\(7),
      R => p_0_in
    );
\count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__3_n_0\,
      D => \count_reg[8]_i_1__3_n_7\,
      Q => \^count_reg[15]_0\(1),
      R => p_0_in
    );
\count_reg[8]_i_1__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1__3_n_0\,
      CO(3) => \count_reg[8]_i_1__3_n_0\,
      CO(2) => \count_reg[8]_i_1__3_n_1\,
      CO(1) => \count_reg[8]_i_1__3_n_2\,
      CO(0) => \count_reg[8]_i_1__3_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => \enc_count[4]_4\(11 downto 9),
      DI(0) => \^count_reg[15]_0\(1),
      O(3) => \count_reg[8]_i_1__3_n_4\,
      O(2) => \count_reg[8]_i_1__3_n_5\,
      O(1) => \count_reg[8]_i_1__3_n_6\,
      O(0) => \count_reg[8]_i_1__3_n_7\,
      S(3) => \count[8]_i_2__3_n_0\,
      S(2) => \count[8]_i_3__3_n_0\,
      S(1) => \count[8]_i_4__3_n_0\,
      S(0) => \count[8]_i_5__3_n_0\
    );
\count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__3_n_0\,
      D => \count_reg[8]_i_1__3_n_6\,
      Q => \enc_count[4]_4\(9),
      R => p_0_in
    );
\s_axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABFBFBFBABFB"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => \s_axi_rdata[0]_i_2_n_0\,
      I2 => \s_axi_rdata_reg[0]\,
      I3 => \s_axi_rdata_reg[0]_0\,
      I4 => \s_axi_rdata_reg[0]_1\,
      I5 => \s_axi_rdata_reg[0]_2\,
      O => \s_axi_araddr[7]\(0)
    );
\s_axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0035000000000000"
    )
        port map (
      I0 => \enc_count[4]_4\(0),
      I1 => \enc_count[5]_5\(0),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(2),
      I5 => \s_axi_rdata_reg[0]_1\,
      O => \s_axi_rdata[0]_i_2_n_0\
    );
\s_axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABFBFBFBABFB"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => \s_axi_rdata[10]_i_2_n_0\,
      I2 => \s_axi_rdata_reg[0]\,
      I3 => \s_axi_rdata_reg[10]\,
      I4 => \s_axi_rdata_reg[0]_1\,
      I5 => \s_axi_rdata_reg[10]_0\,
      O => \s_axi_araddr[7]\(8)
    );
\s_axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0035000000000000"
    )
        port map (
      I0 => \enc_count[4]_4\(10),
      I1 => \enc_count[5]_5\(8),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(2),
      I5 => \s_axi_rdata_reg[0]_1\,
      O => \s_axi_rdata[10]_i_2_n_0\
    );
\s_axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABFBFBFBABFB"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => \s_axi_rdata[11]_i_2_n_0\,
      I2 => \s_axi_rdata_reg[0]\,
      I3 => \s_axi_rdata_reg[11]\,
      I4 => \s_axi_rdata_reg[0]_1\,
      I5 => \s_axi_rdata_reg[11]_0\,
      O => \s_axi_araddr[7]\(9)
    );
\s_axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0035000000000000"
    )
        port map (
      I0 => \enc_count[4]_4\(11),
      I1 => \enc_count[5]_5\(9),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(2),
      I5 => \s_axi_rdata_reg[0]_1\,
      O => \s_axi_rdata[11]_i_2_n_0\
    );
\s_axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABFBFBFBABFB"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => \s_axi_rdata[12]_i_2_n_0\,
      I2 => \s_axi_rdata_reg[0]\,
      I3 => \s_axi_rdata_reg[12]\,
      I4 => \s_axi_rdata_reg[0]_1\,
      I5 => \s_axi_rdata_reg[12]_0\,
      O => \s_axi_araddr[7]\(10)
    );
\s_axi_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0035000000000000"
    )
        port map (
      I0 => \enc_count[4]_4\(12),
      I1 => \enc_count[5]_5\(10),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(2),
      I5 => \s_axi_rdata_reg[0]_1\,
      O => \s_axi_rdata[12]_i_2_n_0\
    );
\s_axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABFBFBFBABFB"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => \s_axi_rdata[13]_i_2_n_0\,
      I2 => \s_axi_rdata_reg[0]\,
      I3 => \s_axi_rdata_reg[13]\,
      I4 => \s_axi_rdata_reg[0]_1\,
      I5 => \s_axi_rdata_reg[13]_0\,
      O => \s_axi_araddr[7]\(11)
    );
\s_axi_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0035000000000000"
    )
        port map (
      I0 => \enc_count[4]_4\(13),
      I1 => \enc_count[5]_5\(11),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(2),
      I5 => \s_axi_rdata_reg[0]_1\,
      O => \s_axi_rdata[13]_i_2_n_0\
    );
\s_axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABFBFBFBABFB"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => \s_axi_rdata[1]_i_2_n_0\,
      I2 => \s_axi_rdata_reg[0]\,
      I3 => \s_axi_rdata_reg[1]\,
      I4 => \s_axi_rdata_reg[0]_1\,
      I5 => \s_axi_rdata_reg[1]_0\,
      O => \s_axi_araddr[7]\(1)
    );
\s_axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0035000000000000"
    )
        port map (
      I0 => \enc_count[4]_4\(1),
      I1 => \enc_count[5]_5\(1),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(2),
      I5 => \s_axi_rdata_reg[0]_1\,
      O => \s_axi_rdata[1]_i_2_n_0\
    );
\s_axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABFBFBFBABFB"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => \s_axi_rdata[2]_i_2_n_0\,
      I2 => \s_axi_rdata_reg[0]\,
      I3 => \s_axi_rdata_reg[2]\,
      I4 => \s_axi_rdata_reg[0]_1\,
      I5 => \s_axi_rdata_reg[2]_0\,
      O => \s_axi_araddr[7]\(2)
    );
\s_axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0035000000000000"
    )
        port map (
      I0 => \enc_count[4]_4\(2),
      I1 => \enc_count[5]_5\(2),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(2),
      I5 => \s_axi_rdata_reg[0]_1\,
      O => \s_axi_rdata[2]_i_2_n_0\
    );
\s_axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABFBFBFBABFB"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => \s_axi_rdata[3]_i_2_n_0\,
      I2 => \s_axi_rdata_reg[0]\,
      I3 => \s_axi_rdata_reg[3]\,
      I4 => \s_axi_rdata_reg[0]_1\,
      I5 => \s_axi_rdata_reg[3]_0\,
      O => \s_axi_araddr[7]\(3)
    );
\s_axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0035000000000000"
    )
        port map (
      I0 => \enc_count[4]_4\(3),
      I1 => \enc_count[5]_5\(3),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(2),
      I5 => \s_axi_rdata_reg[0]_1\,
      O => \s_axi_rdata[3]_i_2_n_0\
    );
\s_axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABFBFBFBABFB"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => \s_axi_rdata[5]_i_2_n_0\,
      I2 => \s_axi_rdata_reg[0]\,
      I3 => \s_axi_rdata_reg[5]\,
      I4 => \s_axi_rdata_reg[0]_1\,
      I5 => \s_axi_rdata_reg[5]_0\,
      O => \s_axi_araddr[7]\(4)
    );
\s_axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0035000000000000"
    )
        port map (
      I0 => \enc_count[4]_4\(5),
      I1 => \enc_count[5]_5\(4),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(2),
      I5 => \s_axi_rdata_reg[0]_1\,
      O => \s_axi_rdata[5]_i_2_n_0\
    );
\s_axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABFBFBFBABFB"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => \s_axi_rdata[6]_i_2_n_0\,
      I2 => \s_axi_rdata_reg[0]\,
      I3 => \s_axi_rdata_reg[6]\,
      I4 => \s_axi_rdata_reg[0]_1\,
      I5 => \s_axi_rdata_reg[6]_0\,
      O => \s_axi_araddr[7]\(5)
    );
\s_axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0035000000000000"
    )
        port map (
      I0 => \enc_count[4]_4\(6),
      I1 => \enc_count[5]_5\(5),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(2),
      I5 => \s_axi_rdata_reg[0]_1\,
      O => \s_axi_rdata[6]_i_2_n_0\
    );
\s_axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABFBFBFBABFB"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => \s_axi_rdata[7]_i_2_n_0\,
      I2 => \s_axi_rdata_reg[0]\,
      I3 => \s_axi_rdata_reg[7]\,
      I4 => \s_axi_rdata_reg[0]_1\,
      I5 => \s_axi_rdata_reg[7]_0\,
      O => \s_axi_araddr[7]\(6)
    );
\s_axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0035000000000000"
    )
        port map (
      I0 => \enc_count[4]_4\(7),
      I1 => \enc_count[5]_5\(6),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(2),
      I5 => \s_axi_rdata_reg[0]_1\,
      O => \s_axi_rdata[7]_i_2_n_0\
    );
\s_axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABFBFBFBABFB"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => \s_axi_rdata[9]_i_2_n_0\,
      I2 => \s_axi_rdata_reg[0]\,
      I3 => \s_axi_rdata_reg[9]\,
      I4 => \s_axi_rdata_reg[0]_1\,
      I5 => \s_axi_rdata_reg[9]_0\,
      O => \s_axi_araddr[7]\(7)
    );
\s_axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0035000000000000"
    )
        port map (
      I0 => \enc_count[4]_4\(9),
      I1 => \enc_count[5]_5\(7),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(2),
      I5 => \s_axi_rdata_reg[0]_1\,
      O => \s_axi_rdata[9]_i_2_n_0\
    );
\state_d_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \^d\(0),
      Q => state_d(0),
      S => p_0_in
    );
\state_d_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \^d\(1),
      Q => state_d(1),
      S => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fx_system_wrapper_0_1_quad_decoder_4 is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg[13]_0\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \a_sync_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[15]_0\ : out STD_LOGIC;
    \s_axi_araddr[5]\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \s_axi_araddr[7]\ : out STD_LOGIC;
    \count_reg[4]_0\ : out STD_LOGIC;
    \count_reg[8]_0\ : out STD_LOGIC;
    \count_reg[14]_0\ : out STD_LOGIC;
    \cnt_b__0_14\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \cnt_a__0_15\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    p_0_in : in STD_LOGIC;
    clean_b_reg_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    clean_a_reg_0 : in STD_LOGIC;
    \cnt_a_reg[0]_0\ : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \s_axi_rdata_reg[17]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_rdata_reg[17]_0\ : in STD_LOGIC;
    \s_axi_rdata_reg[15]\ : in STD_LOGIC;
    \s_axi_rdata_reg[15]_0\ : in STD_LOGIC;
    \s_axi_rdata_reg[16]\ : in STD_LOGIC;
    \s_axi_rdata_reg[18]\ : in STD_LOGIC;
    \s_axi_rdata_reg[19]\ : in STD_LOGIC;
    \s_axi_rdata_reg[21]\ : in STD_LOGIC;
    \s_axi_rdata_reg[23]\ : in STD_LOGIC;
    \s_axi_rdata_reg[25]\ : in STD_LOGIC;
    \s_axi_rdata_reg[26]\ : in STD_LOGIC;
    \s_axi_rdata_reg[27]\ : in STD_LOGIC;
    \s_axi_rdata_reg[28]\ : in STD_LOGIC;
    \s_axi_rdata_reg[30]\ : in STD_LOGIC;
    \s_axi_rdata_reg[15]_1\ : in STD_LOGIC;
    \s_axi_rdata_reg[15]_2\ : in STD_LOGIC;
    \s_axi_rdata_reg[15]_3\ : in STD_LOGIC;
    enc_b : in STD_LOGIC_VECTOR ( 0 to 0 );
    enc_a : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_fx_system_wrapper_0_1_quad_decoder_4 : entity is "quad_decoder";
end design_1_fx_system_wrapper_0_1_quad_decoder_4;

architecture STRUCTURE of design_1_fx_system_wrapper_0_1_quad_decoder_4 is
  signal \^d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^a_sync_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \cnt_a[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \cnt_a[1]_i_1__4_n_0\ : STD_LOGIC;
  signal \cnt_a[2]_i_1__4_n_0\ : STD_LOGIC;
  signal \cnt_a[2]_i_2__4_n_0\ : STD_LOGIC;
  signal \^cnt_a__0_15\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \cnt_b[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \cnt_b[1]_i_1__4_n_0\ : STD_LOGIC;
  signal \cnt_b[2]_i_1__4_n_0\ : STD_LOGIC;
  signal \cnt_b[2]_i_2__4_n_0\ : STD_LOGIC;
  signal \^cnt_b__0_14\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \count[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \count[0]_i_3__4_n_0\ : STD_LOGIC;
  signal \count[0]_i_4__4_n_0\ : STD_LOGIC;
  signal \count[0]_i_5__4_n_0\ : STD_LOGIC;
  signal \count[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \count[12]_i_2__4_n_0\ : STD_LOGIC;
  signal \count[12]_i_3__4_n_0\ : STD_LOGIC;
  signal \count[12]_i_4__4_n_0\ : STD_LOGIC;
  signal \count[12]_i_5__4_n_0\ : STD_LOGIC;
  signal \count[4]_i_2__4_n_0\ : STD_LOGIC;
  signal \count[4]_i_3__4_n_0\ : STD_LOGIC;
  signal \count[4]_i_4__4_n_0\ : STD_LOGIC;
  signal \count[4]_i_5__4_n_0\ : STD_LOGIC;
  signal \count[8]_i_2__4_n_0\ : STD_LOGIC;
  signal \count[8]_i_3__4_n_0\ : STD_LOGIC;
  signal \count[8]_i_4__4_n_0\ : STD_LOGIC;
  signal \count[8]_i_5__4_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_2__4_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_2__4_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_2__4_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_2__4_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_2__4_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_2__4_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_2__4_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_2__4_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1__4_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1__4_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1__4_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1__4_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1__4_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1__4_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1__4_n_7\ : STD_LOGIC;
  signal \^count_reg[13]_0\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \count_reg[4]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1__4_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1__4_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1__4_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1__4_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1__4_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1__4_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1__4_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1__4_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1__4_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1__4_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1__4_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1__4_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1__4_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1__4_n_7\ : STD_LOGIC;
  signal \enc_count[5]_5\ : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_araddr[7]\ : STD_LOGIC;
  signal state_d : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_count_reg[12]_i_1__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_a[0]_i_1__4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt_a[2]_i_2__4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt_b[0]_i_1__4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt_b[2]_i_2__4\ : label is "soft_lutpair10";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_reg[0]_i_2__4\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[12]_i_1__4\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[4]_i_1__4\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[8]_i_1__4\ : label is 11;
begin
  D(1 downto 0) <= \^d\(1 downto 0);
  Q(0) <= \^q\(0);
  \a_sync_reg[1]_0\(0) <= \^a_sync_reg[1]_0\(0);
  \cnt_a__0_15\(2 downto 0) <= \^cnt_a__0_15\(2 downto 0);
  \cnt_b__0_14\(2 downto 0) <= \^cnt_b__0_14\(2 downto 0);
  \count_reg[13]_0\(11 downto 0) <= \^count_reg[13]_0\(11 downto 0);
  \s_axi_araddr[7]\ <= \^s_axi_araddr[7]\;
\a_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => enc_a(0),
      Q => \p_0_in__0\(1),
      R => '0'
    );
\a_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => \^a_sync_reg[1]_0\(0),
      R => '0'
    );
\b_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => enc_b(0),
      Q => p_0_in_0(1),
      R => '0'
    );
\b_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in_0(1),
      Q => \^q\(0),
      R => '0'
    );
clean_a_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => clean_a_reg_0,
      Q => \^d\(1),
      S => p_0_in
    );
clean_b_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => clean_b_reg_0,
      Q => \^d\(0),
      S => p_0_in
    );
\cnt_a[0]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08484808"
    )
        port map (
      I0 => \^cnt_a__0_15\(0),
      I1 => rst_n,
      I2 => \cnt_a_reg[0]_0\,
      I3 => \^d\(1),
      I4 => \^a_sync_reg[1]_0\(0),
      O => \cnt_a[0]_i_1__4_n_0\
    );
\cnt_a[1]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A060A060A000A0"
    )
        port map (
      I0 => \^cnt_a__0_15\(1),
      I1 => \^cnt_a__0_15\(0),
      I2 => rst_n,
      I3 => \cnt_a_reg[0]_0\,
      I4 => \^d\(1),
      I5 => \^a_sync_reg[1]_0\(0),
      O => \cnt_a[1]_i_1__4_n_0\
    );
\cnt_a[2]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \^cnt_a__0_15\(2),
      I1 => \cnt_a_reg[0]_0\,
      I2 => \^cnt_a__0_15\(0),
      I3 => \^cnt_a__0_15\(1),
      I4 => \cnt_a[2]_i_2__4_n_0\,
      O => \cnt_a[2]_i_1__4_n_0\
    );
\cnt_a[2]_i_2__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"90FF"
    )
        port map (
      I0 => \^a_sync_reg[1]_0\(0),
      I1 => \^d\(1),
      I2 => \cnt_a_reg[0]_0\,
      I3 => rst_n,
      O => \cnt_a[2]_i_2__4_n_0\
    );
\cnt_a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_a[0]_i_1__4_n_0\,
      Q => \^cnt_a__0_15\(0),
      R => '0'
    );
\cnt_a_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_a[1]_i_1__4_n_0\,
      Q => \^cnt_a__0_15\(1),
      R => '0'
    );
\cnt_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_a[2]_i_1__4_n_0\,
      Q => \^cnt_a__0_15\(2),
      R => '0'
    );
\cnt_b[0]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08484808"
    )
        port map (
      I0 => \^cnt_b__0_14\(0),
      I1 => rst_n,
      I2 => \cnt_a_reg[0]_0\,
      I3 => \^d\(0),
      I4 => \^q\(0),
      O => \cnt_b[0]_i_1__4_n_0\
    );
\cnt_b[1]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A060A060A000A0"
    )
        port map (
      I0 => \^cnt_b__0_14\(1),
      I1 => \^cnt_b__0_14\(0),
      I2 => rst_n,
      I3 => \cnt_a_reg[0]_0\,
      I4 => \^d\(0),
      I5 => \^q\(0),
      O => \cnt_b[1]_i_1__4_n_0\
    );
\cnt_b[2]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \^cnt_b__0_14\(2),
      I1 => \cnt_a_reg[0]_0\,
      I2 => \^cnt_b__0_14\(0),
      I3 => \^cnt_b__0_14\(1),
      I4 => \cnt_b[2]_i_2__4_n_0\,
      O => \cnt_b[2]_i_1__4_n_0\
    );
\cnt_b[2]_i_2__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"90FF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^d\(0),
      I2 => \cnt_a_reg[0]_0\,
      I3 => rst_n,
      O => \cnt_b[2]_i_2__4_n_0\
    );
\cnt_b_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_b[0]_i_1__4_n_0\,
      Q => \^cnt_b__0_14\(0),
      R => '0'
    );
\cnt_b_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_b[1]_i_1__4_n_0\,
      Q => \^cnt_b__0_14\(1),
      R => '0'
    );
\cnt_b_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_b[2]_i_1__4_n_0\,
      Q => \^cnt_b__0_14\(2),
      R => '0'
    );
\count[0]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6000"
    )
        port map (
      I0 => state_d(0),
      I1 => state_d(1),
      I2 => \^d\(1),
      I3 => \^d\(0),
      O => \count[0]_i_1__4_n_0\
    );
\count[0]_i_3__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^count_reg[13]_0\(3),
      O => \count[0]_i_3__4_n_0\
    );
\count[0]_i_4__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^count_reg[13]_0\(2),
      O => \count[0]_i_4__4_n_0\
    );
\count[0]_i_5__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^count_reg[13]_0\(1),
      O => \count[0]_i_5__4_n_0\
    );
\count[0]_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_reg[13]_0\(0),
      O => \count[0]_i_6__0_n_0\
    );
\count[12]_i_2__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => \enc_count[5]_5\(15),
      I1 => state_d(1),
      I2 => state_d(0),
      O => \count[12]_i_2__4_n_0\
    );
\count[12]_i_3__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \enc_count[5]_5\(14),
      O => \count[12]_i_3__4_n_0\
    );
\count[12]_i_4__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^count_reg[13]_0\(11),
      O => \count[12]_i_4__4_n_0\
    );
\count[12]_i_5__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^count_reg[13]_0\(10),
      O => \count[12]_i_5__4_n_0\
    );
\count[4]_i_2__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^count_reg[13]_0\(6),
      O => \count[4]_i_2__4_n_0\
    );
\count[4]_i_3__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^count_reg[13]_0\(5),
      O => \count[4]_i_3__4_n_0\
    );
\count[4]_i_4__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^count_reg[13]_0\(4),
      O => \count[4]_i_4__4_n_0\
    );
\count[4]_i_5__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \enc_count[5]_5\(4),
      O => \count[4]_i_5__4_n_0\
    );
\count[8]_i_2__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^count_reg[13]_0\(9),
      O => \count[8]_i_2__4_n_0\
    );
\count[8]_i_3__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^count_reg[13]_0\(8),
      O => \count[8]_i_3__4_n_0\
    );
\count[8]_i_4__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \^count_reg[13]_0\(7),
      O => \count[8]_i_4__4_n_0\
    );
\count[8]_i_5__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => state_d(1),
      I1 => state_d(0),
      I2 => \enc_count[5]_5\(8),
      O => \count[8]_i_5__4_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__4_n_0\,
      D => \count_reg[0]_i_2__4_n_7\,
      Q => \^count_reg[13]_0\(0),
      R => p_0_in
    );
\count_reg[0]_i_2__4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_2__4_n_0\,
      CO(2) => \count_reg[0]_i_2__4_n_1\,
      CO(1) => \count_reg[0]_i_2__4_n_2\,
      CO(0) => \count_reg[0]_i_2__4_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => \^count_reg[13]_0\(3 downto 1),
      DI(0) => '1',
      O(3) => \count_reg[0]_i_2__4_n_4\,
      O(2) => \count_reg[0]_i_2__4_n_5\,
      O(1) => \count_reg[0]_i_2__4_n_6\,
      O(0) => \count_reg[0]_i_2__4_n_7\,
      S(3) => \count[0]_i_3__4_n_0\,
      S(2) => \count[0]_i_4__4_n_0\,
      S(1) => \count[0]_i_5__4_n_0\,
      S(0) => \count[0]_i_6__0_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__4_n_0\,
      D => \count_reg[8]_i_1__4_n_5\,
      Q => \^count_reg[13]_0\(8),
      R => p_0_in
    );
\count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__4_n_0\,
      D => \count_reg[8]_i_1__4_n_4\,
      Q => \^count_reg[13]_0\(9),
      R => p_0_in
    );
\count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__4_n_0\,
      D => \count_reg[12]_i_1__4_n_7\,
      Q => \^count_reg[13]_0\(10),
      R => p_0_in
    );
\count_reg[12]_i_1__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1__4_n_0\,
      CO(3) => \NLW_count_reg[12]_i_1__4_CO_UNCONNECTED\(3),
      CO(2) => \count_reg[12]_i_1__4_n_1\,
      CO(1) => \count_reg[12]_i_1__4_n_2\,
      CO(0) => \count_reg[12]_i_1__4_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \enc_count[5]_5\(14),
      DI(1 downto 0) => \^count_reg[13]_0\(11 downto 10),
      O(3) => \count_reg[12]_i_1__4_n_4\,
      O(2) => \count_reg[12]_i_1__4_n_5\,
      O(1) => \count_reg[12]_i_1__4_n_6\,
      O(0) => \count_reg[12]_i_1__4_n_7\,
      S(3) => \count[12]_i_2__4_n_0\,
      S(2) => \count[12]_i_3__4_n_0\,
      S(1) => \count[12]_i_4__4_n_0\,
      S(0) => \count[12]_i_5__4_n_0\
    );
\count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__4_n_0\,
      D => \count_reg[12]_i_1__4_n_6\,
      Q => \^count_reg[13]_0\(11),
      R => p_0_in
    );
\count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__4_n_0\,
      D => \count_reg[12]_i_1__4_n_5\,
      Q => \enc_count[5]_5\(14),
      R => p_0_in
    );
\count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__4_n_0\,
      D => \count_reg[12]_i_1__4_n_4\,
      Q => \enc_count[5]_5\(15),
      R => p_0_in
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__4_n_0\,
      D => \count_reg[0]_i_2__4_n_6\,
      Q => \^count_reg[13]_0\(1),
      R => p_0_in
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__4_n_0\,
      D => \count_reg[0]_i_2__4_n_5\,
      Q => \^count_reg[13]_0\(2),
      R => p_0_in
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__4_n_0\,
      D => \count_reg[0]_i_2__4_n_4\,
      Q => \^count_reg[13]_0\(3),
      R => p_0_in
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__4_n_0\,
      D => \count_reg[4]_i_1__4_n_7\,
      Q => \enc_count[5]_5\(4),
      R => p_0_in
    );
\count_reg[4]_i_1__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_2__4_n_0\,
      CO(3) => \count_reg[4]_i_1__4_n_0\,
      CO(2) => \count_reg[4]_i_1__4_n_1\,
      CO(1) => \count_reg[4]_i_1__4_n_2\,
      CO(0) => \count_reg[4]_i_1__4_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => \^count_reg[13]_0\(6 downto 4),
      DI(0) => \enc_count[5]_5\(4),
      O(3) => \count_reg[4]_i_1__4_n_4\,
      O(2) => \count_reg[4]_i_1__4_n_5\,
      O(1) => \count_reg[4]_i_1__4_n_6\,
      O(0) => \count_reg[4]_i_1__4_n_7\,
      S(3) => \count[4]_i_2__4_n_0\,
      S(2) => \count[4]_i_3__4_n_0\,
      S(1) => \count[4]_i_4__4_n_0\,
      S(0) => \count[4]_i_5__4_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__4_n_0\,
      D => \count_reg[4]_i_1__4_n_6\,
      Q => \^count_reg[13]_0\(4),
      R => p_0_in
    );
\count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__4_n_0\,
      D => \count_reg[4]_i_1__4_n_5\,
      Q => \^count_reg[13]_0\(5),
      R => p_0_in
    );
\count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__4_n_0\,
      D => \count_reg[4]_i_1__4_n_4\,
      Q => \^count_reg[13]_0\(6),
      R => p_0_in
    );
\count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__4_n_0\,
      D => \count_reg[8]_i_1__4_n_7\,
      Q => \enc_count[5]_5\(8),
      R => p_0_in
    );
\count_reg[8]_i_1__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1__4_n_0\,
      CO(3) => \count_reg[8]_i_1__4_n_0\,
      CO(2) => \count_reg[8]_i_1__4_n_1\,
      CO(1) => \count_reg[8]_i_1__4_n_2\,
      CO(0) => \count_reg[8]_i_1__4_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => \^count_reg[13]_0\(9 downto 7),
      DI(0) => \enc_count[5]_5\(8),
      O(3) => \count_reg[8]_i_1__4_n_4\,
      O(2) => \count_reg[8]_i_1__4_n_5\,
      O(1) => \count_reg[8]_i_1__4_n_6\,
      O(0) => \count_reg[8]_i_1__4_n_7\,
      S(3) => \count[8]_i_2__4_n_0\,
      S(2) => \count[8]_i_3__4_n_0\,
      S(1) => \count[8]_i_4__4_n_0\,
      S(0) => \count[8]_i_5__4_n_0\
    );
\count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count[0]_i_1__4_n_0\,
      D => \count_reg[8]_i_1__4_n_6\,
      Q => \^count_reg[13]_0\(7),
      R => p_0_in
    );
\s_axi_rdata[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF75FFFFFF7FFFFF"
    )
        port map (
      I0 => \s_axi_rdata_reg[17]_0\,
      I1 => \enc_count[5]_5\(14),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(4),
      I5 => \s_axi_rdata_reg[17]\(2),
      O => \count_reg[14]_0\
    );
\s_axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABAAAAAAABAA"
    )
        port map (
      I0 => \^s_axi_araddr[7]\,
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => \s_axi_rdata_reg[15]\,
      I4 => s_axi_araddr(4),
      I5 => \s_axi_rdata_reg[15]_0\,
      O => \s_axi_araddr[5]\(0)
    );
\s_axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABAAAAAAABAA"
    )
        port map (
      I0 => \^s_axi_araddr[7]\,
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => \s_axi_rdata_reg[16]\,
      I4 => s_axi_araddr(4),
      I5 => \s_axi_rdata_reg[15]_0\,
      O => \s_axi_araddr[5]\(1)
    );
\s_axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABAAAAAAABAA"
    )
        port map (
      I0 => \^s_axi_araddr[7]\,
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => \s_axi_rdata_reg[18]\,
      I4 => s_axi_araddr(4),
      I5 => \s_axi_rdata_reg[15]_0\,
      O => \s_axi_araddr[5]\(2)
    );
\s_axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABAAAAAAABAA"
    )
        port map (
      I0 => \^s_axi_araddr[7]\,
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => \s_axi_rdata_reg[19]\,
      I4 => s_axi_araddr(4),
      I5 => \s_axi_rdata_reg[15]_0\,
      O => \s_axi_araddr[5]\(3)
    );
\s_axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABAAAAAAABAA"
    )
        port map (
      I0 => \^s_axi_araddr[7]\,
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => \s_axi_rdata_reg[21]\,
      I4 => s_axi_araddr(4),
      I5 => \s_axi_rdata_reg[15]_0\,
      O => \s_axi_araddr[5]\(4)
    );
\s_axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABAAAAAAABAA"
    )
        port map (
      I0 => \^s_axi_araddr[7]\,
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => \s_axi_rdata_reg[23]\,
      I4 => s_axi_araddr(4),
      I5 => \s_axi_rdata_reg[15]_0\,
      O => \s_axi_araddr[5]\(5)
    );
\s_axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABAAAAAAABAA"
    )
        port map (
      I0 => \^s_axi_araddr[7]\,
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => \s_axi_rdata_reg[25]\,
      I4 => s_axi_araddr(4),
      I5 => \s_axi_rdata_reg[15]_0\,
      O => \s_axi_araddr[5]\(6)
    );
\s_axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABAAAAAAABAA"
    )
        port map (
      I0 => \^s_axi_araddr[7]\,
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => \s_axi_rdata_reg[26]\,
      I4 => s_axi_araddr(4),
      I5 => \s_axi_rdata_reg[15]_0\,
      O => \s_axi_araddr[5]\(7)
    );
\s_axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABAAAAAAABAA"
    )
        port map (
      I0 => \^s_axi_araddr[7]\,
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => \s_axi_rdata_reg[27]\,
      I4 => s_axi_araddr(4),
      I5 => \s_axi_rdata_reg[15]_0\,
      O => \s_axi_araddr[5]\(8)
    );
\s_axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABAAAAAAABAA"
    )
        port map (
      I0 => \^s_axi_araddr[7]\,
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => \s_axi_rdata_reg[28]\,
      I4 => s_axi_araddr(4),
      I5 => \s_axi_rdata_reg[15]_0\,
      O => \s_axi_araddr[5]\(9)
    );
\s_axi_rdata[29]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47FFFFFFFFFF"
    )
        port map (
      I0 => \enc_count[5]_5\(15),
      I1 => s_axi_araddr(0),
      I2 => \s_axi_rdata_reg[17]\(3),
      I3 => s_axi_araddr(4),
      I4 => s_axi_araddr(1),
      I5 => \s_axi_rdata_reg[17]_0\,
      O => \count_reg[15]_0\
    );
\s_axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABAAAAAAABAA"
    )
        port map (
      I0 => \^s_axi_araddr[7]\,
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => \s_axi_rdata_reg[30]\,
      I4 => s_axi_araddr(4),
      I5 => \s_axi_rdata_reg[15]_0\,
      O => \s_axi_araddr[5]\(10)
    );
\s_axi_rdata[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBABABABBBA"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => \s_axi_rdata_reg[15]_1\,
      I2 => \s_axi_rdata_reg[15]_2\,
      I3 => \enc_count[5]_5\(15),
      I4 => \s_axi_rdata_reg[15]_3\,
      I5 => \s_axi_rdata_reg[17]\(3),
      O => \^s_axi_araddr[7]\
    );
\s_axi_rdata[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF75FFFFFF7FFFFF"
    )
        port map (
      I0 => \s_axi_rdata_reg[17]_0\,
      I1 => \enc_count[5]_5\(4),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(4),
      I5 => \s_axi_rdata_reg[17]\(0),
      O => \count_reg[4]_0\
    );
\s_axi_rdata[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF75FFFFFF7FFFFF"
    )
        port map (
      I0 => \s_axi_rdata_reg[17]_0\,
      I1 => \enc_count[5]_5\(8),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(4),
      I5 => \s_axi_rdata_reg[17]\(1),
      O => \count_reg[8]_0\
    );
\state_d_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \^d\(0),
      Q => state_d(0),
      S => p_0_in
    );
\state_d_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \^d\(1),
      Q => state_d(1),
      S => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fx_system_wrapper_0_1_tick_gen is
  port (
    tick_reg_0 : out STD_LOGIC;
    p_0_in : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_fx_system_wrapper_0_1_tick_gen : entity is "tick_gen";
end design_1_fx_system_wrapper_0_1_tick_gen;

architecture STRUCTURE of design_1_fx_system_wrapper_0_1_tick_gen is
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal cnt_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal tick_i_1_n_0 : STD_LOGIC;
  signal tick_i_2_n_0 : STD_LOGIC;
  signal tick_i_3_n_0 : STD_LOGIC;
  signal \NLW_cnt_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cnt_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[8]_i_1\ : label is 11;
begin
\cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => tick_i_1_n_0,
      I1 => rst_n,
      O => \cnt[0]_i_1_n_0\
    );
\cnt[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(0),
      O => \cnt[0]_i_3_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_reg[0]_i_2_n_7\,
      Q => cnt_reg(0),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_reg[0]_i_2_n_0\,
      CO(2) => \cnt_reg[0]_i_2_n_1\,
      CO(1) => \cnt_reg[0]_i_2_n_2\,
      CO(0) => \cnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cnt_reg[0]_i_2_n_4\,
      O(2) => \cnt_reg[0]_i_2_n_5\,
      O(1) => \cnt_reg[0]_i_2_n_6\,
      O(0) => \cnt_reg[0]_i_2_n_7\,
      S(3 downto 1) => cnt_reg(3 downto 1),
      S(0) => \cnt[0]_i_3_n_0\
    );
\cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_5\,
      Q => cnt_reg(10),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_4\,
      Q => cnt_reg(11),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_reg[0]_i_2_n_6\,
      Q => cnt_reg(1),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_reg[0]_i_2_n_5\,
      Q => cnt_reg(2),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_reg[0]_i_2_n_4\,
      Q => cnt_reg(3),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_7\,
      Q => cnt_reg(4),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[0]_i_2_n_0\,
      CO(3) => \cnt_reg[4]_i_1_n_0\,
      CO(2) => \cnt_reg[4]_i_1_n_1\,
      CO(1) => \cnt_reg[4]_i_1_n_2\,
      CO(0) => \cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[4]_i_1_n_4\,
      O(2) => \cnt_reg[4]_i_1_n_5\,
      O(1) => \cnt_reg[4]_i_1_n_6\,
      O(0) => \cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(7 downto 4)
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_6\,
      Q => cnt_reg(5),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_5\,
      Q => cnt_reg(6),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_4\,
      Q => cnt_reg(7),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_7\,
      Q => cnt_reg(8),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[4]_i_1_n_0\,
      CO(3) => \NLW_cnt_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cnt_reg[8]_i_1_n_1\,
      CO(1) => \cnt_reg[8]_i_1_n_2\,
      CO(0) => \cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[8]_i_1_n_4\,
      O(2) => \cnt_reg[8]_i_1_n_5\,
      O(1) => \cnt_reg[8]_i_1_n_6\,
      O(0) => \cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(11 downto 8)
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_6\,
      Q => cnt_reg(9),
      R => \cnt[0]_i_1_n_0\
    );
tick_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => cnt_reg(7),
      I1 => cnt_reg(11),
      I2 => cnt_reg(2),
      I3 => cnt_reg(3),
      I4 => tick_i_2_n_0,
      I5 => tick_i_3_n_0,
      O => tick_i_1_n_0
    );
tick_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => cnt_reg(5),
      I2 => cnt_reg(1),
      I3 => cnt_reg(10),
      O => tick_i_2_n_0
    );
tick_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => cnt_reg(6),
      I1 => cnt_reg(8),
      I2 => cnt_reg(4),
      I3 => cnt_reg(9),
      O => tick_i_3_n_0
    );
tick_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tick_i_1_n_0,
      Q => tick_reg_0,
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fx_system_wrapper_0_1_delay_line is
  port (
    rd_en_reg : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    P : out STD_LOGIC_VECTOR ( 0 to 0 );
    fx_enable_0 : out STD_LOGIC;
    frac_d_valid : out STD_LOGIC;
    \term_r_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    d_reg_valid_reg_0 : out STD_LOGIC;
    \state_reg[0]_0\ : out STD_LOGIC;
    \state_reg[0]_1\ : out STD_LOGIC;
    \state_reg[1]_0\ : out STD_LOGIC;
    \state_reg[1]_1\ : out STD_LOGIC;
    \FSM_sequential_state_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[2]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[0]\ : out STD_LOGIC;
    \reg_ctrl_reg[0]\ : out STD_LOGIC;
    d_reg_valid_reg_1 : out STD_LOGIC;
    \FSM_sequential_state_reg[2]_0\ : out STD_LOGIC;
    clear_req0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_buf_valid_reg : out STD_LOGIC;
    \state_reg[1]_2\ : out STD_LOGIC;
    \state_reg[0]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[1]_0\ : out STD_LOGIC;
    \FSM_sequential_state_reg[2]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[2]_2\ : out STD_LOGIC;
    \FSM_sequential_state_reg[2]_3\ : out STD_LOGIC;
    \FSM_sequential_state_reg[2]_4\ : out STD_LOGIC;
    out_buf_valid_reg_0 : out STD_LOGIC;
    \d_out_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rd_en_reg_0 : in STD_LOGIC;
    \term_r_reg[0]_0\ : in STD_LOGIC;
    d_reg_valid_reg_2 : in STD_LOGIC;
    frac_start_reg_0 : in STD_LOGIC;
    rd_en_reg_rep : in STD_LOGIC;
    bram_wr_en_reg_rep_0 : in STD_LOGIC;
    \bram_wr_en_reg_rep__0_0\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__1_0\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__2_0\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__3_0\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__4_0\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__5_0\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__6_0\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__7_0\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__8_0\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__9_0\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__10_0\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__11_0\ : in STD_LOGIC;
    \state_reg[1]_3\ : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    inflight0 : in STD_LOGIC;
    state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    out_buf_valid_reg_1 : in STD_LOGIC;
    enable_d : in STD_LOGIC;
    mono_valid : in STD_LOGIC;
    fx_enable : in STD_LOGIC;
    \x_reg_reg[6]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[2]_5\ : in STD_LOGIC;
    \bram_wr_data_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_fx_system_wrapper_0_1_delay_line : entity is "delay_line";
end design_1_fx_system_wrapper_0_1_delay_line;

architecture STRUCTURE of design_1_fx_system_wrapper_0_1_delay_line is
  signal D_reg : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^fsm_sequential_state_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[2]_0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal bram_rd_valid : STD_LOGIC;
  signal bram_u_n_1 : STD_LOGIC;
  signal bram_u_n_2 : STD_LOGIC;
  signal bram_u_n_3 : STD_LOGIC;
  signal bram_u_n_37 : STD_LOGIC;
  signal bram_u_n_38 : STD_LOGIC;
  signal bram_u_n_39 : STD_LOGIC;
  signal bram_u_n_4 : STD_LOGIC;
  signal bram_u_n_40 : STD_LOGIC;
  signal bram_u_n_41 : STD_LOGIC;
  signal bram_u_n_42 : STD_LOGIC;
  signal bram_u_n_43 : STD_LOGIC;
  signal bram_u_n_44 : STD_LOGIC;
  signal bram_u_n_45 : STD_LOGIC;
  signal bram_u_n_46 : STD_LOGIC;
  signal bram_u_n_47 : STD_LOGIC;
  signal bram_u_n_48 : STD_LOGIC;
  signal bram_u_n_49 : STD_LOGIC;
  signal bram_u_n_50 : STD_LOGIC;
  signal bram_u_n_51 : STD_LOGIC;
  signal bram_u_n_52 : STD_LOGIC;
  signal bram_u_n_53 : STD_LOGIC;
  signal bram_u_n_54 : STD_LOGIC;
  signal bram_u_n_55 : STD_LOGIC;
  signal bram_u_n_56 : STD_LOGIC;
  signal bram_u_n_57 : STD_LOGIC;
  signal bram_u_n_58 : STD_LOGIC;
  signal bram_u_n_59 : STD_LOGIC;
  signal bram_u_n_60 : STD_LOGIC;
  signal bram_u_n_61 : STD_LOGIC;
  signal bram_u_n_62 : STD_LOGIC;
  signal bram_u_n_63 : STD_LOGIC;
  signal bram_u_n_64 : STD_LOGIC;
  signal \bram_wr_addr[0]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[0]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[0]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[0]_rep_i_2_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[10]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[10]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[10]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[10]_rep_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[11]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[11]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[11]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[11]_rep_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[12]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[12]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[12]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[12]_rep_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[13]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[13]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[13]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[13]_rep_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[14]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[14]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[14]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[14]_rep_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[1]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[1]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[1]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[1]_rep_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[2]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[2]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[2]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[2]_rep_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[3]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[3]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[3]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[3]_rep_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[4]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[4]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[4]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[4]_rep_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[5]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[5]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[5]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[5]_rep_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[6]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[6]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[6]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[6]_rep_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[7]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[7]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[7]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[7]_rep_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[8]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[8]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[8]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[8]_rep_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[9]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[9]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[9]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr[9]_rep_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[0]_rep__0_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[0]_rep__1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[0]_rep__2_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[0]_rep_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[10]_rep__0_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[10]_rep__1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[10]_rep__2_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[10]_rep_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[11]_rep__0_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[11]_rep__1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[11]_rep__2_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[11]_rep_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[12]_rep__0_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[12]_rep__1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[12]_rep__2_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[12]_rep_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[13]_rep__0_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[13]_rep__1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[13]_rep__2_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[13]_rep_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[14]_rep__0_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[14]_rep__1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[14]_rep__2_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[14]_rep_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[1]_rep__0_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[1]_rep__1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[1]_rep__2_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[1]_rep_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[2]_rep__0_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[2]_rep__1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[2]_rep__2_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[2]_rep_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[3]_rep__0_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[3]_rep__1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[3]_rep__2_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[3]_rep_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[4]_rep__0_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[4]_rep__1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[4]_rep__2_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[4]_rep_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[5]_rep__0_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[5]_rep__1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[5]_rep__2_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[5]_rep_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[6]_rep__0_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[6]_rep__1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[6]_rep__2_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[6]_rep_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[7]_rep__0_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[7]_rep__1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[7]_rep__2_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[7]_rep_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[8]_rep__0_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[8]_rep__1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[8]_rep__2_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[8]_rep_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[9]_rep__0_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[9]_rep__1_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[9]_rep__2_n_0\ : STD_LOGIC;
  signal \bram_wr_addr_reg[9]_rep_n_0\ : STD_LOGIC;
  signal bram_wr_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \bram_wr_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_data[16]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_data[17]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_data[18]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_data[19]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_data[20]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_data[21]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_data[22]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_data[23]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_data[24]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_data[25]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_data[26]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_data[27]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_data[28]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_data[29]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_data[30]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_data[9]_i_1_n_0\ : STD_LOGIC;
  signal \bram_wr_en_reg_rep__0_n_0\ : STD_LOGIC;
  signal \bram_wr_en_reg_rep__10_n_0\ : STD_LOGIC;
  signal \bram_wr_en_reg_rep__11_n_0\ : STD_LOGIC;
  signal \bram_wr_en_reg_rep__1_n_0\ : STD_LOGIC;
  signal \bram_wr_en_reg_rep__2_n_0\ : STD_LOGIC;
  signal \bram_wr_en_reg_rep__3_n_0\ : STD_LOGIC;
  signal \bram_wr_en_reg_rep__4_n_0\ : STD_LOGIC;
  signal \bram_wr_en_reg_rep__5_n_0\ : STD_LOGIC;
  signal \bram_wr_en_reg_rep__6_n_0\ : STD_LOGIC;
  signal \bram_wr_en_reg_rep__7_n_0\ : STD_LOGIC;
  signal \bram_wr_en_reg_rep__8_n_0\ : STD_LOGIC;
  signal \bram_wr_en_reg_rep__9_n_0\ : STD_LOGIC;
  signal bram_wr_en_reg_rep_n_0 : STD_LOGIC;
  signal \clear_addr[0]_i_2_n_0\ : STD_LOGIC;
  signal \clear_addr[0]_i_4_n_0\ : STD_LOGIC;
  signal \clear_addr[0]_i_5_n_0\ : STD_LOGIC;
  signal clear_addr_reg : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \clear_addr_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \clear_addr_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \clear_addr_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \clear_addr_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \clear_addr_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \clear_addr_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \clear_addr_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \clear_addr_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \clear_addr_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \clear_addr_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \clear_addr_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \clear_addr_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \clear_addr_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \clear_addr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \clear_addr_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \clear_addr_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \clear_addr_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \clear_addr_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \clear_addr_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \clear_addr_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \clear_addr_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \clear_addr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \clear_addr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \clear_addr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \clear_addr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \clear_addr_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \clear_addr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \clear_addr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \clear_addr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^d_reg_valid_reg_0\ : STD_LOGIC;
  signal frac_start : STD_LOGIC;
  signal frac_u_n_19 : STD_LOGIC;
  signal frac_u_n_20 : STD_LOGIC;
  signal frac_u_n_21 : STD_LOGIC;
  signal frac_u_n_22 : STD_LOGIC;
  signal frac_u_n_23 : STD_LOGIC;
  signal frac_u_n_24 : STD_LOGIC;
  signal frac_u_n_25 : STD_LOGIC;
  signal frac_u_n_26 : STD_LOGIC;
  signal frac_u_n_27 : STD_LOGIC;
  signal frac_u_n_28 : STD_LOGIC;
  signal frac_u_n_29 : STD_LOGIC;
  signal frac_u_n_30 : STD_LOGIC;
  signal frac_u_n_31 : STD_LOGIC;
  signal frac_u_n_32 : STD_LOGIC;
  signal frac_u_n_33 : STD_LOGIC;
  signal frac_u_n_34 : STD_LOGIC;
  signal frac_u_n_35 : STD_LOGIC;
  signal frac_u_n_36 : STD_LOGIC;
  signal frac_u_n_37 : STD_LOGIC;
  signal frac_u_n_38 : STD_LOGIC;
  signal frac_u_n_39 : STD_LOGIC;
  signal frac_u_n_40 : STD_LOGIC;
  signal frac_u_n_41 : STD_LOGIC;
  signal frac_u_n_42 : STD_LOGIC;
  signal frac_u_n_43 : STD_LOGIC;
  signal frac_u_n_44 : STD_LOGIC;
  signal frac_u_n_45 : STD_LOGIC;
  signal frac_u_n_46 : STD_LOGIC;
  signal frac_u_n_47 : STD_LOGIC;
  signal frac_u_n_48 : STD_LOGIC;
  signal frac_u_n_49 : STD_LOGIC;
  signal frac_u_n_50 : STD_LOGIC;
  signal frac_u_n_51 : STD_LOGIC;
  signal frac_u_n_52 : STD_LOGIC;
  signal frac_u_n_53 : STD_LOGIC;
  signal frac_u_n_54 : STD_LOGIC;
  signal frac_u_n_55 : STD_LOGIC;
  signal frac_u_n_56 : STD_LOGIC;
  signal frac_u_n_57 : STD_LOGIC;
  signal frac_u_n_58 : STD_LOGIC;
  signal frac_u_n_59 : STD_LOGIC;
  signal frac_u_n_6 : STD_LOGIC;
  signal frac_u_n_60 : STD_LOGIC;
  signal frac_u_n_61 : STD_LOGIC;
  signal frac_u_n_62 : STD_LOGIC;
  signal frac_u_n_63 : STD_LOGIC;
  signal frac_u_n_64 : STD_LOGIC;
  signal frac_u_n_65 : STD_LOGIC;
  signal frac_u_n_66 : STD_LOGIC;
  signal frac_u_n_67 : STD_LOGIC;
  signal frac_u_n_68 : STD_LOGIC;
  signal frac_u_n_69 : STD_LOGIC;
  signal frac_u_n_70 : STD_LOGIC;
  signal frac_u_n_71 : STD_LOGIC;
  signal frac_u_n_72 : STD_LOGIC;
  signal frac_u_n_73 : STD_LOGIC;
  signal frac_u_n_74 : STD_LOGIC;
  signal frac_u_n_75 : STD_LOGIC;
  signal frac_u_n_76 : STD_LOGIC;
  signal frac_u_n_77 : STD_LOGIC;
  signal frac_u_n_78 : STD_LOGIC;
  signal \^fx_enable_0\ : STD_LOGIC;
  signal out_buf_valid_i_2_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal rd_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^rd_en_reg\ : STD_LOGIC;
  signal \^reg_ctrl_reg[0]\ : STD_LOGIC;
  signal s0_reg : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^state_reg[0]_0\ : STD_LOGIC;
  signal \^state_reg[0]_1\ : STD_LOGIC;
  signal \^state_reg[1]_0\ : STD_LOGIC;
  signal wptr_latched : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal wptr_reg : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal wptr_reg0 : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal \wptr_reg0_carry__0_n_0\ : STD_LOGIC;
  signal \wptr_reg0_carry__0_n_1\ : STD_LOGIC;
  signal \wptr_reg0_carry__0_n_2\ : STD_LOGIC;
  signal \wptr_reg0_carry__0_n_3\ : STD_LOGIC;
  signal \wptr_reg0_carry__1_n_0\ : STD_LOGIC;
  signal \wptr_reg0_carry__1_n_1\ : STD_LOGIC;
  signal \wptr_reg0_carry__1_n_2\ : STD_LOGIC;
  signal \wptr_reg0_carry__1_n_3\ : STD_LOGIC;
  signal \wptr_reg0_carry__2_n_3\ : STD_LOGIC;
  signal wptr_reg0_carry_n_0 : STD_LOGIC;
  signal wptr_reg0_carry_n_1 : STD_LOGIC;
  signal wptr_reg0_carry_n_2 : STD_LOGIC;
  signal wptr_reg0_carry_n_3 : STD_LOGIC;
  signal \wptr_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \wptr_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \wptr_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \wptr_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \wptr_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \wptr_reg[14]_i_2_n_0\ : STD_LOGIC;
  signal \wptr_reg[14]_i_3_n_0\ : STD_LOGIC;
  signal \wptr_reg[14]_i_4_n_0\ : STD_LOGIC;
  signal \wptr_reg[14]_i_5_n_0\ : STD_LOGIC;
  signal \wptr_reg[14]_i_6_n_0\ : STD_LOGIC;
  signal \wptr_reg[14]_i_7_n_0\ : STD_LOGIC;
  signal \wptr_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \wptr_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \wptr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \wptr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \wptr_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \wptr_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \wptr_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \wptr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \wptr_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal wptr_reg_0 : STD_LOGIC;
  signal \NLW_clear_addr_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_clear_addr_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_wptr_reg0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_wptr_reg0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_5\ : label is "soft_lutpair34";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[0]_rep\ : label is "bram_wr_addr_reg[0]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[0]_rep__0\ : label is "bram_wr_addr_reg[0]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[0]_rep__1\ : label is "bram_wr_addr_reg[0]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[0]_rep__2\ : label is "bram_wr_addr_reg[0]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[10]_rep\ : label is "bram_wr_addr_reg[10]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[10]_rep__0\ : label is "bram_wr_addr_reg[10]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[10]_rep__1\ : label is "bram_wr_addr_reg[10]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[10]_rep__2\ : label is "bram_wr_addr_reg[10]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[11]_rep\ : label is "bram_wr_addr_reg[11]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[11]_rep__0\ : label is "bram_wr_addr_reg[11]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[11]_rep__1\ : label is "bram_wr_addr_reg[11]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[11]_rep__2\ : label is "bram_wr_addr_reg[11]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[12]_rep\ : label is "bram_wr_addr_reg[12]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[12]_rep__0\ : label is "bram_wr_addr_reg[12]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[12]_rep__1\ : label is "bram_wr_addr_reg[12]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[12]_rep__2\ : label is "bram_wr_addr_reg[12]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[13]_rep\ : label is "bram_wr_addr_reg[13]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[13]_rep__0\ : label is "bram_wr_addr_reg[13]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[13]_rep__1\ : label is "bram_wr_addr_reg[13]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[13]_rep__2\ : label is "bram_wr_addr_reg[13]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[14]_rep\ : label is "bram_wr_addr_reg[14]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[14]_rep__0\ : label is "bram_wr_addr_reg[14]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[14]_rep__1\ : label is "bram_wr_addr_reg[14]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[14]_rep__2\ : label is "bram_wr_addr_reg[14]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[1]_rep\ : label is "bram_wr_addr_reg[1]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[1]_rep__0\ : label is "bram_wr_addr_reg[1]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[1]_rep__1\ : label is "bram_wr_addr_reg[1]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[1]_rep__2\ : label is "bram_wr_addr_reg[1]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[2]_rep\ : label is "bram_wr_addr_reg[2]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[2]_rep__0\ : label is "bram_wr_addr_reg[2]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[2]_rep__1\ : label is "bram_wr_addr_reg[2]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[2]_rep__2\ : label is "bram_wr_addr_reg[2]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[3]_rep\ : label is "bram_wr_addr_reg[3]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[3]_rep__0\ : label is "bram_wr_addr_reg[3]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[3]_rep__1\ : label is "bram_wr_addr_reg[3]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[3]_rep__2\ : label is "bram_wr_addr_reg[3]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[4]_rep\ : label is "bram_wr_addr_reg[4]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[4]_rep__0\ : label is "bram_wr_addr_reg[4]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[4]_rep__1\ : label is "bram_wr_addr_reg[4]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[4]_rep__2\ : label is "bram_wr_addr_reg[4]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[5]_rep\ : label is "bram_wr_addr_reg[5]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[5]_rep__0\ : label is "bram_wr_addr_reg[5]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[5]_rep__1\ : label is "bram_wr_addr_reg[5]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[5]_rep__2\ : label is "bram_wr_addr_reg[5]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[6]_rep\ : label is "bram_wr_addr_reg[6]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[6]_rep__0\ : label is "bram_wr_addr_reg[6]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[6]_rep__1\ : label is "bram_wr_addr_reg[6]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[6]_rep__2\ : label is "bram_wr_addr_reg[6]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[7]_rep\ : label is "bram_wr_addr_reg[7]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[7]_rep__0\ : label is "bram_wr_addr_reg[7]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[7]_rep__1\ : label is "bram_wr_addr_reg[7]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[7]_rep__2\ : label is "bram_wr_addr_reg[7]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[8]_rep\ : label is "bram_wr_addr_reg[8]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[8]_rep__0\ : label is "bram_wr_addr_reg[8]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[8]_rep__1\ : label is "bram_wr_addr_reg[8]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[8]_rep__2\ : label is "bram_wr_addr_reg[8]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[9]_rep\ : label is "bram_wr_addr_reg[9]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[9]_rep__0\ : label is "bram_wr_addr_reg[9]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[9]_rep__1\ : label is "bram_wr_addr_reg[9]";
  attribute ORIG_CELL_NAME of \bram_wr_addr_reg[9]_rep__2\ : label is "bram_wr_addr_reg[9]";
  attribute SOFT_HLUTNM of \bram_wr_data[0]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \bram_wr_data[10]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \bram_wr_data[11]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \bram_wr_data[12]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \bram_wr_data[13]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \bram_wr_data[14]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \bram_wr_data[15]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \bram_wr_data[16]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \bram_wr_data[17]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \bram_wr_data[18]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \bram_wr_data[19]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \bram_wr_data[1]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \bram_wr_data[20]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \bram_wr_data[21]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \bram_wr_data[22]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \bram_wr_data[23]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \bram_wr_data[24]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \bram_wr_data[25]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \bram_wr_data[26]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \bram_wr_data[27]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \bram_wr_data[28]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \bram_wr_data[29]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \bram_wr_data[2]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \bram_wr_data[30]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \bram_wr_data[31]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \bram_wr_data[3]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \bram_wr_data[4]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \bram_wr_data[5]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \bram_wr_data[6]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \bram_wr_data[7]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \bram_wr_data[8]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \bram_wr_data[9]_i_1\ : label is "soft_lutpair54";
  attribute ORIG_CELL_NAME of bram_wr_en_reg_rep : label is "bram_wr_en_reg";
  attribute ORIG_CELL_NAME of \bram_wr_en_reg_rep__0\ : label is "bram_wr_en_reg";
  attribute ORIG_CELL_NAME of \bram_wr_en_reg_rep__1\ : label is "bram_wr_en_reg";
  attribute ORIG_CELL_NAME of \bram_wr_en_reg_rep__10\ : label is "bram_wr_en_reg";
  attribute ORIG_CELL_NAME of \bram_wr_en_reg_rep__11\ : label is "bram_wr_en_reg";
  attribute ORIG_CELL_NAME of \bram_wr_en_reg_rep__2\ : label is "bram_wr_en_reg";
  attribute ORIG_CELL_NAME of \bram_wr_en_reg_rep__3\ : label is "bram_wr_en_reg";
  attribute ORIG_CELL_NAME of \bram_wr_en_reg_rep__4\ : label is "bram_wr_en_reg";
  attribute ORIG_CELL_NAME of \bram_wr_en_reg_rep__5\ : label is "bram_wr_en_reg";
  attribute ORIG_CELL_NAME of \bram_wr_en_reg_rep__6\ : label is "bram_wr_en_reg";
  attribute ORIG_CELL_NAME of \bram_wr_en_reg_rep__7\ : label is "bram_wr_en_reg";
  attribute ORIG_CELL_NAME of \bram_wr_en_reg_rep__8\ : label is "bram_wr_en_reg";
  attribute ORIG_CELL_NAME of \bram_wr_en_reg_rep__9\ : label is "bram_wr_en_reg";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \clear_addr_reg[0]_i_3\ : label is 11;
  attribute ADDER_THRESHOLD of \clear_addr_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \clear_addr_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \clear_addr_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \fb_term_r[31]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of out_buf_valid_i_2 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0_i_3 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \w_in[31]_i_1\ : label is "soft_lutpair35";
  attribute ADDER_THRESHOLD of wptr_reg0_carry : label is 35;
  attribute ADDER_THRESHOLD of \wptr_reg0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \wptr_reg0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \wptr_reg0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \wptr_reg[10]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \wptr_reg[11]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \wptr_reg[12]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \wptr_reg[13]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \wptr_reg[14]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \wptr_reg[14]_i_7\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \wptr_reg[1]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \wptr_reg[2]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \wptr_reg[3]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \wptr_reg[4]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \wptr_reg[5]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \wptr_reg[6]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \wptr_reg[7]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \wptr_reg[8]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \wptr_reg[9]_i_1\ : label is "soft_lutpair38";
begin
  \FSM_sequential_state_reg[0]_0\(0) <= \^fsm_sequential_state_reg[0]_0\(0);
  \FSM_sequential_state_reg[1]_0\ <= \^fsm_sequential_state_reg[1]_0\;
  \FSM_sequential_state_reg[2]_0\ <= \^fsm_sequential_state_reg[2]_0\;
  SR(0) <= \^sr\(0);
  d_reg_valid_reg_0 <= \^d_reg_valid_reg_0\;
  fx_enable_0 <= \^fx_enable_0\;
  rd_en_reg <= \^rd_en_reg\;
  \reg_ctrl_reg[0]\ <= \^reg_ctrl_reg[0]\;
  \state_reg[0]_0\ <= \^state_reg[0]_0\;
  \state_reg[0]_1\ <= \^state_reg[0]_1\;
  \state_reg[1]_0\ <= \^state_reg[1]_0\;
\D_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fx_enable_0\,
      D => Q(16),
      Q => D_reg(16),
      R => \^sr\(0)
    );
\D_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fx_enable_0\,
      D => Q(17),
      Q => D_reg(17),
      R => \^sr\(0)
    );
\D_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fx_enable_0\,
      D => Q(18),
      Q => D_reg(18),
      R => \^sr\(0)
    );
\D_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fx_enable_0\,
      D => Q(19),
      Q => D_reg(19),
      R => \^sr\(0)
    );
\D_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fx_enable_0\,
      D => Q(20),
      Q => D_reg(20),
      R => \^sr\(0)
    );
\D_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fx_enable_0\,
      D => Q(21),
      Q => D_reg(21),
      R => \^sr\(0)
    );
\D_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fx_enable_0\,
      D => Q(22),
      Q => D_reg(22),
      R => \^sr\(0)
    );
\D_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fx_enable_0\,
      D => Q(23),
      Q => D_reg(23),
      R => \^sr\(0)
    );
\D_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fx_enable_0\,
      D => Q(24),
      Q => D_reg(24),
      R => \^sr\(0)
    );
\D_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fx_enable_0\,
      D => Q(25),
      Q => D_reg(25),
      R => \^sr\(0)
    );
\D_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fx_enable_0\,
      D => Q(26),
      Q => D_reg(26),
      R => \^sr\(0)
    );
\D_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fx_enable_0\,
      D => Q(27),
      Q => D_reg(27),
      R => \^sr\(0)
    );
\D_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fx_enable_0\,
      D => Q(28),
      Q => D_reg(28),
      R => \^sr\(0)
    );
\D_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fx_enable_0\,
      D => Q(29),
      Q => D_reg(29),
      R => \^sr\(0)
    );
\D_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fx_enable_0\,
      D => Q(30),
      Q => D_reg(30),
      R => \^sr\(0)
    );
\D_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fx_enable_0\,
      D => Q(31),
      Q => D_reg(31),
      R => \^sr\(0)
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CDCCCCCC"
    )
        port map (
      I0 => \^state_reg[0]_1\,
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \^state_reg[1]_0\,
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5FFFFFF"
    )
        port map (
      I0 => rst_n,
      I1 => \^state_reg[0]_1\,
      I2 => \^state_reg[1]_0\,
      I3 => fx_enable,
      I4 => \x_reg_reg[6]\(0),
      O => \FSM_sequential_state[2]_i_5_n_0\
    );
bram_u: entity work.design_1_fx_system_wrapper_0_1_delay_bram
     port map (
      ADDRARDADDR(14) => \bram_wr_addr_reg[14]_rep__2_n_0\,
      ADDRARDADDR(13) => \bram_wr_addr_reg[13]_rep__2_n_0\,
      ADDRARDADDR(12) => \bram_wr_addr_reg[12]_rep__2_n_0\,
      ADDRARDADDR(11) => \bram_wr_addr_reg[11]_rep__2_n_0\,
      ADDRARDADDR(10) => \bram_wr_addr_reg[10]_rep__2_n_0\,
      ADDRARDADDR(9) => \bram_wr_addr_reg[9]_rep__2_n_0\,
      ADDRARDADDR(8) => \bram_wr_addr_reg[8]_rep__2_n_0\,
      ADDRARDADDR(7) => \bram_wr_addr_reg[7]_rep__2_n_0\,
      ADDRARDADDR(6) => \bram_wr_addr_reg[6]_rep__2_n_0\,
      ADDRARDADDR(5) => \bram_wr_addr_reg[5]_rep__2_n_0\,
      ADDRARDADDR(4) => \bram_wr_addr_reg[4]_rep__2_n_0\,
      ADDRARDADDR(3) => \bram_wr_addr_reg[3]_rep__2_n_0\,
      ADDRARDADDR(2) => \bram_wr_addr_reg[2]_rep__2_n_0\,
      ADDRARDADDR(1) => \bram_wr_addr_reg[1]_rep__2_n_0\,
      ADDRARDADDR(0) => \bram_wr_addr_reg[0]_rep__2_n_0\,
      ADDRBWRADDR(14) => frac_u_n_19,
      ADDRBWRADDR(13) => frac_u_n_20,
      ADDRBWRADDR(12) => frac_u_n_21,
      ADDRBWRADDR(11) => frac_u_n_22,
      ADDRBWRADDR(10) => frac_u_n_23,
      ADDRBWRADDR(9) => frac_u_n_24,
      ADDRBWRADDR(8) => frac_u_n_25,
      ADDRBWRADDR(7) => frac_u_n_26,
      ADDRBWRADDR(6) => frac_u_n_27,
      ADDRBWRADDR(5) => frac_u_n_28,
      ADDRBWRADDR(4) => frac_u_n_29,
      ADDRBWRADDR(3) => frac_u_n_30,
      ADDRBWRADDR(2) => frac_u_n_31,
      ADDRBWRADDR(1) => frac_u_n_32,
      ADDRBWRADDR(0) => frac_u_n_33,
      Q(31) => p_1_in,
      Q(30 downto 0) => s0_reg(30 downto 0),
      S(3) => bram_u_n_1,
      S(2) => bram_u_n_2,
      S(1) => bram_u_n_3,
      S(0) => bram_u_n_4,
      WEA(1) => \bram_wr_en_reg_rep__0_n_0\,
      WEA(0) => bram_wr_en_reg_rep_n_0,
      bram_doutb(31 downto 0) => rd_data(31 downto 0),
      bram_rd_valid => bram_rd_valid,
      clk => clk,
      mem_reg_0_10_0(14) => frac_u_n_34,
      mem_reg_0_10_0(13) => frac_u_n_35,
      mem_reg_0_10_0(12) => frac_u_n_36,
      mem_reg_0_10_0(11) => frac_u_n_37,
      mem_reg_0_10_0(10) => frac_u_n_38,
      mem_reg_0_10_0(9) => frac_u_n_39,
      mem_reg_0_10_0(8) => frac_u_n_40,
      mem_reg_0_10_0(7) => frac_u_n_41,
      mem_reg_0_10_0(6) => frac_u_n_42,
      mem_reg_0_10_0(5) => frac_u_n_43,
      mem_reg_0_10_0(4) => frac_u_n_44,
      mem_reg_0_10_0(3) => frac_u_n_45,
      mem_reg_0_10_0(2) => frac_u_n_46,
      mem_reg_0_10_0(1) => frac_u_n_47,
      mem_reg_0_10_0(0) => frac_u_n_48,
      mem_reg_0_11_0(3) => bram_u_n_41,
      mem_reg_0_11_0(2) => bram_u_n_42,
      mem_reg_0_11_0(1) => bram_u_n_43,
      mem_reg_0_11_0(0) => bram_u_n_44,
      mem_reg_0_11_1 => frac_u_n_6,
      mem_reg_0_11_2(14) => \bram_wr_addr_reg[14]_rep__1_n_0\,
      mem_reg_0_11_2(13) => \bram_wr_addr_reg[13]_rep__1_n_0\,
      mem_reg_0_11_2(12) => \bram_wr_addr_reg[12]_rep__1_n_0\,
      mem_reg_0_11_2(11) => \bram_wr_addr_reg[11]_rep__1_n_0\,
      mem_reg_0_11_2(10) => \bram_wr_addr_reg[10]_rep__1_n_0\,
      mem_reg_0_11_2(9) => \bram_wr_addr_reg[9]_rep__1_n_0\,
      mem_reg_0_11_2(8) => \bram_wr_addr_reg[8]_rep__1_n_0\,
      mem_reg_0_11_2(7) => \bram_wr_addr_reg[7]_rep__1_n_0\,
      mem_reg_0_11_2(6) => \bram_wr_addr_reg[6]_rep__1_n_0\,
      mem_reg_0_11_2(5) => \bram_wr_addr_reg[5]_rep__1_n_0\,
      mem_reg_0_11_2(4) => \bram_wr_addr_reg[4]_rep__1_n_0\,
      mem_reg_0_11_2(3) => \bram_wr_addr_reg[3]_rep__1_n_0\,
      mem_reg_0_11_2(2) => \bram_wr_addr_reg[2]_rep__1_n_0\,
      mem_reg_0_11_2(1) => \bram_wr_addr_reg[1]_rep__1_n_0\,
      mem_reg_0_11_2(0) => \bram_wr_addr_reg[0]_rep__1_n_0\,
      mem_reg_0_13_0(1) => \bram_wr_en_reg_rep__3_n_0\,
      mem_reg_0_13_0(0) => \bram_wr_en_reg_rep__2_n_0\,
      mem_reg_0_14_0 => \bram_wr_en_reg_rep__10_n_0\,
      mem_reg_0_15_0(3) => bram_u_n_45,
      mem_reg_0_15_0(2) => bram_u_n_46,
      mem_reg_0_15_0(1) => bram_u_n_47,
      mem_reg_0_15_0(0) => bram_u_n_48,
      mem_reg_0_16_0(0) => \bram_wr_en_reg_rep__4_n_0\,
      mem_reg_0_19_0(3) => bram_u_n_49,
      mem_reg_0_19_0(2) => bram_u_n_50,
      mem_reg_0_19_0(1) => bram_u_n_51,
      mem_reg_0_19_0(0) => bram_u_n_52,
      mem_reg_0_20_0(14) => frac_u_n_49,
      mem_reg_0_20_0(13) => frac_u_n_50,
      mem_reg_0_20_0(12) => frac_u_n_51,
      mem_reg_0_20_0(11) => frac_u_n_52,
      mem_reg_0_20_0(10) => frac_u_n_53,
      mem_reg_0_20_0(9) => frac_u_n_54,
      mem_reg_0_20_0(8) => frac_u_n_55,
      mem_reg_0_20_0(7) => frac_u_n_56,
      mem_reg_0_20_0(6) => frac_u_n_57,
      mem_reg_0_20_0(5) => frac_u_n_58,
      mem_reg_0_20_0(4) => frac_u_n_59,
      mem_reg_0_20_0(3) => frac_u_n_60,
      mem_reg_0_20_0(2) => frac_u_n_61,
      mem_reg_0_20_0(1) => frac_u_n_62,
      mem_reg_0_20_0(0) => frac_u_n_63,
      mem_reg_0_21_0(14) => \bram_wr_addr_reg[14]_rep__0_n_0\,
      mem_reg_0_21_0(13) => \bram_wr_addr_reg[13]_rep__0_n_0\,
      mem_reg_0_21_0(12) => \bram_wr_addr_reg[12]_rep__0_n_0\,
      mem_reg_0_21_0(11) => \bram_wr_addr_reg[11]_rep__0_n_0\,
      mem_reg_0_21_0(10) => \bram_wr_addr_reg[10]_rep__0_n_0\,
      mem_reg_0_21_0(9) => \bram_wr_addr_reg[9]_rep__0_n_0\,
      mem_reg_0_21_0(8) => \bram_wr_addr_reg[8]_rep__0_n_0\,
      mem_reg_0_21_0(7) => \bram_wr_addr_reg[7]_rep__0_n_0\,
      mem_reg_0_21_0(6) => \bram_wr_addr_reg[6]_rep__0_n_0\,
      mem_reg_0_21_0(5) => \bram_wr_addr_reg[5]_rep__0_n_0\,
      mem_reg_0_21_0(4) => \bram_wr_addr_reg[4]_rep__0_n_0\,
      mem_reg_0_21_0(3) => \bram_wr_addr_reg[3]_rep__0_n_0\,
      mem_reg_0_21_0(2) => \bram_wr_addr_reg[2]_rep__0_n_0\,
      mem_reg_0_21_0(1) => \bram_wr_addr_reg[1]_rep__0_n_0\,
      mem_reg_0_21_0(0) => \bram_wr_addr_reg[0]_rep__0_n_0\,
      mem_reg_0_23_0(3) => bram_u_n_53,
      mem_reg_0_23_0(2) => bram_u_n_54,
      mem_reg_0_23_0(1) => bram_u_n_55,
      mem_reg_0_23_0(0) => bram_u_n_56,
      mem_reg_0_23_1(1) => \bram_wr_en_reg_rep__6_n_0\,
      mem_reg_0_23_1(0) => \bram_wr_en_reg_rep__5_n_0\,
      mem_reg_0_26_0(0) => \bram_wr_en_reg_rep__7_n_0\,
      mem_reg_0_27_0(3) => bram_u_n_57,
      mem_reg_0_27_0(2) => bram_u_n_58,
      mem_reg_0_27_0(1) => bram_u_n_59,
      mem_reg_0_27_0(0) => bram_u_n_60,
      mem_reg_0_30_0 => \bram_wr_en_reg_rep__8_n_0\,
      mem_reg_0_31_0(3) => bram_u_n_61,
      mem_reg_0_31_0(2) => bram_u_n_62,
      mem_reg_0_31_0(1) => bram_u_n_63,
      mem_reg_0_31_0(0) => bram_u_n_64,
      mem_reg_0_31_1(31 downto 0) => bram_wr_data(31 downto 0),
      mem_reg_0_31_2(14) => \bram_wr_addr_reg[14]_rep_n_0\,
      mem_reg_0_31_2(13) => \bram_wr_addr_reg[13]_rep_n_0\,
      mem_reg_0_31_2(12) => \bram_wr_addr_reg[12]_rep_n_0\,
      mem_reg_0_31_2(11) => \bram_wr_addr_reg[11]_rep_n_0\,
      mem_reg_0_31_2(10) => \bram_wr_addr_reg[10]_rep_n_0\,
      mem_reg_0_31_2(9) => \bram_wr_addr_reg[9]_rep_n_0\,
      mem_reg_0_31_2(8) => \bram_wr_addr_reg[8]_rep_n_0\,
      mem_reg_0_31_2(7) => \bram_wr_addr_reg[7]_rep_n_0\,
      mem_reg_0_31_2(6) => \bram_wr_addr_reg[6]_rep_n_0\,
      mem_reg_0_31_2(5) => \bram_wr_addr_reg[5]_rep_n_0\,
      mem_reg_0_31_2(4) => \bram_wr_addr_reg[4]_rep_n_0\,
      mem_reg_0_31_2(3) => \bram_wr_addr_reg[3]_rep_n_0\,
      mem_reg_0_31_2(2) => \bram_wr_addr_reg[2]_rep_n_0\,
      mem_reg_0_31_2(1) => \bram_wr_addr_reg[1]_rep_n_0\,
      mem_reg_0_31_2(0) => \bram_wr_addr_reg[0]_rep_n_0\,
      mem_reg_0_4_0 => \bram_wr_en_reg_rep__9_n_0\,
      mem_reg_0_6_0(0) => \bram_wr_en_reg_rep__1_n_0\,
      mem_reg_0_7_0(3) => bram_u_n_37,
      mem_reg_0_7_0(2) => bram_u_n_38,
      mem_reg_0_7_0(1) => bram_u_n_39,
      mem_reg_0_7_0(0) => bram_u_n_40,
      rd_addr(14) => frac_u_n_64,
      rd_addr(13) => frac_u_n_65,
      rd_addr(12) => frac_u_n_66,
      rd_addr(11) => frac_u_n_67,
      rd_addr(10) => frac_u_n_68,
      rd_addr(9) => frac_u_n_69,
      rd_addr(8) => frac_u_n_70,
      rd_addr(7) => frac_u_n_71,
      rd_addr(6) => frac_u_n_72,
      rd_addr(5) => frac_u_n_73,
      rd_addr(4) => frac_u_n_74,
      rd_addr(3) => frac_u_n_75,
      rd_addr(2) => frac_u_n_76,
      rd_addr(1) => frac_u_n_77,
      rd_addr(0) => frac_u_n_78,
      rd_en => \^rd_en_reg\,
      vld_d2_reg_0 => \^sr\(0),
      wr_en => \bram_wr_en_reg_rep__11_n_0\
    );
\bram_wr_addr[0]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(0),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(0),
      O => \bram_wr_addr[0]_rep__0_i_1_n_0\
    );
\bram_wr_addr[0]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(0),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(0),
      O => \bram_wr_addr[0]_rep__1_i_1_n_0\
    );
\bram_wr_addr[0]_rep__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(0),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(0),
      O => \bram_wr_addr[0]_rep__2_i_1_n_0\
    );
\bram_wr_addr[0]_rep_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF001000"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(0),
      I3 => \^state_reg[1]_0\,
      I4 => \^state_reg[0]_1\,
      O => \^fsm_sequential_state_reg[1]_0\
    );
\bram_wr_addr[0]_rep_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(0),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(0),
      O => \bram_wr_addr[0]_rep_i_2_n_0\
    );
\bram_wr_addr[10]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(10),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(10),
      O => \bram_wr_addr[10]_rep__0_i_1_n_0\
    );
\bram_wr_addr[10]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(10),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(10),
      O => \bram_wr_addr[10]_rep__1_i_1_n_0\
    );
\bram_wr_addr[10]_rep__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(10),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(10),
      O => \bram_wr_addr[10]_rep__2_i_1_n_0\
    );
\bram_wr_addr[10]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(10),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(10),
      O => \bram_wr_addr[10]_rep_i_1_n_0\
    );
\bram_wr_addr[11]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(11),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(11),
      O => \bram_wr_addr[11]_rep__0_i_1_n_0\
    );
\bram_wr_addr[11]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(11),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(11),
      O => \bram_wr_addr[11]_rep__1_i_1_n_0\
    );
\bram_wr_addr[11]_rep__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(11),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(11),
      O => \bram_wr_addr[11]_rep__2_i_1_n_0\
    );
\bram_wr_addr[11]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(11),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(11),
      O => \bram_wr_addr[11]_rep_i_1_n_0\
    );
\bram_wr_addr[12]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(12),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(12),
      O => \bram_wr_addr[12]_rep__0_i_1_n_0\
    );
\bram_wr_addr[12]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(12),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(12),
      O => \bram_wr_addr[12]_rep__1_i_1_n_0\
    );
\bram_wr_addr[12]_rep__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(12),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(12),
      O => \bram_wr_addr[12]_rep__2_i_1_n_0\
    );
\bram_wr_addr[12]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(12),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(12),
      O => \bram_wr_addr[12]_rep_i_1_n_0\
    );
\bram_wr_addr[13]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(13),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(13),
      O => \bram_wr_addr[13]_rep__0_i_1_n_0\
    );
\bram_wr_addr[13]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(13),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(13),
      O => \bram_wr_addr[13]_rep__1_i_1_n_0\
    );
\bram_wr_addr[13]_rep__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(13),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(13),
      O => \bram_wr_addr[13]_rep__2_i_1_n_0\
    );
\bram_wr_addr[13]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(13),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(13),
      O => \bram_wr_addr[13]_rep_i_1_n_0\
    );
\bram_wr_addr[14]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(14),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(14),
      O => \bram_wr_addr[14]_rep__0_i_1_n_0\
    );
\bram_wr_addr[14]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(14),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(14),
      O => \bram_wr_addr[14]_rep__1_i_1_n_0\
    );
\bram_wr_addr[14]_rep__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(14),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(14),
      O => \bram_wr_addr[14]_rep__2_i_1_n_0\
    );
\bram_wr_addr[14]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(14),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(14),
      O => \bram_wr_addr[14]_rep_i_1_n_0\
    );
\bram_wr_addr[1]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(1),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(1),
      O => \bram_wr_addr[1]_rep__0_i_1_n_0\
    );
\bram_wr_addr[1]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(1),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(1),
      O => \bram_wr_addr[1]_rep__1_i_1_n_0\
    );
\bram_wr_addr[1]_rep__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(1),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(1),
      O => \bram_wr_addr[1]_rep__2_i_1_n_0\
    );
\bram_wr_addr[1]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(1),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(1),
      O => \bram_wr_addr[1]_rep_i_1_n_0\
    );
\bram_wr_addr[2]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(2),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(2),
      O => \bram_wr_addr[2]_rep__0_i_1_n_0\
    );
\bram_wr_addr[2]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(2),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(2),
      O => \bram_wr_addr[2]_rep__1_i_1_n_0\
    );
\bram_wr_addr[2]_rep__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(2),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(2),
      O => \bram_wr_addr[2]_rep__2_i_1_n_0\
    );
\bram_wr_addr[2]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(2),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(2),
      O => \bram_wr_addr[2]_rep_i_1_n_0\
    );
\bram_wr_addr[3]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(3),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(3),
      O => \bram_wr_addr[3]_rep__0_i_1_n_0\
    );
\bram_wr_addr[3]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(3),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(3),
      O => \bram_wr_addr[3]_rep__1_i_1_n_0\
    );
\bram_wr_addr[3]_rep__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(3),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(3),
      O => \bram_wr_addr[3]_rep__2_i_1_n_0\
    );
\bram_wr_addr[3]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(3),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(3),
      O => \bram_wr_addr[3]_rep_i_1_n_0\
    );
\bram_wr_addr[4]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(4),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(4),
      O => \bram_wr_addr[4]_rep__0_i_1_n_0\
    );
\bram_wr_addr[4]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(4),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(4),
      O => \bram_wr_addr[4]_rep__1_i_1_n_0\
    );
\bram_wr_addr[4]_rep__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(4),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(4),
      O => \bram_wr_addr[4]_rep__2_i_1_n_0\
    );
\bram_wr_addr[4]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(4),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(4),
      O => \bram_wr_addr[4]_rep_i_1_n_0\
    );
\bram_wr_addr[5]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(5),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(5),
      O => \bram_wr_addr[5]_rep__0_i_1_n_0\
    );
\bram_wr_addr[5]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(5),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(5),
      O => \bram_wr_addr[5]_rep__1_i_1_n_0\
    );
\bram_wr_addr[5]_rep__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(5),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(5),
      O => \bram_wr_addr[5]_rep__2_i_1_n_0\
    );
\bram_wr_addr[5]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(5),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(5),
      O => \bram_wr_addr[5]_rep_i_1_n_0\
    );
\bram_wr_addr[6]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(6),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(6),
      O => \bram_wr_addr[6]_rep__0_i_1_n_0\
    );
\bram_wr_addr[6]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(6),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(6),
      O => \bram_wr_addr[6]_rep__1_i_1_n_0\
    );
\bram_wr_addr[6]_rep__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(6),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(6),
      O => \bram_wr_addr[6]_rep__2_i_1_n_0\
    );
\bram_wr_addr[6]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(6),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(6),
      O => \bram_wr_addr[6]_rep_i_1_n_0\
    );
\bram_wr_addr[7]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(7),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(7),
      O => \bram_wr_addr[7]_rep__0_i_1_n_0\
    );
\bram_wr_addr[7]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(7),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(7),
      O => \bram_wr_addr[7]_rep__1_i_1_n_0\
    );
\bram_wr_addr[7]_rep__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(7),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(7),
      O => \bram_wr_addr[7]_rep__2_i_1_n_0\
    );
\bram_wr_addr[7]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(7),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(7),
      O => \bram_wr_addr[7]_rep_i_1_n_0\
    );
\bram_wr_addr[8]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(8),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(8),
      O => \bram_wr_addr[8]_rep__0_i_1_n_0\
    );
\bram_wr_addr[8]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(8),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(8),
      O => \bram_wr_addr[8]_rep__1_i_1_n_0\
    );
\bram_wr_addr[8]_rep__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(8),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(8),
      O => \bram_wr_addr[8]_rep__2_i_1_n_0\
    );
\bram_wr_addr[8]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(8),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(8),
      O => \bram_wr_addr[8]_rep_i_1_n_0\
    );
\bram_wr_addr[9]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(9),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(9),
      O => \bram_wr_addr[9]_rep__0_i_1_n_0\
    );
\bram_wr_addr[9]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(9),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(9),
      O => \bram_wr_addr[9]_rep__1_i_1_n_0\
    );
\bram_wr_addr[9]_rep__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(9),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(9),
      O => \bram_wr_addr[9]_rep__2_i_1_n_0\
    );
\bram_wr_addr[9]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clear_addr_reg(9),
      I1 => \^state_reg[0]_1\,
      I2 => wptr_latched(9),
      O => \bram_wr_addr[9]_rep_i_1_n_0\
    );
\bram_wr_addr_reg[0]_rep\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[0]_rep_i_2_n_0\,
      Q => \bram_wr_addr_reg[0]_rep_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[0]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[0]_rep__0_i_1_n_0\,
      Q => \bram_wr_addr_reg[0]_rep__0_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[0]_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[0]_rep__1_i_1_n_0\,
      Q => \bram_wr_addr_reg[0]_rep__1_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[0]_rep__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[0]_rep__2_i_1_n_0\,
      Q => \bram_wr_addr_reg[0]_rep__2_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[10]_rep\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[10]_rep_i_1_n_0\,
      Q => \bram_wr_addr_reg[10]_rep_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[10]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[10]_rep__0_i_1_n_0\,
      Q => \bram_wr_addr_reg[10]_rep__0_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[10]_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[10]_rep__1_i_1_n_0\,
      Q => \bram_wr_addr_reg[10]_rep__1_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[10]_rep__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[10]_rep__2_i_1_n_0\,
      Q => \bram_wr_addr_reg[10]_rep__2_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[11]_rep\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[11]_rep_i_1_n_0\,
      Q => \bram_wr_addr_reg[11]_rep_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[11]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[11]_rep__0_i_1_n_0\,
      Q => \bram_wr_addr_reg[11]_rep__0_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[11]_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[11]_rep__1_i_1_n_0\,
      Q => \bram_wr_addr_reg[11]_rep__1_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[11]_rep__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[11]_rep__2_i_1_n_0\,
      Q => \bram_wr_addr_reg[11]_rep__2_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[12]_rep\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[12]_rep_i_1_n_0\,
      Q => \bram_wr_addr_reg[12]_rep_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[12]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[12]_rep__0_i_1_n_0\,
      Q => \bram_wr_addr_reg[12]_rep__0_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[12]_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[12]_rep__1_i_1_n_0\,
      Q => \bram_wr_addr_reg[12]_rep__1_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[12]_rep__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[12]_rep__2_i_1_n_0\,
      Q => \bram_wr_addr_reg[12]_rep__2_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[13]_rep\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[13]_rep_i_1_n_0\,
      Q => \bram_wr_addr_reg[13]_rep_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[13]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[13]_rep__0_i_1_n_0\,
      Q => \bram_wr_addr_reg[13]_rep__0_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[13]_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[13]_rep__1_i_1_n_0\,
      Q => \bram_wr_addr_reg[13]_rep__1_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[13]_rep__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[13]_rep__2_i_1_n_0\,
      Q => \bram_wr_addr_reg[13]_rep__2_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[14]_rep\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[14]_rep_i_1_n_0\,
      Q => \bram_wr_addr_reg[14]_rep_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[14]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[14]_rep__0_i_1_n_0\,
      Q => \bram_wr_addr_reg[14]_rep__0_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[14]_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[14]_rep__1_i_1_n_0\,
      Q => \bram_wr_addr_reg[14]_rep__1_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[14]_rep__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[14]_rep__2_i_1_n_0\,
      Q => \bram_wr_addr_reg[14]_rep__2_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[1]_rep\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[1]_rep_i_1_n_0\,
      Q => \bram_wr_addr_reg[1]_rep_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[1]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[1]_rep__0_i_1_n_0\,
      Q => \bram_wr_addr_reg[1]_rep__0_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[1]_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[1]_rep__1_i_1_n_0\,
      Q => \bram_wr_addr_reg[1]_rep__1_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[1]_rep__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[1]_rep__2_i_1_n_0\,
      Q => \bram_wr_addr_reg[1]_rep__2_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[2]_rep\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[2]_rep_i_1_n_0\,
      Q => \bram_wr_addr_reg[2]_rep_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[2]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[2]_rep__0_i_1_n_0\,
      Q => \bram_wr_addr_reg[2]_rep__0_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[2]_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[2]_rep__1_i_1_n_0\,
      Q => \bram_wr_addr_reg[2]_rep__1_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[2]_rep__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[2]_rep__2_i_1_n_0\,
      Q => \bram_wr_addr_reg[2]_rep__2_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[3]_rep\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[3]_rep_i_1_n_0\,
      Q => \bram_wr_addr_reg[3]_rep_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[3]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[3]_rep__0_i_1_n_0\,
      Q => \bram_wr_addr_reg[3]_rep__0_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[3]_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[3]_rep__1_i_1_n_0\,
      Q => \bram_wr_addr_reg[3]_rep__1_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[3]_rep__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[3]_rep__2_i_1_n_0\,
      Q => \bram_wr_addr_reg[3]_rep__2_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[4]_rep\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[4]_rep_i_1_n_0\,
      Q => \bram_wr_addr_reg[4]_rep_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[4]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[4]_rep__0_i_1_n_0\,
      Q => \bram_wr_addr_reg[4]_rep__0_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[4]_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[4]_rep__1_i_1_n_0\,
      Q => \bram_wr_addr_reg[4]_rep__1_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[4]_rep__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[4]_rep__2_i_1_n_0\,
      Q => \bram_wr_addr_reg[4]_rep__2_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[5]_rep\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[5]_rep_i_1_n_0\,
      Q => \bram_wr_addr_reg[5]_rep_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[5]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[5]_rep__0_i_1_n_0\,
      Q => \bram_wr_addr_reg[5]_rep__0_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[5]_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[5]_rep__1_i_1_n_0\,
      Q => \bram_wr_addr_reg[5]_rep__1_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[5]_rep__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[5]_rep__2_i_1_n_0\,
      Q => \bram_wr_addr_reg[5]_rep__2_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[6]_rep\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[6]_rep_i_1_n_0\,
      Q => \bram_wr_addr_reg[6]_rep_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[6]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[6]_rep__0_i_1_n_0\,
      Q => \bram_wr_addr_reg[6]_rep__0_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[6]_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[6]_rep__1_i_1_n_0\,
      Q => \bram_wr_addr_reg[6]_rep__1_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[6]_rep__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[6]_rep__2_i_1_n_0\,
      Q => \bram_wr_addr_reg[6]_rep__2_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[7]_rep\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[7]_rep_i_1_n_0\,
      Q => \bram_wr_addr_reg[7]_rep_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[7]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[7]_rep__0_i_1_n_0\,
      Q => \bram_wr_addr_reg[7]_rep__0_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[7]_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[7]_rep__1_i_1_n_0\,
      Q => \bram_wr_addr_reg[7]_rep__1_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[7]_rep__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[7]_rep__2_i_1_n_0\,
      Q => \bram_wr_addr_reg[7]_rep__2_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[8]_rep\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[8]_rep_i_1_n_0\,
      Q => \bram_wr_addr_reg[8]_rep_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[8]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[8]_rep__0_i_1_n_0\,
      Q => \bram_wr_addr_reg[8]_rep__0_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[8]_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[8]_rep__1_i_1_n_0\,
      Q => \bram_wr_addr_reg[8]_rep__1_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[8]_rep__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[8]_rep__2_i_1_n_0\,
      Q => \bram_wr_addr_reg[8]_rep__2_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[9]_rep\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[9]_rep_i_1_n_0\,
      Q => \bram_wr_addr_reg[9]_rep_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[9]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[9]_rep__0_i_1_n_0\,
      Q => \bram_wr_addr_reg[9]_rep__0_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[9]_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[9]_rep__1_i_1_n_0\,
      Q => \bram_wr_addr_reg[9]_rep__1_n_0\,
      R => \^sr\(0)
    );
\bram_wr_addr_reg[9]_rep__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_addr[9]_rep__2_i_1_n_0\,
      Q => \bram_wr_addr_reg[9]_rep__2_n_0\,
      R => \^sr\(0)
    );
\bram_wr_data[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(0),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[0]_i_1_n_0\
    );
\bram_wr_data[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(10),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[10]_i_1_n_0\
    );
\bram_wr_data[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(11),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[11]_i_1_n_0\
    );
\bram_wr_data[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(12),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[12]_i_1_n_0\
    );
\bram_wr_data[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(13),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[13]_i_1_n_0\
    );
\bram_wr_data[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(14),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[14]_i_1_n_0\
    );
\bram_wr_data[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(15),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[15]_i_1_n_0\
    );
\bram_wr_data[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(16),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[16]_i_1_n_0\
    );
\bram_wr_data[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(17),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[17]_i_1_n_0\
    );
\bram_wr_data[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(18),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[18]_i_1_n_0\
    );
\bram_wr_data[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(19),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[19]_i_1_n_0\
    );
\bram_wr_data[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(1),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[1]_i_1_n_0\
    );
\bram_wr_data[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(20),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[20]_i_1_n_0\
    );
\bram_wr_data[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(21),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[21]_i_1_n_0\
    );
\bram_wr_data[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(22),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[22]_i_1_n_0\
    );
\bram_wr_data[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(23),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[23]_i_1_n_0\
    );
\bram_wr_data[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(24),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[24]_i_1_n_0\
    );
\bram_wr_data[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(25),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[25]_i_1_n_0\
    );
\bram_wr_data[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(26),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[26]_i_1_n_0\
    );
\bram_wr_data[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(27),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[27]_i_1_n_0\
    );
\bram_wr_data[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(28),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[28]_i_1_n_0\
    );
\bram_wr_data[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(29),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[29]_i_1_n_0\
    );
\bram_wr_data[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(2),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[2]_i_1_n_0\
    );
\bram_wr_data[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(30),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[30]_i_1_n_0\
    );
\bram_wr_data[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(31),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[31]_i_1_n_0\
    );
\bram_wr_data[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(3),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[3]_i_1_n_0\
    );
\bram_wr_data[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(4),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[4]_i_1_n_0\
    );
\bram_wr_data[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(5),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[5]_i_1_n_0\
    );
\bram_wr_data[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(6),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[6]_i_1_n_0\
    );
\bram_wr_data[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(7),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[7]_i_1_n_0\
    );
\bram_wr_data[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(8),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[8]_i_1_n_0\
    );
\bram_wr_data[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bram_wr_data_reg[31]_0\(9),
      I1 => \^state_reg[0]_1\,
      O => \bram_wr_data[9]_i_1_n_0\
    );
\bram_wr_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[0]_i_1_n_0\,
      Q => bram_wr_data(0),
      R => \^sr\(0)
    );
\bram_wr_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[10]_i_1_n_0\,
      Q => bram_wr_data(10),
      R => \^sr\(0)
    );
\bram_wr_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[11]_i_1_n_0\,
      Q => bram_wr_data(11),
      R => \^sr\(0)
    );
\bram_wr_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[12]_i_1_n_0\,
      Q => bram_wr_data(12),
      R => \^sr\(0)
    );
\bram_wr_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[13]_i_1_n_0\,
      Q => bram_wr_data(13),
      R => \^sr\(0)
    );
\bram_wr_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[14]_i_1_n_0\,
      Q => bram_wr_data(14),
      R => \^sr\(0)
    );
\bram_wr_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[15]_i_1_n_0\,
      Q => bram_wr_data(15),
      R => \^sr\(0)
    );
\bram_wr_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[16]_i_1_n_0\,
      Q => bram_wr_data(16),
      R => \^sr\(0)
    );
\bram_wr_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[17]_i_1_n_0\,
      Q => bram_wr_data(17),
      R => \^sr\(0)
    );
\bram_wr_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[18]_i_1_n_0\,
      Q => bram_wr_data(18),
      R => \^sr\(0)
    );
\bram_wr_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[19]_i_1_n_0\,
      Q => bram_wr_data(19),
      R => \^sr\(0)
    );
\bram_wr_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[1]_i_1_n_0\,
      Q => bram_wr_data(1),
      R => \^sr\(0)
    );
\bram_wr_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[20]_i_1_n_0\,
      Q => bram_wr_data(20),
      R => \^sr\(0)
    );
\bram_wr_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[21]_i_1_n_0\,
      Q => bram_wr_data(21),
      R => \^sr\(0)
    );
\bram_wr_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[22]_i_1_n_0\,
      Q => bram_wr_data(22),
      R => \^sr\(0)
    );
\bram_wr_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[23]_i_1_n_0\,
      Q => bram_wr_data(23),
      R => \^sr\(0)
    );
\bram_wr_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[24]_i_1_n_0\,
      Q => bram_wr_data(24),
      R => \^sr\(0)
    );
\bram_wr_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[25]_i_1_n_0\,
      Q => bram_wr_data(25),
      R => \^sr\(0)
    );
\bram_wr_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[26]_i_1_n_0\,
      Q => bram_wr_data(26),
      R => \^sr\(0)
    );
\bram_wr_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[27]_i_1_n_0\,
      Q => bram_wr_data(27),
      R => \^sr\(0)
    );
\bram_wr_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[28]_i_1_n_0\,
      Q => bram_wr_data(28),
      R => \^sr\(0)
    );
\bram_wr_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[29]_i_1_n_0\,
      Q => bram_wr_data(29),
      R => \^sr\(0)
    );
\bram_wr_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[2]_i_1_n_0\,
      Q => bram_wr_data(2),
      R => \^sr\(0)
    );
\bram_wr_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[30]_i_1_n_0\,
      Q => bram_wr_data(30),
      R => \^sr\(0)
    );
\bram_wr_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[31]_i_1_n_0\,
      Q => bram_wr_data(31),
      R => \^sr\(0)
    );
\bram_wr_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[3]_i_1_n_0\,
      Q => bram_wr_data(3),
      R => \^sr\(0)
    );
\bram_wr_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[4]_i_1_n_0\,
      Q => bram_wr_data(4),
      R => \^sr\(0)
    );
\bram_wr_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[5]_i_1_n_0\,
      Q => bram_wr_data(5),
      R => \^sr\(0)
    );
\bram_wr_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[6]_i_1_n_0\,
      Q => bram_wr_data(6),
      R => \^sr\(0)
    );
\bram_wr_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[7]_i_1_n_0\,
      Q => bram_wr_data(7),
      R => \^sr\(0)
    );
\bram_wr_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[8]_i_1_n_0\,
      Q => bram_wr_data(8),
      R => \^sr\(0)
    );
\bram_wr_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fsm_sequential_state_reg[1]_0\,
      D => \bram_wr_data[9]_i_1_n_0\,
      Q => bram_wr_data(9),
      R => \^sr\(0)
    );
bram_wr_en_reg_rep: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => bram_wr_en_reg_rep_0,
      Q => bram_wr_en_reg_rep_n_0,
      R => '0'
    );
\bram_wr_en_reg_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bram_wr_en_reg_rep__0_0\,
      Q => \bram_wr_en_reg_rep__0_n_0\,
      R => '0'
    );
\bram_wr_en_reg_rep__1\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bram_wr_en_reg_rep__1_0\,
      Q => \bram_wr_en_reg_rep__1_n_0\,
      R => '0'
    );
\bram_wr_en_reg_rep__10\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bram_wr_en_reg_rep__10_0\,
      Q => \bram_wr_en_reg_rep__10_n_0\,
      R => '0'
    );
\bram_wr_en_reg_rep__11\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bram_wr_en_reg_rep__11_0\,
      Q => \bram_wr_en_reg_rep__11_n_0\,
      R => '0'
    );
\bram_wr_en_reg_rep__2\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bram_wr_en_reg_rep__2_0\,
      Q => \bram_wr_en_reg_rep__2_n_0\,
      R => '0'
    );
\bram_wr_en_reg_rep__3\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bram_wr_en_reg_rep__3_0\,
      Q => \bram_wr_en_reg_rep__3_n_0\,
      R => '0'
    );
\bram_wr_en_reg_rep__4\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bram_wr_en_reg_rep__4_0\,
      Q => \bram_wr_en_reg_rep__4_n_0\,
      R => '0'
    );
\bram_wr_en_reg_rep__5\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bram_wr_en_reg_rep__5_0\,
      Q => \bram_wr_en_reg_rep__5_n_0\,
      R => '0'
    );
\bram_wr_en_reg_rep__6\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bram_wr_en_reg_rep__6_0\,
      Q => \bram_wr_en_reg_rep__6_n_0\,
      R => '0'
    );
\bram_wr_en_reg_rep__7\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bram_wr_en_reg_rep__7_0\,
      Q => \bram_wr_en_reg_rep__7_n_0\,
      R => '0'
    );
\bram_wr_en_reg_rep__8\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bram_wr_en_reg_rep__8_0\,
      Q => \bram_wr_en_reg_rep__8_n_0\,
      R => '0'
    );
\bram_wr_en_reg_rep__9\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bram_wr_en_reg_rep__9_0\,
      Q => \bram_wr_en_reg_rep__9_n_0\,
      R => '0'
    );
\clear_addr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => \^state_reg[0]_1\,
      I1 => \^state_reg[1]_0\,
      I2 => \state_reg[1]_3\,
      I3 => rst_n,
      O => \^state_reg[0]_0\
    );
\clear_addr[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^state_reg[1]_0\,
      I1 => \^state_reg[0]_1\,
      I2 => \clear_addr[0]_i_4_n_0\,
      O => \clear_addr[0]_i_2_n_0\
    );
\clear_addr[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFFFFFFFFFF"
    )
        port map (
      I0 => \wptr_reg[14]_i_3_n_0\,
      I1 => clear_addr_reg(11),
      I2 => clear_addr_reg(10),
      I3 => clear_addr_reg(7),
      I4 => \wptr_reg[14]_i_5_n_0\,
      I5 => \wptr_reg[14]_i_6_n_0\,
      O => \clear_addr[0]_i_4_n_0\
    );
\clear_addr[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clear_addr_reg(0),
      O => \clear_addr[0]_i_5_n_0\
    );
\clear_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \clear_addr[0]_i_2_n_0\,
      D => \clear_addr_reg[0]_i_3_n_7\,
      Q => clear_addr_reg(0),
      R => \^state_reg[0]_0\
    );
\clear_addr_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clear_addr_reg[0]_i_3_n_0\,
      CO(2) => \clear_addr_reg[0]_i_3_n_1\,
      CO(1) => \clear_addr_reg[0]_i_3_n_2\,
      CO(0) => \clear_addr_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \clear_addr_reg[0]_i_3_n_4\,
      O(2) => \clear_addr_reg[0]_i_3_n_5\,
      O(1) => \clear_addr_reg[0]_i_3_n_6\,
      O(0) => \clear_addr_reg[0]_i_3_n_7\,
      S(3 downto 1) => clear_addr_reg(3 downto 1),
      S(0) => \clear_addr[0]_i_5_n_0\
    );
\clear_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \clear_addr[0]_i_2_n_0\,
      D => \clear_addr_reg[8]_i_1_n_5\,
      Q => clear_addr_reg(10),
      R => \^state_reg[0]_0\
    );
\clear_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \clear_addr[0]_i_2_n_0\,
      D => \clear_addr_reg[8]_i_1_n_4\,
      Q => clear_addr_reg(11),
      R => \^state_reg[0]_0\
    );
\clear_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \clear_addr[0]_i_2_n_0\,
      D => \clear_addr_reg[12]_i_1_n_7\,
      Q => clear_addr_reg(12),
      R => \^state_reg[0]_0\
    );
\clear_addr_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clear_addr_reg[8]_i_1_n_0\,
      CO(3 downto 2) => \NLW_clear_addr_reg[12]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \clear_addr_reg[12]_i_1_n_2\,
      CO(0) => \clear_addr_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_clear_addr_reg[12]_i_1_O_UNCONNECTED\(3),
      O(2) => \clear_addr_reg[12]_i_1_n_5\,
      O(1) => \clear_addr_reg[12]_i_1_n_6\,
      O(0) => \clear_addr_reg[12]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => clear_addr_reg(14 downto 12)
    );
\clear_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \clear_addr[0]_i_2_n_0\,
      D => \clear_addr_reg[12]_i_1_n_6\,
      Q => clear_addr_reg(13),
      R => \^state_reg[0]_0\
    );
\clear_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \clear_addr[0]_i_2_n_0\,
      D => \clear_addr_reg[12]_i_1_n_5\,
      Q => clear_addr_reg(14),
      R => \^state_reg[0]_0\
    );
\clear_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \clear_addr[0]_i_2_n_0\,
      D => \clear_addr_reg[0]_i_3_n_6\,
      Q => clear_addr_reg(1),
      R => \^state_reg[0]_0\
    );
\clear_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \clear_addr[0]_i_2_n_0\,
      D => \clear_addr_reg[0]_i_3_n_5\,
      Q => clear_addr_reg(2),
      R => \^state_reg[0]_0\
    );
\clear_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \clear_addr[0]_i_2_n_0\,
      D => \clear_addr_reg[0]_i_3_n_4\,
      Q => clear_addr_reg(3),
      R => \^state_reg[0]_0\
    );
\clear_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \clear_addr[0]_i_2_n_0\,
      D => \clear_addr_reg[4]_i_1_n_7\,
      Q => clear_addr_reg(4),
      R => \^state_reg[0]_0\
    );
\clear_addr_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clear_addr_reg[0]_i_3_n_0\,
      CO(3) => \clear_addr_reg[4]_i_1_n_0\,
      CO(2) => \clear_addr_reg[4]_i_1_n_1\,
      CO(1) => \clear_addr_reg[4]_i_1_n_2\,
      CO(0) => \clear_addr_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clear_addr_reg[4]_i_1_n_4\,
      O(2) => \clear_addr_reg[4]_i_1_n_5\,
      O(1) => \clear_addr_reg[4]_i_1_n_6\,
      O(0) => \clear_addr_reg[4]_i_1_n_7\,
      S(3 downto 0) => clear_addr_reg(7 downto 4)
    );
\clear_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \clear_addr[0]_i_2_n_0\,
      D => \clear_addr_reg[4]_i_1_n_6\,
      Q => clear_addr_reg(5),
      R => \^state_reg[0]_0\
    );
\clear_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \clear_addr[0]_i_2_n_0\,
      D => \clear_addr_reg[4]_i_1_n_5\,
      Q => clear_addr_reg(6),
      R => \^state_reg[0]_0\
    );
\clear_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \clear_addr[0]_i_2_n_0\,
      D => \clear_addr_reg[4]_i_1_n_4\,
      Q => clear_addr_reg(7),
      R => \^state_reg[0]_0\
    );
\clear_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \clear_addr[0]_i_2_n_0\,
      D => \clear_addr_reg[8]_i_1_n_7\,
      Q => clear_addr_reg(8),
      R => \^state_reg[0]_0\
    );
\clear_addr_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clear_addr_reg[4]_i_1_n_0\,
      CO(3) => \clear_addr_reg[8]_i_1_n_0\,
      CO(2) => \clear_addr_reg[8]_i_1_n_1\,
      CO(1) => \clear_addr_reg[8]_i_1_n_2\,
      CO(0) => \clear_addr_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clear_addr_reg[8]_i_1_n_4\,
      O(2) => \clear_addr_reg[8]_i_1_n_5\,
      O(1) => \clear_addr_reg[8]_i_1_n_6\,
      O(0) => \clear_addr_reg[8]_i_1_n_7\,
      S(3 downto 0) => clear_addr_reg(11 downto 8)
    );
\clear_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \clear_addr[0]_i_2_n_0\,
      D => \clear_addr_reg[8]_i_1_n_6\,
      Q => clear_addr_reg(9),
      R => \^state_reg[0]_0\
    );
clear_req_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      I3 => out_buf_valid_reg_1,
      I4 => \^reg_ctrl_reg[0]\,
      I5 => enable_d,
      O => clear_req0
    );
d_reg_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d_reg_valid_reg_2,
      Q => \^d_reg_valid_reg_0\,
      R => '0'
    );
\fb_term_r[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \^reg_ctrl_reg[0]\,
      I1 => state(2),
      I2 => state(0),
      I3 => state(1),
      O => \FSM_sequential_state_reg[2]_1\(0)
    );
frac_start_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => frac_start_reg_0,
      Q => frac_start,
      R => '0'
    );
frac_u: entity work.design_1_fx_system_wrapper_0_1_delay_frac_read
     port map (
      ADDRBWRADDR(14) => frac_u_n_19,
      ADDRBWRADDR(13) => frac_u_n_20,
      ADDRBWRADDR(12) => frac_u_n_21,
      ADDRBWRADDR(11) => frac_u_n_22,
      ADDRBWRADDR(10) => frac_u_n_23,
      ADDRBWRADDR(9) => frac_u_n_24,
      ADDRBWRADDR(8) => frac_u_n_25,
      ADDRBWRADDR(7) => frac_u_n_26,
      ADDRBWRADDR(6) => frac_u_n_27,
      ADDRBWRADDR(5) => frac_u_n_28,
      ADDRBWRADDR(4) => frac_u_n_29,
      ADDRBWRADDR(3) => frac_u_n_30,
      ADDRBWRADDR(2) => frac_u_n_31,
      ADDRBWRADDR(1) => frac_u_n_32,
      ADDRBWRADDR(0) => frac_u_n_33,
      D(31 downto 0) => rd_data(31 downto 0),
      E(0) => \^fx_enable_0\,
      \FSM_sequential_state_reg[0]_0\ => \FSM_sequential_state_reg[0]\,
      \FSM_sequential_state_reg[0]_1\ => \^d_reg_valid_reg_0\,
      \FSM_sequential_state_reg[1]_0\ => \FSM_sequential_state_reg[1]\,
      \FSM_sequential_state_reg[2]_0\ => \FSM_sequential_state_reg[2]\,
      \FSM_sequential_state_reg[2]_1\(0) => E(0),
      \FSM_sequential_state_reg[2]_2\ => \FSM_sequential_state_reg[2]_2\,
      \FSM_sequential_state_reg[2]_3\ => \FSM_sequential_state_reg[2]_3\,
      \FSM_sequential_state_reg[2]_4\ => \FSM_sequential_state_reg[2]_4\,
      \FSM_sequential_state_reg[2]_5\ => \FSM_sequential_state[2]_i_2_n_0\,
      \FSM_sequential_state_reg[2]_6\ => \FSM_sequential_state_reg[2]_5\,
      \FSM_sequential_state_reg[2]_7\ => \FSM_sequential_state[2]_i_5_n_0\,
      P(0) => P(0),
      Q(15 downto 0) => Q(15 downto 0),
      S(3) => bram_u_n_1,
      S(2) => bram_u_n_2,
      S(1) => bram_u_n_3,
      S(0) => bram_u_n_4,
      bram_rd_valid => bram_rd_valid,
      clk => clk,
      \d_out_reg[31]_0\(31 downto 0) => \d_out_reg[31]\(31 downto 0),
      frac_d_valid => frac_d_valid,
      frac_start => frac_start,
      fx_enable => fx_enable,
      mono_valid => mono_valid,
      out_buf_valid_reg => out_buf_valid_reg,
      out_buf_valid_reg_0 => out_buf_valid_reg_0,
      out_buf_valid_reg_1 => \^reg_ctrl_reg[0]\,
      out_buf_valid_reg_2 => out_buf_valid_reg_1,
      out_buf_valid_reg_3(0) => \^fsm_sequential_state_reg[0]_0\(0),
      out_buf_valid_reg_4 => out_buf_valid_i_2_n_0,
      rd_addr(14) => frac_u_n_64,
      rd_addr(13) => frac_u_n_65,
      rd_addr(12) => frac_u_n_66,
      rd_addr(11) => frac_u_n_67,
      rd_addr(10) => frac_u_n_68,
      rd_addr(9) => frac_u_n_69,
      rd_addr(8) => frac_u_n_70,
      rd_addr(7) => frac_u_n_71,
      rd_addr(6) => frac_u_n_72,
      rd_addr(5) => frac_u_n_73,
      rd_addr(4) => frac_u_n_74,
      rd_addr(3) => frac_u_n_75,
      rd_addr(2) => frac_u_n_76,
      rd_addr(1) => frac_u_n_77,
      rd_addr(0) => frac_u_n_78,
      \rd_addr_reg[14]_rep__0_0\(14) => frac_u_n_34,
      \rd_addr_reg[14]_rep__0_0\(13) => frac_u_n_35,
      \rd_addr_reg[14]_rep__0_0\(12) => frac_u_n_36,
      \rd_addr_reg[14]_rep__0_0\(11) => frac_u_n_37,
      \rd_addr_reg[14]_rep__0_0\(10) => frac_u_n_38,
      \rd_addr_reg[14]_rep__0_0\(9) => frac_u_n_39,
      \rd_addr_reg[14]_rep__0_0\(8) => frac_u_n_40,
      \rd_addr_reg[14]_rep__0_0\(7) => frac_u_n_41,
      \rd_addr_reg[14]_rep__0_0\(6) => frac_u_n_42,
      \rd_addr_reg[14]_rep__0_0\(5) => frac_u_n_43,
      \rd_addr_reg[14]_rep__0_0\(4) => frac_u_n_44,
      \rd_addr_reg[14]_rep__0_0\(3) => frac_u_n_45,
      \rd_addr_reg[14]_rep__0_0\(2) => frac_u_n_46,
      \rd_addr_reg[14]_rep__0_0\(1) => frac_u_n_47,
      \rd_addr_reg[14]_rep__0_0\(0) => frac_u_n_48,
      \rd_addr_reg[14]_rep__1_0\(14) => frac_u_n_49,
      \rd_addr_reg[14]_rep__1_0\(13) => frac_u_n_50,
      \rd_addr_reg[14]_rep__1_0\(12) => frac_u_n_51,
      \rd_addr_reg[14]_rep__1_0\(11) => frac_u_n_52,
      \rd_addr_reg[14]_rep__1_0\(10) => frac_u_n_53,
      \rd_addr_reg[14]_rep__1_0\(9) => frac_u_n_54,
      \rd_addr_reg[14]_rep__1_0\(8) => frac_u_n_55,
      \rd_addr_reg[14]_rep__1_0\(7) => frac_u_n_56,
      \rd_addr_reg[14]_rep__1_0\(6) => frac_u_n_57,
      \rd_addr_reg[14]_rep__1_0\(5) => frac_u_n_58,
      \rd_addr_reg[14]_rep__1_0\(4) => frac_u_n_59,
      \rd_addr_reg[14]_rep__1_0\(3) => frac_u_n_60,
      \rd_addr_reg[14]_rep__1_0\(2) => frac_u_n_61,
      \rd_addr_reg[14]_rep__1_0\(1) => frac_u_n_62,
      \rd_addr_reg[14]_rep__1_0\(0) => frac_u_n_63,
      rd_en_reg_0 => \^rd_en_reg\,
      rd_en_reg_1 => rd_en_reg_0,
      rd_en_reg_rep_0 => frac_u_n_6,
      rd_en_reg_rep_1 => rd_en_reg_rep,
      \rptr0_reg_reg[14]_0\(14 downto 0) => wptr_latched(14 downto 0),
      \rptr0_reg_reg[14]_1\(15 downto 0) => D_reg(31 downto 16),
      rst_n => rst_n,
      rst_n_0 => \^sr\(0),
      \s0_reg_reg[31]_0\(31) => p_1_in,
      \s0_reg_reg[31]_0\(30 downto 0) => s0_reg(30 downto 0),
      state(2 downto 0) => state(2 downto 0),
      \state_reg[0]\(0) => \state_reg[0]_2\(0),
      \state_reg[1]\ => \state_reg[1]_1\,
      \state_reg[1]_0\ => \state_reg[1]_2\,
      term_r0_0(3) => bram_u_n_37,
      term_r0_0(2) => bram_u_n_38,
      term_r0_0(1) => bram_u_n_39,
      term_r0_0(0) => bram_u_n_40,
      term_r0_1(3) => bram_u_n_41,
      term_r0_1(2) => bram_u_n_42,
      term_r0_1(1) => bram_u_n_43,
      term_r0_1(0) => bram_u_n_44,
      term_r0_2(3) => bram_u_n_45,
      term_r0_2(2) => bram_u_n_46,
      term_r0_2(1) => bram_u_n_47,
      term_r0_2(0) => bram_u_n_48,
      \term_r0__0_0\ => \state_reg[1]_3\,
      \term_r0__0_1\(3) => bram_u_n_49,
      \term_r0__0_1\(2) => bram_u_n_50,
      \term_r0__0_1\(1) => bram_u_n_51,
      \term_r0__0_1\(0) => bram_u_n_52,
      \term_r0__0_2\(3) => bram_u_n_53,
      \term_r0__0_2\(2) => bram_u_n_54,
      \term_r0__0_2\(1) => bram_u_n_55,
      \term_r0__0_2\(0) => bram_u_n_56,
      \term_r0__0_3\(3) => bram_u_n_57,
      \term_r0__0_3\(2) => bram_u_n_58,
      \term_r0__0_3\(1) => bram_u_n_59,
      \term_r0__0_3\(0) => bram_u_n_60,
      \term_r0__0_4\(3) => bram_u_n_61,
      \term_r0__0_4\(2) => bram_u_n_62,
      \term_r0__0_4\(1) => bram_u_n_63,
      \term_r0__0_4\(0) => bram_u_n_64,
      \term_r_reg[0]_0\(0) => \term_r_reg[0]\(0),
      \term_r_reg[0]_1\ => \term_r_reg[0]_0\,
      v1 => \^state_reg[1]_0\,
      v1_0 => \^state_reg[0]_1\,
      \x_reg_reg[6]\(0) => \x_reg_reg[6]\(0)
    );
out_buf_valid_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"223AAAAA"
    )
        port map (
      I0 => inflight0,
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => \^reg_ctrl_reg[0]\,
      O => out_buf_valid_i_2_n_0
    );
s_axis_tready_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => \x_reg_reg[6]\(0),
      I1 => fx_enable,
      I2 => \^state_reg[1]_0\,
      I3 => \^state_reg[0]_1\,
      O => \^reg_ctrl_reg[0]\
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"050004FF050004FA"
    )
        port map (
      I0 => wptr_reg_0,
      I1 => \^fsm_sequential_state_reg[2]_0\,
      I2 => \^fx_enable_0\,
      I3 => \^state_reg[0]_1\,
      I4 => \^state_reg[1]_0\,
      I5 => \state_reg[1]_3\,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0505FBFF0505FB00"
    )
        port map (
      I0 => wptr_reg_0,
      I1 => \^fsm_sequential_state_reg[2]_0\,
      I2 => \^fx_enable_0\,
      I3 => \^state_reg[0]_1\,
      I4 => \^state_reg[1]_0\,
      I5 => \state_reg[1]_3\,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      I3 => \^d_reg_valid_reg_0\,
      O => \^fsm_sequential_state_reg[2]_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \^state_reg[0]_1\,
      R => \^sr\(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \^state_reg[1]_0\,
      R => \^sr\(0)
    );
v1_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \^reg_ctrl_reg[0]\,
      I1 => \^d_reg_valid_reg_0\,
      I2 => state(1),
      I3 => state(0),
      I4 => state(2),
      O => d_reg_valid_reg_1
    );
\w_in[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \^reg_ctrl_reg[0]\,
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      O => \^fsm_sequential_state_reg[0]_0\(0)
    );
\wptr_latched_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fx_enable_0\,
      D => wptr_reg(0),
      Q => wptr_latched(0),
      R => \^sr\(0)
    );
\wptr_latched_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fx_enable_0\,
      D => wptr_reg(10),
      Q => wptr_latched(10),
      R => \^sr\(0)
    );
\wptr_latched_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fx_enable_0\,
      D => wptr_reg(11),
      Q => wptr_latched(11),
      R => \^sr\(0)
    );
\wptr_latched_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fx_enable_0\,
      D => wptr_reg(12),
      Q => wptr_latched(12),
      R => \^sr\(0)
    );
\wptr_latched_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fx_enable_0\,
      D => wptr_reg(13),
      Q => wptr_latched(13),
      R => \^sr\(0)
    );
\wptr_latched_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fx_enable_0\,
      D => wptr_reg(14),
      Q => wptr_latched(14),
      R => \^sr\(0)
    );
\wptr_latched_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fx_enable_0\,
      D => wptr_reg(1),
      Q => wptr_latched(1),
      R => \^sr\(0)
    );
\wptr_latched_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fx_enable_0\,
      D => wptr_reg(2),
      Q => wptr_latched(2),
      R => \^sr\(0)
    );
\wptr_latched_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fx_enable_0\,
      D => wptr_reg(3),
      Q => wptr_latched(3),
      R => \^sr\(0)
    );
\wptr_latched_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fx_enable_0\,
      D => wptr_reg(4),
      Q => wptr_latched(4),
      R => \^sr\(0)
    );
\wptr_latched_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fx_enable_0\,
      D => wptr_reg(5),
      Q => wptr_latched(5),
      R => \^sr\(0)
    );
\wptr_latched_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fx_enable_0\,
      D => wptr_reg(6),
      Q => wptr_latched(6),
      R => \^sr\(0)
    );
\wptr_latched_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fx_enable_0\,
      D => wptr_reg(7),
      Q => wptr_latched(7),
      R => \^sr\(0)
    );
\wptr_latched_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fx_enable_0\,
      D => wptr_reg(8),
      Q => wptr_latched(8),
      R => \^sr\(0)
    );
\wptr_latched_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fx_enable_0\,
      D => wptr_reg(9),
      Q => wptr_latched(9),
      R => \^sr\(0)
    );
wptr_reg0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => wptr_reg0_carry_n_0,
      CO(2) => wptr_reg0_carry_n_1,
      CO(1) => wptr_reg0_carry_n_2,
      CO(0) => wptr_reg0_carry_n_3,
      CYINIT => wptr_reg(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => wptr_reg0(4 downto 1),
      S(3 downto 0) => wptr_reg(4 downto 1)
    );
\wptr_reg0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => wptr_reg0_carry_n_0,
      CO(3) => \wptr_reg0_carry__0_n_0\,
      CO(2) => \wptr_reg0_carry__0_n_1\,
      CO(1) => \wptr_reg0_carry__0_n_2\,
      CO(0) => \wptr_reg0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => wptr_reg0(8 downto 5),
      S(3 downto 0) => wptr_reg(8 downto 5)
    );
\wptr_reg0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wptr_reg0_carry__0_n_0\,
      CO(3) => \wptr_reg0_carry__1_n_0\,
      CO(2) => \wptr_reg0_carry__1_n_1\,
      CO(1) => \wptr_reg0_carry__1_n_2\,
      CO(0) => \wptr_reg0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => wptr_reg0(12 downto 9),
      S(3 downto 0) => wptr_reg(12 downto 9)
    );
\wptr_reg0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \wptr_reg0_carry__1_n_0\,
      CO(3 downto 1) => \NLW_wptr_reg0_carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \wptr_reg0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_wptr_reg0_carry__2_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => wptr_reg0(14 downto 13),
      S(3 downto 2) => B"00",
      S(1 downto 0) => wptr_reg(14 downto 13)
    );
\wptr_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^state_reg[0]_1\,
      I1 => wptr_reg(0),
      O => \wptr_reg[0]_i_1_n_0\
    );
\wptr_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wptr_reg0(10),
      I1 => \^state_reg[0]_1\,
      O => \wptr_reg[10]_i_1_n_0\
    );
\wptr_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wptr_reg0(11),
      I1 => \^state_reg[0]_1\,
      O => \wptr_reg[11]_i_1_n_0\
    );
\wptr_reg[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wptr_reg0(12),
      I1 => \^state_reg[0]_1\,
      O => \wptr_reg[12]_i_1_n_0\
    );
\wptr_reg[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wptr_reg0(13),
      I1 => \^state_reg[0]_1\,
      O => \wptr_reg[13]_i_1_n_0\
    );
\wptr_reg[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000100FFFF"
    )
        port map (
      I0 => \wptr_reg[14]_i_3_n_0\,
      I1 => \wptr_reg[14]_i_4_n_0\,
      I2 => \wptr_reg[14]_i_5_n_0\,
      I3 => \wptr_reg[14]_i_6_n_0\,
      I4 => \^state_reg[0]_1\,
      I5 => \wptr_reg[14]_i_7_n_0\,
      O => wptr_reg_0
    );
\wptr_reg[14]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wptr_reg0(14),
      I1 => \^state_reg[0]_1\,
      O => \wptr_reg[14]_i_2_n_0\
    );
\wptr_reg[14]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => clear_addr_reg(6),
      I1 => clear_addr_reg(0),
      I2 => clear_addr_reg(9),
      I3 => clear_addr_reg(2),
      O => \wptr_reg[14]_i_3_n_0\
    );
\wptr_reg[14]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => clear_addr_reg(11),
      I1 => clear_addr_reg(10),
      I2 => clear_addr_reg(7),
      O => \wptr_reg[14]_i_4_n_0\
    );
\wptr_reg[14]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => clear_addr_reg(4),
      I1 => clear_addr_reg(1),
      I2 => clear_addr_reg(14),
      I3 => clear_addr_reg(12),
      O => \wptr_reg[14]_i_5_n_0\
    );
\wptr_reg[14]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => clear_addr_reg(5),
      I1 => clear_addr_reg(3),
      I2 => clear_addr_reg(13),
      I3 => clear_addr_reg(8),
      O => \wptr_reg[14]_i_6_n_0\
    );
\wptr_reg[14]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77777737"
    )
        port map (
      I0 => \^state_reg[0]_1\,
      I1 => \^state_reg[1]_0\,
      I2 => state(0),
      I3 => state(2),
      I4 => state(1),
      O => \wptr_reg[14]_i_7_n_0\
    );
\wptr_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wptr_reg0(1),
      I1 => \^state_reg[0]_1\,
      O => \wptr_reg[1]_i_1_n_0\
    );
\wptr_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wptr_reg0(2),
      I1 => \^state_reg[0]_1\,
      O => \wptr_reg[2]_i_1_n_0\
    );
\wptr_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wptr_reg0(3),
      I1 => \^state_reg[0]_1\,
      O => \wptr_reg[3]_i_1_n_0\
    );
\wptr_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wptr_reg0(4),
      I1 => \^state_reg[0]_1\,
      O => \wptr_reg[4]_i_1_n_0\
    );
\wptr_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wptr_reg0(5),
      I1 => \^state_reg[0]_1\,
      O => \wptr_reg[5]_i_1_n_0\
    );
\wptr_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wptr_reg0(6),
      I1 => \^state_reg[0]_1\,
      O => \wptr_reg[6]_i_1_n_0\
    );
\wptr_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wptr_reg0(7),
      I1 => \^state_reg[0]_1\,
      O => \wptr_reg[7]_i_1_n_0\
    );
\wptr_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wptr_reg0(8),
      I1 => \^state_reg[0]_1\,
      O => \wptr_reg[8]_i_1_n_0\
    );
\wptr_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wptr_reg0(9),
      I1 => \^state_reg[0]_1\,
      O => \wptr_reg[9]_i_1_n_0\
    );
\wptr_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wptr_reg_0,
      D => \wptr_reg[0]_i_1_n_0\,
      Q => wptr_reg(0),
      R => \^sr\(0)
    );
\wptr_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wptr_reg_0,
      D => \wptr_reg[10]_i_1_n_0\,
      Q => wptr_reg(10),
      R => \^sr\(0)
    );
\wptr_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wptr_reg_0,
      D => \wptr_reg[11]_i_1_n_0\,
      Q => wptr_reg(11),
      R => \^sr\(0)
    );
\wptr_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wptr_reg_0,
      D => \wptr_reg[12]_i_1_n_0\,
      Q => wptr_reg(12),
      R => \^sr\(0)
    );
\wptr_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wptr_reg_0,
      D => \wptr_reg[13]_i_1_n_0\,
      Q => wptr_reg(13),
      R => \^sr\(0)
    );
\wptr_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wptr_reg_0,
      D => \wptr_reg[14]_i_2_n_0\,
      Q => wptr_reg(14),
      R => \^sr\(0)
    );
\wptr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wptr_reg_0,
      D => \wptr_reg[1]_i_1_n_0\,
      Q => wptr_reg(1),
      R => \^sr\(0)
    );
\wptr_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wptr_reg_0,
      D => \wptr_reg[2]_i_1_n_0\,
      Q => wptr_reg(2),
      R => \^sr\(0)
    );
\wptr_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wptr_reg_0,
      D => \wptr_reg[3]_i_1_n_0\,
      Q => wptr_reg(3),
      R => \^sr\(0)
    );
\wptr_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wptr_reg_0,
      D => \wptr_reg[4]_i_1_n_0\,
      Q => wptr_reg(4),
      R => \^sr\(0)
    );
\wptr_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wptr_reg_0,
      D => \wptr_reg[5]_i_1_n_0\,
      Q => wptr_reg(5),
      R => \^sr\(0)
    );
\wptr_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wptr_reg_0,
      D => \wptr_reg[6]_i_1_n_0\,
      Q => wptr_reg(6),
      R => \^sr\(0)
    );
\wptr_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wptr_reg_0,
      D => \wptr_reg[7]_i_1_n_0\,
      Q => wptr_reg(7),
      R => \^sr\(0)
    );
\wptr_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wptr_reg_0,
      D => \wptr_reg[8]_i_1_n_0\,
      Q => wptr_reg(8),
      R => \^sr\(0)
    );
\wptr_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wptr_reg_0,
      D => \wptr_reg[9]_i_1_n_0\,
      Q => wptr_reg(9),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fx_system_wrapper_0_1_fx_delay_simple is
  port (
    rd_en : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    frac_d_valid : out STD_LOGIC;
    clear_req_reg_0 : out STD_LOGIC;
    \term_r_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    d_reg_valid_reg : out STD_LOGIC;
    \state_reg[0]\ : out STD_LOGIC;
    \state_reg[0]_0\ : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[1]_0\ : out STD_LOGIC;
    \FSM_sequential_state_reg[2]_0\ : out STD_LOGIC;
    \FSM_sequential_state_reg[0]_0\ : out STD_LOGIC;
    \reg_ctrl_reg[0]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[2]_1\ : out STD_LOGIC;
    ret_valid : out STD_LOGIC;
    out_buf_valid_reg_0 : out STD_LOGIC;
    \state_reg[1]_0\ : out STD_LOGIC;
    \FSM_sequential_state_reg[1]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out_buf_reg[31]_0\ : out STD_LOGIC_VECTOR ( 25 downto 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \v1__0_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \v1__3_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \v1__4_0\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    enable_d_reg_0 : in STD_LOGIC;
    rd_en_reg : in STD_LOGIC;
    \term_r_reg[0]_0\ : in STD_LOGIC;
    d_reg_valid_reg_0 : in STD_LOGIC;
    frac_start_reg : in STD_LOGIC;
    rd_en_reg_rep : in STD_LOGIC;
    bram_wr_en_reg_rep : in STD_LOGIC;
    \bram_wr_en_reg_rep__0\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__1\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__2\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__3\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__4\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__5\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__6\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__7\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__8\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__9\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__10\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__11\ : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    inflight0 : in STD_LOGIC;
    mono_valid : in STD_LOGIC;
    fx_enable : in STD_LOGIC;
    \x_reg_reg[6]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_fx_system_wrapper_0_1_fx_delay_simple : entity is "fx_delay_simple";
end design_1_fx_system_wrapper_0_1_fx_delay_simple;

architecture STRUCTURE of design_1_fx_system_wrapper_0_1_fx_delay_simple is
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal clear_req0 : STD_LOGIC;
  signal \^clear_req_reg_0\ : STD_LOGIC;
  signal d_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal enable_d : STD_LOGIC;
  signal \fb_term_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \fb_term_r[10]_i_1_n_0\ : STD_LOGIC;
  signal \fb_term_r[11]_i_1_n_0\ : STD_LOGIC;
  signal \fb_term_r[12]_i_1_n_0\ : STD_LOGIC;
  signal \fb_term_r[13]_i_1_n_0\ : STD_LOGIC;
  signal \fb_term_r[14]_i_1_n_0\ : STD_LOGIC;
  signal \fb_term_r[15]_i_1_n_0\ : STD_LOGIC;
  signal \fb_term_r[16]_i_1_n_0\ : STD_LOGIC;
  signal \fb_term_r[17]_i_1_n_0\ : STD_LOGIC;
  signal \fb_term_r[18]_i_1_n_0\ : STD_LOGIC;
  signal \fb_term_r[19]_i_1_n_0\ : STD_LOGIC;
  signal \fb_term_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \fb_term_r[20]_i_1_n_0\ : STD_LOGIC;
  signal \fb_term_r[21]_i_1_n_0\ : STD_LOGIC;
  signal \fb_term_r[22]_i_1_n_0\ : STD_LOGIC;
  signal \fb_term_r[23]_i_1_n_0\ : STD_LOGIC;
  signal \fb_term_r[24]_i_1_n_0\ : STD_LOGIC;
  signal \fb_term_r[25]_i_1_n_0\ : STD_LOGIC;
  signal \fb_term_r[26]_i_1_n_0\ : STD_LOGIC;
  signal \fb_term_r[27]_i_1_n_0\ : STD_LOGIC;
  signal \fb_term_r[28]_i_1_n_0\ : STD_LOGIC;
  signal \fb_term_r[29]_i_1_n_0\ : STD_LOGIC;
  signal \fb_term_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \fb_term_r[30]_i_1_n_0\ : STD_LOGIC;
  signal \fb_term_r[31]_i_2_n_0\ : STD_LOGIC;
  signal \fb_term_r[3]_i_1_n_0\ : STD_LOGIC;
  signal \fb_term_r[4]_i_1_n_0\ : STD_LOGIC;
  signal \fb_term_r[5]_i_1_n_0\ : STD_LOGIC;
  signal \fb_term_r[6]_i_1_n_0\ : STD_LOGIC;
  signal \fb_term_r[7]_i_1_n_0\ : STD_LOGIC;
  signal \fb_term_r[8]_i_1_n_0\ : STD_LOGIC;
  signal \fb_term_r[9]_i_1_n_0\ : STD_LOGIC;
  signal \fb_term_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \fb_term_r_reg_n_0_[10]\ : STD_LOGIC;
  signal \fb_term_r_reg_n_0_[11]\ : STD_LOGIC;
  signal \fb_term_r_reg_n_0_[12]\ : STD_LOGIC;
  signal \fb_term_r_reg_n_0_[13]\ : STD_LOGIC;
  signal \fb_term_r_reg_n_0_[14]\ : STD_LOGIC;
  signal \fb_term_r_reg_n_0_[15]\ : STD_LOGIC;
  signal \fb_term_r_reg_n_0_[16]\ : STD_LOGIC;
  signal \fb_term_r_reg_n_0_[17]\ : STD_LOGIC;
  signal \fb_term_r_reg_n_0_[18]\ : STD_LOGIC;
  signal \fb_term_r_reg_n_0_[19]\ : STD_LOGIC;
  signal \fb_term_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \fb_term_r_reg_n_0_[20]\ : STD_LOGIC;
  signal \fb_term_r_reg_n_0_[21]\ : STD_LOGIC;
  signal \fb_term_r_reg_n_0_[22]\ : STD_LOGIC;
  signal \fb_term_r_reg_n_0_[23]\ : STD_LOGIC;
  signal \fb_term_r_reg_n_0_[24]\ : STD_LOGIC;
  signal \fb_term_r_reg_n_0_[25]\ : STD_LOGIC;
  signal \fb_term_r_reg_n_0_[26]\ : STD_LOGIC;
  signal \fb_term_r_reg_n_0_[27]\ : STD_LOGIC;
  signal \fb_term_r_reg_n_0_[28]\ : STD_LOGIC;
  signal \fb_term_r_reg_n_0_[29]\ : STD_LOGIC;
  signal \fb_term_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \fb_term_r_reg_n_0_[30]\ : STD_LOGIC;
  signal \fb_term_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \fb_term_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \fb_term_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \fb_term_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \fb_term_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \fb_term_r_reg_n_0_[8]\ : STD_LOGIC;
  signal \fb_term_r_reg_n_0_[9]\ : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__10_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__10_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__10_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__10_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__7_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__7_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__7_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__7_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__8_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__8_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__8_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__8_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__9_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__9_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__9_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__9_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal out_buf_valid1_out : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC;
  signal p_0_in14_in : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal p_0_in9_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 31 downto 6 );
  signal p_2_in6_in : STD_LOGIC;
  signal \^reg_ctrl_reg[0]\ : STD_LOGIC;
  signal \^ret_valid\ : STD_LOGIC;
  signal sat32 : STD_LOGIC_VECTOR ( 31 downto 6 );
  signal \sat_add3202_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sat_add3202_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sat_add3202_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \sat_add3202_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \sat_add3202_carry__0_n_0\ : STD_LOGIC;
  signal \sat_add3202_carry__0_n_1\ : STD_LOGIC;
  signal \sat_add3202_carry__0_n_2\ : STD_LOGIC;
  signal \sat_add3202_carry__0_n_3\ : STD_LOGIC;
  signal \sat_add3202_carry__0_n_4\ : STD_LOGIC;
  signal \sat_add3202_carry__0_n_5\ : STD_LOGIC;
  signal \sat_add3202_carry__0_n_6\ : STD_LOGIC;
  signal \sat_add3202_carry__0_n_7\ : STD_LOGIC;
  signal \sat_add3202_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \sat_add3202_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \sat_add3202_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \sat_add3202_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \sat_add3202_carry__1_n_0\ : STD_LOGIC;
  signal \sat_add3202_carry__1_n_1\ : STD_LOGIC;
  signal \sat_add3202_carry__1_n_2\ : STD_LOGIC;
  signal \sat_add3202_carry__1_n_3\ : STD_LOGIC;
  signal \sat_add3202_carry__1_n_4\ : STD_LOGIC;
  signal \sat_add3202_carry__1_n_5\ : STD_LOGIC;
  signal \sat_add3202_carry__1_n_6\ : STD_LOGIC;
  signal \sat_add3202_carry__1_n_7\ : STD_LOGIC;
  signal \sat_add3202_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \sat_add3202_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \sat_add3202_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \sat_add3202_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \sat_add3202_carry__2_n_0\ : STD_LOGIC;
  signal \sat_add3202_carry__2_n_1\ : STD_LOGIC;
  signal \sat_add3202_carry__2_n_2\ : STD_LOGIC;
  signal \sat_add3202_carry__2_n_3\ : STD_LOGIC;
  signal \sat_add3202_carry__2_n_4\ : STD_LOGIC;
  signal \sat_add3202_carry__2_n_5\ : STD_LOGIC;
  signal \sat_add3202_carry__2_n_6\ : STD_LOGIC;
  signal \sat_add3202_carry__2_n_7\ : STD_LOGIC;
  signal \sat_add3202_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \sat_add3202_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \sat_add3202_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \sat_add3202_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \sat_add3202_carry__3_n_0\ : STD_LOGIC;
  signal \sat_add3202_carry__3_n_1\ : STD_LOGIC;
  signal \sat_add3202_carry__3_n_2\ : STD_LOGIC;
  signal \sat_add3202_carry__3_n_3\ : STD_LOGIC;
  signal \sat_add3202_carry__3_n_4\ : STD_LOGIC;
  signal \sat_add3202_carry__3_n_5\ : STD_LOGIC;
  signal \sat_add3202_carry__3_n_6\ : STD_LOGIC;
  signal \sat_add3202_carry__3_n_7\ : STD_LOGIC;
  signal \sat_add3202_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \sat_add3202_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \sat_add3202_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \sat_add3202_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \sat_add3202_carry__4_n_0\ : STD_LOGIC;
  signal \sat_add3202_carry__4_n_1\ : STD_LOGIC;
  signal \sat_add3202_carry__4_n_2\ : STD_LOGIC;
  signal \sat_add3202_carry__4_n_3\ : STD_LOGIC;
  signal \sat_add3202_carry__4_n_4\ : STD_LOGIC;
  signal \sat_add3202_carry__4_n_5\ : STD_LOGIC;
  signal \sat_add3202_carry__4_n_6\ : STD_LOGIC;
  signal \sat_add3202_carry__4_n_7\ : STD_LOGIC;
  signal \sat_add3202_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \sat_add3202_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \sat_add3202_carry__5_n_3\ : STD_LOGIC;
  signal \sat_add3202_carry__5_n_7\ : STD_LOGIC;
  signal sat_add3202_carry_i_1_n_0 : STD_LOGIC;
  signal sat_add3202_carry_i_2_n_0 : STD_LOGIC;
  signal sat_add3202_carry_i_3_n_0 : STD_LOGIC;
  signal sat_add3202_carry_i_4_n_0 : STD_LOGIC;
  signal sat_add3202_carry_n_0 : STD_LOGIC;
  signal sat_add3202_carry_n_1 : STD_LOGIC;
  signal sat_add3202_carry_n_2 : STD_LOGIC;
  signal sat_add3202_carry_n_3 : STD_LOGIC;
  signal sat_add3202_carry_n_4 : STD_LOGIC;
  signal sat_add3202_carry_n_5 : STD_LOGIC;
  signal sat_add3202_carry_n_6 : STD_LOGIC;
  signal sat_add3202_carry_n_7 : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__1_n_4\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__1_n_5\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__2_n_4\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__2_n_5\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__2_n_6\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__2_n_7\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__3_n_4\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__3_n_5\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__3_n_6\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__3_n_7\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__4_n_0\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__4_n_1\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__4_n_2\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__4_n_3\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__4_n_4\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__4_n_5\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__4_n_6\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__4_n_7\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__5_n_3\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry__5_n_7\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \sat_add3202_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal sat_add320_return : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal u_dl_n_10 : STD_LOGIC;
  signal u_dl_n_15 : STD_LOGIC;
  signal u_dl_n_18 : STD_LOGIC;
  signal u_dl_n_21 : STD_LOGIC;
  signal u_dl_n_23 : STD_LOGIC;
  signal u_dl_n_25 : STD_LOGIC;
  signal u_dl_n_26 : STD_LOGIC;
  signal u_dl_n_27 : STD_LOGIC;
  signal u_dl_n_28 : STD_LOGIC;
  signal \v0_carry__0_n_0\ : STD_LOGIC;
  signal \v0_carry__0_n_1\ : STD_LOGIC;
  signal \v0_carry__0_n_2\ : STD_LOGIC;
  signal \v0_carry__0_n_3\ : STD_LOGIC;
  signal \v0_carry__0_n_4\ : STD_LOGIC;
  signal \v0_carry__0_n_5\ : STD_LOGIC;
  signal \v0_carry__0_n_6\ : STD_LOGIC;
  signal \v0_carry__0_n_7\ : STD_LOGIC;
  signal \v0_carry__1_n_0\ : STD_LOGIC;
  signal \v0_carry__1_n_1\ : STD_LOGIC;
  signal \v0_carry__1_n_2\ : STD_LOGIC;
  signal \v0_carry__1_n_3\ : STD_LOGIC;
  signal \v0_carry__1_n_4\ : STD_LOGIC;
  signal \v0_carry__1_n_5\ : STD_LOGIC;
  signal \v0_carry__1_n_6\ : STD_LOGIC;
  signal \v0_carry__1_n_7\ : STD_LOGIC;
  signal \v0_carry__2_n_0\ : STD_LOGIC;
  signal \v0_carry__2_n_1\ : STD_LOGIC;
  signal \v0_carry__2_n_2\ : STD_LOGIC;
  signal \v0_carry__2_n_3\ : STD_LOGIC;
  signal \v0_carry__2_n_4\ : STD_LOGIC;
  signal \v0_carry__2_n_5\ : STD_LOGIC;
  signal \v0_carry__2_n_6\ : STD_LOGIC;
  signal \v0_carry__2_n_7\ : STD_LOGIC;
  signal \v0_carry__3_n_0\ : STD_LOGIC;
  signal \v0_carry__3_n_1\ : STD_LOGIC;
  signal \v0_carry__3_n_2\ : STD_LOGIC;
  signal \v0_carry__3_n_3\ : STD_LOGIC;
  signal \v0_carry__3_n_4\ : STD_LOGIC;
  signal \v0_carry__3_n_5\ : STD_LOGIC;
  signal \v0_carry__3_n_6\ : STD_LOGIC;
  signal \v0_carry__3_n_7\ : STD_LOGIC;
  signal \v0_carry__4_n_0\ : STD_LOGIC;
  signal \v0_carry__4_n_1\ : STD_LOGIC;
  signal \v0_carry__4_n_2\ : STD_LOGIC;
  signal \v0_carry__4_n_3\ : STD_LOGIC;
  signal \v0_carry__4_n_4\ : STD_LOGIC;
  signal \v0_carry__4_n_5\ : STD_LOGIC;
  signal \v0_carry__4_n_6\ : STD_LOGIC;
  signal \v0_carry__4_n_7\ : STD_LOGIC;
  signal \v0_carry__5_n_0\ : STD_LOGIC;
  signal \v0_carry__5_n_1\ : STD_LOGIC;
  signal \v0_carry__5_n_2\ : STD_LOGIC;
  signal \v0_carry__5_n_3\ : STD_LOGIC;
  signal \v0_carry__5_n_4\ : STD_LOGIC;
  signal \v0_carry__5_n_5\ : STD_LOGIC;
  signal \v0_carry__5_n_6\ : STD_LOGIC;
  signal \v0_carry__5_n_7\ : STD_LOGIC;
  signal \v0_carry__6_n_0\ : STD_LOGIC;
  signal \v0_carry__6_n_1\ : STD_LOGIC;
  signal \v0_carry__6_n_2\ : STD_LOGIC;
  signal \v0_carry__6_n_3\ : STD_LOGIC;
  signal \v0_carry__6_n_4\ : STD_LOGIC;
  signal \v0_carry__6_n_5\ : STD_LOGIC;
  signal \v0_carry__6_n_6\ : STD_LOGIC;
  signal \v0_carry__6_n_7\ : STD_LOGIC;
  signal \v0_carry__7_n_2\ : STD_LOGIC;
  signal \v0_carry__7_n_3\ : STD_LOGIC;
  signal \v0_carry__7_n_5\ : STD_LOGIC;
  signal \v0_carry__7_n_6\ : STD_LOGIC;
  signal \v0_carry__7_n_7\ : STD_LOGIC;
  signal v0_carry_i_1_n_0 : STD_LOGIC;
  signal v0_carry_n_0 : STD_LOGIC;
  signal v0_carry_n_1 : STD_LOGIC;
  signal v0_carry_n_2 : STD_LOGIC;
  signal v0_carry_n_3 : STD_LOGIC;
  signal v0_carry_n_4 : STD_LOGIC;
  signal v0_carry_n_5 : STD_LOGIC;
  signal \v0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__1_n_4\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__1_n_5\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__2_n_4\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__2_n_5\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__2_n_6\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__2_n_7\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__3_n_4\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__3_n_5\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__3_n_6\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__3_n_7\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__4_n_0\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__4_n_1\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__4_n_2\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__4_n_3\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__4_n_4\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__4_n_5\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__4_n_6\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__4_n_7\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__5_n_0\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__5_n_1\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__5_n_2\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__5_n_3\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__5_n_4\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__5_n_5\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__5_n_6\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__5_n_7\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__6_n_0\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__6_n_1\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__6_n_2\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__6_n_3\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__6_n_4\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__6_n_5\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__6_n_6\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__6_n_7\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__7_n_2\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__7_n_3\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__7_n_5\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__7_n_6\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry__7_n_7\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \v0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \v1__0_n_100\ : STD_LOGIC;
  signal \v1__0_n_101\ : STD_LOGIC;
  signal \v1__0_n_102\ : STD_LOGIC;
  signal \v1__0_n_103\ : STD_LOGIC;
  signal \v1__0_n_104\ : STD_LOGIC;
  signal \v1__0_n_105\ : STD_LOGIC;
  signal \v1__0_n_58\ : STD_LOGIC;
  signal \v1__0_n_59\ : STD_LOGIC;
  signal \v1__0_n_60\ : STD_LOGIC;
  signal \v1__0_n_61\ : STD_LOGIC;
  signal \v1__0_n_62\ : STD_LOGIC;
  signal \v1__0_n_63\ : STD_LOGIC;
  signal \v1__0_n_64\ : STD_LOGIC;
  signal \v1__0_n_65\ : STD_LOGIC;
  signal \v1__0_n_66\ : STD_LOGIC;
  signal \v1__0_n_67\ : STD_LOGIC;
  signal \v1__0_n_68\ : STD_LOGIC;
  signal \v1__0_n_69\ : STD_LOGIC;
  signal \v1__0_n_70\ : STD_LOGIC;
  signal \v1__0_n_71\ : STD_LOGIC;
  signal \v1__0_n_72\ : STD_LOGIC;
  signal \v1__0_n_73\ : STD_LOGIC;
  signal \v1__0_n_74\ : STD_LOGIC;
  signal \v1__0_n_75\ : STD_LOGIC;
  signal \v1__0_n_76\ : STD_LOGIC;
  signal \v1__0_n_77\ : STD_LOGIC;
  signal \v1__0_n_78\ : STD_LOGIC;
  signal \v1__0_n_79\ : STD_LOGIC;
  signal \v1__0_n_80\ : STD_LOGIC;
  signal \v1__0_n_81\ : STD_LOGIC;
  signal \v1__0_n_82\ : STD_LOGIC;
  signal \v1__0_n_83\ : STD_LOGIC;
  signal \v1__0_n_84\ : STD_LOGIC;
  signal \v1__0_n_85\ : STD_LOGIC;
  signal \v1__0_n_86\ : STD_LOGIC;
  signal \v1__0_n_87\ : STD_LOGIC;
  signal \v1__0_n_88\ : STD_LOGIC;
  signal \v1__0_n_89\ : STD_LOGIC;
  signal \v1__0_n_90\ : STD_LOGIC;
  signal \v1__0_n_91\ : STD_LOGIC;
  signal \v1__0_n_92\ : STD_LOGIC;
  signal \v1__0_n_93\ : STD_LOGIC;
  signal \v1__0_n_94\ : STD_LOGIC;
  signal \v1__0_n_95\ : STD_LOGIC;
  signal \v1__0_n_96\ : STD_LOGIC;
  signal \v1__0_n_97\ : STD_LOGIC;
  signal \v1__0_n_98\ : STD_LOGIC;
  signal \v1__0_n_99\ : STD_LOGIC;
  signal \v1__1_n_100\ : STD_LOGIC;
  signal \v1__1_n_101\ : STD_LOGIC;
  signal \v1__1_n_102\ : STD_LOGIC;
  signal \v1__1_n_103\ : STD_LOGIC;
  signal \v1__1_n_104\ : STD_LOGIC;
  signal \v1__1_n_105\ : STD_LOGIC;
  signal \v1__1_n_106\ : STD_LOGIC;
  signal \v1__1_n_107\ : STD_LOGIC;
  signal \v1__1_n_108\ : STD_LOGIC;
  signal \v1__1_n_109\ : STD_LOGIC;
  signal \v1__1_n_110\ : STD_LOGIC;
  signal \v1__1_n_111\ : STD_LOGIC;
  signal \v1__1_n_112\ : STD_LOGIC;
  signal \v1__1_n_113\ : STD_LOGIC;
  signal \v1__1_n_114\ : STD_LOGIC;
  signal \v1__1_n_115\ : STD_LOGIC;
  signal \v1__1_n_116\ : STD_LOGIC;
  signal \v1__1_n_117\ : STD_LOGIC;
  signal \v1__1_n_118\ : STD_LOGIC;
  signal \v1__1_n_119\ : STD_LOGIC;
  signal \v1__1_n_120\ : STD_LOGIC;
  signal \v1__1_n_121\ : STD_LOGIC;
  signal \v1__1_n_122\ : STD_LOGIC;
  signal \v1__1_n_123\ : STD_LOGIC;
  signal \v1__1_n_124\ : STD_LOGIC;
  signal \v1__1_n_125\ : STD_LOGIC;
  signal \v1__1_n_126\ : STD_LOGIC;
  signal \v1__1_n_127\ : STD_LOGIC;
  signal \v1__1_n_128\ : STD_LOGIC;
  signal \v1__1_n_129\ : STD_LOGIC;
  signal \v1__1_n_130\ : STD_LOGIC;
  signal \v1__1_n_131\ : STD_LOGIC;
  signal \v1__1_n_132\ : STD_LOGIC;
  signal \v1__1_n_133\ : STD_LOGIC;
  signal \v1__1_n_134\ : STD_LOGIC;
  signal \v1__1_n_135\ : STD_LOGIC;
  signal \v1__1_n_136\ : STD_LOGIC;
  signal \v1__1_n_137\ : STD_LOGIC;
  signal \v1__1_n_138\ : STD_LOGIC;
  signal \v1__1_n_139\ : STD_LOGIC;
  signal \v1__1_n_140\ : STD_LOGIC;
  signal \v1__1_n_141\ : STD_LOGIC;
  signal \v1__1_n_142\ : STD_LOGIC;
  signal \v1__1_n_143\ : STD_LOGIC;
  signal \v1__1_n_144\ : STD_LOGIC;
  signal \v1__1_n_145\ : STD_LOGIC;
  signal \v1__1_n_146\ : STD_LOGIC;
  signal \v1__1_n_147\ : STD_LOGIC;
  signal \v1__1_n_148\ : STD_LOGIC;
  signal \v1__1_n_149\ : STD_LOGIC;
  signal \v1__1_n_150\ : STD_LOGIC;
  signal \v1__1_n_151\ : STD_LOGIC;
  signal \v1__1_n_152\ : STD_LOGIC;
  signal \v1__1_n_153\ : STD_LOGIC;
  signal \v1__1_n_58\ : STD_LOGIC;
  signal \v1__1_n_59\ : STD_LOGIC;
  signal \v1__1_n_60\ : STD_LOGIC;
  signal \v1__1_n_61\ : STD_LOGIC;
  signal \v1__1_n_62\ : STD_LOGIC;
  signal \v1__1_n_63\ : STD_LOGIC;
  signal \v1__1_n_64\ : STD_LOGIC;
  signal \v1__1_n_65\ : STD_LOGIC;
  signal \v1__1_n_66\ : STD_LOGIC;
  signal \v1__1_n_67\ : STD_LOGIC;
  signal \v1__1_n_68\ : STD_LOGIC;
  signal \v1__1_n_69\ : STD_LOGIC;
  signal \v1__1_n_70\ : STD_LOGIC;
  signal \v1__1_n_71\ : STD_LOGIC;
  signal \v1__1_n_72\ : STD_LOGIC;
  signal \v1__1_n_73\ : STD_LOGIC;
  signal \v1__1_n_74\ : STD_LOGIC;
  signal \v1__1_n_75\ : STD_LOGIC;
  signal \v1__1_n_76\ : STD_LOGIC;
  signal \v1__1_n_77\ : STD_LOGIC;
  signal \v1__1_n_78\ : STD_LOGIC;
  signal \v1__1_n_79\ : STD_LOGIC;
  signal \v1__1_n_80\ : STD_LOGIC;
  signal \v1__1_n_81\ : STD_LOGIC;
  signal \v1__1_n_82\ : STD_LOGIC;
  signal \v1__1_n_83\ : STD_LOGIC;
  signal \v1__1_n_84\ : STD_LOGIC;
  signal \v1__1_n_85\ : STD_LOGIC;
  signal \v1__1_n_86\ : STD_LOGIC;
  signal \v1__1_n_87\ : STD_LOGIC;
  signal \v1__1_n_88\ : STD_LOGIC;
  signal \v1__1_n_89\ : STD_LOGIC;
  signal \v1__1_n_90\ : STD_LOGIC;
  signal \v1__1_n_91\ : STD_LOGIC;
  signal \v1__1_n_92\ : STD_LOGIC;
  signal \v1__1_n_93\ : STD_LOGIC;
  signal \v1__1_n_94\ : STD_LOGIC;
  signal \v1__1_n_95\ : STD_LOGIC;
  signal \v1__1_n_96\ : STD_LOGIC;
  signal \v1__1_n_97\ : STD_LOGIC;
  signal \v1__1_n_98\ : STD_LOGIC;
  signal \v1__1_n_99\ : STD_LOGIC;
  signal \v1__2_n_100\ : STD_LOGIC;
  signal \v1__2_n_101\ : STD_LOGIC;
  signal \v1__2_n_102\ : STD_LOGIC;
  signal \v1__2_n_103\ : STD_LOGIC;
  signal \v1__2_n_104\ : STD_LOGIC;
  signal \v1__2_n_105\ : STD_LOGIC;
  signal \v1__2_n_58\ : STD_LOGIC;
  signal \v1__2_n_59\ : STD_LOGIC;
  signal \v1__2_n_60\ : STD_LOGIC;
  signal \v1__2_n_61\ : STD_LOGIC;
  signal \v1__2_n_62\ : STD_LOGIC;
  signal \v1__2_n_63\ : STD_LOGIC;
  signal \v1__2_n_64\ : STD_LOGIC;
  signal \v1__2_n_65\ : STD_LOGIC;
  signal \v1__2_n_66\ : STD_LOGIC;
  signal \v1__2_n_67\ : STD_LOGIC;
  signal \v1__2_n_68\ : STD_LOGIC;
  signal \v1__2_n_69\ : STD_LOGIC;
  signal \v1__2_n_70\ : STD_LOGIC;
  signal \v1__2_n_71\ : STD_LOGIC;
  signal \v1__2_n_72\ : STD_LOGIC;
  signal \v1__2_n_73\ : STD_LOGIC;
  signal \v1__2_n_74\ : STD_LOGIC;
  signal \v1__2_n_75\ : STD_LOGIC;
  signal \v1__2_n_76\ : STD_LOGIC;
  signal \v1__2_n_77\ : STD_LOGIC;
  signal \v1__2_n_78\ : STD_LOGIC;
  signal \v1__2_n_79\ : STD_LOGIC;
  signal \v1__2_n_80\ : STD_LOGIC;
  signal \v1__2_n_81\ : STD_LOGIC;
  signal \v1__2_n_82\ : STD_LOGIC;
  signal \v1__2_n_83\ : STD_LOGIC;
  signal \v1__2_n_84\ : STD_LOGIC;
  signal \v1__2_n_85\ : STD_LOGIC;
  signal \v1__2_n_86\ : STD_LOGIC;
  signal \v1__2_n_87\ : STD_LOGIC;
  signal \v1__2_n_88\ : STD_LOGIC;
  signal \v1__2_n_89\ : STD_LOGIC;
  signal \v1__2_n_90\ : STD_LOGIC;
  signal \v1__2_n_91\ : STD_LOGIC;
  signal \v1__2_n_92\ : STD_LOGIC;
  signal \v1__2_n_93\ : STD_LOGIC;
  signal \v1__2_n_94\ : STD_LOGIC;
  signal \v1__2_n_95\ : STD_LOGIC;
  signal \v1__2_n_96\ : STD_LOGIC;
  signal \v1__2_n_97\ : STD_LOGIC;
  signal \v1__2_n_98\ : STD_LOGIC;
  signal \v1__2_n_99\ : STD_LOGIC;
  signal \v1__3_n_100\ : STD_LOGIC;
  signal \v1__3_n_101\ : STD_LOGIC;
  signal \v1__3_n_102\ : STD_LOGIC;
  signal \v1__3_n_103\ : STD_LOGIC;
  signal \v1__3_n_104\ : STD_LOGIC;
  signal \v1__3_n_105\ : STD_LOGIC;
  signal \v1__3_n_106\ : STD_LOGIC;
  signal \v1__3_n_107\ : STD_LOGIC;
  signal \v1__3_n_108\ : STD_LOGIC;
  signal \v1__3_n_109\ : STD_LOGIC;
  signal \v1__3_n_110\ : STD_LOGIC;
  signal \v1__3_n_111\ : STD_LOGIC;
  signal \v1__3_n_112\ : STD_LOGIC;
  signal \v1__3_n_113\ : STD_LOGIC;
  signal \v1__3_n_114\ : STD_LOGIC;
  signal \v1__3_n_115\ : STD_LOGIC;
  signal \v1__3_n_116\ : STD_LOGIC;
  signal \v1__3_n_117\ : STD_LOGIC;
  signal \v1__3_n_118\ : STD_LOGIC;
  signal \v1__3_n_119\ : STD_LOGIC;
  signal \v1__3_n_120\ : STD_LOGIC;
  signal \v1__3_n_121\ : STD_LOGIC;
  signal \v1__3_n_122\ : STD_LOGIC;
  signal \v1__3_n_123\ : STD_LOGIC;
  signal \v1__3_n_124\ : STD_LOGIC;
  signal \v1__3_n_125\ : STD_LOGIC;
  signal \v1__3_n_126\ : STD_LOGIC;
  signal \v1__3_n_127\ : STD_LOGIC;
  signal \v1__3_n_128\ : STD_LOGIC;
  signal \v1__3_n_129\ : STD_LOGIC;
  signal \v1__3_n_130\ : STD_LOGIC;
  signal \v1__3_n_131\ : STD_LOGIC;
  signal \v1__3_n_132\ : STD_LOGIC;
  signal \v1__3_n_133\ : STD_LOGIC;
  signal \v1__3_n_134\ : STD_LOGIC;
  signal \v1__3_n_135\ : STD_LOGIC;
  signal \v1__3_n_136\ : STD_LOGIC;
  signal \v1__3_n_137\ : STD_LOGIC;
  signal \v1__3_n_138\ : STD_LOGIC;
  signal \v1__3_n_139\ : STD_LOGIC;
  signal \v1__3_n_140\ : STD_LOGIC;
  signal \v1__3_n_141\ : STD_LOGIC;
  signal \v1__3_n_142\ : STD_LOGIC;
  signal \v1__3_n_143\ : STD_LOGIC;
  signal \v1__3_n_144\ : STD_LOGIC;
  signal \v1__3_n_145\ : STD_LOGIC;
  signal \v1__3_n_146\ : STD_LOGIC;
  signal \v1__3_n_147\ : STD_LOGIC;
  signal \v1__3_n_148\ : STD_LOGIC;
  signal \v1__3_n_149\ : STD_LOGIC;
  signal \v1__3_n_150\ : STD_LOGIC;
  signal \v1__3_n_151\ : STD_LOGIC;
  signal \v1__3_n_152\ : STD_LOGIC;
  signal \v1__3_n_153\ : STD_LOGIC;
  signal \v1__3_n_58\ : STD_LOGIC;
  signal \v1__3_n_59\ : STD_LOGIC;
  signal \v1__3_n_60\ : STD_LOGIC;
  signal \v1__3_n_61\ : STD_LOGIC;
  signal \v1__3_n_62\ : STD_LOGIC;
  signal \v1__3_n_63\ : STD_LOGIC;
  signal \v1__3_n_64\ : STD_LOGIC;
  signal \v1__3_n_65\ : STD_LOGIC;
  signal \v1__3_n_66\ : STD_LOGIC;
  signal \v1__3_n_67\ : STD_LOGIC;
  signal \v1__3_n_68\ : STD_LOGIC;
  signal \v1__3_n_69\ : STD_LOGIC;
  signal \v1__3_n_70\ : STD_LOGIC;
  signal \v1__3_n_71\ : STD_LOGIC;
  signal \v1__3_n_72\ : STD_LOGIC;
  signal \v1__3_n_73\ : STD_LOGIC;
  signal \v1__3_n_74\ : STD_LOGIC;
  signal \v1__3_n_75\ : STD_LOGIC;
  signal \v1__3_n_76\ : STD_LOGIC;
  signal \v1__3_n_77\ : STD_LOGIC;
  signal \v1__3_n_78\ : STD_LOGIC;
  signal \v1__3_n_79\ : STD_LOGIC;
  signal \v1__3_n_80\ : STD_LOGIC;
  signal \v1__3_n_81\ : STD_LOGIC;
  signal \v1__3_n_82\ : STD_LOGIC;
  signal \v1__3_n_83\ : STD_LOGIC;
  signal \v1__3_n_84\ : STD_LOGIC;
  signal \v1__3_n_85\ : STD_LOGIC;
  signal \v1__3_n_86\ : STD_LOGIC;
  signal \v1__3_n_87\ : STD_LOGIC;
  signal \v1__3_n_88\ : STD_LOGIC;
  signal \v1__3_n_89\ : STD_LOGIC;
  signal \v1__3_n_90\ : STD_LOGIC;
  signal \v1__3_n_91\ : STD_LOGIC;
  signal \v1__3_n_92\ : STD_LOGIC;
  signal \v1__3_n_93\ : STD_LOGIC;
  signal \v1__3_n_94\ : STD_LOGIC;
  signal \v1__3_n_95\ : STD_LOGIC;
  signal \v1__3_n_96\ : STD_LOGIC;
  signal \v1__3_n_97\ : STD_LOGIC;
  signal \v1__3_n_98\ : STD_LOGIC;
  signal \v1__3_n_99\ : STD_LOGIC;
  signal \v1__4_n_100\ : STD_LOGIC;
  signal \v1__4_n_101\ : STD_LOGIC;
  signal \v1__4_n_102\ : STD_LOGIC;
  signal \v1__4_n_103\ : STD_LOGIC;
  signal \v1__4_n_104\ : STD_LOGIC;
  signal \v1__4_n_105\ : STD_LOGIC;
  signal \v1__4_n_58\ : STD_LOGIC;
  signal \v1__4_n_59\ : STD_LOGIC;
  signal \v1__4_n_60\ : STD_LOGIC;
  signal \v1__4_n_61\ : STD_LOGIC;
  signal \v1__4_n_62\ : STD_LOGIC;
  signal \v1__4_n_63\ : STD_LOGIC;
  signal \v1__4_n_64\ : STD_LOGIC;
  signal \v1__4_n_65\ : STD_LOGIC;
  signal \v1__4_n_66\ : STD_LOGIC;
  signal \v1__4_n_67\ : STD_LOGIC;
  signal \v1__4_n_68\ : STD_LOGIC;
  signal \v1__4_n_69\ : STD_LOGIC;
  signal \v1__4_n_70\ : STD_LOGIC;
  signal \v1__4_n_71\ : STD_LOGIC;
  signal \v1__4_n_72\ : STD_LOGIC;
  signal \v1__4_n_73\ : STD_LOGIC;
  signal \v1__4_n_74\ : STD_LOGIC;
  signal \v1__4_n_75\ : STD_LOGIC;
  signal \v1__4_n_76\ : STD_LOGIC;
  signal \v1__4_n_77\ : STD_LOGIC;
  signal \v1__4_n_78\ : STD_LOGIC;
  signal \v1__4_n_79\ : STD_LOGIC;
  signal \v1__4_n_80\ : STD_LOGIC;
  signal \v1__4_n_81\ : STD_LOGIC;
  signal \v1__4_n_82\ : STD_LOGIC;
  signal \v1__4_n_83\ : STD_LOGIC;
  signal \v1__4_n_84\ : STD_LOGIC;
  signal \v1__4_n_85\ : STD_LOGIC;
  signal \v1__4_n_86\ : STD_LOGIC;
  signal \v1__4_n_87\ : STD_LOGIC;
  signal \v1__4_n_88\ : STD_LOGIC;
  signal \v1__4_n_89\ : STD_LOGIC;
  signal \v1__4_n_90\ : STD_LOGIC;
  signal \v1__4_n_91\ : STD_LOGIC;
  signal \v1__4_n_92\ : STD_LOGIC;
  signal \v1__4_n_93\ : STD_LOGIC;
  signal \v1__4_n_94\ : STD_LOGIC;
  signal \v1__4_n_95\ : STD_LOGIC;
  signal \v1__4_n_96\ : STD_LOGIC;
  signal \v1__4_n_97\ : STD_LOGIC;
  signal \v1__4_n_98\ : STD_LOGIC;
  signal \v1__4_n_99\ : STD_LOGIC;
  signal \v1__5_n_100\ : STD_LOGIC;
  signal \v1__5_n_101\ : STD_LOGIC;
  signal \v1__5_n_102\ : STD_LOGIC;
  signal \v1__5_n_103\ : STD_LOGIC;
  signal \v1__5_n_104\ : STD_LOGIC;
  signal \v1__5_n_105\ : STD_LOGIC;
  signal \v1__5_n_106\ : STD_LOGIC;
  signal \v1__5_n_107\ : STD_LOGIC;
  signal \v1__5_n_108\ : STD_LOGIC;
  signal \v1__5_n_109\ : STD_LOGIC;
  signal \v1__5_n_110\ : STD_LOGIC;
  signal \v1__5_n_111\ : STD_LOGIC;
  signal \v1__5_n_112\ : STD_LOGIC;
  signal \v1__5_n_113\ : STD_LOGIC;
  signal \v1__5_n_114\ : STD_LOGIC;
  signal \v1__5_n_115\ : STD_LOGIC;
  signal \v1__5_n_116\ : STD_LOGIC;
  signal \v1__5_n_117\ : STD_LOGIC;
  signal \v1__5_n_118\ : STD_LOGIC;
  signal \v1__5_n_119\ : STD_LOGIC;
  signal \v1__5_n_120\ : STD_LOGIC;
  signal \v1__5_n_121\ : STD_LOGIC;
  signal \v1__5_n_122\ : STD_LOGIC;
  signal \v1__5_n_123\ : STD_LOGIC;
  signal \v1__5_n_124\ : STD_LOGIC;
  signal \v1__5_n_125\ : STD_LOGIC;
  signal \v1__5_n_126\ : STD_LOGIC;
  signal \v1__5_n_127\ : STD_LOGIC;
  signal \v1__5_n_128\ : STD_LOGIC;
  signal \v1__5_n_129\ : STD_LOGIC;
  signal \v1__5_n_130\ : STD_LOGIC;
  signal \v1__5_n_131\ : STD_LOGIC;
  signal \v1__5_n_132\ : STD_LOGIC;
  signal \v1__5_n_133\ : STD_LOGIC;
  signal \v1__5_n_134\ : STD_LOGIC;
  signal \v1__5_n_135\ : STD_LOGIC;
  signal \v1__5_n_136\ : STD_LOGIC;
  signal \v1__5_n_137\ : STD_LOGIC;
  signal \v1__5_n_138\ : STD_LOGIC;
  signal \v1__5_n_139\ : STD_LOGIC;
  signal \v1__5_n_140\ : STD_LOGIC;
  signal \v1__5_n_141\ : STD_LOGIC;
  signal \v1__5_n_142\ : STD_LOGIC;
  signal \v1__5_n_143\ : STD_LOGIC;
  signal \v1__5_n_144\ : STD_LOGIC;
  signal \v1__5_n_145\ : STD_LOGIC;
  signal \v1__5_n_146\ : STD_LOGIC;
  signal \v1__5_n_147\ : STD_LOGIC;
  signal \v1__5_n_148\ : STD_LOGIC;
  signal \v1__5_n_149\ : STD_LOGIC;
  signal \v1__5_n_150\ : STD_LOGIC;
  signal \v1__5_n_151\ : STD_LOGIC;
  signal \v1__5_n_152\ : STD_LOGIC;
  signal \v1__5_n_153\ : STD_LOGIC;
  signal \v1__5_n_58\ : STD_LOGIC;
  signal \v1__5_n_59\ : STD_LOGIC;
  signal \v1__5_n_60\ : STD_LOGIC;
  signal \v1__5_n_61\ : STD_LOGIC;
  signal \v1__5_n_62\ : STD_LOGIC;
  signal \v1__5_n_63\ : STD_LOGIC;
  signal \v1__5_n_64\ : STD_LOGIC;
  signal \v1__5_n_65\ : STD_LOGIC;
  signal \v1__5_n_66\ : STD_LOGIC;
  signal \v1__5_n_67\ : STD_LOGIC;
  signal \v1__5_n_68\ : STD_LOGIC;
  signal \v1__5_n_69\ : STD_LOGIC;
  signal \v1__5_n_70\ : STD_LOGIC;
  signal \v1__5_n_71\ : STD_LOGIC;
  signal \v1__5_n_72\ : STD_LOGIC;
  signal \v1__5_n_73\ : STD_LOGIC;
  signal \v1__5_n_74\ : STD_LOGIC;
  signal \v1__5_n_75\ : STD_LOGIC;
  signal \v1__5_n_76\ : STD_LOGIC;
  signal \v1__5_n_77\ : STD_LOGIC;
  signal \v1__5_n_78\ : STD_LOGIC;
  signal \v1__5_n_79\ : STD_LOGIC;
  signal \v1__5_n_80\ : STD_LOGIC;
  signal \v1__5_n_81\ : STD_LOGIC;
  signal \v1__5_n_82\ : STD_LOGIC;
  signal \v1__5_n_83\ : STD_LOGIC;
  signal \v1__5_n_84\ : STD_LOGIC;
  signal \v1__5_n_85\ : STD_LOGIC;
  signal \v1__5_n_86\ : STD_LOGIC;
  signal \v1__5_n_87\ : STD_LOGIC;
  signal \v1__5_n_88\ : STD_LOGIC;
  signal \v1__5_n_89\ : STD_LOGIC;
  signal \v1__5_n_90\ : STD_LOGIC;
  signal \v1__5_n_91\ : STD_LOGIC;
  signal \v1__5_n_92\ : STD_LOGIC;
  signal \v1__5_n_93\ : STD_LOGIC;
  signal \v1__5_n_94\ : STD_LOGIC;
  signal \v1__5_n_95\ : STD_LOGIC;
  signal \v1__5_n_96\ : STD_LOGIC;
  signal \v1__5_n_97\ : STD_LOGIC;
  signal \v1__5_n_98\ : STD_LOGIC;
  signal \v1__5_n_99\ : STD_LOGIC;
  signal \v1__6_n_100\ : STD_LOGIC;
  signal \v1__6_n_101\ : STD_LOGIC;
  signal \v1__6_n_102\ : STD_LOGIC;
  signal \v1__6_n_103\ : STD_LOGIC;
  signal \v1__6_n_104\ : STD_LOGIC;
  signal \v1__6_n_105\ : STD_LOGIC;
  signal \v1__6_n_58\ : STD_LOGIC;
  signal \v1__6_n_59\ : STD_LOGIC;
  signal \v1__6_n_60\ : STD_LOGIC;
  signal \v1__6_n_61\ : STD_LOGIC;
  signal \v1__6_n_62\ : STD_LOGIC;
  signal \v1__6_n_63\ : STD_LOGIC;
  signal \v1__6_n_64\ : STD_LOGIC;
  signal \v1__6_n_65\ : STD_LOGIC;
  signal \v1__6_n_66\ : STD_LOGIC;
  signal \v1__6_n_67\ : STD_LOGIC;
  signal \v1__6_n_68\ : STD_LOGIC;
  signal \v1__6_n_69\ : STD_LOGIC;
  signal \v1__6_n_70\ : STD_LOGIC;
  signal \v1__6_n_71\ : STD_LOGIC;
  signal \v1__6_n_72\ : STD_LOGIC;
  signal \v1__6_n_73\ : STD_LOGIC;
  signal \v1__6_n_74\ : STD_LOGIC;
  signal \v1__6_n_75\ : STD_LOGIC;
  signal \v1__6_n_76\ : STD_LOGIC;
  signal \v1__6_n_77\ : STD_LOGIC;
  signal \v1__6_n_78\ : STD_LOGIC;
  signal \v1__6_n_79\ : STD_LOGIC;
  signal \v1__6_n_80\ : STD_LOGIC;
  signal \v1__6_n_81\ : STD_LOGIC;
  signal \v1__6_n_82\ : STD_LOGIC;
  signal \v1__6_n_83\ : STD_LOGIC;
  signal \v1__6_n_84\ : STD_LOGIC;
  signal \v1__6_n_85\ : STD_LOGIC;
  signal \v1__6_n_86\ : STD_LOGIC;
  signal \v1__6_n_87\ : STD_LOGIC;
  signal \v1__6_n_88\ : STD_LOGIC;
  signal \v1__6_n_89\ : STD_LOGIC;
  signal \v1__6_n_90\ : STD_LOGIC;
  signal \v1__6_n_91\ : STD_LOGIC;
  signal \v1__6_n_92\ : STD_LOGIC;
  signal \v1__6_n_93\ : STD_LOGIC;
  signal \v1__6_n_94\ : STD_LOGIC;
  signal \v1__6_n_95\ : STD_LOGIC;
  signal \v1__6_n_96\ : STD_LOGIC;
  signal \v1__6_n_97\ : STD_LOGIC;
  signal \v1__6_n_98\ : STD_LOGIC;
  signal \v1__6_n_99\ : STD_LOGIC;
  signal \v1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \v1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \v1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \v1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \v1_carry__0_n_0\ : STD_LOGIC;
  signal \v1_carry__0_n_1\ : STD_LOGIC;
  signal \v1_carry__0_n_2\ : STD_LOGIC;
  signal \v1_carry__0_n_3\ : STD_LOGIC;
  signal \v1_carry__10_i_1_n_0\ : STD_LOGIC;
  signal \v1_carry__10_i_2_n_0\ : STD_LOGIC;
  signal \v1_carry__10_i_3_n_0\ : STD_LOGIC;
  signal \v1_carry__10_i_4_n_0\ : STD_LOGIC;
  signal \v1_carry__10_n_1\ : STD_LOGIC;
  signal \v1_carry__10_n_2\ : STD_LOGIC;
  signal \v1_carry__10_n_3\ : STD_LOGIC;
  signal \v1_carry__10_n_4\ : STD_LOGIC;
  signal \v1_carry__10_n_5\ : STD_LOGIC;
  signal \v1_carry__10_n_6\ : STD_LOGIC;
  signal \v1_carry__10_n_7\ : STD_LOGIC;
  signal \v1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \v1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \v1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \v1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \v1_carry__1_n_0\ : STD_LOGIC;
  signal \v1_carry__1_n_1\ : STD_LOGIC;
  signal \v1_carry__1_n_2\ : STD_LOGIC;
  signal \v1_carry__1_n_3\ : STD_LOGIC;
  signal \v1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \v1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \v1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \v1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \v1_carry__2_n_0\ : STD_LOGIC;
  signal \v1_carry__2_n_1\ : STD_LOGIC;
  signal \v1_carry__2_n_2\ : STD_LOGIC;
  signal \v1_carry__2_n_3\ : STD_LOGIC;
  signal \v1_carry__2_n_4\ : STD_LOGIC;
  signal \v1_carry__2_n_5\ : STD_LOGIC;
  signal \v1_carry__2_n_6\ : STD_LOGIC;
  signal \v1_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \v1_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \v1_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \v1_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \v1_carry__3_n_0\ : STD_LOGIC;
  signal \v1_carry__3_n_1\ : STD_LOGIC;
  signal \v1_carry__3_n_2\ : STD_LOGIC;
  signal \v1_carry__3_n_3\ : STD_LOGIC;
  signal \v1_carry__3_n_4\ : STD_LOGIC;
  signal \v1_carry__3_n_5\ : STD_LOGIC;
  signal \v1_carry__3_n_6\ : STD_LOGIC;
  signal \v1_carry__3_n_7\ : STD_LOGIC;
  signal \v1_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \v1_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \v1_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \v1_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \v1_carry__4_n_0\ : STD_LOGIC;
  signal \v1_carry__4_n_1\ : STD_LOGIC;
  signal \v1_carry__4_n_2\ : STD_LOGIC;
  signal \v1_carry__4_n_3\ : STD_LOGIC;
  signal \v1_carry__4_n_4\ : STD_LOGIC;
  signal \v1_carry__4_n_5\ : STD_LOGIC;
  signal \v1_carry__4_n_6\ : STD_LOGIC;
  signal \v1_carry__4_n_7\ : STD_LOGIC;
  signal \v1_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \v1_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \v1_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \v1_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \v1_carry__5_n_0\ : STD_LOGIC;
  signal \v1_carry__5_n_1\ : STD_LOGIC;
  signal \v1_carry__5_n_2\ : STD_LOGIC;
  signal \v1_carry__5_n_3\ : STD_LOGIC;
  signal \v1_carry__5_n_4\ : STD_LOGIC;
  signal \v1_carry__5_n_5\ : STD_LOGIC;
  signal \v1_carry__5_n_6\ : STD_LOGIC;
  signal \v1_carry__5_n_7\ : STD_LOGIC;
  signal \v1_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \v1_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \v1_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \v1_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \v1_carry__6_n_0\ : STD_LOGIC;
  signal \v1_carry__6_n_1\ : STD_LOGIC;
  signal \v1_carry__6_n_2\ : STD_LOGIC;
  signal \v1_carry__6_n_3\ : STD_LOGIC;
  signal \v1_carry__6_n_4\ : STD_LOGIC;
  signal \v1_carry__6_n_5\ : STD_LOGIC;
  signal \v1_carry__6_n_6\ : STD_LOGIC;
  signal \v1_carry__6_n_7\ : STD_LOGIC;
  signal \v1_carry__7_i_1_n_0\ : STD_LOGIC;
  signal \v1_carry__7_i_2_n_0\ : STD_LOGIC;
  signal \v1_carry__7_i_3_n_0\ : STD_LOGIC;
  signal \v1_carry__7_i_4_n_0\ : STD_LOGIC;
  signal \v1_carry__7_n_0\ : STD_LOGIC;
  signal \v1_carry__7_n_1\ : STD_LOGIC;
  signal \v1_carry__7_n_2\ : STD_LOGIC;
  signal \v1_carry__7_n_3\ : STD_LOGIC;
  signal \v1_carry__7_n_4\ : STD_LOGIC;
  signal \v1_carry__7_n_5\ : STD_LOGIC;
  signal \v1_carry__7_n_6\ : STD_LOGIC;
  signal \v1_carry__7_n_7\ : STD_LOGIC;
  signal \v1_carry__8_i_1_n_0\ : STD_LOGIC;
  signal \v1_carry__8_i_2_n_0\ : STD_LOGIC;
  signal \v1_carry__8_i_3_n_0\ : STD_LOGIC;
  signal \v1_carry__8_i_4_n_0\ : STD_LOGIC;
  signal \v1_carry__8_n_0\ : STD_LOGIC;
  signal \v1_carry__8_n_1\ : STD_LOGIC;
  signal \v1_carry__8_n_2\ : STD_LOGIC;
  signal \v1_carry__8_n_3\ : STD_LOGIC;
  signal \v1_carry__8_n_4\ : STD_LOGIC;
  signal \v1_carry__8_n_5\ : STD_LOGIC;
  signal \v1_carry__8_n_6\ : STD_LOGIC;
  signal \v1_carry__8_n_7\ : STD_LOGIC;
  signal \v1_carry__9_i_1_n_0\ : STD_LOGIC;
  signal \v1_carry__9_i_2_n_0\ : STD_LOGIC;
  signal \v1_carry__9_i_3_n_0\ : STD_LOGIC;
  signal \v1_carry__9_i_4_n_0\ : STD_LOGIC;
  signal \v1_carry__9_n_0\ : STD_LOGIC;
  signal \v1_carry__9_n_1\ : STD_LOGIC;
  signal \v1_carry__9_n_2\ : STD_LOGIC;
  signal \v1_carry__9_n_3\ : STD_LOGIC;
  signal \v1_carry__9_n_4\ : STD_LOGIC;
  signal \v1_carry__9_n_5\ : STD_LOGIC;
  signal \v1_carry__9_n_6\ : STD_LOGIC;
  signal \v1_carry__9_n_7\ : STD_LOGIC;
  signal v1_carry_i_1_n_0 : STD_LOGIC;
  signal v1_carry_i_2_n_0 : STD_LOGIC;
  signal v1_carry_i_3_n_0 : STD_LOGIC;
  signal v1_carry_n_0 : STD_LOGIC;
  signal v1_carry_n_1 : STD_LOGIC;
  signal v1_carry_n_2 : STD_LOGIC;
  signal v1_carry_n_3 : STD_LOGIC;
  signal \v1_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__10_n_1\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__10_n_2\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__10_n_3\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__10_n_4\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__10_n_5\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__10_n_6\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__10_n_7\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__2_n_4\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__2_n_5\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__2_n_6\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__3_n_4\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__3_n_5\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__3_n_6\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__3_n_7\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__4_n_0\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__4_n_1\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__4_n_2\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__4_n_3\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__4_n_4\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__4_n_5\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__4_n_6\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__4_n_7\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__5_n_0\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__5_n_1\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__5_n_2\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__5_n_3\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__5_n_4\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__5_n_5\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__5_n_6\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__5_n_7\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__6_n_0\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__6_n_1\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__6_n_2\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__6_n_3\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__6_n_4\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__6_n_5\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__6_n_6\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__6_n_7\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__7_n_0\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__7_n_1\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__7_n_2\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__7_n_3\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__7_n_4\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__7_n_5\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__7_n_6\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__7_n_7\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__8_n_0\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__8_n_1\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__8_n_2\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__8_n_3\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__8_n_4\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__8_n_5\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__8_n_6\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__8_n_7\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__9_n_0\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__9_n_1\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__9_n_2\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__9_n_3\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__9_n_4\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__9_n_5\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__9_n_6\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry__9_n_7\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \v1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal v1_n_100 : STD_LOGIC;
  signal v1_n_101 : STD_LOGIC;
  signal v1_n_102 : STD_LOGIC;
  signal v1_n_103 : STD_LOGIC;
  signal v1_n_104 : STD_LOGIC;
  signal v1_n_105 : STD_LOGIC;
  signal v1_n_106 : STD_LOGIC;
  signal v1_n_107 : STD_LOGIC;
  signal v1_n_108 : STD_LOGIC;
  signal v1_n_109 : STD_LOGIC;
  signal v1_n_110 : STD_LOGIC;
  signal v1_n_111 : STD_LOGIC;
  signal v1_n_112 : STD_LOGIC;
  signal v1_n_113 : STD_LOGIC;
  signal v1_n_114 : STD_LOGIC;
  signal v1_n_115 : STD_LOGIC;
  signal v1_n_116 : STD_LOGIC;
  signal v1_n_117 : STD_LOGIC;
  signal v1_n_118 : STD_LOGIC;
  signal v1_n_119 : STD_LOGIC;
  signal v1_n_120 : STD_LOGIC;
  signal v1_n_121 : STD_LOGIC;
  signal v1_n_122 : STD_LOGIC;
  signal v1_n_123 : STD_LOGIC;
  signal v1_n_124 : STD_LOGIC;
  signal v1_n_125 : STD_LOGIC;
  signal v1_n_126 : STD_LOGIC;
  signal v1_n_127 : STD_LOGIC;
  signal v1_n_128 : STD_LOGIC;
  signal v1_n_129 : STD_LOGIC;
  signal v1_n_130 : STD_LOGIC;
  signal v1_n_131 : STD_LOGIC;
  signal v1_n_132 : STD_LOGIC;
  signal v1_n_133 : STD_LOGIC;
  signal v1_n_134 : STD_LOGIC;
  signal v1_n_135 : STD_LOGIC;
  signal v1_n_136 : STD_LOGIC;
  signal v1_n_137 : STD_LOGIC;
  signal v1_n_138 : STD_LOGIC;
  signal v1_n_139 : STD_LOGIC;
  signal v1_n_140 : STD_LOGIC;
  signal v1_n_141 : STD_LOGIC;
  signal v1_n_142 : STD_LOGIC;
  signal v1_n_143 : STD_LOGIC;
  signal v1_n_144 : STD_LOGIC;
  signal v1_n_145 : STD_LOGIC;
  signal v1_n_146 : STD_LOGIC;
  signal v1_n_147 : STD_LOGIC;
  signal v1_n_148 : STD_LOGIC;
  signal v1_n_149 : STD_LOGIC;
  signal v1_n_150 : STD_LOGIC;
  signal v1_n_151 : STD_LOGIC;
  signal v1_n_152 : STD_LOGIC;
  signal v1_n_153 : STD_LOGIC;
  signal v1_n_58 : STD_LOGIC;
  signal v1_n_59 : STD_LOGIC;
  signal v1_n_60 : STD_LOGIC;
  signal v1_n_61 : STD_LOGIC;
  signal v1_n_62 : STD_LOGIC;
  signal v1_n_63 : STD_LOGIC;
  signal v1_n_64 : STD_LOGIC;
  signal v1_n_65 : STD_LOGIC;
  signal v1_n_66 : STD_LOGIC;
  signal v1_n_67 : STD_LOGIC;
  signal v1_n_68 : STD_LOGIC;
  signal v1_n_69 : STD_LOGIC;
  signal v1_n_70 : STD_LOGIC;
  signal v1_n_71 : STD_LOGIC;
  signal v1_n_72 : STD_LOGIC;
  signal v1_n_73 : STD_LOGIC;
  signal v1_n_74 : STD_LOGIC;
  signal v1_n_75 : STD_LOGIC;
  signal v1_n_76 : STD_LOGIC;
  signal v1_n_77 : STD_LOGIC;
  signal v1_n_78 : STD_LOGIC;
  signal v1_n_79 : STD_LOGIC;
  signal v1_n_80 : STD_LOGIC;
  signal v1_n_81 : STD_LOGIC;
  signal v1_n_82 : STD_LOGIC;
  signal v1_n_83 : STD_LOGIC;
  signal v1_n_84 : STD_LOGIC;
  signal v1_n_85 : STD_LOGIC;
  signal v1_n_86 : STD_LOGIC;
  signal v1_n_87 : STD_LOGIC;
  signal v1_n_88 : STD_LOGIC;
  signal v1_n_89 : STD_LOGIC;
  signal v1_n_90 : STD_LOGIC;
  signal v1_n_91 : STD_LOGIC;
  signal v1_n_92 : STD_LOGIC;
  signal v1_n_93 : STD_LOGIC;
  signal v1_n_94 : STD_LOGIC;
  signal v1_n_95 : STD_LOGIC;
  signal v1_n_96 : STD_LOGIC;
  signal v1_n_97 : STD_LOGIC;
  signal v1_n_98 : STD_LOGIC;
  signal v1_n_99 : STD_LOGIC;
  signal \w_in_reg_n_0_[0]\ : STD_LOGIC;
  signal \w_in_reg_n_0_[10]\ : STD_LOGIC;
  signal \w_in_reg_n_0_[11]\ : STD_LOGIC;
  signal \w_in_reg_n_0_[12]\ : STD_LOGIC;
  signal \w_in_reg_n_0_[13]\ : STD_LOGIC;
  signal \w_in_reg_n_0_[14]\ : STD_LOGIC;
  signal \w_in_reg_n_0_[15]\ : STD_LOGIC;
  signal \w_in_reg_n_0_[16]\ : STD_LOGIC;
  signal \w_in_reg_n_0_[17]\ : STD_LOGIC;
  signal \w_in_reg_n_0_[18]\ : STD_LOGIC;
  signal \w_in_reg_n_0_[19]\ : STD_LOGIC;
  signal \w_in_reg_n_0_[1]\ : STD_LOGIC;
  signal \w_in_reg_n_0_[20]\ : STD_LOGIC;
  signal \w_in_reg_n_0_[21]\ : STD_LOGIC;
  signal \w_in_reg_n_0_[22]\ : STD_LOGIC;
  signal \w_in_reg_n_0_[23]\ : STD_LOGIC;
  signal \w_in_reg_n_0_[24]\ : STD_LOGIC;
  signal \w_in_reg_n_0_[25]\ : STD_LOGIC;
  signal \w_in_reg_n_0_[26]\ : STD_LOGIC;
  signal \w_in_reg_n_0_[27]\ : STD_LOGIC;
  signal \w_in_reg_n_0_[28]\ : STD_LOGIC;
  signal \w_in_reg_n_0_[29]\ : STD_LOGIC;
  signal \w_in_reg_n_0_[2]\ : STD_LOGIC;
  signal \w_in_reg_n_0_[30]\ : STD_LOGIC;
  signal \w_in_reg_n_0_[31]\ : STD_LOGIC;
  signal \w_in_reg_n_0_[3]\ : STD_LOGIC;
  signal \w_in_reg_n_0_[4]\ : STD_LOGIC;
  signal \w_in_reg_n_0_[5]\ : STD_LOGIC;
  signal \w_in_reg_n_0_[6]\ : STD_LOGIC;
  signal \w_in_reg_n_0_[7]\ : STD_LOGIC;
  signal \w_in_reg_n_0_[8]\ : STD_LOGIC;
  signal \w_in_reg_n_0_[9]\ : STD_LOGIC;
  signal \wet_term_r__0\ : STD_LOGIC_VECTOR ( 30 downto 6 );
  signal \x_reg__0\ : STD_LOGIC_VECTOR ( 28 downto 6 );
  signal \NLW_sat_add3202_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sat_add3202_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sat_add3202_inferred__0/i__carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sat_add3202_inferred__0/i__carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_v0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_v0_carry__7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_v0_carry__7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_v0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v0_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v0_inferred__0/i__carry__7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_v0_inferred__0/i__carry__7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_v1_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_v1_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_v1_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_v1_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_v1_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_v1_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_v1_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_v1_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_v1_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v1__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_v1__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_v1__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v1__0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_v1__1_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__1_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__1_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__1_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__1_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__1_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__1_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_v1__1_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_v1__1_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v1__2_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__2_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__2_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__2_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__2_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__2_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__2_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_v1__2_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_v1__2_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v1__2_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_v1__3_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__3_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__3_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__3_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__3_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__3_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__3_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_v1__3_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_v1__3_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v1__4_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__4_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__4_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__4_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__4_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__4_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__4_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_v1__4_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_v1__4_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v1__4_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_v1__5_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__5_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__5_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__5_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__5_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__5_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__5_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_v1__5_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_v1__5_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v1__6_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__6_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__6_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__6_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__6_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__6_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_v1__6_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_v1__6_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_v1__6_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v1__6_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_v1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v1_carry__10_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_v1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_v1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v1_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v1_inferred__0/i__carry__10_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_v1_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ST_IDLE:000,ST_WAIT_D:100,ST_MUL:011,ST_MIX:010,ST_WAIT_W:001,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ST_IDLE:000,ST_WAIT_D:100,ST_MUL:011,ST_MIX:010,ST_WAIT_W:001,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "ST_IDLE:000,ST_WAIT_D:100,ST_MUL:011,ST_MIX:010,ST_WAIT_W:001,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \fb_term_r[0]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \fb_term_r[10]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \fb_term_r[11]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \fb_term_r[12]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \fb_term_r[13]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \fb_term_r[14]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \fb_term_r[15]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \fb_term_r[16]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \fb_term_r[17]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \fb_term_r[18]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \fb_term_r[19]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \fb_term_r[1]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \fb_term_r[20]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \fb_term_r[21]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \fb_term_r[22]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \fb_term_r[23]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \fb_term_r[24]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \fb_term_r[25]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \fb_term_r[26]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \fb_term_r[27]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \fb_term_r[28]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \fb_term_r[29]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \fb_term_r[2]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \fb_term_r[30]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \fb_term_r[31]_i_2\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \fb_term_r[3]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \fb_term_r[4]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \fb_term_r[5]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \fb_term_r[6]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \fb_term_r[7]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \fb_term_r[8]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \fb_term_r[9]_i_1\ : label is "soft_lutpair92";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of sat_add3202_carry : label is 35;
  attribute ADDER_THRESHOLD of \sat_add3202_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \sat_add3202_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \sat_add3202_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \sat_add3202_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \sat_add3202_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \sat_add3202_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \sat_add3202_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \sat_add3202_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \sat_add3202_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \sat_add3202_inferred__0/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \sat_add3202_inferred__0/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \sat_add3202_inferred__0/i__carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \sat_add3202_inferred__0/i__carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of v0_carry : label is 35;
  attribute ADDER_THRESHOLD of \v0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \v0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \v0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \v0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \v0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \v0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \v0_carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of \v0_carry__7\ : label is 35;
  attribute ADDER_THRESHOLD of \v0_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \v0_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \v0_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \v0_inferred__0/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \v0_inferred__0/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \v0_inferred__0/i__carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \v0_inferred__0/i__carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \v0_inferred__0/i__carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of \v0_inferred__0/i__carry__7\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of v1 : label is "{SYNTH-10 {cell *THIS*} {string 15x18 4}}";
  attribute METHODOLOGY_DRC_VIOS of \v1__0\ : label is "{SYNTH-10 {cell *THIS*} {string 15x15 4}}";
  attribute METHODOLOGY_DRC_VIOS of \v1__1\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 4}}";
  attribute METHODOLOGY_DRC_VIOS of \v1__2\ : label is "{SYNTH-10 {cell *THIS*} {string 18x15 4}}";
  attribute METHODOLOGY_DRC_VIOS of \v1__3\ : label is "{SYNTH-10 {cell *THIS*} {string 15x18 4}}";
  attribute METHODOLOGY_DRC_VIOS of \v1__4\ : label is "{SYNTH-10 {cell *THIS*} {string 15x15 4}}";
  attribute METHODOLOGY_DRC_VIOS of \v1__5\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 4}}";
  attribute METHODOLOGY_DRC_VIOS of \v1__6\ : label is "{SYNTH-10 {cell *THIS*} {string 18x15 4}}";
  attribute ADDER_THRESHOLD of v1_carry : label is 35;
  attribute ADDER_THRESHOLD of \v1_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \v1_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \v1_carry__10\ : label is 35;
  attribute ADDER_THRESHOLD of \v1_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \v1_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \v1_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \v1_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \v1_carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of \v1_carry__7\ : label is 35;
  attribute ADDER_THRESHOLD of \v1_carry__8\ : label is 35;
  attribute ADDER_THRESHOLD of \v1_carry__9\ : label is 35;
  attribute ADDER_THRESHOLD of \v1_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \v1_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \v1_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \v1_inferred__0/i__carry__10\ : label is 35;
  attribute ADDER_THRESHOLD of \v1_inferred__0/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \v1_inferred__0/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \v1_inferred__0/i__carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \v1_inferred__0/i__carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \v1_inferred__0/i__carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of \v1_inferred__0/i__carry__7\ : label is 35;
  attribute ADDER_THRESHOLD of \v1_inferred__0/i__carry__8\ : label is 35;
  attribute ADDER_THRESHOLD of \v1_inferred__0/i__carry__9\ : label is 35;
  attribute SOFT_HLUTNM of \w_in[0]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \w_in[10]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \w_in[11]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \w_in[12]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \w_in[13]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \w_in[14]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \w_in[15]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \w_in[16]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \w_in[17]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \w_in[18]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \w_in[19]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \w_in[1]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \w_in[20]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \w_in[21]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \w_in[22]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \w_in[23]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \w_in[24]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \w_in[25]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \w_in[26]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \w_in[27]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \w_in[28]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \w_in[29]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \w_in[2]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \w_in[30]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \w_in[31]_i_2\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \w_in[3]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \w_in[4]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \w_in[5]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \w_in[6]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \w_in[7]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \w_in[8]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \w_in[9]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \wet_term_r[10]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \wet_term_r[11]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \wet_term_r[12]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \wet_term_r[13]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \wet_term_r[14]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \wet_term_r[15]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \wet_term_r[16]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \wet_term_r[17]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \wet_term_r[18]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \wet_term_r[19]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \wet_term_r[20]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \wet_term_r[21]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \wet_term_r[22]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \wet_term_r[23]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \wet_term_r[24]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \wet_term_r[25]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \wet_term_r[26]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \wet_term_r[27]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \wet_term_r[28]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \wet_term_r[29]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \wet_term_r[30]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \wet_term_r[31]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \wet_term_r[6]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \wet_term_r[7]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \wet_term_r[8]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \wet_term_r[9]_i_1\ : label is "soft_lutpair76";
begin
  clear_req_reg_0 <= \^clear_req_reg_0\;
  p_0_in <= \^p_0_in\;
  \reg_ctrl_reg[0]\ <= \^reg_ctrl_reg[0]\;
  ret_valid <= \^ret_valid\;
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => u_dl_n_27,
      Q => state(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => u_dl_n_26,
      Q => state(1),
      R => '0'
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => u_dl_n_25,
      Q => state(2),
      R => '0'
    );
clear_req_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clear_req0,
      Q => \^clear_req_reg_0\,
      R => \^p_0_in\
    );
enable_d_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^p_0_in\,
      D => enable_d_reg_0,
      Q => enable_d
    );
\fb_term_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_carry__7_n_6\,
      I1 => \v0_carry__7_n_5\,
      I2 => v0_carry_n_5,
      O => \fb_term_r[0]_i_1_n_0\
    );
\fb_term_r[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_carry__7_n_6\,
      I1 => \v0_carry__7_n_5\,
      I2 => \v0_carry__2_n_7\,
      O => \fb_term_r[10]_i_1_n_0\
    );
\fb_term_r[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_carry__7_n_6\,
      I1 => \v0_carry__7_n_5\,
      I2 => \v0_carry__2_n_6\,
      O => \fb_term_r[11]_i_1_n_0\
    );
\fb_term_r[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_carry__7_n_6\,
      I1 => \v0_carry__7_n_5\,
      I2 => \v0_carry__2_n_5\,
      O => \fb_term_r[12]_i_1_n_0\
    );
\fb_term_r[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_carry__7_n_6\,
      I1 => \v0_carry__7_n_5\,
      I2 => \v0_carry__2_n_4\,
      O => \fb_term_r[13]_i_1_n_0\
    );
\fb_term_r[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_carry__7_n_6\,
      I1 => \v0_carry__7_n_5\,
      I2 => \v0_carry__3_n_7\,
      O => \fb_term_r[14]_i_1_n_0\
    );
\fb_term_r[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_carry__7_n_6\,
      I1 => \v0_carry__7_n_5\,
      I2 => \v0_carry__3_n_6\,
      O => \fb_term_r[15]_i_1_n_0\
    );
\fb_term_r[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_carry__7_n_6\,
      I1 => \v0_carry__7_n_5\,
      I2 => \v0_carry__3_n_5\,
      O => \fb_term_r[16]_i_1_n_0\
    );
\fb_term_r[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_carry__7_n_6\,
      I1 => \v0_carry__7_n_5\,
      I2 => \v0_carry__3_n_4\,
      O => \fb_term_r[17]_i_1_n_0\
    );
\fb_term_r[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_carry__7_n_6\,
      I1 => \v0_carry__7_n_5\,
      I2 => \v0_carry__4_n_7\,
      O => \fb_term_r[18]_i_1_n_0\
    );
\fb_term_r[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_carry__7_n_6\,
      I1 => \v0_carry__7_n_5\,
      I2 => \v0_carry__4_n_6\,
      O => \fb_term_r[19]_i_1_n_0\
    );
\fb_term_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_carry__7_n_6\,
      I1 => \v0_carry__7_n_5\,
      I2 => v0_carry_n_4,
      O => \fb_term_r[1]_i_1_n_0\
    );
\fb_term_r[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_carry__7_n_6\,
      I1 => \v0_carry__7_n_5\,
      I2 => \v0_carry__4_n_5\,
      O => \fb_term_r[20]_i_1_n_0\
    );
\fb_term_r[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_carry__7_n_6\,
      I1 => \v0_carry__7_n_5\,
      I2 => \v0_carry__4_n_4\,
      O => \fb_term_r[21]_i_1_n_0\
    );
\fb_term_r[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_carry__7_n_6\,
      I1 => \v0_carry__7_n_5\,
      I2 => \v0_carry__5_n_7\,
      O => \fb_term_r[22]_i_1_n_0\
    );
\fb_term_r[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_carry__7_n_6\,
      I1 => \v0_carry__7_n_5\,
      I2 => \v0_carry__5_n_6\,
      O => \fb_term_r[23]_i_1_n_0\
    );
\fb_term_r[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_carry__7_n_6\,
      I1 => \v0_carry__7_n_5\,
      I2 => \v0_carry__5_n_5\,
      O => \fb_term_r[24]_i_1_n_0\
    );
\fb_term_r[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_carry__7_n_6\,
      I1 => \v0_carry__7_n_5\,
      I2 => \v0_carry__5_n_4\,
      O => \fb_term_r[25]_i_1_n_0\
    );
\fb_term_r[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_carry__7_n_6\,
      I1 => \v0_carry__7_n_5\,
      I2 => \v0_carry__6_n_7\,
      O => \fb_term_r[26]_i_1_n_0\
    );
\fb_term_r[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_carry__7_n_6\,
      I1 => \v0_carry__7_n_5\,
      I2 => \v0_carry__6_n_6\,
      O => \fb_term_r[27]_i_1_n_0\
    );
\fb_term_r[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_carry__7_n_6\,
      I1 => \v0_carry__7_n_5\,
      I2 => \v0_carry__6_n_5\,
      O => \fb_term_r[28]_i_1_n_0\
    );
\fb_term_r[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_carry__7_n_6\,
      I1 => \v0_carry__7_n_5\,
      I2 => \v0_carry__6_n_4\,
      O => \fb_term_r[29]_i_1_n_0\
    );
\fb_term_r[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_carry__7_n_6\,
      I1 => \v0_carry__7_n_5\,
      I2 => \v0_carry__0_n_7\,
      O => \fb_term_r[2]_i_1_n_0\
    );
\fb_term_r[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_carry__7_n_6\,
      I1 => \v0_carry__7_n_5\,
      I2 => \v0_carry__7_n_7\,
      O => \fb_term_r[30]_i_1_n_0\
    );
\fb_term_r[31]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v0_carry__7_n_5\,
      O => \fb_term_r[31]_i_2_n_0\
    );
\fb_term_r[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_carry__7_n_6\,
      I1 => \v0_carry__7_n_5\,
      I2 => \v0_carry__0_n_6\,
      O => \fb_term_r[3]_i_1_n_0\
    );
\fb_term_r[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_carry__7_n_6\,
      I1 => \v0_carry__7_n_5\,
      I2 => \v0_carry__0_n_5\,
      O => \fb_term_r[4]_i_1_n_0\
    );
\fb_term_r[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_carry__7_n_6\,
      I1 => \v0_carry__7_n_5\,
      I2 => \v0_carry__0_n_4\,
      O => \fb_term_r[5]_i_1_n_0\
    );
\fb_term_r[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_carry__7_n_6\,
      I1 => \v0_carry__7_n_5\,
      I2 => \v0_carry__1_n_7\,
      O => \fb_term_r[6]_i_1_n_0\
    );
\fb_term_r[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_carry__7_n_6\,
      I1 => \v0_carry__7_n_5\,
      I2 => \v0_carry__1_n_6\,
      O => \fb_term_r[7]_i_1_n_0\
    );
\fb_term_r[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_carry__7_n_6\,
      I1 => \v0_carry__7_n_5\,
      I2 => \v0_carry__1_n_5\,
      O => \fb_term_r[8]_i_1_n_0\
    );
\fb_term_r[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_carry__7_n_6\,
      I1 => \v0_carry__7_n_5\,
      I2 => \v0_carry__1_n_4\,
      O => \fb_term_r[9]_i_1_n_0\
    );
\fb_term_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[0]_i_1_n_0\,
      Q => \fb_term_r_reg_n_0_[0]\,
      R => \^p_0_in\
    );
\fb_term_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[10]_i_1_n_0\,
      Q => \fb_term_r_reg_n_0_[10]\,
      R => \^p_0_in\
    );
\fb_term_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[11]_i_1_n_0\,
      Q => \fb_term_r_reg_n_0_[11]\,
      R => \^p_0_in\
    );
\fb_term_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[12]_i_1_n_0\,
      Q => \fb_term_r_reg_n_0_[12]\,
      R => \^p_0_in\
    );
\fb_term_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[13]_i_1_n_0\,
      Q => \fb_term_r_reg_n_0_[13]\,
      R => \^p_0_in\
    );
\fb_term_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[14]_i_1_n_0\,
      Q => \fb_term_r_reg_n_0_[14]\,
      R => \^p_0_in\
    );
\fb_term_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[15]_i_1_n_0\,
      Q => \fb_term_r_reg_n_0_[15]\,
      R => \^p_0_in\
    );
\fb_term_r_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[16]_i_1_n_0\,
      Q => \fb_term_r_reg_n_0_[16]\,
      R => \^p_0_in\
    );
\fb_term_r_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[17]_i_1_n_0\,
      Q => \fb_term_r_reg_n_0_[17]\,
      R => \^p_0_in\
    );
\fb_term_r_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[18]_i_1_n_0\,
      Q => \fb_term_r_reg_n_0_[18]\,
      R => \^p_0_in\
    );
\fb_term_r_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[19]_i_1_n_0\,
      Q => \fb_term_r_reg_n_0_[19]\,
      R => \^p_0_in\
    );
\fb_term_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[1]_i_1_n_0\,
      Q => \fb_term_r_reg_n_0_[1]\,
      R => \^p_0_in\
    );
\fb_term_r_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[20]_i_1_n_0\,
      Q => \fb_term_r_reg_n_0_[20]\,
      R => \^p_0_in\
    );
\fb_term_r_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[21]_i_1_n_0\,
      Q => \fb_term_r_reg_n_0_[21]\,
      R => \^p_0_in\
    );
\fb_term_r_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[22]_i_1_n_0\,
      Q => \fb_term_r_reg_n_0_[22]\,
      R => \^p_0_in\
    );
\fb_term_r_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[23]_i_1_n_0\,
      Q => \fb_term_r_reg_n_0_[23]\,
      R => \^p_0_in\
    );
\fb_term_r_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[24]_i_1_n_0\,
      Q => \fb_term_r_reg_n_0_[24]\,
      R => \^p_0_in\
    );
\fb_term_r_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[25]_i_1_n_0\,
      Q => \fb_term_r_reg_n_0_[25]\,
      R => \^p_0_in\
    );
\fb_term_r_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[26]_i_1_n_0\,
      Q => \fb_term_r_reg_n_0_[26]\,
      R => \^p_0_in\
    );
\fb_term_r_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[27]_i_1_n_0\,
      Q => \fb_term_r_reg_n_0_[27]\,
      R => \^p_0_in\
    );
\fb_term_r_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[28]_i_1_n_0\,
      Q => \fb_term_r_reg_n_0_[28]\,
      R => \^p_0_in\
    );
\fb_term_r_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[29]_i_1_n_0\,
      Q => \fb_term_r_reg_n_0_[29]\,
      R => \^p_0_in\
    );
\fb_term_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[2]_i_1_n_0\,
      Q => \fb_term_r_reg_n_0_[2]\,
      R => \^p_0_in\
    );
\fb_term_r_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[30]_i_1_n_0\,
      Q => \fb_term_r_reg_n_0_[30]\,
      R => \^p_0_in\
    );
\fb_term_r_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[31]_i_2_n_0\,
      Q => p_0_in8_in,
      R => \^p_0_in\
    );
\fb_term_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[3]_i_1_n_0\,
      Q => \fb_term_r_reg_n_0_[3]\,
      R => \^p_0_in\
    );
\fb_term_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[4]_i_1_n_0\,
      Q => \fb_term_r_reg_n_0_[4]\,
      R => \^p_0_in\
    );
\fb_term_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[5]_i_1_n_0\,
      Q => \fb_term_r_reg_n_0_[5]\,
      R => \^p_0_in\
    );
\fb_term_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[6]_i_1_n_0\,
      Q => \fb_term_r_reg_n_0_[6]\,
      R => \^p_0_in\
    );
\fb_term_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[7]_i_1_n_0\,
      Q => \fb_term_r_reg_n_0_[7]\,
      R => \^p_0_in\
    );
\fb_term_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[8]_i_1_n_0\,
      Q => \fb_term_r_reg_n_0_[8]\,
      R => \^p_0_in\
    );
\fb_term_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => \fb_term_r[9]_i_1_n_0\,
      Q => \fb_term_r_reg_n_0_[9]\,
      R => \^p_0_in\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(13),
      I1 => \wet_term_r__0\(13),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_99\,
      I1 => \v1__3_n_99\,
      O => \i__carry__0_i_1__1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(12),
      I1 => \wet_term_r__0\(12),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_100\,
      I1 => \v1__3_n_100\,
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(11),
      I1 => \wet_term_r__0\(11),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_101\,
      I1 => \v1__3_n_101\,
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(10),
      I1 => \wet_term_r__0\(10),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_102\,
      I1 => \v1__3_n_102\,
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__10_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_59\,
      I1 => \v1__4_n_76\,
      O => \i__carry__10_i_1_n_0\
    );
\i__carry__10_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_60\,
      I1 => \v1__4_n_77\,
      O => \i__carry__10_i_2_n_0\
    );
\i__carry__10_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_61\,
      I1 => \v1__4_n_78\,
      O => \i__carry__10_i_3_n_0\
    );
\i__carry__10_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_62\,
      I1 => \v1__4_n_79\,
      O => \i__carry__10_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(17),
      I1 => \wet_term_r__0\(17),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_95\,
      I1 => \v1__3_n_95\,
      O => \i__carry__1_i_1__0_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(16),
      I1 => \wet_term_r__0\(16),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_96\,
      I1 => \v1__3_n_96\,
      O => \i__carry__1_i_2__0_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(15),
      I1 => \wet_term_r__0\(15),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_97\,
      I1 => \v1__3_n_97\,
      O => \i__carry__1_i_3__0_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(14),
      I1 => \wet_term_r__0\(14),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_98\,
      I1 => \v1__3_n_98\,
      O => \i__carry__1_i_4__0_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(21),
      I1 => \wet_term_r__0\(21),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_91\,
      I1 => \v1__3_n_91\,
      O => \i__carry__2_i_1__0_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(20),
      I1 => \wet_term_r__0\(20),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_92\,
      I1 => \v1__3_n_92\,
      O => \i__carry__2_i_2__0_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(19),
      I1 => \wet_term_r__0\(19),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_93\,
      I1 => \v1__3_n_93\,
      O => \i__carry__2_i_3__0_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(18),
      I1 => \wet_term_r__0\(18),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__2_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_94\,
      I1 => \v1__3_n_94\,
      O => \i__carry__2_i_4__0_n_0\
    );
\i__carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(25),
      I1 => \wet_term_r__0\(25),
      O => \i__carry__3_i_1_n_0\
    );
\i__carry__3_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_87\,
      I1 => \v1__4_n_104\,
      O => \i__carry__3_i_1__0_n_0\
    );
\i__carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(24),
      I1 => \wet_term_r__0\(24),
      O => \i__carry__3_i_2_n_0\
    );
\i__carry__3_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_88\,
      I1 => \v1__4_n_105\,
      O => \i__carry__3_i_2__0_n_0\
    );
\i__carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(23),
      I1 => \wet_term_r__0\(23),
      O => \i__carry__3_i_3_n_0\
    );
\i__carry__3_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_89\,
      I1 => \v1__3_n_89\,
      O => \i__carry__3_i_3__0_n_0\
    );
\i__carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(22),
      I1 => \wet_term_r__0\(22),
      O => \i__carry__3_i_4_n_0\
    );
\i__carry__3_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_90\,
      I1 => \v1__3_n_90\,
      O => \i__carry__3_i_4__0_n_0\
    );
\i__carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in9_in,
      I1 => \wet_term_r__0\(29),
      O => \i__carry__4_i_1_n_0\
    );
\i__carry__4_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_83\,
      I1 => \v1__4_n_100\,
      O => \i__carry__4_i_1__0_n_0\
    );
\i__carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(28),
      I1 => \wet_term_r__0\(28),
      O => \i__carry__4_i_2_n_0\
    );
\i__carry__4_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_84\,
      I1 => \v1__4_n_101\,
      O => \i__carry__4_i_2__0_n_0\
    );
\i__carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(27),
      I1 => \wet_term_r__0\(27),
      O => \i__carry__4_i_3_n_0\
    );
\i__carry__4_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_85\,
      I1 => \v1__4_n_102\,
      O => \i__carry__4_i_3__0_n_0\
    );
\i__carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(26),
      I1 => \wet_term_r__0\(26),
      O => \i__carry__4_i_4_n_0\
    );
\i__carry__4_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_86\,
      I1 => \v1__4_n_103\,
      O => \i__carry__4_i_4__0_n_0\
    );
\i__carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in9_in,
      I1 => p_1_in,
      O => \i__carry__5_i_1_n_0\
    );
\i__carry__5_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_79\,
      I1 => \v1__4_n_96\,
      O => \i__carry__5_i_1__0_n_0\
    );
\i__carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in9_in,
      I1 => \wet_term_r__0\(30),
      O => \i__carry__5_i_2_n_0\
    );
\i__carry__5_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_80\,
      I1 => \v1__4_n_97\,
      O => \i__carry__5_i_2__0_n_0\
    );
\i__carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_81\,
      I1 => \v1__4_n_98\,
      O => \i__carry__5_i_3_n_0\
    );
\i__carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_82\,
      I1 => \v1__4_n_99\,
      O => \i__carry__5_i_4_n_0\
    );
\i__carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_75\,
      I1 => \v1__4_n_92\,
      O => \i__carry__6_i_1_n_0\
    );
\i__carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_76\,
      I1 => \v1__4_n_93\,
      O => \i__carry__6_i_2_n_0\
    );
\i__carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_77\,
      I1 => \v1__4_n_94\,
      O => \i__carry__6_i_3_n_0\
    );
\i__carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_78\,
      I1 => \v1__4_n_95\,
      O => \i__carry__6_i_4_n_0\
    );
\i__carry__7_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_71\,
      I1 => \v1__4_n_88\,
      O => \i__carry__7_i_1_n_0\
    );
\i__carry__7_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_72\,
      I1 => \v1__4_n_89\,
      O => \i__carry__7_i_2_n_0\
    );
\i__carry__7_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_73\,
      I1 => \v1__4_n_90\,
      O => \i__carry__7_i_3_n_0\
    );
\i__carry__7_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_74\,
      I1 => \v1__4_n_91\,
      O => \i__carry__7_i_4_n_0\
    );
\i__carry__8_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_67\,
      I1 => \v1__4_n_84\,
      O => \i__carry__8_i_1_n_0\
    );
\i__carry__8_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_68\,
      I1 => \v1__4_n_85\,
      O => \i__carry__8_i_2_n_0\
    );
\i__carry__8_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_69\,
      I1 => \v1__4_n_86\,
      O => \i__carry__8_i_3_n_0\
    );
\i__carry__8_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_70\,
      I1 => \v1__4_n_87\,
      O => \i__carry__8_i_4_n_0\
    );
\i__carry__9_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_63\,
      I1 => \v1__4_n_80\,
      O => \i__carry__9_i_1_n_0\
    );
\i__carry__9_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_64\,
      I1 => \v1__4_n_81\,
      O => \i__carry__9_i_2_n_0\
    );
\i__carry__9_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_65\,
      I1 => \v1__4_n_82\,
      O => \i__carry__9_i_3_n_0\
    );
\i__carry__9_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_66\,
      I1 => \v1__4_n_83\,
      O => \i__carry__9_i_4_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(9),
      I1 => \wet_term_r__0\(9),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_103\,
      I1 => \v1__3_n_103\,
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \v1_inferred__0/i__carry__2_n_5\,
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(8),
      I1 => \wet_term_r__0\(8),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_104\,
      I1 => \v1__3_n_104\,
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(7),
      I1 => \wet_term_r__0\(7),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__6_n_105\,
      I1 => \v1__3_n_105\,
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(6),
      I1 => \wet_term_r__0\(6),
      O => \i__carry_i_4__0_n_0\
    );
\out_buf[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCF0CCCAAAAAAAA"
    )
        port map (
      I0 => D(4),
      I1 => \sat_add3202_inferred__0/i__carry__0_n_7\,
      I2 => p_0_in9_in,
      I3 => p_1_in,
      I4 => p_0_in14_in,
      I5 => \^reg_ctrl_reg[0]\,
      O => p_2_in(10)
    );
\out_buf[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCF0CCCAAAAAAAA"
    )
        port map (
      I0 => D(5),
      I1 => \sat_add3202_inferred__0/i__carry__0_n_6\,
      I2 => p_0_in9_in,
      I3 => p_1_in,
      I4 => p_0_in14_in,
      I5 => \^reg_ctrl_reg[0]\,
      O => p_2_in(11)
    );
\out_buf[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCF0CCCAAAAAAAA"
    )
        port map (
      I0 => D(6),
      I1 => \sat_add3202_inferred__0/i__carry__0_n_5\,
      I2 => p_0_in9_in,
      I3 => p_1_in,
      I4 => p_0_in14_in,
      I5 => \^reg_ctrl_reg[0]\,
      O => p_2_in(12)
    );
\out_buf[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCF0CCCAAAAAAAA"
    )
        port map (
      I0 => D(7),
      I1 => \sat_add3202_inferred__0/i__carry__0_n_4\,
      I2 => p_0_in9_in,
      I3 => p_1_in,
      I4 => p_0_in14_in,
      I5 => \^reg_ctrl_reg[0]\,
      O => p_2_in(13)
    );
\out_buf[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCF0CCCAAAAAAAA"
    )
        port map (
      I0 => D(8),
      I1 => \sat_add3202_inferred__0/i__carry__1_n_7\,
      I2 => p_0_in9_in,
      I3 => p_1_in,
      I4 => p_0_in14_in,
      I5 => \^reg_ctrl_reg[0]\,
      O => p_2_in(14)
    );
\out_buf[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCF0CCCAAAAAAAA"
    )
        port map (
      I0 => D(9),
      I1 => \sat_add3202_inferred__0/i__carry__1_n_6\,
      I2 => p_0_in9_in,
      I3 => p_1_in,
      I4 => p_0_in14_in,
      I5 => \^reg_ctrl_reg[0]\,
      O => p_2_in(15)
    );
\out_buf[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCF0CCCAAAAAAAA"
    )
        port map (
      I0 => D(10),
      I1 => \sat_add3202_inferred__0/i__carry__1_n_5\,
      I2 => p_0_in9_in,
      I3 => p_1_in,
      I4 => p_0_in14_in,
      I5 => \^reg_ctrl_reg[0]\,
      O => p_2_in(16)
    );
\out_buf[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCF0CCCAAAAAAAA"
    )
        port map (
      I0 => D(11),
      I1 => \sat_add3202_inferred__0/i__carry__1_n_4\,
      I2 => p_0_in9_in,
      I3 => p_1_in,
      I4 => p_0_in14_in,
      I5 => \^reg_ctrl_reg[0]\,
      O => p_2_in(17)
    );
\out_buf[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCF0CCCAAAAAAAA"
    )
        port map (
      I0 => D(12),
      I1 => \sat_add3202_inferred__0/i__carry__2_n_7\,
      I2 => p_0_in9_in,
      I3 => p_1_in,
      I4 => p_0_in14_in,
      I5 => \^reg_ctrl_reg[0]\,
      O => p_2_in(18)
    );
\out_buf[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCF0CCCAAAAAAAA"
    )
        port map (
      I0 => D(13),
      I1 => \sat_add3202_inferred__0/i__carry__2_n_6\,
      I2 => p_0_in9_in,
      I3 => p_1_in,
      I4 => p_0_in14_in,
      I5 => \^reg_ctrl_reg[0]\,
      O => p_2_in(19)
    );
\out_buf[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCF0CCCAAAAAAAA"
    )
        port map (
      I0 => D(14),
      I1 => \sat_add3202_inferred__0/i__carry__2_n_5\,
      I2 => p_0_in9_in,
      I3 => p_1_in,
      I4 => p_0_in14_in,
      I5 => \^reg_ctrl_reg[0]\,
      O => p_2_in(20)
    );
\out_buf[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCF0CCCAAAAAAAA"
    )
        port map (
      I0 => D(15),
      I1 => \sat_add3202_inferred__0/i__carry__2_n_4\,
      I2 => p_0_in9_in,
      I3 => p_1_in,
      I4 => p_0_in14_in,
      I5 => \^reg_ctrl_reg[0]\,
      O => p_2_in(21)
    );
\out_buf[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCF0CCCAAAAAAAA"
    )
        port map (
      I0 => D(16),
      I1 => \sat_add3202_inferred__0/i__carry__3_n_7\,
      I2 => p_0_in9_in,
      I3 => p_1_in,
      I4 => p_0_in14_in,
      I5 => \^reg_ctrl_reg[0]\,
      O => p_2_in(22)
    );
\out_buf[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCF0CCCAAAAAAAA"
    )
        port map (
      I0 => D(17),
      I1 => \sat_add3202_inferred__0/i__carry__3_n_6\,
      I2 => p_0_in9_in,
      I3 => p_1_in,
      I4 => p_0_in14_in,
      I5 => \^reg_ctrl_reg[0]\,
      O => p_2_in(23)
    );
\out_buf[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCF0CCCAAAAAAAA"
    )
        port map (
      I0 => D(18),
      I1 => \sat_add3202_inferred__0/i__carry__3_n_5\,
      I2 => p_0_in9_in,
      I3 => p_1_in,
      I4 => p_0_in14_in,
      I5 => \^reg_ctrl_reg[0]\,
      O => p_2_in(24)
    );
\out_buf[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCF0CCCAAAAAAAA"
    )
        port map (
      I0 => D(19),
      I1 => \sat_add3202_inferred__0/i__carry__3_n_4\,
      I2 => p_0_in9_in,
      I3 => p_1_in,
      I4 => p_0_in14_in,
      I5 => \^reg_ctrl_reg[0]\,
      O => p_2_in(25)
    );
\out_buf[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCF0CCCAAAAAAAA"
    )
        port map (
      I0 => D(20),
      I1 => \sat_add3202_inferred__0/i__carry__4_n_7\,
      I2 => p_0_in9_in,
      I3 => p_1_in,
      I4 => p_0_in14_in,
      I5 => \^reg_ctrl_reg[0]\,
      O => p_2_in(26)
    );
\out_buf[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCF0CCCAAAAAAAA"
    )
        port map (
      I0 => D(21),
      I1 => \sat_add3202_inferred__0/i__carry__4_n_6\,
      I2 => p_0_in9_in,
      I3 => p_1_in,
      I4 => p_0_in14_in,
      I5 => \^reg_ctrl_reg[0]\,
      O => p_2_in(27)
    );
\out_buf[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCF0CCCAAAAAAAA"
    )
        port map (
      I0 => D(22),
      I1 => \sat_add3202_inferred__0/i__carry__4_n_5\,
      I2 => p_0_in9_in,
      I3 => p_1_in,
      I4 => p_0_in14_in,
      I5 => \^reg_ctrl_reg[0]\,
      O => p_2_in(28)
    );
\out_buf[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCF0CCCAAAAAAAA"
    )
        port map (
      I0 => D(23),
      I1 => \sat_add3202_inferred__0/i__carry__4_n_4\,
      I2 => p_0_in9_in,
      I3 => p_1_in,
      I4 => p_0_in14_in,
      I5 => \^reg_ctrl_reg[0]\,
      O => p_2_in(29)
    );
\out_buf[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCF0CCCAAAAAAAA"
    )
        port map (
      I0 => D(23),
      I1 => \sat_add3202_inferred__0/i__carry__5_n_7\,
      I2 => p_0_in9_in,
      I3 => p_1_in,
      I4 => p_0_in14_in,
      I5 => \^reg_ctrl_reg[0]\,
      O => p_2_in(30)
    );
\out_buf[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8FFE800"
    )
        port map (
      I0 => p_0_in9_in,
      I1 => p_1_in,
      I2 => p_0_in14_in,
      I3 => \^reg_ctrl_reg[0]\,
      I4 => D(23),
      O => p_2_in(31)
    );
\out_buf[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCF0CCCAAAAAAAA"
    )
        port map (
      I0 => D(0),
      I1 => \sat_add3202_inferred__0/i__carry_n_7\,
      I2 => p_0_in9_in,
      I3 => p_1_in,
      I4 => p_0_in14_in,
      I5 => \^reg_ctrl_reg[0]\,
      O => p_2_in(6)
    );
\out_buf[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCF0CCCAAAAAAAA"
    )
        port map (
      I0 => D(1),
      I1 => \sat_add3202_inferred__0/i__carry_n_6\,
      I2 => p_0_in9_in,
      I3 => p_1_in,
      I4 => p_0_in14_in,
      I5 => \^reg_ctrl_reg[0]\,
      O => p_2_in(7)
    );
\out_buf[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCF0CCCAAAAAAAA"
    )
        port map (
      I0 => D(2),
      I1 => \sat_add3202_inferred__0/i__carry_n_5\,
      I2 => p_0_in9_in,
      I3 => p_1_in,
      I4 => p_0_in14_in,
      I5 => \^reg_ctrl_reg[0]\,
      O => p_2_in(8)
    );
\out_buf[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCF0CCCAAAAAAAA"
    )
        port map (
      I0 => D(3),
      I1 => \sat_add3202_inferred__0/i__carry_n_4\,
      I2 => p_0_in9_in,
      I3 => p_1_in,
      I4 => p_0_in14_in,
      I5 => \^reg_ctrl_reg[0]\,
      O => p_2_in(9)
    );
\out_buf_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_18,
      D => p_2_in(10),
      Q => \out_buf_reg[31]_0\(4),
      R => \^p_0_in\
    );
\out_buf_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_18,
      D => p_2_in(11),
      Q => \out_buf_reg[31]_0\(5),
      R => \^p_0_in\
    );
\out_buf_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_18,
      D => p_2_in(12),
      Q => \out_buf_reg[31]_0\(6),
      R => \^p_0_in\
    );
\out_buf_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_18,
      D => p_2_in(13),
      Q => \out_buf_reg[31]_0\(7),
      R => \^p_0_in\
    );
\out_buf_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_18,
      D => p_2_in(14),
      Q => \out_buf_reg[31]_0\(8),
      R => \^p_0_in\
    );
\out_buf_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_18,
      D => p_2_in(15),
      Q => \out_buf_reg[31]_0\(9),
      R => \^p_0_in\
    );
\out_buf_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_18,
      D => p_2_in(16),
      Q => \out_buf_reg[31]_0\(10),
      R => \^p_0_in\
    );
\out_buf_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_18,
      D => p_2_in(17),
      Q => \out_buf_reg[31]_0\(11),
      R => \^p_0_in\
    );
\out_buf_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_18,
      D => p_2_in(18),
      Q => \out_buf_reg[31]_0\(12),
      R => \^p_0_in\
    );
\out_buf_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_18,
      D => p_2_in(19),
      Q => \out_buf_reg[31]_0\(13),
      R => \^p_0_in\
    );
\out_buf_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_18,
      D => p_2_in(20),
      Q => \out_buf_reg[31]_0\(14),
      R => \^p_0_in\
    );
\out_buf_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_18,
      D => p_2_in(21),
      Q => \out_buf_reg[31]_0\(15),
      R => \^p_0_in\
    );
\out_buf_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_18,
      D => p_2_in(22),
      Q => \out_buf_reg[31]_0\(16),
      R => \^p_0_in\
    );
\out_buf_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_18,
      D => p_2_in(23),
      Q => \out_buf_reg[31]_0\(17),
      R => \^p_0_in\
    );
\out_buf_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_18,
      D => p_2_in(24),
      Q => \out_buf_reg[31]_0\(18),
      R => \^p_0_in\
    );
\out_buf_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_18,
      D => p_2_in(25),
      Q => \out_buf_reg[31]_0\(19),
      R => \^p_0_in\
    );
\out_buf_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_18,
      D => p_2_in(26),
      Q => \out_buf_reg[31]_0\(20),
      R => \^p_0_in\
    );
\out_buf_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_18,
      D => p_2_in(27),
      Q => \out_buf_reg[31]_0\(21),
      R => \^p_0_in\
    );
\out_buf_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_18,
      D => p_2_in(28),
      Q => \out_buf_reg[31]_0\(22),
      R => \^p_0_in\
    );
\out_buf_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_18,
      D => p_2_in(29),
      Q => \out_buf_reg[31]_0\(23),
      R => \^p_0_in\
    );
\out_buf_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_18,
      D => p_2_in(30),
      Q => \out_buf_reg[31]_0\(24),
      R => \^p_0_in\
    );
\out_buf_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_18,
      D => p_2_in(31),
      Q => \out_buf_reg[31]_0\(25),
      R => \^p_0_in\
    );
\out_buf_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_18,
      D => p_2_in(6),
      Q => \out_buf_reg[31]_0\(0),
      R => \^p_0_in\
    );
\out_buf_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_18,
      D => p_2_in(7),
      Q => \out_buf_reg[31]_0\(1),
      R => \^p_0_in\
    );
\out_buf_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_18,
      D => p_2_in(8),
      Q => \out_buf_reg[31]_0\(2),
      R => \^p_0_in\
    );
\out_buf_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_18,
      D => p_2_in(9),
      Q => \out_buf_reg[31]_0\(3),
      R => \^p_0_in\
    );
out_buf_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => u_dl_n_28,
      Q => \^ret_valid\,
      R => \^p_0_in\
    );
sat_add3202_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sat_add3202_carry_n_0,
      CO(2) => sat_add3202_carry_n_1,
      CO(1) => sat_add3202_carry_n_2,
      CO(0) => sat_add3202_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \x_reg__0\(9 downto 6),
      O(3) => sat_add3202_carry_n_4,
      O(2) => sat_add3202_carry_n_5,
      O(1) => sat_add3202_carry_n_6,
      O(0) => sat_add3202_carry_n_7,
      S(3) => sat_add3202_carry_i_1_n_0,
      S(2) => sat_add3202_carry_i_2_n_0,
      S(1) => sat_add3202_carry_i_3_n_0,
      S(0) => sat_add3202_carry_i_4_n_0
    );
\sat_add3202_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sat_add3202_carry_n_0,
      CO(3) => \sat_add3202_carry__0_n_0\,
      CO(2) => \sat_add3202_carry__0_n_1\,
      CO(1) => \sat_add3202_carry__0_n_2\,
      CO(0) => \sat_add3202_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \x_reg__0\(13 downto 10),
      O(3) => \sat_add3202_carry__0_n_4\,
      O(2) => \sat_add3202_carry__0_n_5\,
      O(1) => \sat_add3202_carry__0_n_6\,
      O(0) => \sat_add3202_carry__0_n_7\,
      S(3) => \sat_add3202_carry__0_i_1_n_0\,
      S(2) => \sat_add3202_carry__0_i_2_n_0\,
      S(1) => \sat_add3202_carry__0_i_3_n_0\,
      S(0) => \sat_add3202_carry__0_i_4_n_0\
    );
\sat_add3202_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(13),
      I1 => \fb_term_r_reg_n_0_[13]\,
      O => \sat_add3202_carry__0_i_1_n_0\
    );
\sat_add3202_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(12),
      I1 => \fb_term_r_reg_n_0_[12]\,
      O => \sat_add3202_carry__0_i_2_n_0\
    );
\sat_add3202_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(11),
      I1 => \fb_term_r_reg_n_0_[11]\,
      O => \sat_add3202_carry__0_i_3_n_0\
    );
\sat_add3202_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(10),
      I1 => \fb_term_r_reg_n_0_[10]\,
      O => \sat_add3202_carry__0_i_4_n_0\
    );
\sat_add3202_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sat_add3202_carry__0_n_0\,
      CO(3) => \sat_add3202_carry__1_n_0\,
      CO(2) => \sat_add3202_carry__1_n_1\,
      CO(1) => \sat_add3202_carry__1_n_2\,
      CO(0) => \sat_add3202_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \x_reg__0\(17 downto 14),
      O(3) => \sat_add3202_carry__1_n_4\,
      O(2) => \sat_add3202_carry__1_n_5\,
      O(1) => \sat_add3202_carry__1_n_6\,
      O(0) => \sat_add3202_carry__1_n_7\,
      S(3) => \sat_add3202_carry__1_i_1_n_0\,
      S(2) => \sat_add3202_carry__1_i_2_n_0\,
      S(1) => \sat_add3202_carry__1_i_3_n_0\,
      S(0) => \sat_add3202_carry__1_i_4_n_0\
    );
\sat_add3202_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(17),
      I1 => \fb_term_r_reg_n_0_[17]\,
      O => \sat_add3202_carry__1_i_1_n_0\
    );
\sat_add3202_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(16),
      I1 => \fb_term_r_reg_n_0_[16]\,
      O => \sat_add3202_carry__1_i_2_n_0\
    );
\sat_add3202_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(15),
      I1 => \fb_term_r_reg_n_0_[15]\,
      O => \sat_add3202_carry__1_i_3_n_0\
    );
\sat_add3202_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(14),
      I1 => \fb_term_r_reg_n_0_[14]\,
      O => \sat_add3202_carry__1_i_4_n_0\
    );
\sat_add3202_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sat_add3202_carry__1_n_0\,
      CO(3) => \sat_add3202_carry__2_n_0\,
      CO(2) => \sat_add3202_carry__2_n_1\,
      CO(1) => \sat_add3202_carry__2_n_2\,
      CO(0) => \sat_add3202_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \x_reg__0\(21 downto 18),
      O(3) => \sat_add3202_carry__2_n_4\,
      O(2) => \sat_add3202_carry__2_n_5\,
      O(1) => \sat_add3202_carry__2_n_6\,
      O(0) => \sat_add3202_carry__2_n_7\,
      S(3) => \sat_add3202_carry__2_i_1_n_0\,
      S(2) => \sat_add3202_carry__2_i_2_n_0\,
      S(1) => \sat_add3202_carry__2_i_3_n_0\,
      S(0) => \sat_add3202_carry__2_i_4_n_0\
    );
\sat_add3202_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(21),
      I1 => \fb_term_r_reg_n_0_[21]\,
      O => \sat_add3202_carry__2_i_1_n_0\
    );
\sat_add3202_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(20),
      I1 => \fb_term_r_reg_n_0_[20]\,
      O => \sat_add3202_carry__2_i_2_n_0\
    );
\sat_add3202_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(19),
      I1 => \fb_term_r_reg_n_0_[19]\,
      O => \sat_add3202_carry__2_i_3_n_0\
    );
\sat_add3202_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(18),
      I1 => \fb_term_r_reg_n_0_[18]\,
      O => \sat_add3202_carry__2_i_4_n_0\
    );
\sat_add3202_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \sat_add3202_carry__2_n_0\,
      CO(3) => \sat_add3202_carry__3_n_0\,
      CO(2) => \sat_add3202_carry__3_n_1\,
      CO(1) => \sat_add3202_carry__3_n_2\,
      CO(0) => \sat_add3202_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \x_reg__0\(25 downto 22),
      O(3) => \sat_add3202_carry__3_n_4\,
      O(2) => \sat_add3202_carry__3_n_5\,
      O(1) => \sat_add3202_carry__3_n_6\,
      O(0) => \sat_add3202_carry__3_n_7\,
      S(3) => \sat_add3202_carry__3_i_1_n_0\,
      S(2) => \sat_add3202_carry__3_i_2_n_0\,
      S(1) => \sat_add3202_carry__3_i_3_n_0\,
      S(0) => \sat_add3202_carry__3_i_4_n_0\
    );
\sat_add3202_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(25),
      I1 => \fb_term_r_reg_n_0_[25]\,
      O => \sat_add3202_carry__3_i_1_n_0\
    );
\sat_add3202_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(24),
      I1 => \fb_term_r_reg_n_0_[24]\,
      O => \sat_add3202_carry__3_i_2_n_0\
    );
\sat_add3202_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(23),
      I1 => \fb_term_r_reg_n_0_[23]\,
      O => \sat_add3202_carry__3_i_3_n_0\
    );
\sat_add3202_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(22),
      I1 => \fb_term_r_reg_n_0_[22]\,
      O => \sat_add3202_carry__3_i_4_n_0\
    );
\sat_add3202_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \sat_add3202_carry__3_n_0\,
      CO(3) => \sat_add3202_carry__4_n_0\,
      CO(2) => \sat_add3202_carry__4_n_1\,
      CO(1) => \sat_add3202_carry__4_n_2\,
      CO(0) => \sat_add3202_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => p_0_in9_in,
      DI(2 downto 0) => \x_reg__0\(28 downto 26),
      O(3) => \sat_add3202_carry__4_n_4\,
      O(2) => \sat_add3202_carry__4_n_5\,
      O(1) => \sat_add3202_carry__4_n_6\,
      O(0) => \sat_add3202_carry__4_n_7\,
      S(3) => \sat_add3202_carry__4_i_1_n_0\,
      S(2) => \sat_add3202_carry__4_i_2_n_0\,
      S(1) => \sat_add3202_carry__4_i_3_n_0\,
      S(0) => \sat_add3202_carry__4_i_4_n_0\
    );
\sat_add3202_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in9_in,
      I1 => \fb_term_r_reg_n_0_[29]\,
      O => \sat_add3202_carry__4_i_1_n_0\
    );
\sat_add3202_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(28),
      I1 => \fb_term_r_reg_n_0_[28]\,
      O => \sat_add3202_carry__4_i_2_n_0\
    );
\sat_add3202_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(27),
      I1 => \fb_term_r_reg_n_0_[27]\,
      O => \sat_add3202_carry__4_i_3_n_0\
    );
\sat_add3202_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(26),
      I1 => \fb_term_r_reg_n_0_[26]\,
      O => \sat_add3202_carry__4_i_4_n_0\
    );
\sat_add3202_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sat_add3202_carry__4_n_0\,
      CO(3 downto 1) => \NLW_sat_add3202_carry__5_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \sat_add3202_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => p_0_in9_in,
      O(3 downto 2) => \NLW_sat_add3202_carry__5_O_UNCONNECTED\(3 downto 2),
      O(1) => p_2_in6_in,
      O(0) => \sat_add3202_carry__5_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \sat_add3202_carry__5_i_1_n_0\,
      S(0) => \sat_add3202_carry__5_i_2_n_0\
    );
\sat_add3202_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => p_0_in9_in,
      O => \sat_add3202_carry__5_i_1_n_0\
    );
\sat_add3202_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in9_in,
      I1 => \fb_term_r_reg_n_0_[30]\,
      O => \sat_add3202_carry__5_i_2_n_0\
    );
sat_add3202_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(9),
      I1 => \fb_term_r_reg_n_0_[9]\,
      O => sat_add3202_carry_i_1_n_0
    );
sat_add3202_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(8),
      I1 => \fb_term_r_reg_n_0_[8]\,
      O => sat_add3202_carry_i_2_n_0
    );
sat_add3202_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(7),
      I1 => \fb_term_r_reg_n_0_[7]\,
      O => sat_add3202_carry_i_3_n_0
    );
sat_add3202_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg__0\(6),
      I1 => \fb_term_r_reg_n_0_[6]\,
      O => sat_add3202_carry_i_4_n_0
    );
\sat_add3202_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sat_add3202_inferred__0/i__carry_n_0\,
      CO(2) => \sat_add3202_inferred__0/i__carry_n_1\,
      CO(1) => \sat_add3202_inferred__0/i__carry_n_2\,
      CO(0) => \sat_add3202_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \x_reg__0\(9 downto 6),
      O(3) => \sat_add3202_inferred__0/i__carry_n_4\,
      O(2) => \sat_add3202_inferred__0/i__carry_n_5\,
      O(1) => \sat_add3202_inferred__0/i__carry_n_6\,
      O(0) => \sat_add3202_inferred__0/i__carry_n_7\,
      S(3) => \i__carry_i_1__0_n_0\,
      S(2) => \i__carry_i_2__0_n_0\,
      S(1) => \i__carry_i_3__0_n_0\,
      S(0) => \i__carry_i_4__0_n_0\
    );
\sat_add3202_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \sat_add3202_inferred__0/i__carry_n_0\,
      CO(3) => \sat_add3202_inferred__0/i__carry__0_n_0\,
      CO(2) => \sat_add3202_inferred__0/i__carry__0_n_1\,
      CO(1) => \sat_add3202_inferred__0/i__carry__0_n_2\,
      CO(0) => \sat_add3202_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \x_reg__0\(13 downto 10),
      O(3) => \sat_add3202_inferred__0/i__carry__0_n_4\,
      O(2) => \sat_add3202_inferred__0/i__carry__0_n_5\,
      O(1) => \sat_add3202_inferred__0/i__carry__0_n_6\,
      O(0) => \sat_add3202_inferred__0/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1__0_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\sat_add3202_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sat_add3202_inferred__0/i__carry__0_n_0\,
      CO(3) => \sat_add3202_inferred__0/i__carry__1_n_0\,
      CO(2) => \sat_add3202_inferred__0/i__carry__1_n_1\,
      CO(1) => \sat_add3202_inferred__0/i__carry__1_n_2\,
      CO(0) => \sat_add3202_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \x_reg__0\(17 downto 14),
      O(3) => \sat_add3202_inferred__0/i__carry__1_n_4\,
      O(2) => \sat_add3202_inferred__0/i__carry__1_n_5\,
      O(1) => \sat_add3202_inferred__0/i__carry__1_n_6\,
      O(0) => \sat_add3202_inferred__0/i__carry__1_n_7\,
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\sat_add3202_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sat_add3202_inferred__0/i__carry__1_n_0\,
      CO(3) => \sat_add3202_inferred__0/i__carry__2_n_0\,
      CO(2) => \sat_add3202_inferred__0/i__carry__2_n_1\,
      CO(1) => \sat_add3202_inferred__0/i__carry__2_n_2\,
      CO(0) => \sat_add3202_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \x_reg__0\(21 downto 18),
      O(3) => \sat_add3202_inferred__0/i__carry__2_n_4\,
      O(2) => \sat_add3202_inferred__0/i__carry__2_n_5\,
      O(1) => \sat_add3202_inferred__0/i__carry__2_n_6\,
      O(0) => \sat_add3202_inferred__0/i__carry__2_n_7\,
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\sat_add3202_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \sat_add3202_inferred__0/i__carry__2_n_0\,
      CO(3) => \sat_add3202_inferred__0/i__carry__3_n_0\,
      CO(2) => \sat_add3202_inferred__0/i__carry__3_n_1\,
      CO(1) => \sat_add3202_inferred__0/i__carry__3_n_2\,
      CO(0) => \sat_add3202_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \x_reg__0\(25 downto 22),
      O(3) => \sat_add3202_inferred__0/i__carry__3_n_4\,
      O(2) => \sat_add3202_inferred__0/i__carry__3_n_5\,
      O(1) => \sat_add3202_inferred__0/i__carry__3_n_6\,
      O(0) => \sat_add3202_inferred__0/i__carry__3_n_7\,
      S(3) => \i__carry__3_i_1_n_0\,
      S(2) => \i__carry__3_i_2_n_0\,
      S(1) => \i__carry__3_i_3_n_0\,
      S(0) => \i__carry__3_i_4_n_0\
    );
\sat_add3202_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \sat_add3202_inferred__0/i__carry__3_n_0\,
      CO(3) => \sat_add3202_inferred__0/i__carry__4_n_0\,
      CO(2) => \sat_add3202_inferred__0/i__carry__4_n_1\,
      CO(1) => \sat_add3202_inferred__0/i__carry__4_n_2\,
      CO(0) => \sat_add3202_inferred__0/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3) => p_0_in9_in,
      DI(2 downto 0) => \x_reg__0\(28 downto 26),
      O(3) => \sat_add3202_inferred__0/i__carry__4_n_4\,
      O(2) => \sat_add3202_inferred__0/i__carry__4_n_5\,
      O(1) => \sat_add3202_inferred__0/i__carry__4_n_6\,
      O(0) => \sat_add3202_inferred__0/i__carry__4_n_7\,
      S(3) => \i__carry__4_i_1_n_0\,
      S(2) => \i__carry__4_i_2_n_0\,
      S(1) => \i__carry__4_i_3_n_0\,
      S(0) => \i__carry__4_i_4_n_0\
    );
\sat_add3202_inferred__0/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sat_add3202_inferred__0/i__carry__4_n_0\,
      CO(3 downto 1) => \NLW_sat_add3202_inferred__0/i__carry__5_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \sat_add3202_inferred__0/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => p_0_in9_in,
      O(3 downto 2) => \NLW_sat_add3202_inferred__0/i__carry__5_O_UNCONNECTED\(3 downto 2),
      O(1) => p_0_in14_in,
      O(0) => \sat_add3202_inferred__0/i__carry__5_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \i__carry__5_i_1_n_0\,
      S(0) => \i__carry__5_i_2_n_0\
    );
u_dl: entity work.design_1_fx_system_wrapper_0_1_delay_line
     port map (
      E(0) => u_dl_n_18,
      \FSM_sequential_state_reg[0]\ => \FSM_sequential_state_reg[0]_0\,
      \FSM_sequential_state_reg[0]_0\(0) => out_buf_valid1_out,
      \FSM_sequential_state_reg[1]\ => \FSM_sequential_state_reg[1]_0\,
      \FSM_sequential_state_reg[1]_0\ => \FSM_sequential_state_reg[1]_1\(0),
      \FSM_sequential_state_reg[2]\ => \FSM_sequential_state_reg[2]_0\,
      \FSM_sequential_state_reg[2]_0\ => \FSM_sequential_state_reg[2]_1\,
      \FSM_sequential_state_reg[2]_1\(0) => u_dl_n_23,
      \FSM_sequential_state_reg[2]_2\ => u_dl_n_25,
      \FSM_sequential_state_reg[2]_3\ => u_dl_n_26,
      \FSM_sequential_state_reg[2]_4\ => u_dl_n_27,
      \FSM_sequential_state_reg[2]_5\ => \FSM_sequential_state[2]_i_4_n_0\,
      P(0) => P(0),
      Q(31 downto 0) => Q(31 downto 0),
      SR(0) => \^p_0_in\,
      \bram_wr_data_reg[31]_0\(31) => \w_in_reg_n_0_[31]\,
      \bram_wr_data_reg[31]_0\(30) => \w_in_reg_n_0_[30]\,
      \bram_wr_data_reg[31]_0\(29) => \w_in_reg_n_0_[29]\,
      \bram_wr_data_reg[31]_0\(28) => \w_in_reg_n_0_[28]\,
      \bram_wr_data_reg[31]_0\(27) => \w_in_reg_n_0_[27]\,
      \bram_wr_data_reg[31]_0\(26) => \w_in_reg_n_0_[26]\,
      \bram_wr_data_reg[31]_0\(25) => \w_in_reg_n_0_[25]\,
      \bram_wr_data_reg[31]_0\(24) => \w_in_reg_n_0_[24]\,
      \bram_wr_data_reg[31]_0\(23) => \w_in_reg_n_0_[23]\,
      \bram_wr_data_reg[31]_0\(22) => \w_in_reg_n_0_[22]\,
      \bram_wr_data_reg[31]_0\(21) => \w_in_reg_n_0_[21]\,
      \bram_wr_data_reg[31]_0\(20) => \w_in_reg_n_0_[20]\,
      \bram_wr_data_reg[31]_0\(19) => \w_in_reg_n_0_[19]\,
      \bram_wr_data_reg[31]_0\(18) => \w_in_reg_n_0_[18]\,
      \bram_wr_data_reg[31]_0\(17) => \w_in_reg_n_0_[17]\,
      \bram_wr_data_reg[31]_0\(16) => \w_in_reg_n_0_[16]\,
      \bram_wr_data_reg[31]_0\(15) => \w_in_reg_n_0_[15]\,
      \bram_wr_data_reg[31]_0\(14) => \w_in_reg_n_0_[14]\,
      \bram_wr_data_reg[31]_0\(13) => \w_in_reg_n_0_[13]\,
      \bram_wr_data_reg[31]_0\(12) => \w_in_reg_n_0_[12]\,
      \bram_wr_data_reg[31]_0\(11) => \w_in_reg_n_0_[11]\,
      \bram_wr_data_reg[31]_0\(10) => \w_in_reg_n_0_[10]\,
      \bram_wr_data_reg[31]_0\(9) => \w_in_reg_n_0_[9]\,
      \bram_wr_data_reg[31]_0\(8) => \w_in_reg_n_0_[8]\,
      \bram_wr_data_reg[31]_0\(7) => \w_in_reg_n_0_[7]\,
      \bram_wr_data_reg[31]_0\(6) => \w_in_reg_n_0_[6]\,
      \bram_wr_data_reg[31]_0\(5) => \w_in_reg_n_0_[5]\,
      \bram_wr_data_reg[31]_0\(4) => \w_in_reg_n_0_[4]\,
      \bram_wr_data_reg[31]_0\(3) => \w_in_reg_n_0_[3]\,
      \bram_wr_data_reg[31]_0\(2) => \w_in_reg_n_0_[2]\,
      \bram_wr_data_reg[31]_0\(1) => \w_in_reg_n_0_[1]\,
      \bram_wr_data_reg[31]_0\(0) => \w_in_reg_n_0_[0]\,
      bram_wr_en_reg_rep_0 => bram_wr_en_reg_rep,
      \bram_wr_en_reg_rep__0_0\ => \bram_wr_en_reg_rep__0\,
      \bram_wr_en_reg_rep__10_0\ => \bram_wr_en_reg_rep__10\,
      \bram_wr_en_reg_rep__11_0\ => \bram_wr_en_reg_rep__11\,
      \bram_wr_en_reg_rep__1_0\ => \bram_wr_en_reg_rep__1\,
      \bram_wr_en_reg_rep__2_0\ => \bram_wr_en_reg_rep__2\,
      \bram_wr_en_reg_rep__3_0\ => \bram_wr_en_reg_rep__3\,
      \bram_wr_en_reg_rep__4_0\ => \bram_wr_en_reg_rep__4\,
      \bram_wr_en_reg_rep__5_0\ => \bram_wr_en_reg_rep__5\,
      \bram_wr_en_reg_rep__6_0\ => \bram_wr_en_reg_rep__6\,
      \bram_wr_en_reg_rep__7_0\ => \bram_wr_en_reg_rep__7\,
      \bram_wr_en_reg_rep__8_0\ => \bram_wr_en_reg_rep__8\,
      \bram_wr_en_reg_rep__9_0\ => \bram_wr_en_reg_rep__9\,
      clear_req0 => clear_req0,
      clk => clk,
      \d_out_reg[31]\(31 downto 0) => d_out(31 downto 0),
      d_reg_valid_reg_0 => d_reg_valid_reg,
      d_reg_valid_reg_1 => u_dl_n_15,
      d_reg_valid_reg_2 => d_reg_valid_reg_0,
      enable_d => enable_d,
      frac_d_valid => frac_d_valid,
      frac_start_reg_0 => frac_start_reg,
      fx_enable => fx_enable,
      fx_enable_0 => E(0),
      inflight0 => inflight0,
      mono_valid => mono_valid,
      out_buf_valid_reg => out_buf_valid_reg_0,
      out_buf_valid_reg_0 => u_dl_n_28,
      out_buf_valid_reg_1 => \^ret_valid\,
      rd_en_reg => rd_en,
      rd_en_reg_0 => rd_en_reg,
      rd_en_reg_rep => rd_en_reg_rep,
      \reg_ctrl_reg[0]\ => \^reg_ctrl_reg[0]\,
      rst_n => rst_n,
      state(2 downto 0) => state(2 downto 0),
      \state_reg[0]_0\ => \state_reg[0]\,
      \state_reg[0]_1\ => \state_reg[0]_0\,
      \state_reg[0]_2\(0) => u_dl_n_21,
      \state_reg[1]_0\ => \state_reg[1]\,
      \state_reg[1]_1\ => u_dl_n_10,
      \state_reg[1]_2\ => \state_reg[1]_0\,
      \state_reg[1]_3\ => \^clear_req_reg_0\,
      \term_r_reg[0]\(0) => \term_r_reg[0]\(0),
      \term_r_reg[0]_0\ => \term_r_reg[0]_0\,
      \x_reg_reg[6]\(0) => \x_reg_reg[6]_0\(0)
    );
v0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => v0_carry_n_0,
      CO(2) => v0_carry_n_1,
      CO(1) => v0_carry_n_2,
      CO(0) => v0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \v1_carry__2_n_5\,
      DI(0) => '0',
      O(3) => v0_carry_n_4,
      O(2) => v0_carry_n_5,
      O(1 downto 0) => NLW_v0_carry_O_UNCONNECTED(1 downto 0),
      S(3) => \v1_carry__3_n_7\,
      S(2) => \v1_carry__2_n_4\,
      S(1) => v0_carry_i_1_n_0,
      S(0) => \v1_carry__2_n_6\
    );
\v0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => v0_carry_n_0,
      CO(3) => \v0_carry__0_n_0\,
      CO(2) => \v0_carry__0_n_1\,
      CO(1) => \v0_carry__0_n_2\,
      CO(0) => \v0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v0_carry__0_n_4\,
      O(2) => \v0_carry__0_n_5\,
      O(1) => \v0_carry__0_n_6\,
      O(0) => \v0_carry__0_n_7\,
      S(3) => \v1_carry__4_n_7\,
      S(2) => \v1_carry__3_n_4\,
      S(1) => \v1_carry__3_n_5\,
      S(0) => \v1_carry__3_n_6\
    );
\v0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v0_carry__0_n_0\,
      CO(3) => \v0_carry__1_n_0\,
      CO(2) => \v0_carry__1_n_1\,
      CO(1) => \v0_carry__1_n_2\,
      CO(0) => \v0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v0_carry__1_n_4\,
      O(2) => \v0_carry__1_n_5\,
      O(1) => \v0_carry__1_n_6\,
      O(0) => \v0_carry__1_n_7\,
      S(3) => \v1_carry__5_n_7\,
      S(2) => \v1_carry__4_n_4\,
      S(1) => \v1_carry__4_n_5\,
      S(0) => \v1_carry__4_n_6\
    );
\v0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \v0_carry__1_n_0\,
      CO(3) => \v0_carry__2_n_0\,
      CO(2) => \v0_carry__2_n_1\,
      CO(1) => \v0_carry__2_n_2\,
      CO(0) => \v0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v0_carry__2_n_4\,
      O(2) => \v0_carry__2_n_5\,
      O(1) => \v0_carry__2_n_6\,
      O(0) => \v0_carry__2_n_7\,
      S(3) => \v1_carry__6_n_7\,
      S(2) => \v1_carry__5_n_4\,
      S(1) => \v1_carry__5_n_5\,
      S(0) => \v1_carry__5_n_6\
    );
\v0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \v0_carry__2_n_0\,
      CO(3) => \v0_carry__3_n_0\,
      CO(2) => \v0_carry__3_n_1\,
      CO(1) => \v0_carry__3_n_2\,
      CO(0) => \v0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v0_carry__3_n_4\,
      O(2) => \v0_carry__3_n_5\,
      O(1) => \v0_carry__3_n_6\,
      O(0) => \v0_carry__3_n_7\,
      S(3) => \v1_carry__7_n_7\,
      S(2) => \v1_carry__6_n_4\,
      S(1) => \v1_carry__6_n_5\,
      S(0) => \v1_carry__6_n_6\
    );
\v0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \v0_carry__3_n_0\,
      CO(3) => \v0_carry__4_n_0\,
      CO(2) => \v0_carry__4_n_1\,
      CO(1) => \v0_carry__4_n_2\,
      CO(0) => \v0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v0_carry__4_n_4\,
      O(2) => \v0_carry__4_n_5\,
      O(1) => \v0_carry__4_n_6\,
      O(0) => \v0_carry__4_n_7\,
      S(3) => \v1_carry__8_n_7\,
      S(2) => \v1_carry__7_n_4\,
      S(1) => \v1_carry__7_n_5\,
      S(0) => \v1_carry__7_n_6\
    );
\v0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \v0_carry__4_n_0\,
      CO(3) => \v0_carry__5_n_0\,
      CO(2) => \v0_carry__5_n_1\,
      CO(1) => \v0_carry__5_n_2\,
      CO(0) => \v0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v0_carry__5_n_4\,
      O(2) => \v0_carry__5_n_5\,
      O(1) => \v0_carry__5_n_6\,
      O(0) => \v0_carry__5_n_7\,
      S(3) => \v1_carry__9_n_7\,
      S(2) => \v1_carry__8_n_4\,
      S(1) => \v1_carry__8_n_5\,
      S(0) => \v1_carry__8_n_6\
    );
\v0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \v0_carry__5_n_0\,
      CO(3) => \v0_carry__6_n_0\,
      CO(2) => \v0_carry__6_n_1\,
      CO(1) => \v0_carry__6_n_2\,
      CO(0) => \v0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v0_carry__6_n_4\,
      O(2) => \v0_carry__6_n_5\,
      O(1) => \v0_carry__6_n_6\,
      O(0) => \v0_carry__6_n_7\,
      S(3) => \v1_carry__10_n_7\,
      S(2) => \v1_carry__9_n_4\,
      S(1) => \v1_carry__9_n_5\,
      S(0) => \v1_carry__9_n_6\
    );
\v0_carry__7\: unisim.vcomponents.CARRY4
     port map (
      CI => \v0_carry__6_n_0\,
      CO(3 downto 2) => \NLW_v0_carry__7_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \v0_carry__7_n_2\,
      CO(0) => \v0_carry__7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_v0_carry__7_O_UNCONNECTED\(3),
      O(2) => \v0_carry__7_n_5\,
      O(1) => \v0_carry__7_n_6\,
      O(0) => \v0_carry__7_n_7\,
      S(3) => '0',
      S(2) => \v1_carry__10_n_4\,
      S(1) => \v1_carry__10_n_5\,
      S(0) => \v1_carry__10_n_6\
    );
v0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \v1_carry__2_n_5\,
      O => v0_carry_i_1_n_0
    );
\v0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \v0_inferred__0/i__carry_n_0\,
      CO(2) => \v0_inferred__0/i__carry_n_1\,
      CO(1) => \v0_inferred__0/i__carry_n_2\,
      CO(0) => \v0_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \v1_inferred__0/i__carry__2_n_5\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_v0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \v1_inferred__0/i__carry__3_n_7\,
      S(2) => \v1_inferred__0/i__carry__2_n_4\,
      S(1) => \i__carry_i_1__2_n_0\,
      S(0) => \v1_inferred__0/i__carry__2_n_6\
    );
\v0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \v0_inferred__0/i__carry_n_0\,
      CO(3) => \v0_inferred__0/i__carry__0_n_0\,
      CO(2) => \v0_inferred__0/i__carry__0_n_1\,
      CO(1) => \v0_inferred__0/i__carry__0_n_2\,
      CO(0) => \v0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_v0_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \v1_inferred__0/i__carry__4_n_7\,
      S(2) => \v1_inferred__0/i__carry__3_n_4\,
      S(1) => \v1_inferred__0/i__carry__3_n_5\,
      S(0) => \v1_inferred__0/i__carry__3_n_6\
    );
\v0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v0_inferred__0/i__carry__0_n_0\,
      CO(3) => \v0_inferred__0/i__carry__1_n_0\,
      CO(2) => \v0_inferred__0/i__carry__1_n_1\,
      CO(1) => \v0_inferred__0/i__carry__1_n_2\,
      CO(0) => \v0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v0_inferred__0/i__carry__1_n_4\,
      O(2) => \v0_inferred__0/i__carry__1_n_5\,
      O(1) => \v0_inferred__0/i__carry__1_n_6\,
      O(0) => \v0_inferred__0/i__carry__1_n_7\,
      S(3) => \v1_inferred__0/i__carry__5_n_7\,
      S(2) => \v1_inferred__0/i__carry__4_n_4\,
      S(1) => \v1_inferred__0/i__carry__4_n_5\,
      S(0) => \v1_inferred__0/i__carry__4_n_6\
    );
\v0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \v0_inferred__0/i__carry__1_n_0\,
      CO(3) => \v0_inferred__0/i__carry__2_n_0\,
      CO(2) => \v0_inferred__0/i__carry__2_n_1\,
      CO(1) => \v0_inferred__0/i__carry__2_n_2\,
      CO(0) => \v0_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v0_inferred__0/i__carry__2_n_4\,
      O(2) => \v0_inferred__0/i__carry__2_n_5\,
      O(1) => \v0_inferred__0/i__carry__2_n_6\,
      O(0) => \v0_inferred__0/i__carry__2_n_7\,
      S(3) => \v1_inferred__0/i__carry__6_n_7\,
      S(2) => \v1_inferred__0/i__carry__5_n_4\,
      S(1) => \v1_inferred__0/i__carry__5_n_5\,
      S(0) => \v1_inferred__0/i__carry__5_n_6\
    );
\v0_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \v0_inferred__0/i__carry__2_n_0\,
      CO(3) => \v0_inferred__0/i__carry__3_n_0\,
      CO(2) => \v0_inferred__0/i__carry__3_n_1\,
      CO(1) => \v0_inferred__0/i__carry__3_n_2\,
      CO(0) => \v0_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v0_inferred__0/i__carry__3_n_4\,
      O(2) => \v0_inferred__0/i__carry__3_n_5\,
      O(1) => \v0_inferred__0/i__carry__3_n_6\,
      O(0) => \v0_inferred__0/i__carry__3_n_7\,
      S(3) => \v1_inferred__0/i__carry__7_n_7\,
      S(2) => \v1_inferred__0/i__carry__6_n_4\,
      S(1) => \v1_inferred__0/i__carry__6_n_5\,
      S(0) => \v1_inferred__0/i__carry__6_n_6\
    );
\v0_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \v0_inferred__0/i__carry__3_n_0\,
      CO(3) => \v0_inferred__0/i__carry__4_n_0\,
      CO(2) => \v0_inferred__0/i__carry__4_n_1\,
      CO(1) => \v0_inferred__0/i__carry__4_n_2\,
      CO(0) => \v0_inferred__0/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v0_inferred__0/i__carry__4_n_4\,
      O(2) => \v0_inferred__0/i__carry__4_n_5\,
      O(1) => \v0_inferred__0/i__carry__4_n_6\,
      O(0) => \v0_inferred__0/i__carry__4_n_7\,
      S(3) => \v1_inferred__0/i__carry__8_n_7\,
      S(2) => \v1_inferred__0/i__carry__7_n_4\,
      S(1) => \v1_inferred__0/i__carry__7_n_5\,
      S(0) => \v1_inferred__0/i__carry__7_n_6\
    );
\v0_inferred__0/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \v0_inferred__0/i__carry__4_n_0\,
      CO(3) => \v0_inferred__0/i__carry__5_n_0\,
      CO(2) => \v0_inferred__0/i__carry__5_n_1\,
      CO(1) => \v0_inferred__0/i__carry__5_n_2\,
      CO(0) => \v0_inferred__0/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v0_inferred__0/i__carry__5_n_4\,
      O(2) => \v0_inferred__0/i__carry__5_n_5\,
      O(1) => \v0_inferred__0/i__carry__5_n_6\,
      O(0) => \v0_inferred__0/i__carry__5_n_7\,
      S(3) => \v1_inferred__0/i__carry__9_n_7\,
      S(2) => \v1_inferred__0/i__carry__8_n_4\,
      S(1) => \v1_inferred__0/i__carry__8_n_5\,
      S(0) => \v1_inferred__0/i__carry__8_n_6\
    );
\v0_inferred__0/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \v0_inferred__0/i__carry__5_n_0\,
      CO(3) => \v0_inferred__0/i__carry__6_n_0\,
      CO(2) => \v0_inferred__0/i__carry__6_n_1\,
      CO(1) => \v0_inferred__0/i__carry__6_n_2\,
      CO(0) => \v0_inferred__0/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v0_inferred__0/i__carry__6_n_4\,
      O(2) => \v0_inferred__0/i__carry__6_n_5\,
      O(1) => \v0_inferred__0/i__carry__6_n_6\,
      O(0) => \v0_inferred__0/i__carry__6_n_7\,
      S(3) => \v1_inferred__0/i__carry__10_n_7\,
      S(2) => \v1_inferred__0/i__carry__9_n_4\,
      S(1) => \v1_inferred__0/i__carry__9_n_5\,
      S(0) => \v1_inferred__0/i__carry__9_n_6\
    );
\v0_inferred__0/i__carry__7\: unisim.vcomponents.CARRY4
     port map (
      CI => \v0_inferred__0/i__carry__6_n_0\,
      CO(3 downto 2) => \NLW_v0_inferred__0/i__carry__7_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \v0_inferred__0/i__carry__7_n_2\,
      CO(0) => \v0_inferred__0/i__carry__7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_v0_inferred__0/i__carry__7_O_UNCONNECTED\(3),
      O(2) => \v0_inferred__0/i__carry__7_n_5\,
      O(1) => \v0_inferred__0/i__carry__7_n_6\,
      O(0) => \v0_inferred__0/i__carry__7_n_7\,
      S(3) => '0',
      S(2) => \v1_inferred__0/i__carry__10_n_4\,
      S(1) => \v1_inferred__0/i__carry__10_n_5\,
      S(0) => \v1_inferred__0/i__carry__10_n_6\
    );
v1: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => \v1__0_0\(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_v1_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => d_out(31),
      B(16) => d_out(31),
      B(15) => d_out(31),
      B(14 downto 0) => d_out(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_v1_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_v1_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_v1_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => u_dl_n_10,
      CEB2 => u_dl_n_15,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_v1_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_v1_OVERFLOW_UNCONNECTED,
      P(47) => v1_n_58,
      P(46) => v1_n_59,
      P(45) => v1_n_60,
      P(44) => v1_n_61,
      P(43) => v1_n_62,
      P(42) => v1_n_63,
      P(41) => v1_n_64,
      P(40) => v1_n_65,
      P(39) => v1_n_66,
      P(38) => v1_n_67,
      P(37) => v1_n_68,
      P(36) => v1_n_69,
      P(35) => v1_n_70,
      P(34) => v1_n_71,
      P(33) => v1_n_72,
      P(32) => v1_n_73,
      P(31) => v1_n_74,
      P(30) => v1_n_75,
      P(29) => v1_n_76,
      P(28) => v1_n_77,
      P(27) => v1_n_78,
      P(26) => v1_n_79,
      P(25) => v1_n_80,
      P(24) => v1_n_81,
      P(23) => v1_n_82,
      P(22) => v1_n_83,
      P(21) => v1_n_84,
      P(20) => v1_n_85,
      P(19) => v1_n_86,
      P(18) => v1_n_87,
      P(17) => v1_n_88,
      P(16) => v1_n_89,
      P(15) => v1_n_90,
      P(14) => v1_n_91,
      P(13) => v1_n_92,
      P(12) => v1_n_93,
      P(11) => v1_n_94,
      P(10) => v1_n_95,
      P(9) => v1_n_96,
      P(8) => v1_n_97,
      P(7) => v1_n_98,
      P(6) => v1_n_99,
      P(5) => v1_n_100,
      P(4) => v1_n_101,
      P(3) => v1_n_102,
      P(2) => v1_n_103,
      P(1) => v1_n_104,
      P(0) => v1_n_105,
      PATTERNBDETECT => NLW_v1_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_v1_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => v1_n_106,
      PCOUT(46) => v1_n_107,
      PCOUT(45) => v1_n_108,
      PCOUT(44) => v1_n_109,
      PCOUT(43) => v1_n_110,
      PCOUT(42) => v1_n_111,
      PCOUT(41) => v1_n_112,
      PCOUT(40) => v1_n_113,
      PCOUT(39) => v1_n_114,
      PCOUT(38) => v1_n_115,
      PCOUT(37) => v1_n_116,
      PCOUT(36) => v1_n_117,
      PCOUT(35) => v1_n_118,
      PCOUT(34) => v1_n_119,
      PCOUT(33) => v1_n_120,
      PCOUT(32) => v1_n_121,
      PCOUT(31) => v1_n_122,
      PCOUT(30) => v1_n_123,
      PCOUT(29) => v1_n_124,
      PCOUT(28) => v1_n_125,
      PCOUT(27) => v1_n_126,
      PCOUT(26) => v1_n_127,
      PCOUT(25) => v1_n_128,
      PCOUT(24) => v1_n_129,
      PCOUT(23) => v1_n_130,
      PCOUT(22) => v1_n_131,
      PCOUT(21) => v1_n_132,
      PCOUT(20) => v1_n_133,
      PCOUT(19) => v1_n_134,
      PCOUT(18) => v1_n_135,
      PCOUT(17) => v1_n_136,
      PCOUT(16) => v1_n_137,
      PCOUT(15) => v1_n_138,
      PCOUT(14) => v1_n_139,
      PCOUT(13) => v1_n_140,
      PCOUT(12) => v1_n_141,
      PCOUT(11) => v1_n_142,
      PCOUT(10) => v1_n_143,
      PCOUT(9) => v1_n_144,
      PCOUT(8) => v1_n_145,
      PCOUT(7) => v1_n_146,
      PCOUT(6) => v1_n_147,
      PCOUT(5) => v1_n_148,
      PCOUT(4) => v1_n_149,
      PCOUT(3) => v1_n_150,
      PCOUT(2) => v1_n_151,
      PCOUT(1) => v1_n_152,
      PCOUT(0) => v1_n_153,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => \^p_0_in\,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_v1_UNDERFLOW_UNCONNECTED
    );
\v1__0\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => d_out(31),
      A(28) => d_out(31),
      A(27) => d_out(31),
      A(26) => d_out(31),
      A(25) => d_out(31),
      A(24) => d_out(31),
      A(23) => d_out(31),
      A(22) => d_out(31),
      A(21) => d_out(31),
      A(20) => d_out(31),
      A(19) => d_out(31),
      A(18) => d_out(31),
      A(17) => d_out(31),
      A(16) => d_out(31),
      A(15) => d_out(31),
      A(14 downto 0) => d_out(31 downto 17),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_v1__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \v1__0_0\(31),
      B(16) => \v1__0_0\(31),
      B(15) => \v1__0_0\(31),
      B(14 downto 0) => \v1__0_0\(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_v1__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_v1__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_v1__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => u_dl_n_10,
      CEA2 => u_dl_n_15,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_v1__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_v1__0_OVERFLOW_UNCONNECTED\,
      P(47) => \v1__0_n_58\,
      P(46) => \v1__0_n_59\,
      P(45) => \v1__0_n_60\,
      P(44) => \v1__0_n_61\,
      P(43) => \v1__0_n_62\,
      P(42) => \v1__0_n_63\,
      P(41) => \v1__0_n_64\,
      P(40) => \v1__0_n_65\,
      P(39) => \v1__0_n_66\,
      P(38) => \v1__0_n_67\,
      P(37) => \v1__0_n_68\,
      P(36) => \v1__0_n_69\,
      P(35) => \v1__0_n_70\,
      P(34) => \v1__0_n_71\,
      P(33) => \v1__0_n_72\,
      P(32) => \v1__0_n_73\,
      P(31) => \v1__0_n_74\,
      P(30) => \v1__0_n_75\,
      P(29) => \v1__0_n_76\,
      P(28) => \v1__0_n_77\,
      P(27) => \v1__0_n_78\,
      P(26) => \v1__0_n_79\,
      P(25) => \v1__0_n_80\,
      P(24) => \v1__0_n_81\,
      P(23) => \v1__0_n_82\,
      P(22) => \v1__0_n_83\,
      P(21) => \v1__0_n_84\,
      P(20) => \v1__0_n_85\,
      P(19) => \v1__0_n_86\,
      P(18) => \v1__0_n_87\,
      P(17) => \v1__0_n_88\,
      P(16) => \v1__0_n_89\,
      P(15) => \v1__0_n_90\,
      P(14) => \v1__0_n_91\,
      P(13) => \v1__0_n_92\,
      P(12) => \v1__0_n_93\,
      P(11) => \v1__0_n_94\,
      P(10) => \v1__0_n_95\,
      P(9) => \v1__0_n_96\,
      P(8) => \v1__0_n_97\,
      P(7) => \v1__0_n_98\,
      P(6) => \v1__0_n_99\,
      P(5) => \v1__0_n_100\,
      P(4) => \v1__0_n_101\,
      P(3) => \v1__0_n_102\,
      P(2) => \v1__0_n_103\,
      P(1) => \v1__0_n_104\,
      P(0) => \v1__0_n_105\,
      PATTERNBDETECT => \NLW_v1__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_v1__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => v1_n_106,
      PCIN(46) => v1_n_107,
      PCIN(45) => v1_n_108,
      PCIN(44) => v1_n_109,
      PCIN(43) => v1_n_110,
      PCIN(42) => v1_n_111,
      PCIN(41) => v1_n_112,
      PCIN(40) => v1_n_113,
      PCIN(39) => v1_n_114,
      PCIN(38) => v1_n_115,
      PCIN(37) => v1_n_116,
      PCIN(36) => v1_n_117,
      PCIN(35) => v1_n_118,
      PCIN(34) => v1_n_119,
      PCIN(33) => v1_n_120,
      PCIN(32) => v1_n_121,
      PCIN(31) => v1_n_122,
      PCIN(30) => v1_n_123,
      PCIN(29) => v1_n_124,
      PCIN(28) => v1_n_125,
      PCIN(27) => v1_n_126,
      PCIN(26) => v1_n_127,
      PCIN(25) => v1_n_128,
      PCIN(24) => v1_n_129,
      PCIN(23) => v1_n_130,
      PCIN(22) => v1_n_131,
      PCIN(21) => v1_n_132,
      PCIN(20) => v1_n_133,
      PCIN(19) => v1_n_134,
      PCIN(18) => v1_n_135,
      PCIN(17) => v1_n_136,
      PCIN(16) => v1_n_137,
      PCIN(15) => v1_n_138,
      PCIN(14) => v1_n_139,
      PCIN(13) => v1_n_140,
      PCIN(12) => v1_n_141,
      PCIN(11) => v1_n_142,
      PCIN(10) => v1_n_143,
      PCIN(9) => v1_n_144,
      PCIN(8) => v1_n_145,
      PCIN(7) => v1_n_146,
      PCIN(6) => v1_n_147,
      PCIN(5) => v1_n_148,
      PCIN(4) => v1_n_149,
      PCIN(3) => v1_n_150,
      PCIN(2) => v1_n_151,
      PCIN(1) => v1_n_152,
      PCIN(0) => v1_n_153,
      PCOUT(47 downto 0) => \NLW_v1__0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => \^p_0_in\,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_v1__0_UNDERFLOW_UNCONNECTED\
    );
\v1__1\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => d_out(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_v1__1_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => \v1__0_0\(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_v1__1_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_v1__1_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_v1__1_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => u_dl_n_10,
      CEA2 => u_dl_n_15,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_v1__1_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => \NLW_v1__1_OVERFLOW_UNCONNECTED\,
      P(47) => \v1__1_n_58\,
      P(46) => \v1__1_n_59\,
      P(45) => \v1__1_n_60\,
      P(44) => \v1__1_n_61\,
      P(43) => \v1__1_n_62\,
      P(42) => \v1__1_n_63\,
      P(41) => \v1__1_n_64\,
      P(40) => \v1__1_n_65\,
      P(39) => \v1__1_n_66\,
      P(38) => \v1__1_n_67\,
      P(37) => \v1__1_n_68\,
      P(36) => \v1__1_n_69\,
      P(35) => \v1__1_n_70\,
      P(34) => \v1__1_n_71\,
      P(33) => \v1__1_n_72\,
      P(32) => \v1__1_n_73\,
      P(31) => \v1__1_n_74\,
      P(30) => \v1__1_n_75\,
      P(29) => \v1__1_n_76\,
      P(28) => \v1__1_n_77\,
      P(27) => \v1__1_n_78\,
      P(26) => \v1__1_n_79\,
      P(25) => \v1__1_n_80\,
      P(24) => \v1__1_n_81\,
      P(23) => \v1__1_n_82\,
      P(22) => \v1__1_n_83\,
      P(21) => \v1__1_n_84\,
      P(20) => \v1__1_n_85\,
      P(19) => \v1__1_n_86\,
      P(18) => \v1__1_n_87\,
      P(17) => \v1__1_n_88\,
      P(16) => \v1__1_n_89\,
      P(15) => \v1__1_n_90\,
      P(14) => \v1__1_n_91\,
      P(13) => \v1__1_n_92\,
      P(12) => \v1__1_n_93\,
      P(11) => \v1__1_n_94\,
      P(10) => \v1__1_n_95\,
      P(9) => \v1__1_n_96\,
      P(8) => \v1__1_n_97\,
      P(7) => \v1__1_n_98\,
      P(6) => \v1__1_n_99\,
      P(5) => \v1__1_n_100\,
      P(4) => \v1__1_n_101\,
      P(3) => \v1__1_n_102\,
      P(2) => \v1__1_n_103\,
      P(1) => \v1__1_n_104\,
      P(0) => \v1__1_n_105\,
      PATTERNBDETECT => \NLW_v1__1_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_v1__1_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => \v1__1_n_106\,
      PCOUT(46) => \v1__1_n_107\,
      PCOUT(45) => \v1__1_n_108\,
      PCOUT(44) => \v1__1_n_109\,
      PCOUT(43) => \v1__1_n_110\,
      PCOUT(42) => \v1__1_n_111\,
      PCOUT(41) => \v1__1_n_112\,
      PCOUT(40) => \v1__1_n_113\,
      PCOUT(39) => \v1__1_n_114\,
      PCOUT(38) => \v1__1_n_115\,
      PCOUT(37) => \v1__1_n_116\,
      PCOUT(36) => \v1__1_n_117\,
      PCOUT(35) => \v1__1_n_118\,
      PCOUT(34) => \v1__1_n_119\,
      PCOUT(33) => \v1__1_n_120\,
      PCOUT(32) => \v1__1_n_121\,
      PCOUT(31) => \v1__1_n_122\,
      PCOUT(30) => \v1__1_n_123\,
      PCOUT(29) => \v1__1_n_124\,
      PCOUT(28) => \v1__1_n_125\,
      PCOUT(27) => \v1__1_n_126\,
      PCOUT(26) => \v1__1_n_127\,
      PCOUT(25) => \v1__1_n_128\,
      PCOUT(24) => \v1__1_n_129\,
      PCOUT(23) => \v1__1_n_130\,
      PCOUT(22) => \v1__1_n_131\,
      PCOUT(21) => \v1__1_n_132\,
      PCOUT(20) => \v1__1_n_133\,
      PCOUT(19) => \v1__1_n_134\,
      PCOUT(18) => \v1__1_n_135\,
      PCOUT(17) => \v1__1_n_136\,
      PCOUT(16) => \v1__1_n_137\,
      PCOUT(15) => \v1__1_n_138\,
      PCOUT(14) => \v1__1_n_139\,
      PCOUT(13) => \v1__1_n_140\,
      PCOUT(12) => \v1__1_n_141\,
      PCOUT(11) => \v1__1_n_142\,
      PCOUT(10) => \v1__1_n_143\,
      PCOUT(9) => \v1__1_n_144\,
      PCOUT(8) => \v1__1_n_145\,
      PCOUT(7) => \v1__1_n_146\,
      PCOUT(6) => \v1__1_n_147\,
      PCOUT(5) => \v1__1_n_148\,
      PCOUT(4) => \v1__1_n_149\,
      PCOUT(3) => \v1__1_n_150\,
      PCOUT(2) => \v1__1_n_151\,
      PCOUT(1) => \v1__1_n_152\,
      PCOUT(0) => \v1__1_n_153\,
      RSTA => \^p_0_in\,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_v1__1_UNDERFLOW_UNCONNECTED\
    );
\v1__2\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => d_out(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_v1__2_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \v1__0_0\(31),
      B(16) => \v1__0_0\(31),
      B(15) => \v1__0_0\(31),
      B(14 downto 0) => \v1__0_0\(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_v1__2_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_v1__2_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_v1__2_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => u_dl_n_10,
      CEA2 => u_dl_n_15,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_v1__2_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_v1__2_OVERFLOW_UNCONNECTED\,
      P(47) => \v1__2_n_58\,
      P(46) => \v1__2_n_59\,
      P(45) => \v1__2_n_60\,
      P(44) => \v1__2_n_61\,
      P(43) => \v1__2_n_62\,
      P(42) => \v1__2_n_63\,
      P(41) => \v1__2_n_64\,
      P(40) => \v1__2_n_65\,
      P(39) => \v1__2_n_66\,
      P(38) => \v1__2_n_67\,
      P(37) => \v1__2_n_68\,
      P(36) => \v1__2_n_69\,
      P(35) => \v1__2_n_70\,
      P(34) => \v1__2_n_71\,
      P(33) => \v1__2_n_72\,
      P(32) => \v1__2_n_73\,
      P(31) => \v1__2_n_74\,
      P(30) => \v1__2_n_75\,
      P(29) => \v1__2_n_76\,
      P(28) => \v1__2_n_77\,
      P(27) => \v1__2_n_78\,
      P(26) => \v1__2_n_79\,
      P(25) => \v1__2_n_80\,
      P(24) => \v1__2_n_81\,
      P(23) => \v1__2_n_82\,
      P(22) => \v1__2_n_83\,
      P(21) => \v1__2_n_84\,
      P(20) => \v1__2_n_85\,
      P(19) => \v1__2_n_86\,
      P(18) => \v1__2_n_87\,
      P(17) => \v1__2_n_88\,
      P(16) => \v1__2_n_89\,
      P(15) => \v1__2_n_90\,
      P(14) => \v1__2_n_91\,
      P(13) => \v1__2_n_92\,
      P(12) => \v1__2_n_93\,
      P(11) => \v1__2_n_94\,
      P(10) => \v1__2_n_95\,
      P(9) => \v1__2_n_96\,
      P(8) => \v1__2_n_97\,
      P(7) => \v1__2_n_98\,
      P(6) => \v1__2_n_99\,
      P(5) => \v1__2_n_100\,
      P(4) => \v1__2_n_101\,
      P(3) => \v1__2_n_102\,
      P(2) => \v1__2_n_103\,
      P(1) => \v1__2_n_104\,
      P(0) => \v1__2_n_105\,
      PATTERNBDETECT => \NLW_v1__2_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_v1__2_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => \v1__1_n_106\,
      PCIN(46) => \v1__1_n_107\,
      PCIN(45) => \v1__1_n_108\,
      PCIN(44) => \v1__1_n_109\,
      PCIN(43) => \v1__1_n_110\,
      PCIN(42) => \v1__1_n_111\,
      PCIN(41) => \v1__1_n_112\,
      PCIN(40) => \v1__1_n_113\,
      PCIN(39) => \v1__1_n_114\,
      PCIN(38) => \v1__1_n_115\,
      PCIN(37) => \v1__1_n_116\,
      PCIN(36) => \v1__1_n_117\,
      PCIN(35) => \v1__1_n_118\,
      PCIN(34) => \v1__1_n_119\,
      PCIN(33) => \v1__1_n_120\,
      PCIN(32) => \v1__1_n_121\,
      PCIN(31) => \v1__1_n_122\,
      PCIN(30) => \v1__1_n_123\,
      PCIN(29) => \v1__1_n_124\,
      PCIN(28) => \v1__1_n_125\,
      PCIN(27) => \v1__1_n_126\,
      PCIN(26) => \v1__1_n_127\,
      PCIN(25) => \v1__1_n_128\,
      PCIN(24) => \v1__1_n_129\,
      PCIN(23) => \v1__1_n_130\,
      PCIN(22) => \v1__1_n_131\,
      PCIN(21) => \v1__1_n_132\,
      PCIN(20) => \v1__1_n_133\,
      PCIN(19) => \v1__1_n_134\,
      PCIN(18) => \v1__1_n_135\,
      PCIN(17) => \v1__1_n_136\,
      PCIN(16) => \v1__1_n_137\,
      PCIN(15) => \v1__1_n_138\,
      PCIN(14) => \v1__1_n_139\,
      PCIN(13) => \v1__1_n_140\,
      PCIN(12) => \v1__1_n_141\,
      PCIN(11) => \v1__1_n_142\,
      PCIN(10) => \v1__1_n_143\,
      PCIN(9) => \v1__1_n_144\,
      PCIN(8) => \v1__1_n_145\,
      PCIN(7) => \v1__1_n_146\,
      PCIN(6) => \v1__1_n_147\,
      PCIN(5) => \v1__1_n_148\,
      PCIN(4) => \v1__1_n_149\,
      PCIN(3) => \v1__1_n_150\,
      PCIN(2) => \v1__1_n_151\,
      PCIN(1) => \v1__1_n_152\,
      PCIN(0) => \v1__1_n_153\,
      PCOUT(47 downto 0) => \NLW_v1__2_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => \^p_0_in\,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_v1__2_UNDERFLOW_UNCONNECTED\
    );
\v1__3\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => s_axi_wdata(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_v1__3_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => d_out(31),
      B(16) => d_out(31),
      B(15) => d_out(31),
      B(14 downto 0) => d_out(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_v1__3_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_v1__3_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_v1__3_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => \v1__3_0\(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => u_dl_n_10,
      CEB2 => u_dl_n_15,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_v1__3_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => \NLW_v1__3_OVERFLOW_UNCONNECTED\,
      P(47) => \v1__3_n_58\,
      P(46) => \v1__3_n_59\,
      P(45) => \v1__3_n_60\,
      P(44) => \v1__3_n_61\,
      P(43) => \v1__3_n_62\,
      P(42) => \v1__3_n_63\,
      P(41) => \v1__3_n_64\,
      P(40) => \v1__3_n_65\,
      P(39) => \v1__3_n_66\,
      P(38) => \v1__3_n_67\,
      P(37) => \v1__3_n_68\,
      P(36) => \v1__3_n_69\,
      P(35) => \v1__3_n_70\,
      P(34) => \v1__3_n_71\,
      P(33) => \v1__3_n_72\,
      P(32) => \v1__3_n_73\,
      P(31) => \v1__3_n_74\,
      P(30) => \v1__3_n_75\,
      P(29) => \v1__3_n_76\,
      P(28) => \v1__3_n_77\,
      P(27) => \v1__3_n_78\,
      P(26) => \v1__3_n_79\,
      P(25) => \v1__3_n_80\,
      P(24) => \v1__3_n_81\,
      P(23) => \v1__3_n_82\,
      P(22) => \v1__3_n_83\,
      P(21) => \v1__3_n_84\,
      P(20) => \v1__3_n_85\,
      P(19) => \v1__3_n_86\,
      P(18) => \v1__3_n_87\,
      P(17) => \v1__3_n_88\,
      P(16) => \v1__3_n_89\,
      P(15) => \v1__3_n_90\,
      P(14) => \v1__3_n_91\,
      P(13) => \v1__3_n_92\,
      P(12) => \v1__3_n_93\,
      P(11) => \v1__3_n_94\,
      P(10) => \v1__3_n_95\,
      P(9) => \v1__3_n_96\,
      P(8) => \v1__3_n_97\,
      P(7) => \v1__3_n_98\,
      P(6) => \v1__3_n_99\,
      P(5) => \v1__3_n_100\,
      P(4) => \v1__3_n_101\,
      P(3) => \v1__3_n_102\,
      P(2) => \v1__3_n_103\,
      P(1) => \v1__3_n_104\,
      P(0) => \v1__3_n_105\,
      PATTERNBDETECT => \NLW_v1__3_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_v1__3_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => \v1__3_n_106\,
      PCOUT(46) => \v1__3_n_107\,
      PCOUT(45) => \v1__3_n_108\,
      PCOUT(44) => \v1__3_n_109\,
      PCOUT(43) => \v1__3_n_110\,
      PCOUT(42) => \v1__3_n_111\,
      PCOUT(41) => \v1__3_n_112\,
      PCOUT(40) => \v1__3_n_113\,
      PCOUT(39) => \v1__3_n_114\,
      PCOUT(38) => \v1__3_n_115\,
      PCOUT(37) => \v1__3_n_116\,
      PCOUT(36) => \v1__3_n_117\,
      PCOUT(35) => \v1__3_n_118\,
      PCOUT(34) => \v1__3_n_119\,
      PCOUT(33) => \v1__3_n_120\,
      PCOUT(32) => \v1__3_n_121\,
      PCOUT(31) => \v1__3_n_122\,
      PCOUT(30) => \v1__3_n_123\,
      PCOUT(29) => \v1__3_n_124\,
      PCOUT(28) => \v1__3_n_125\,
      PCOUT(27) => \v1__3_n_126\,
      PCOUT(26) => \v1__3_n_127\,
      PCOUT(25) => \v1__3_n_128\,
      PCOUT(24) => \v1__3_n_129\,
      PCOUT(23) => \v1__3_n_130\,
      PCOUT(22) => \v1__3_n_131\,
      PCOUT(21) => \v1__3_n_132\,
      PCOUT(20) => \v1__3_n_133\,
      PCOUT(19) => \v1__3_n_134\,
      PCOUT(18) => \v1__3_n_135\,
      PCOUT(17) => \v1__3_n_136\,
      PCOUT(16) => \v1__3_n_137\,
      PCOUT(15) => \v1__3_n_138\,
      PCOUT(14) => \v1__3_n_139\,
      PCOUT(13) => \v1__3_n_140\,
      PCOUT(12) => \v1__3_n_141\,
      PCOUT(11) => \v1__3_n_142\,
      PCOUT(10) => \v1__3_n_143\,
      PCOUT(9) => \v1__3_n_144\,
      PCOUT(8) => \v1__3_n_145\,
      PCOUT(7) => \v1__3_n_146\,
      PCOUT(6) => \v1__3_n_147\,
      PCOUT(5) => \v1__3_n_148\,
      PCOUT(4) => \v1__3_n_149\,
      PCOUT(3) => \v1__3_n_150\,
      PCOUT(2) => \v1__3_n_151\,
      PCOUT(1) => \v1__3_n_152\,
      PCOUT(0) => \v1__3_n_153\,
      RSTA => \^p_0_in\,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => \^p_0_in\,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_v1__3_UNDERFLOW_UNCONNECTED\
    );
\v1__4\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => d_out(31),
      A(28) => d_out(31),
      A(27) => d_out(31),
      A(26) => d_out(31),
      A(25) => d_out(31),
      A(24) => d_out(31),
      A(23) => d_out(31),
      A(22) => d_out(31),
      A(21) => d_out(31),
      A(20) => d_out(31),
      A(19) => d_out(31),
      A(18) => d_out(31),
      A(17) => d_out(31),
      A(16) => d_out(31),
      A(15) => d_out(31),
      A(14 downto 0) => d_out(31 downto 17),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_v1__4_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \v1__4_0\(14),
      B(16) => \v1__4_0\(14),
      B(15) => \v1__4_0\(14),
      B(14 downto 0) => \v1__4_0\(14 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_v1__4_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_v1__4_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_v1__4_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => u_dl_n_10,
      CEA2 => u_dl_n_15,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_v1__4_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_v1__4_OVERFLOW_UNCONNECTED\,
      P(47) => \v1__4_n_58\,
      P(46) => \v1__4_n_59\,
      P(45) => \v1__4_n_60\,
      P(44) => \v1__4_n_61\,
      P(43) => \v1__4_n_62\,
      P(42) => \v1__4_n_63\,
      P(41) => \v1__4_n_64\,
      P(40) => \v1__4_n_65\,
      P(39) => \v1__4_n_66\,
      P(38) => \v1__4_n_67\,
      P(37) => \v1__4_n_68\,
      P(36) => \v1__4_n_69\,
      P(35) => \v1__4_n_70\,
      P(34) => \v1__4_n_71\,
      P(33) => \v1__4_n_72\,
      P(32) => \v1__4_n_73\,
      P(31) => \v1__4_n_74\,
      P(30) => \v1__4_n_75\,
      P(29) => \v1__4_n_76\,
      P(28) => \v1__4_n_77\,
      P(27) => \v1__4_n_78\,
      P(26) => \v1__4_n_79\,
      P(25) => \v1__4_n_80\,
      P(24) => \v1__4_n_81\,
      P(23) => \v1__4_n_82\,
      P(22) => \v1__4_n_83\,
      P(21) => \v1__4_n_84\,
      P(20) => \v1__4_n_85\,
      P(19) => \v1__4_n_86\,
      P(18) => \v1__4_n_87\,
      P(17) => \v1__4_n_88\,
      P(16) => \v1__4_n_89\,
      P(15) => \v1__4_n_90\,
      P(14) => \v1__4_n_91\,
      P(13) => \v1__4_n_92\,
      P(12) => \v1__4_n_93\,
      P(11) => \v1__4_n_94\,
      P(10) => \v1__4_n_95\,
      P(9) => \v1__4_n_96\,
      P(8) => \v1__4_n_97\,
      P(7) => \v1__4_n_98\,
      P(6) => \v1__4_n_99\,
      P(5) => \v1__4_n_100\,
      P(4) => \v1__4_n_101\,
      P(3) => \v1__4_n_102\,
      P(2) => \v1__4_n_103\,
      P(1) => \v1__4_n_104\,
      P(0) => \v1__4_n_105\,
      PATTERNBDETECT => \NLW_v1__4_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_v1__4_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => \v1__3_n_106\,
      PCIN(46) => \v1__3_n_107\,
      PCIN(45) => \v1__3_n_108\,
      PCIN(44) => \v1__3_n_109\,
      PCIN(43) => \v1__3_n_110\,
      PCIN(42) => \v1__3_n_111\,
      PCIN(41) => \v1__3_n_112\,
      PCIN(40) => \v1__3_n_113\,
      PCIN(39) => \v1__3_n_114\,
      PCIN(38) => \v1__3_n_115\,
      PCIN(37) => \v1__3_n_116\,
      PCIN(36) => \v1__3_n_117\,
      PCIN(35) => \v1__3_n_118\,
      PCIN(34) => \v1__3_n_119\,
      PCIN(33) => \v1__3_n_120\,
      PCIN(32) => \v1__3_n_121\,
      PCIN(31) => \v1__3_n_122\,
      PCIN(30) => \v1__3_n_123\,
      PCIN(29) => \v1__3_n_124\,
      PCIN(28) => \v1__3_n_125\,
      PCIN(27) => \v1__3_n_126\,
      PCIN(26) => \v1__3_n_127\,
      PCIN(25) => \v1__3_n_128\,
      PCIN(24) => \v1__3_n_129\,
      PCIN(23) => \v1__3_n_130\,
      PCIN(22) => \v1__3_n_131\,
      PCIN(21) => \v1__3_n_132\,
      PCIN(20) => \v1__3_n_133\,
      PCIN(19) => \v1__3_n_134\,
      PCIN(18) => \v1__3_n_135\,
      PCIN(17) => \v1__3_n_136\,
      PCIN(16) => \v1__3_n_137\,
      PCIN(15) => \v1__3_n_138\,
      PCIN(14) => \v1__3_n_139\,
      PCIN(13) => \v1__3_n_140\,
      PCIN(12) => \v1__3_n_141\,
      PCIN(11) => \v1__3_n_142\,
      PCIN(10) => \v1__3_n_143\,
      PCIN(9) => \v1__3_n_144\,
      PCIN(8) => \v1__3_n_145\,
      PCIN(7) => \v1__3_n_146\,
      PCIN(6) => \v1__3_n_147\,
      PCIN(5) => \v1__3_n_148\,
      PCIN(4) => \v1__3_n_149\,
      PCIN(3) => \v1__3_n_150\,
      PCIN(2) => \v1__3_n_151\,
      PCIN(1) => \v1__3_n_152\,
      PCIN(0) => \v1__3_n_153\,
      PCOUT(47 downto 0) => \NLW_v1__4_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => \^p_0_in\,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_v1__4_UNDERFLOW_UNCONNECTED\
    );
\v1__5\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => d_out(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_v1__5_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => s_axi_wdata(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_v1__5_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_v1__5_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_v1__5_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => u_dl_n_10,
      CEA2 => u_dl_n_15,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => \v1__3_0\(0),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_v1__5_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => \NLW_v1__5_OVERFLOW_UNCONNECTED\,
      P(47) => \v1__5_n_58\,
      P(46) => \v1__5_n_59\,
      P(45) => \v1__5_n_60\,
      P(44) => \v1__5_n_61\,
      P(43) => \v1__5_n_62\,
      P(42) => \v1__5_n_63\,
      P(41) => \v1__5_n_64\,
      P(40) => \v1__5_n_65\,
      P(39) => \v1__5_n_66\,
      P(38) => \v1__5_n_67\,
      P(37) => \v1__5_n_68\,
      P(36) => \v1__5_n_69\,
      P(35) => \v1__5_n_70\,
      P(34) => \v1__5_n_71\,
      P(33) => \v1__5_n_72\,
      P(32) => \v1__5_n_73\,
      P(31) => \v1__5_n_74\,
      P(30) => \v1__5_n_75\,
      P(29) => \v1__5_n_76\,
      P(28) => \v1__5_n_77\,
      P(27) => \v1__5_n_78\,
      P(26) => \v1__5_n_79\,
      P(25) => \v1__5_n_80\,
      P(24) => \v1__5_n_81\,
      P(23) => \v1__5_n_82\,
      P(22) => \v1__5_n_83\,
      P(21) => \v1__5_n_84\,
      P(20) => \v1__5_n_85\,
      P(19) => \v1__5_n_86\,
      P(18) => \v1__5_n_87\,
      P(17) => \v1__5_n_88\,
      P(16) => \v1__5_n_89\,
      P(15) => \v1__5_n_90\,
      P(14) => \v1__5_n_91\,
      P(13) => \v1__5_n_92\,
      P(12) => \v1__5_n_93\,
      P(11) => \v1__5_n_94\,
      P(10) => \v1__5_n_95\,
      P(9) => \v1__5_n_96\,
      P(8) => \v1__5_n_97\,
      P(7) => \v1__5_n_98\,
      P(6) => \v1__5_n_99\,
      P(5) => \v1__5_n_100\,
      P(4) => \v1__5_n_101\,
      P(3) => \v1__5_n_102\,
      P(2) => \v1__5_n_103\,
      P(1) => \v1__5_n_104\,
      P(0) => \v1__5_n_105\,
      PATTERNBDETECT => \NLW_v1__5_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_v1__5_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => \v1__5_n_106\,
      PCOUT(46) => \v1__5_n_107\,
      PCOUT(45) => \v1__5_n_108\,
      PCOUT(44) => \v1__5_n_109\,
      PCOUT(43) => \v1__5_n_110\,
      PCOUT(42) => \v1__5_n_111\,
      PCOUT(41) => \v1__5_n_112\,
      PCOUT(40) => \v1__5_n_113\,
      PCOUT(39) => \v1__5_n_114\,
      PCOUT(38) => \v1__5_n_115\,
      PCOUT(37) => \v1__5_n_116\,
      PCOUT(36) => \v1__5_n_117\,
      PCOUT(35) => \v1__5_n_118\,
      PCOUT(34) => \v1__5_n_119\,
      PCOUT(33) => \v1__5_n_120\,
      PCOUT(32) => \v1__5_n_121\,
      PCOUT(31) => \v1__5_n_122\,
      PCOUT(30) => \v1__5_n_123\,
      PCOUT(29) => \v1__5_n_124\,
      PCOUT(28) => \v1__5_n_125\,
      PCOUT(27) => \v1__5_n_126\,
      PCOUT(26) => \v1__5_n_127\,
      PCOUT(25) => \v1__5_n_128\,
      PCOUT(24) => \v1__5_n_129\,
      PCOUT(23) => \v1__5_n_130\,
      PCOUT(22) => \v1__5_n_131\,
      PCOUT(21) => \v1__5_n_132\,
      PCOUT(20) => \v1__5_n_133\,
      PCOUT(19) => \v1__5_n_134\,
      PCOUT(18) => \v1__5_n_135\,
      PCOUT(17) => \v1__5_n_136\,
      PCOUT(16) => \v1__5_n_137\,
      PCOUT(15) => \v1__5_n_138\,
      PCOUT(14) => \v1__5_n_139\,
      PCOUT(13) => \v1__5_n_140\,
      PCOUT(12) => \v1__5_n_141\,
      PCOUT(11) => \v1__5_n_142\,
      PCOUT(10) => \v1__5_n_143\,
      PCOUT(9) => \v1__5_n_144\,
      PCOUT(8) => \v1__5_n_145\,
      PCOUT(7) => \v1__5_n_146\,
      PCOUT(6) => \v1__5_n_147\,
      PCOUT(5) => \v1__5_n_148\,
      PCOUT(4) => \v1__5_n_149\,
      PCOUT(3) => \v1__5_n_150\,
      PCOUT(2) => \v1__5_n_151\,
      PCOUT(1) => \v1__5_n_152\,
      PCOUT(0) => \v1__5_n_153\,
      RSTA => \^p_0_in\,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => \^p_0_in\,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_v1__5_UNDERFLOW_UNCONNECTED\
    );
\v1__6\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => d_out(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_v1__6_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \v1__4_0\(14),
      B(16) => \v1__4_0\(14),
      B(15) => \v1__4_0\(14),
      B(14 downto 0) => \v1__4_0\(14 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_v1__6_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_v1__6_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_v1__6_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => u_dl_n_10,
      CEA2 => u_dl_n_15,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_v1__6_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_v1__6_OVERFLOW_UNCONNECTED\,
      P(47) => \v1__6_n_58\,
      P(46) => \v1__6_n_59\,
      P(45) => \v1__6_n_60\,
      P(44) => \v1__6_n_61\,
      P(43) => \v1__6_n_62\,
      P(42) => \v1__6_n_63\,
      P(41) => \v1__6_n_64\,
      P(40) => \v1__6_n_65\,
      P(39) => \v1__6_n_66\,
      P(38) => \v1__6_n_67\,
      P(37) => \v1__6_n_68\,
      P(36) => \v1__6_n_69\,
      P(35) => \v1__6_n_70\,
      P(34) => \v1__6_n_71\,
      P(33) => \v1__6_n_72\,
      P(32) => \v1__6_n_73\,
      P(31) => \v1__6_n_74\,
      P(30) => \v1__6_n_75\,
      P(29) => \v1__6_n_76\,
      P(28) => \v1__6_n_77\,
      P(27) => \v1__6_n_78\,
      P(26) => \v1__6_n_79\,
      P(25) => \v1__6_n_80\,
      P(24) => \v1__6_n_81\,
      P(23) => \v1__6_n_82\,
      P(22) => \v1__6_n_83\,
      P(21) => \v1__6_n_84\,
      P(20) => \v1__6_n_85\,
      P(19) => \v1__6_n_86\,
      P(18) => \v1__6_n_87\,
      P(17) => \v1__6_n_88\,
      P(16) => \v1__6_n_89\,
      P(15) => \v1__6_n_90\,
      P(14) => \v1__6_n_91\,
      P(13) => \v1__6_n_92\,
      P(12) => \v1__6_n_93\,
      P(11) => \v1__6_n_94\,
      P(10) => \v1__6_n_95\,
      P(9) => \v1__6_n_96\,
      P(8) => \v1__6_n_97\,
      P(7) => \v1__6_n_98\,
      P(6) => \v1__6_n_99\,
      P(5) => \v1__6_n_100\,
      P(4) => \v1__6_n_101\,
      P(3) => \v1__6_n_102\,
      P(2) => \v1__6_n_103\,
      P(1) => \v1__6_n_104\,
      P(0) => \v1__6_n_105\,
      PATTERNBDETECT => \NLW_v1__6_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_v1__6_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => \v1__5_n_106\,
      PCIN(46) => \v1__5_n_107\,
      PCIN(45) => \v1__5_n_108\,
      PCIN(44) => \v1__5_n_109\,
      PCIN(43) => \v1__5_n_110\,
      PCIN(42) => \v1__5_n_111\,
      PCIN(41) => \v1__5_n_112\,
      PCIN(40) => \v1__5_n_113\,
      PCIN(39) => \v1__5_n_114\,
      PCIN(38) => \v1__5_n_115\,
      PCIN(37) => \v1__5_n_116\,
      PCIN(36) => \v1__5_n_117\,
      PCIN(35) => \v1__5_n_118\,
      PCIN(34) => \v1__5_n_119\,
      PCIN(33) => \v1__5_n_120\,
      PCIN(32) => \v1__5_n_121\,
      PCIN(31) => \v1__5_n_122\,
      PCIN(30) => \v1__5_n_123\,
      PCIN(29) => \v1__5_n_124\,
      PCIN(28) => \v1__5_n_125\,
      PCIN(27) => \v1__5_n_126\,
      PCIN(26) => \v1__5_n_127\,
      PCIN(25) => \v1__5_n_128\,
      PCIN(24) => \v1__5_n_129\,
      PCIN(23) => \v1__5_n_130\,
      PCIN(22) => \v1__5_n_131\,
      PCIN(21) => \v1__5_n_132\,
      PCIN(20) => \v1__5_n_133\,
      PCIN(19) => \v1__5_n_134\,
      PCIN(18) => \v1__5_n_135\,
      PCIN(17) => \v1__5_n_136\,
      PCIN(16) => \v1__5_n_137\,
      PCIN(15) => \v1__5_n_138\,
      PCIN(14) => \v1__5_n_139\,
      PCIN(13) => \v1__5_n_140\,
      PCIN(12) => \v1__5_n_141\,
      PCIN(11) => \v1__5_n_142\,
      PCIN(10) => \v1__5_n_143\,
      PCIN(9) => \v1__5_n_144\,
      PCIN(8) => \v1__5_n_145\,
      PCIN(7) => \v1__5_n_146\,
      PCIN(6) => \v1__5_n_147\,
      PCIN(5) => \v1__5_n_148\,
      PCIN(4) => \v1__5_n_149\,
      PCIN(3) => \v1__5_n_150\,
      PCIN(2) => \v1__5_n_151\,
      PCIN(1) => \v1__5_n_152\,
      PCIN(0) => \v1__5_n_153\,
      PCOUT(47 downto 0) => \NLW_v1__6_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => \^p_0_in\,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_v1__6_UNDERFLOW_UNCONNECTED\
    );
v1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => v1_carry_n_0,
      CO(2) => v1_carry_n_1,
      CO(1) => v1_carry_n_2,
      CO(0) => v1_carry_n_3,
      CYINIT => '0',
      DI(3) => \v1__2_n_103\,
      DI(2) => \v1__2_n_104\,
      DI(1) => \v1__2_n_105\,
      DI(0) => '0',
      O(3 downto 0) => NLW_v1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => v1_carry_i_1_n_0,
      S(2) => v1_carry_i_2_n_0,
      S(1) => v1_carry_i_3_n_0,
      S(0) => \v1__1_n_89\
    );
\v1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => v1_carry_n_0,
      CO(3) => \v1_carry__0_n_0\,
      CO(2) => \v1_carry__0_n_1\,
      CO(1) => \v1_carry__0_n_2\,
      CO(0) => \v1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \v1__2_n_99\,
      DI(2) => \v1__2_n_100\,
      DI(1) => \v1__2_n_101\,
      DI(0) => \v1__2_n_102\,
      O(3 downto 0) => \NLW_v1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \v1_carry__0_i_1_n_0\,
      S(2) => \v1_carry__0_i_2_n_0\,
      S(1) => \v1_carry__0_i_3_n_0\,
      S(0) => \v1_carry__0_i_4_n_0\
    );
\v1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_99\,
      I1 => v1_n_99,
      O => \v1_carry__0_i_1_n_0\
    );
\v1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_100\,
      I1 => v1_n_100,
      O => \v1_carry__0_i_2_n_0\
    );
\v1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_101\,
      I1 => v1_n_101,
      O => \v1_carry__0_i_3_n_0\
    );
\v1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_102\,
      I1 => v1_n_102,
      O => \v1_carry__0_i_4_n_0\
    );
\v1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_carry__0_n_0\,
      CO(3) => \v1_carry__1_n_0\,
      CO(2) => \v1_carry__1_n_1\,
      CO(1) => \v1_carry__1_n_2\,
      CO(0) => \v1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \v1__2_n_95\,
      DI(2) => \v1__2_n_96\,
      DI(1) => \v1__2_n_97\,
      DI(0) => \v1__2_n_98\,
      O(3 downto 0) => \NLW_v1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \v1_carry__1_i_1_n_0\,
      S(2) => \v1_carry__1_i_2_n_0\,
      S(1) => \v1_carry__1_i_3_n_0\,
      S(0) => \v1_carry__1_i_4_n_0\
    );
\v1_carry__10\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_carry__9_n_0\,
      CO(3) => \NLW_v1_carry__10_CO_UNCONNECTED\(3),
      CO(2) => \v1_carry__10_n_1\,
      CO(1) => \v1_carry__10_n_2\,
      CO(0) => \v1_carry__10_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \v1__2_n_60\,
      DI(1) => \v1__2_n_61\,
      DI(0) => \v1__2_n_62\,
      O(3) => \v1_carry__10_n_4\,
      O(2) => \v1_carry__10_n_5\,
      O(1) => \v1_carry__10_n_6\,
      O(0) => \v1_carry__10_n_7\,
      S(3) => \v1_carry__10_i_1_n_0\,
      S(2) => \v1_carry__10_i_2_n_0\,
      S(1) => \v1_carry__10_i_3_n_0\,
      S(0) => \v1_carry__10_i_4_n_0\
    );
\v1_carry__10_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_59\,
      I1 => \v1__0_n_76\,
      O => \v1_carry__10_i_1_n_0\
    );
\v1_carry__10_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_60\,
      I1 => \v1__0_n_77\,
      O => \v1_carry__10_i_2_n_0\
    );
\v1_carry__10_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_61\,
      I1 => \v1__0_n_78\,
      O => \v1_carry__10_i_3_n_0\
    );
\v1_carry__10_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_62\,
      I1 => \v1__0_n_79\,
      O => \v1_carry__10_i_4_n_0\
    );
\v1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_95\,
      I1 => v1_n_95,
      O => \v1_carry__1_i_1_n_0\
    );
\v1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_96\,
      I1 => v1_n_96,
      O => \v1_carry__1_i_2_n_0\
    );
\v1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_97\,
      I1 => v1_n_97,
      O => \v1_carry__1_i_3_n_0\
    );
\v1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_98\,
      I1 => v1_n_98,
      O => \v1_carry__1_i_4_n_0\
    );
\v1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_carry__1_n_0\,
      CO(3) => \v1_carry__2_n_0\,
      CO(2) => \v1_carry__2_n_1\,
      CO(1) => \v1_carry__2_n_2\,
      CO(0) => \v1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \v1__2_n_91\,
      DI(2) => \v1__2_n_92\,
      DI(1) => \v1__2_n_93\,
      DI(0) => \v1__2_n_94\,
      O(3) => \v1_carry__2_n_4\,
      O(2) => \v1_carry__2_n_5\,
      O(1) => \v1_carry__2_n_6\,
      O(0) => \NLW_v1_carry__2_O_UNCONNECTED\(0),
      S(3) => \v1_carry__2_i_1_n_0\,
      S(2) => \v1_carry__2_i_2_n_0\,
      S(1) => \v1_carry__2_i_3_n_0\,
      S(0) => \v1_carry__2_i_4_n_0\
    );
\v1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_91\,
      I1 => v1_n_91,
      O => \v1_carry__2_i_1_n_0\
    );
\v1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_92\,
      I1 => v1_n_92,
      O => \v1_carry__2_i_2_n_0\
    );
\v1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_93\,
      I1 => v1_n_93,
      O => \v1_carry__2_i_3_n_0\
    );
\v1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_94\,
      I1 => v1_n_94,
      O => \v1_carry__2_i_4_n_0\
    );
\v1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_carry__2_n_0\,
      CO(3) => \v1_carry__3_n_0\,
      CO(2) => \v1_carry__3_n_1\,
      CO(1) => \v1_carry__3_n_2\,
      CO(0) => \v1_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \v1__2_n_87\,
      DI(2) => \v1__2_n_88\,
      DI(1) => \v1__2_n_89\,
      DI(0) => \v1__2_n_90\,
      O(3) => \v1_carry__3_n_4\,
      O(2) => \v1_carry__3_n_5\,
      O(1) => \v1_carry__3_n_6\,
      O(0) => \v1_carry__3_n_7\,
      S(3) => \v1_carry__3_i_1_n_0\,
      S(2) => \v1_carry__3_i_2_n_0\,
      S(1) => \v1_carry__3_i_3_n_0\,
      S(0) => \v1_carry__3_i_4_n_0\
    );
\v1_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_87\,
      I1 => \v1__0_n_104\,
      O => \v1_carry__3_i_1_n_0\
    );
\v1_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_88\,
      I1 => \v1__0_n_105\,
      O => \v1_carry__3_i_2_n_0\
    );
\v1_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_89\,
      I1 => v1_n_89,
      O => \v1_carry__3_i_3_n_0\
    );
\v1_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_90\,
      I1 => v1_n_90,
      O => \v1_carry__3_i_4_n_0\
    );
\v1_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_carry__3_n_0\,
      CO(3) => \v1_carry__4_n_0\,
      CO(2) => \v1_carry__4_n_1\,
      CO(1) => \v1_carry__4_n_2\,
      CO(0) => \v1_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \v1__2_n_83\,
      DI(2) => \v1__2_n_84\,
      DI(1) => \v1__2_n_85\,
      DI(0) => \v1__2_n_86\,
      O(3) => \v1_carry__4_n_4\,
      O(2) => \v1_carry__4_n_5\,
      O(1) => \v1_carry__4_n_6\,
      O(0) => \v1_carry__4_n_7\,
      S(3) => \v1_carry__4_i_1_n_0\,
      S(2) => \v1_carry__4_i_2_n_0\,
      S(1) => \v1_carry__4_i_3_n_0\,
      S(0) => \v1_carry__4_i_4_n_0\
    );
\v1_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_83\,
      I1 => \v1__0_n_100\,
      O => \v1_carry__4_i_1_n_0\
    );
\v1_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_84\,
      I1 => \v1__0_n_101\,
      O => \v1_carry__4_i_2_n_0\
    );
\v1_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_85\,
      I1 => \v1__0_n_102\,
      O => \v1_carry__4_i_3_n_0\
    );
\v1_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_86\,
      I1 => \v1__0_n_103\,
      O => \v1_carry__4_i_4_n_0\
    );
\v1_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_carry__4_n_0\,
      CO(3) => \v1_carry__5_n_0\,
      CO(2) => \v1_carry__5_n_1\,
      CO(1) => \v1_carry__5_n_2\,
      CO(0) => \v1_carry__5_n_3\,
      CYINIT => '0',
      DI(3) => \v1__2_n_79\,
      DI(2) => \v1__2_n_80\,
      DI(1) => \v1__2_n_81\,
      DI(0) => \v1__2_n_82\,
      O(3) => \v1_carry__5_n_4\,
      O(2) => \v1_carry__5_n_5\,
      O(1) => \v1_carry__5_n_6\,
      O(0) => \v1_carry__5_n_7\,
      S(3) => \v1_carry__5_i_1_n_0\,
      S(2) => \v1_carry__5_i_2_n_0\,
      S(1) => \v1_carry__5_i_3_n_0\,
      S(0) => \v1_carry__5_i_4_n_0\
    );
\v1_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_79\,
      I1 => \v1__0_n_96\,
      O => \v1_carry__5_i_1_n_0\
    );
\v1_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_80\,
      I1 => \v1__0_n_97\,
      O => \v1_carry__5_i_2_n_0\
    );
\v1_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_81\,
      I1 => \v1__0_n_98\,
      O => \v1_carry__5_i_3_n_0\
    );
\v1_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_82\,
      I1 => \v1__0_n_99\,
      O => \v1_carry__5_i_4_n_0\
    );
\v1_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_carry__5_n_0\,
      CO(3) => \v1_carry__6_n_0\,
      CO(2) => \v1_carry__6_n_1\,
      CO(1) => \v1_carry__6_n_2\,
      CO(0) => \v1_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => \v1__2_n_75\,
      DI(2) => \v1__2_n_76\,
      DI(1) => \v1__2_n_77\,
      DI(0) => \v1__2_n_78\,
      O(3) => \v1_carry__6_n_4\,
      O(2) => \v1_carry__6_n_5\,
      O(1) => \v1_carry__6_n_6\,
      O(0) => \v1_carry__6_n_7\,
      S(3) => \v1_carry__6_i_1_n_0\,
      S(2) => \v1_carry__6_i_2_n_0\,
      S(1) => \v1_carry__6_i_3_n_0\,
      S(0) => \v1_carry__6_i_4_n_0\
    );
\v1_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_75\,
      I1 => \v1__0_n_92\,
      O => \v1_carry__6_i_1_n_0\
    );
\v1_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_76\,
      I1 => \v1__0_n_93\,
      O => \v1_carry__6_i_2_n_0\
    );
\v1_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_77\,
      I1 => \v1__0_n_94\,
      O => \v1_carry__6_i_3_n_0\
    );
\v1_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_78\,
      I1 => \v1__0_n_95\,
      O => \v1_carry__6_i_4_n_0\
    );
\v1_carry__7\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_carry__6_n_0\,
      CO(3) => \v1_carry__7_n_0\,
      CO(2) => \v1_carry__7_n_1\,
      CO(1) => \v1_carry__7_n_2\,
      CO(0) => \v1_carry__7_n_3\,
      CYINIT => '0',
      DI(3) => \v1__2_n_71\,
      DI(2) => \v1__2_n_72\,
      DI(1) => \v1__2_n_73\,
      DI(0) => \v1__2_n_74\,
      O(3) => \v1_carry__7_n_4\,
      O(2) => \v1_carry__7_n_5\,
      O(1) => \v1_carry__7_n_6\,
      O(0) => \v1_carry__7_n_7\,
      S(3) => \v1_carry__7_i_1_n_0\,
      S(2) => \v1_carry__7_i_2_n_0\,
      S(1) => \v1_carry__7_i_3_n_0\,
      S(0) => \v1_carry__7_i_4_n_0\
    );
\v1_carry__7_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_71\,
      I1 => \v1__0_n_88\,
      O => \v1_carry__7_i_1_n_0\
    );
\v1_carry__7_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_72\,
      I1 => \v1__0_n_89\,
      O => \v1_carry__7_i_2_n_0\
    );
\v1_carry__7_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_73\,
      I1 => \v1__0_n_90\,
      O => \v1_carry__7_i_3_n_0\
    );
\v1_carry__7_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_74\,
      I1 => \v1__0_n_91\,
      O => \v1_carry__7_i_4_n_0\
    );
\v1_carry__8\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_carry__7_n_0\,
      CO(3) => \v1_carry__8_n_0\,
      CO(2) => \v1_carry__8_n_1\,
      CO(1) => \v1_carry__8_n_2\,
      CO(0) => \v1_carry__8_n_3\,
      CYINIT => '0',
      DI(3) => \v1__2_n_67\,
      DI(2) => \v1__2_n_68\,
      DI(1) => \v1__2_n_69\,
      DI(0) => \v1__2_n_70\,
      O(3) => \v1_carry__8_n_4\,
      O(2) => \v1_carry__8_n_5\,
      O(1) => \v1_carry__8_n_6\,
      O(0) => \v1_carry__8_n_7\,
      S(3) => \v1_carry__8_i_1_n_0\,
      S(2) => \v1_carry__8_i_2_n_0\,
      S(1) => \v1_carry__8_i_3_n_0\,
      S(0) => \v1_carry__8_i_4_n_0\
    );
\v1_carry__8_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_67\,
      I1 => \v1__0_n_84\,
      O => \v1_carry__8_i_1_n_0\
    );
\v1_carry__8_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_68\,
      I1 => \v1__0_n_85\,
      O => \v1_carry__8_i_2_n_0\
    );
\v1_carry__8_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_69\,
      I1 => \v1__0_n_86\,
      O => \v1_carry__8_i_3_n_0\
    );
\v1_carry__8_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_70\,
      I1 => \v1__0_n_87\,
      O => \v1_carry__8_i_4_n_0\
    );
\v1_carry__9\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_carry__8_n_0\,
      CO(3) => \v1_carry__9_n_0\,
      CO(2) => \v1_carry__9_n_1\,
      CO(1) => \v1_carry__9_n_2\,
      CO(0) => \v1_carry__9_n_3\,
      CYINIT => '0',
      DI(3) => \v1__2_n_63\,
      DI(2) => \v1__2_n_64\,
      DI(1) => \v1__2_n_65\,
      DI(0) => \v1__2_n_66\,
      O(3) => \v1_carry__9_n_4\,
      O(2) => \v1_carry__9_n_5\,
      O(1) => \v1_carry__9_n_6\,
      O(0) => \v1_carry__9_n_7\,
      S(3) => \v1_carry__9_i_1_n_0\,
      S(2) => \v1_carry__9_i_2_n_0\,
      S(1) => \v1_carry__9_i_3_n_0\,
      S(0) => \v1_carry__9_i_4_n_0\
    );
\v1_carry__9_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_63\,
      I1 => \v1__0_n_80\,
      O => \v1_carry__9_i_1_n_0\
    );
\v1_carry__9_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_64\,
      I1 => \v1__0_n_81\,
      O => \v1_carry__9_i_2_n_0\
    );
\v1_carry__9_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_65\,
      I1 => \v1__0_n_82\,
      O => \v1_carry__9_i_3_n_0\
    );
\v1_carry__9_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_66\,
      I1 => \v1__0_n_83\,
      O => \v1_carry__9_i_4_n_0\
    );
v1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_103\,
      I1 => v1_n_103,
      O => v1_carry_i_1_n_0
    );
v1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_104\,
      I1 => v1_n_104,
      O => v1_carry_i_2_n_0
    );
v1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v1__2_n_105\,
      I1 => v1_n_105,
      O => v1_carry_i_3_n_0
    );
\v1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \v1_inferred__0/i__carry_n_0\,
      CO(2) => \v1_inferred__0/i__carry_n_1\,
      CO(1) => \v1_inferred__0/i__carry_n_2\,
      CO(0) => \v1_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \v1__6_n_103\,
      DI(2) => \v1__6_n_104\,
      DI(1) => \v1__6_n_105\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_v1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__1_n_0\,
      S(2) => \i__carry_i_2__1_n_0\,
      S(1) => \i__carry_i_3__1_n_0\,
      S(0) => \v1__5_n_89\
    );
\v1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_inferred__0/i__carry_n_0\,
      CO(3) => \v1_inferred__0/i__carry__0_n_0\,
      CO(2) => \v1_inferred__0/i__carry__0_n_1\,
      CO(1) => \v1_inferred__0/i__carry__0_n_2\,
      CO(0) => \v1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \v1__6_n_99\,
      DI(2) => \v1__6_n_100\,
      DI(1) => \v1__6_n_101\,
      DI(0) => \v1__6_n_102\,
      O(3 downto 0) => \NLW_v1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1__1_n_0\,
      S(2) => \i__carry__0_i_2__0_n_0\,
      S(1) => \i__carry__0_i_3__0_n_0\,
      S(0) => \i__carry__0_i_4__0_n_0\
    );
\v1_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_inferred__0/i__carry__0_n_0\,
      CO(3) => \v1_inferred__0/i__carry__1_n_0\,
      CO(2) => \v1_inferred__0/i__carry__1_n_1\,
      CO(1) => \v1_inferred__0/i__carry__1_n_2\,
      CO(0) => \v1_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \v1__6_n_95\,
      DI(2) => \v1__6_n_96\,
      DI(1) => \v1__6_n_97\,
      DI(0) => \v1__6_n_98\,
      O(3 downto 0) => \NLW_v1_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_1__0_n_0\,
      S(2) => \i__carry__1_i_2__0_n_0\,
      S(1) => \i__carry__1_i_3__0_n_0\,
      S(0) => \i__carry__1_i_4__0_n_0\
    );
\v1_inferred__0/i__carry__10\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_inferred__0/i__carry__9_n_0\,
      CO(3) => \NLW_v1_inferred__0/i__carry__10_CO_UNCONNECTED\(3),
      CO(2) => \v1_inferred__0/i__carry__10_n_1\,
      CO(1) => \v1_inferred__0/i__carry__10_n_2\,
      CO(0) => \v1_inferred__0/i__carry__10_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \v1__6_n_60\,
      DI(1) => \v1__6_n_61\,
      DI(0) => \v1__6_n_62\,
      O(3) => \v1_inferred__0/i__carry__10_n_4\,
      O(2) => \v1_inferred__0/i__carry__10_n_5\,
      O(1) => \v1_inferred__0/i__carry__10_n_6\,
      O(0) => \v1_inferred__0/i__carry__10_n_7\,
      S(3) => \i__carry__10_i_1_n_0\,
      S(2) => \i__carry__10_i_2_n_0\,
      S(1) => \i__carry__10_i_3_n_0\,
      S(0) => \i__carry__10_i_4_n_0\
    );
\v1_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_inferred__0/i__carry__1_n_0\,
      CO(3) => \v1_inferred__0/i__carry__2_n_0\,
      CO(2) => \v1_inferred__0/i__carry__2_n_1\,
      CO(1) => \v1_inferred__0/i__carry__2_n_2\,
      CO(0) => \v1_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \v1__6_n_91\,
      DI(2) => \v1__6_n_92\,
      DI(1) => \v1__6_n_93\,
      DI(0) => \v1__6_n_94\,
      O(3) => \v1_inferred__0/i__carry__2_n_4\,
      O(2) => \v1_inferred__0/i__carry__2_n_5\,
      O(1) => \v1_inferred__0/i__carry__2_n_6\,
      O(0) => \NLW_v1_inferred__0/i__carry__2_O_UNCONNECTED\(0),
      S(3) => \i__carry__2_i_1__0_n_0\,
      S(2) => \i__carry__2_i_2__0_n_0\,
      S(1) => \i__carry__2_i_3__0_n_0\,
      S(0) => \i__carry__2_i_4__0_n_0\
    );
\v1_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_inferred__0/i__carry__2_n_0\,
      CO(3) => \v1_inferred__0/i__carry__3_n_0\,
      CO(2) => \v1_inferred__0/i__carry__3_n_1\,
      CO(1) => \v1_inferred__0/i__carry__3_n_2\,
      CO(0) => \v1_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \v1__6_n_87\,
      DI(2) => \v1__6_n_88\,
      DI(1) => \v1__6_n_89\,
      DI(0) => \v1__6_n_90\,
      O(3) => \v1_inferred__0/i__carry__3_n_4\,
      O(2) => \v1_inferred__0/i__carry__3_n_5\,
      O(1) => \v1_inferred__0/i__carry__3_n_6\,
      O(0) => \v1_inferred__0/i__carry__3_n_7\,
      S(3) => \i__carry__3_i_1__0_n_0\,
      S(2) => \i__carry__3_i_2__0_n_0\,
      S(1) => \i__carry__3_i_3__0_n_0\,
      S(0) => \i__carry__3_i_4__0_n_0\
    );
\v1_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_inferred__0/i__carry__3_n_0\,
      CO(3) => \v1_inferred__0/i__carry__4_n_0\,
      CO(2) => \v1_inferred__0/i__carry__4_n_1\,
      CO(1) => \v1_inferred__0/i__carry__4_n_2\,
      CO(0) => \v1_inferred__0/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \v1__6_n_83\,
      DI(2) => \v1__6_n_84\,
      DI(1) => \v1__6_n_85\,
      DI(0) => \v1__6_n_86\,
      O(3) => \v1_inferred__0/i__carry__4_n_4\,
      O(2) => \v1_inferred__0/i__carry__4_n_5\,
      O(1) => \v1_inferred__0/i__carry__4_n_6\,
      O(0) => \v1_inferred__0/i__carry__4_n_7\,
      S(3) => \i__carry__4_i_1__0_n_0\,
      S(2) => \i__carry__4_i_2__0_n_0\,
      S(1) => \i__carry__4_i_3__0_n_0\,
      S(0) => \i__carry__4_i_4__0_n_0\
    );
\v1_inferred__0/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_inferred__0/i__carry__4_n_0\,
      CO(3) => \v1_inferred__0/i__carry__5_n_0\,
      CO(2) => \v1_inferred__0/i__carry__5_n_1\,
      CO(1) => \v1_inferred__0/i__carry__5_n_2\,
      CO(0) => \v1_inferred__0/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3) => \v1__6_n_79\,
      DI(2) => \v1__6_n_80\,
      DI(1) => \v1__6_n_81\,
      DI(0) => \v1__6_n_82\,
      O(3) => \v1_inferred__0/i__carry__5_n_4\,
      O(2) => \v1_inferred__0/i__carry__5_n_5\,
      O(1) => \v1_inferred__0/i__carry__5_n_6\,
      O(0) => \v1_inferred__0/i__carry__5_n_7\,
      S(3) => \i__carry__5_i_1__0_n_0\,
      S(2) => \i__carry__5_i_2__0_n_0\,
      S(1) => \i__carry__5_i_3_n_0\,
      S(0) => \i__carry__5_i_4_n_0\
    );
\v1_inferred__0/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_inferred__0/i__carry__5_n_0\,
      CO(3) => \v1_inferred__0/i__carry__6_n_0\,
      CO(2) => \v1_inferred__0/i__carry__6_n_1\,
      CO(1) => \v1_inferred__0/i__carry__6_n_2\,
      CO(0) => \v1_inferred__0/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3) => \v1__6_n_75\,
      DI(2) => \v1__6_n_76\,
      DI(1) => \v1__6_n_77\,
      DI(0) => \v1__6_n_78\,
      O(3) => \v1_inferred__0/i__carry__6_n_4\,
      O(2) => \v1_inferred__0/i__carry__6_n_5\,
      O(1) => \v1_inferred__0/i__carry__6_n_6\,
      O(0) => \v1_inferred__0/i__carry__6_n_7\,
      S(3) => \i__carry__6_i_1_n_0\,
      S(2) => \i__carry__6_i_2_n_0\,
      S(1) => \i__carry__6_i_3_n_0\,
      S(0) => \i__carry__6_i_4_n_0\
    );
\v1_inferred__0/i__carry__7\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_inferred__0/i__carry__6_n_0\,
      CO(3) => \v1_inferred__0/i__carry__7_n_0\,
      CO(2) => \v1_inferred__0/i__carry__7_n_1\,
      CO(1) => \v1_inferred__0/i__carry__7_n_2\,
      CO(0) => \v1_inferred__0/i__carry__7_n_3\,
      CYINIT => '0',
      DI(3) => \v1__6_n_71\,
      DI(2) => \v1__6_n_72\,
      DI(1) => \v1__6_n_73\,
      DI(0) => \v1__6_n_74\,
      O(3) => \v1_inferred__0/i__carry__7_n_4\,
      O(2) => \v1_inferred__0/i__carry__7_n_5\,
      O(1) => \v1_inferred__0/i__carry__7_n_6\,
      O(0) => \v1_inferred__0/i__carry__7_n_7\,
      S(3) => \i__carry__7_i_1_n_0\,
      S(2) => \i__carry__7_i_2_n_0\,
      S(1) => \i__carry__7_i_3_n_0\,
      S(0) => \i__carry__7_i_4_n_0\
    );
\v1_inferred__0/i__carry__8\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_inferred__0/i__carry__7_n_0\,
      CO(3) => \v1_inferred__0/i__carry__8_n_0\,
      CO(2) => \v1_inferred__0/i__carry__8_n_1\,
      CO(1) => \v1_inferred__0/i__carry__8_n_2\,
      CO(0) => \v1_inferred__0/i__carry__8_n_3\,
      CYINIT => '0',
      DI(3) => \v1__6_n_67\,
      DI(2) => \v1__6_n_68\,
      DI(1) => \v1__6_n_69\,
      DI(0) => \v1__6_n_70\,
      O(3) => \v1_inferred__0/i__carry__8_n_4\,
      O(2) => \v1_inferred__0/i__carry__8_n_5\,
      O(1) => \v1_inferred__0/i__carry__8_n_6\,
      O(0) => \v1_inferred__0/i__carry__8_n_7\,
      S(3) => \i__carry__8_i_1_n_0\,
      S(2) => \i__carry__8_i_2_n_0\,
      S(1) => \i__carry__8_i_3_n_0\,
      S(0) => \i__carry__8_i_4_n_0\
    );
\v1_inferred__0/i__carry__9\: unisim.vcomponents.CARRY4
     port map (
      CI => \v1_inferred__0/i__carry__8_n_0\,
      CO(3) => \v1_inferred__0/i__carry__9_n_0\,
      CO(2) => \v1_inferred__0/i__carry__9_n_1\,
      CO(1) => \v1_inferred__0/i__carry__9_n_2\,
      CO(0) => \v1_inferred__0/i__carry__9_n_3\,
      CYINIT => '0',
      DI(3) => \v1__6_n_63\,
      DI(2) => \v1__6_n_64\,
      DI(1) => \v1__6_n_65\,
      DI(0) => \v1__6_n_66\,
      O(3) => \v1_inferred__0/i__carry__9_n_4\,
      O(2) => \v1_inferred__0/i__carry__9_n_5\,
      O(1) => \v1_inferred__0/i__carry__9_n_6\,
      O(0) => \v1_inferred__0/i__carry__9_n_7\,
      S(3) => \i__carry__9_i_1_n_0\,
      S(2) => \i__carry__9_i_2_n_0\,
      S(1) => \i__carry__9_i_3_n_0\,
      S(0) => \i__carry__9_i_4_n_0\
    );
\w_in[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF02"
    )
        port map (
      I0 => p_2_in6_in,
      I1 => p_0_in9_in,
      I2 => p_0_in8_in,
      I3 => \fb_term_r_reg_n_0_[0]\,
      O => sat_add320_return(0)
    );
\w_in[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF02"
    )
        port map (
      I0 => p_2_in6_in,
      I1 => p_0_in9_in,
      I2 => p_0_in8_in,
      I3 => \sat_add3202_carry__0_n_7\,
      O => sat_add320_return(10)
    );
\w_in[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF02"
    )
        port map (
      I0 => p_2_in6_in,
      I1 => p_0_in9_in,
      I2 => p_0_in8_in,
      I3 => \sat_add3202_carry__0_n_6\,
      O => sat_add320_return(11)
    );
\w_in[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF02"
    )
        port map (
      I0 => p_2_in6_in,
      I1 => p_0_in9_in,
      I2 => p_0_in8_in,
      I3 => \sat_add3202_carry__0_n_5\,
      O => sat_add320_return(12)
    );
\w_in[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF02"
    )
        port map (
      I0 => p_2_in6_in,
      I1 => p_0_in9_in,
      I2 => p_0_in8_in,
      I3 => \sat_add3202_carry__0_n_4\,
      O => sat_add320_return(13)
    );
\w_in[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF02"
    )
        port map (
      I0 => p_2_in6_in,
      I1 => p_0_in9_in,
      I2 => p_0_in8_in,
      I3 => \sat_add3202_carry__1_n_7\,
      O => sat_add320_return(14)
    );
\w_in[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF02"
    )
        port map (
      I0 => p_2_in6_in,
      I1 => p_0_in9_in,
      I2 => p_0_in8_in,
      I3 => \sat_add3202_carry__1_n_6\,
      O => sat_add320_return(15)
    );
\w_in[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF02"
    )
        port map (
      I0 => p_2_in6_in,
      I1 => p_0_in9_in,
      I2 => p_0_in8_in,
      I3 => \sat_add3202_carry__1_n_5\,
      O => sat_add320_return(16)
    );
\w_in[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF02"
    )
        port map (
      I0 => p_2_in6_in,
      I1 => p_0_in9_in,
      I2 => p_0_in8_in,
      I3 => \sat_add3202_carry__1_n_4\,
      O => sat_add320_return(17)
    );
\w_in[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF02"
    )
        port map (
      I0 => p_2_in6_in,
      I1 => p_0_in9_in,
      I2 => p_0_in8_in,
      I3 => \sat_add3202_carry__2_n_7\,
      O => sat_add320_return(18)
    );
\w_in[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF02"
    )
        port map (
      I0 => p_2_in6_in,
      I1 => p_0_in9_in,
      I2 => p_0_in8_in,
      I3 => \sat_add3202_carry__2_n_6\,
      O => sat_add320_return(19)
    );
\w_in[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF02"
    )
        port map (
      I0 => p_2_in6_in,
      I1 => p_0_in9_in,
      I2 => p_0_in8_in,
      I3 => \fb_term_r_reg_n_0_[1]\,
      O => sat_add320_return(1)
    );
\w_in[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF02"
    )
        port map (
      I0 => p_2_in6_in,
      I1 => p_0_in9_in,
      I2 => p_0_in8_in,
      I3 => \sat_add3202_carry__2_n_5\,
      O => sat_add320_return(20)
    );
\w_in[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF02"
    )
        port map (
      I0 => p_2_in6_in,
      I1 => p_0_in9_in,
      I2 => p_0_in8_in,
      I3 => \sat_add3202_carry__2_n_4\,
      O => sat_add320_return(21)
    );
\w_in[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF02"
    )
        port map (
      I0 => p_2_in6_in,
      I1 => p_0_in9_in,
      I2 => p_0_in8_in,
      I3 => \sat_add3202_carry__3_n_7\,
      O => sat_add320_return(22)
    );
\w_in[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF02"
    )
        port map (
      I0 => p_2_in6_in,
      I1 => p_0_in9_in,
      I2 => p_0_in8_in,
      I3 => \sat_add3202_carry__3_n_6\,
      O => sat_add320_return(23)
    );
\w_in[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF02"
    )
        port map (
      I0 => p_2_in6_in,
      I1 => p_0_in9_in,
      I2 => p_0_in8_in,
      I3 => \sat_add3202_carry__3_n_5\,
      O => sat_add320_return(24)
    );
\w_in[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF02"
    )
        port map (
      I0 => p_2_in6_in,
      I1 => p_0_in9_in,
      I2 => p_0_in8_in,
      I3 => \sat_add3202_carry__3_n_4\,
      O => sat_add320_return(25)
    );
\w_in[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF02"
    )
        port map (
      I0 => p_2_in6_in,
      I1 => p_0_in9_in,
      I2 => p_0_in8_in,
      I3 => \sat_add3202_carry__4_n_7\,
      O => sat_add320_return(26)
    );
\w_in[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF02"
    )
        port map (
      I0 => p_2_in6_in,
      I1 => p_0_in9_in,
      I2 => p_0_in8_in,
      I3 => \sat_add3202_carry__4_n_6\,
      O => sat_add320_return(27)
    );
\w_in[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF02"
    )
        port map (
      I0 => p_2_in6_in,
      I1 => p_0_in9_in,
      I2 => p_0_in8_in,
      I3 => \sat_add3202_carry__4_n_5\,
      O => sat_add320_return(28)
    );
\w_in[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF02"
    )
        port map (
      I0 => p_2_in6_in,
      I1 => p_0_in9_in,
      I2 => p_0_in8_in,
      I3 => \sat_add3202_carry__4_n_4\,
      O => sat_add320_return(29)
    );
\w_in[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF02"
    )
        port map (
      I0 => p_2_in6_in,
      I1 => p_0_in9_in,
      I2 => p_0_in8_in,
      I3 => \fb_term_r_reg_n_0_[2]\,
      O => sat_add320_return(2)
    );
\w_in[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF02"
    )
        port map (
      I0 => p_2_in6_in,
      I1 => p_0_in9_in,
      I2 => p_0_in8_in,
      I3 => \sat_add3202_carry__5_n_7\,
      O => sat_add320_return(30)
    );
\w_in[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => p_0_in9_in,
      I2 => p_2_in6_in,
      O => sat_add320_return(31)
    );
\w_in[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF02"
    )
        port map (
      I0 => p_2_in6_in,
      I1 => p_0_in9_in,
      I2 => p_0_in8_in,
      I3 => \fb_term_r_reg_n_0_[3]\,
      O => sat_add320_return(3)
    );
\w_in[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF02"
    )
        port map (
      I0 => p_2_in6_in,
      I1 => p_0_in9_in,
      I2 => p_0_in8_in,
      I3 => \fb_term_r_reg_n_0_[4]\,
      O => sat_add320_return(4)
    );
\w_in[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF02"
    )
        port map (
      I0 => p_2_in6_in,
      I1 => p_0_in9_in,
      I2 => p_0_in8_in,
      I3 => \fb_term_r_reg_n_0_[5]\,
      O => sat_add320_return(5)
    );
\w_in[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF02"
    )
        port map (
      I0 => p_2_in6_in,
      I1 => p_0_in9_in,
      I2 => p_0_in8_in,
      I3 => sat_add3202_carry_n_7,
      O => sat_add320_return(6)
    );
\w_in[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF02"
    )
        port map (
      I0 => p_2_in6_in,
      I1 => p_0_in9_in,
      I2 => p_0_in8_in,
      I3 => sat_add3202_carry_n_6,
      O => sat_add320_return(7)
    );
\w_in[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF02"
    )
        port map (
      I0 => p_2_in6_in,
      I1 => p_0_in9_in,
      I2 => p_0_in8_in,
      I3 => sat_add3202_carry_n_5,
      O => sat_add320_return(8)
    );
\w_in[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF02"
    )
        port map (
      I0 => p_2_in6_in,
      I1 => p_0_in9_in,
      I2 => p_0_in8_in,
      I3 => sat_add3202_carry_n_4,
      O => sat_add320_return(9)
    );
\w_in_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(0),
      Q => \w_in_reg_n_0_[0]\,
      R => \^p_0_in\
    );
\w_in_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(10),
      Q => \w_in_reg_n_0_[10]\,
      R => \^p_0_in\
    );
\w_in_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(11),
      Q => \w_in_reg_n_0_[11]\,
      R => \^p_0_in\
    );
\w_in_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(12),
      Q => \w_in_reg_n_0_[12]\,
      R => \^p_0_in\
    );
\w_in_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(13),
      Q => \w_in_reg_n_0_[13]\,
      R => \^p_0_in\
    );
\w_in_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(14),
      Q => \w_in_reg_n_0_[14]\,
      R => \^p_0_in\
    );
\w_in_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(15),
      Q => \w_in_reg_n_0_[15]\,
      R => \^p_0_in\
    );
\w_in_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(16),
      Q => \w_in_reg_n_0_[16]\,
      R => \^p_0_in\
    );
\w_in_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(17),
      Q => \w_in_reg_n_0_[17]\,
      R => \^p_0_in\
    );
\w_in_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(18),
      Q => \w_in_reg_n_0_[18]\,
      R => \^p_0_in\
    );
\w_in_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(19),
      Q => \w_in_reg_n_0_[19]\,
      R => \^p_0_in\
    );
\w_in_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(1),
      Q => \w_in_reg_n_0_[1]\,
      R => \^p_0_in\
    );
\w_in_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(20),
      Q => \w_in_reg_n_0_[20]\,
      R => \^p_0_in\
    );
\w_in_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(21),
      Q => \w_in_reg_n_0_[21]\,
      R => \^p_0_in\
    );
\w_in_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(22),
      Q => \w_in_reg_n_0_[22]\,
      R => \^p_0_in\
    );
\w_in_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(23),
      Q => \w_in_reg_n_0_[23]\,
      R => \^p_0_in\
    );
\w_in_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(24),
      Q => \w_in_reg_n_0_[24]\,
      R => \^p_0_in\
    );
\w_in_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(25),
      Q => \w_in_reg_n_0_[25]\,
      R => \^p_0_in\
    );
\w_in_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(26),
      Q => \w_in_reg_n_0_[26]\,
      R => \^p_0_in\
    );
\w_in_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(27),
      Q => \w_in_reg_n_0_[27]\,
      R => \^p_0_in\
    );
\w_in_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(28),
      Q => \w_in_reg_n_0_[28]\,
      R => \^p_0_in\
    );
\w_in_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(29),
      Q => \w_in_reg_n_0_[29]\,
      R => \^p_0_in\
    );
\w_in_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(2),
      Q => \w_in_reg_n_0_[2]\,
      R => \^p_0_in\
    );
\w_in_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(30),
      Q => \w_in_reg_n_0_[30]\,
      R => \^p_0_in\
    );
\w_in_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(31),
      Q => \w_in_reg_n_0_[31]\,
      R => \^p_0_in\
    );
\w_in_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(3),
      Q => \w_in_reg_n_0_[3]\,
      R => \^p_0_in\
    );
\w_in_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(4),
      Q => \w_in_reg_n_0_[4]\,
      R => \^p_0_in\
    );
\w_in_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(5),
      Q => \w_in_reg_n_0_[5]\,
      R => \^p_0_in\
    );
\w_in_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(6),
      Q => \w_in_reg_n_0_[6]\,
      R => \^p_0_in\
    );
\w_in_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(7),
      Q => \w_in_reg_n_0_[7]\,
      R => \^p_0_in\
    );
\w_in_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(8),
      Q => \w_in_reg_n_0_[8]\,
      R => \^p_0_in\
    );
\w_in_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => out_buf_valid1_out,
      D => sat_add320_return(9),
      Q => \w_in_reg_n_0_[9]\,
      R => \^p_0_in\
    );
\wet_term_r[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_inferred__0/i__carry__7_n_6\,
      I1 => \v0_inferred__0/i__carry__7_n_5\,
      I2 => \v0_inferred__0/i__carry__2_n_7\,
      O => sat32(10)
    );
\wet_term_r[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_inferred__0/i__carry__7_n_6\,
      I1 => \v0_inferred__0/i__carry__7_n_5\,
      I2 => \v0_inferred__0/i__carry__2_n_6\,
      O => sat32(11)
    );
\wet_term_r[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_inferred__0/i__carry__7_n_6\,
      I1 => \v0_inferred__0/i__carry__7_n_5\,
      I2 => \v0_inferred__0/i__carry__2_n_5\,
      O => sat32(12)
    );
\wet_term_r[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_inferred__0/i__carry__7_n_6\,
      I1 => \v0_inferred__0/i__carry__7_n_5\,
      I2 => \v0_inferred__0/i__carry__2_n_4\,
      O => sat32(13)
    );
\wet_term_r[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_inferred__0/i__carry__7_n_6\,
      I1 => \v0_inferred__0/i__carry__7_n_5\,
      I2 => \v0_inferred__0/i__carry__3_n_7\,
      O => sat32(14)
    );
\wet_term_r[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_inferred__0/i__carry__7_n_6\,
      I1 => \v0_inferred__0/i__carry__7_n_5\,
      I2 => \v0_inferred__0/i__carry__3_n_6\,
      O => sat32(15)
    );
\wet_term_r[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_inferred__0/i__carry__7_n_6\,
      I1 => \v0_inferred__0/i__carry__7_n_5\,
      I2 => \v0_inferred__0/i__carry__3_n_5\,
      O => sat32(16)
    );
\wet_term_r[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_inferred__0/i__carry__7_n_6\,
      I1 => \v0_inferred__0/i__carry__7_n_5\,
      I2 => \v0_inferred__0/i__carry__3_n_4\,
      O => sat32(17)
    );
\wet_term_r[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_inferred__0/i__carry__7_n_6\,
      I1 => \v0_inferred__0/i__carry__7_n_5\,
      I2 => \v0_inferred__0/i__carry__4_n_7\,
      O => sat32(18)
    );
\wet_term_r[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_inferred__0/i__carry__7_n_6\,
      I1 => \v0_inferred__0/i__carry__7_n_5\,
      I2 => \v0_inferred__0/i__carry__4_n_6\,
      O => sat32(19)
    );
\wet_term_r[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_inferred__0/i__carry__7_n_6\,
      I1 => \v0_inferred__0/i__carry__7_n_5\,
      I2 => \v0_inferred__0/i__carry__4_n_5\,
      O => sat32(20)
    );
\wet_term_r[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_inferred__0/i__carry__7_n_6\,
      I1 => \v0_inferred__0/i__carry__7_n_5\,
      I2 => \v0_inferred__0/i__carry__4_n_4\,
      O => sat32(21)
    );
\wet_term_r[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_inferred__0/i__carry__7_n_6\,
      I1 => \v0_inferred__0/i__carry__7_n_5\,
      I2 => \v0_inferred__0/i__carry__5_n_7\,
      O => sat32(22)
    );
\wet_term_r[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_inferred__0/i__carry__7_n_6\,
      I1 => \v0_inferred__0/i__carry__7_n_5\,
      I2 => \v0_inferred__0/i__carry__5_n_6\,
      O => sat32(23)
    );
\wet_term_r[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_inferred__0/i__carry__7_n_6\,
      I1 => \v0_inferred__0/i__carry__7_n_5\,
      I2 => \v0_inferred__0/i__carry__5_n_5\,
      O => sat32(24)
    );
\wet_term_r[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_inferred__0/i__carry__7_n_6\,
      I1 => \v0_inferred__0/i__carry__7_n_5\,
      I2 => \v0_inferred__0/i__carry__5_n_4\,
      O => sat32(25)
    );
\wet_term_r[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_inferred__0/i__carry__7_n_6\,
      I1 => \v0_inferred__0/i__carry__7_n_5\,
      I2 => \v0_inferred__0/i__carry__6_n_7\,
      O => sat32(26)
    );
\wet_term_r[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_inferred__0/i__carry__7_n_6\,
      I1 => \v0_inferred__0/i__carry__7_n_5\,
      I2 => \v0_inferred__0/i__carry__6_n_6\,
      O => sat32(27)
    );
\wet_term_r[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_inferred__0/i__carry__7_n_6\,
      I1 => \v0_inferred__0/i__carry__7_n_5\,
      I2 => \v0_inferred__0/i__carry__6_n_5\,
      O => sat32(28)
    );
\wet_term_r[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_inferred__0/i__carry__7_n_6\,
      I1 => \v0_inferred__0/i__carry__7_n_5\,
      I2 => \v0_inferred__0/i__carry__6_n_4\,
      O => sat32(29)
    );
\wet_term_r[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_inferred__0/i__carry__7_n_6\,
      I1 => \v0_inferred__0/i__carry__7_n_5\,
      I2 => \v0_inferred__0/i__carry__7_n_7\,
      O => sat32(30)
    );
\wet_term_r[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v0_inferred__0/i__carry__7_n_5\,
      O => sat32(31)
    );
\wet_term_r[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_inferred__0/i__carry__7_n_6\,
      I1 => \v0_inferred__0/i__carry__7_n_5\,
      I2 => \v0_inferred__0/i__carry__1_n_7\,
      O => sat32(6)
    );
\wet_term_r[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_inferred__0/i__carry__7_n_6\,
      I1 => \v0_inferred__0/i__carry__7_n_5\,
      I2 => \v0_inferred__0/i__carry__1_n_6\,
      O => sat32(7)
    );
\wet_term_r[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_inferred__0/i__carry__7_n_6\,
      I1 => \v0_inferred__0/i__carry__7_n_5\,
      I2 => \v0_inferred__0/i__carry__1_n_5\,
      O => sat32(8)
    );
\wet_term_r[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \v0_inferred__0/i__carry__7_n_6\,
      I1 => \v0_inferred__0/i__carry__7_n_5\,
      I2 => \v0_inferred__0/i__carry__1_n_4\,
      O => sat32(9)
    );
\wet_term_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => sat32(10),
      Q => \wet_term_r__0\(10),
      R => \^p_0_in\
    );
\wet_term_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => sat32(11),
      Q => \wet_term_r__0\(11),
      R => \^p_0_in\
    );
\wet_term_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => sat32(12),
      Q => \wet_term_r__0\(12),
      R => \^p_0_in\
    );
\wet_term_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => sat32(13),
      Q => \wet_term_r__0\(13),
      R => \^p_0_in\
    );
\wet_term_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => sat32(14),
      Q => \wet_term_r__0\(14),
      R => \^p_0_in\
    );
\wet_term_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => sat32(15),
      Q => \wet_term_r__0\(15),
      R => \^p_0_in\
    );
\wet_term_r_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => sat32(16),
      Q => \wet_term_r__0\(16),
      R => \^p_0_in\
    );
\wet_term_r_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => sat32(17),
      Q => \wet_term_r__0\(17),
      R => \^p_0_in\
    );
\wet_term_r_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => sat32(18),
      Q => \wet_term_r__0\(18),
      R => \^p_0_in\
    );
\wet_term_r_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => sat32(19),
      Q => \wet_term_r__0\(19),
      R => \^p_0_in\
    );
\wet_term_r_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => sat32(20),
      Q => \wet_term_r__0\(20),
      R => \^p_0_in\
    );
\wet_term_r_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => sat32(21),
      Q => \wet_term_r__0\(21),
      R => \^p_0_in\
    );
\wet_term_r_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => sat32(22),
      Q => \wet_term_r__0\(22),
      R => \^p_0_in\
    );
\wet_term_r_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => sat32(23),
      Q => \wet_term_r__0\(23),
      R => \^p_0_in\
    );
\wet_term_r_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => sat32(24),
      Q => \wet_term_r__0\(24),
      R => \^p_0_in\
    );
\wet_term_r_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => sat32(25),
      Q => \wet_term_r__0\(25),
      R => \^p_0_in\
    );
\wet_term_r_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => sat32(26),
      Q => \wet_term_r__0\(26),
      R => \^p_0_in\
    );
\wet_term_r_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => sat32(27),
      Q => \wet_term_r__0\(27),
      R => \^p_0_in\
    );
\wet_term_r_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => sat32(28),
      Q => \wet_term_r__0\(28),
      R => \^p_0_in\
    );
\wet_term_r_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => sat32(29),
      Q => \wet_term_r__0\(29),
      R => \^p_0_in\
    );
\wet_term_r_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => sat32(30),
      Q => \wet_term_r__0\(30),
      R => \^p_0_in\
    );
\wet_term_r_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => sat32(31),
      Q => p_1_in,
      R => \^p_0_in\
    );
\wet_term_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => sat32(6),
      Q => \wet_term_r__0\(6),
      R => \^p_0_in\
    );
\wet_term_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => sat32(7),
      Q => \wet_term_r__0\(7),
      R => \^p_0_in\
    );
\wet_term_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => sat32(8),
      Q => \wet_term_r__0\(8),
      R => \^p_0_in\
    );
\wet_term_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_23,
      D => sat32(9),
      Q => \wet_term_r__0\(9),
      R => \^p_0_in\
    );
\x_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_21,
      D => D(4),
      Q => \x_reg__0\(10),
      R => \^p_0_in\
    );
\x_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_21,
      D => D(5),
      Q => \x_reg__0\(11),
      R => \^p_0_in\
    );
\x_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_21,
      D => D(6),
      Q => \x_reg__0\(12),
      R => \^p_0_in\
    );
\x_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_21,
      D => D(7),
      Q => \x_reg__0\(13),
      R => \^p_0_in\
    );
\x_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_21,
      D => D(8),
      Q => \x_reg__0\(14),
      R => \^p_0_in\
    );
\x_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_21,
      D => D(9),
      Q => \x_reg__0\(15),
      R => \^p_0_in\
    );
\x_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_21,
      D => D(10),
      Q => \x_reg__0\(16),
      R => \^p_0_in\
    );
\x_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_21,
      D => D(11),
      Q => \x_reg__0\(17),
      R => \^p_0_in\
    );
\x_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_21,
      D => D(12),
      Q => \x_reg__0\(18),
      R => \^p_0_in\
    );
\x_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_21,
      D => D(13),
      Q => \x_reg__0\(19),
      R => \^p_0_in\
    );
\x_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_21,
      D => D(14),
      Q => \x_reg__0\(20),
      R => \^p_0_in\
    );
\x_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_21,
      D => D(15),
      Q => \x_reg__0\(21),
      R => \^p_0_in\
    );
\x_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_21,
      D => D(16),
      Q => \x_reg__0\(22),
      R => \^p_0_in\
    );
\x_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_21,
      D => D(17),
      Q => \x_reg__0\(23),
      R => \^p_0_in\
    );
\x_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_21,
      D => D(18),
      Q => \x_reg__0\(24),
      R => \^p_0_in\
    );
\x_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_21,
      D => D(19),
      Q => \x_reg__0\(25),
      R => \^p_0_in\
    );
\x_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_21,
      D => D(20),
      Q => \x_reg__0\(26),
      R => \^p_0_in\
    );
\x_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_21,
      D => D(21),
      Q => \x_reg__0\(27),
      R => \^p_0_in\
    );
\x_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_21,
      D => D(22),
      Q => \x_reg__0\(28),
      R => \^p_0_in\
    );
\x_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_21,
      D => D(23),
      Q => p_0_in9_in,
      R => \^p_0_in\
    );
\x_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_21,
      D => D(0),
      Q => \x_reg__0\(6),
      R => \^p_0_in\
    );
\x_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_21,
      D => D(1),
      Q => \x_reg__0\(7),
      R => \^p_0_in\
    );
\x_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_21,
      D => D(2),
      Q => \x_reg__0\(8),
      R => \^p_0_in\
    );
\x_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => u_dl_n_21,
      D => D(3),
      Q => \x_reg__0\(9),
      R => \^p_0_in\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fx_system_wrapper_0_1_fx_core is
  port (
    enc_tick : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    bram_rd_en : out STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 0 to 0 );
    wptr_latched : out STD_LOGIC;
    \term_r_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    frac_d_valid : out STD_LOGIC;
    clear_req : out STD_LOGIC;
    state : out STD_LOGIC_VECTOR ( 1 downto 0 );
    state_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    state_1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    state_2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    state_3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    state_4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    w_done_reg : out STD_LOGIC;
    aw_done : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    \in_state_reg[0]\ : out STD_LOGIC;
    d_valid : out STD_LOGIC;
    inflight_reg : out STD_LOGIC;
    \state_reg[0]\ : out STD_LOGIC;
    \state_reg[0]_0\ : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \a_sync_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \b_sync_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \a_sync_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \b_sync_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \a_sync_reg[1]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \b_sync_reg[1]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \a_sync_reg[1]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \b_sync_reg[1]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \a_sync_reg[1]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \b_sync_reg[1]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \a_sync_reg[1]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 25 downto 0 );
    state_5 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \cnt_b__0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \cnt_a__0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \cnt_b__0_6\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \cnt_a__0_7\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \cnt_b__0_8\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \cnt_a__0_9\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \cnt_b__0_10\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \cnt_a__0_11\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \cnt_b__0_12\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \cnt_a__0_13\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \cnt_b__0_14\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \cnt_a__0_15\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \FSM_sequential_state_reg[2]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[1]\ : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    clk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clean_b_reg : in STD_LOGIC;
    clean_a_reg : in STD_LOGIC;
    clean_b_reg_0 : in STD_LOGIC;
    clean_a_reg_0 : in STD_LOGIC;
    clean_b_reg_1 : in STD_LOGIC;
    clean_a_reg_1 : in STD_LOGIC;
    clean_b_reg_2 : in STD_LOGIC;
    clean_a_reg_2 : in STD_LOGIC;
    clean_b_reg_3 : in STD_LOGIC;
    clean_a_reg_3 : in STD_LOGIC;
    clean_b_reg_4 : in STD_LOGIC;
    clean_a_reg_4 : in STD_LOGIC;
    w_done_reg_0 : in STD_LOGIC;
    aw_done_reg : in STD_LOGIC;
    \in_state_reg[0]_0\ : in STD_LOGIC;
    rd_en_reg : in STD_LOGIC;
    \term_r_reg[0]_0\ : in STD_LOGIC;
    d_reg_valid_reg : in STD_LOGIC;
    frac_start_reg : in STD_LOGIC;
    rd_en_reg_rep : in STD_LOGIC;
    bram_wr_en_reg_rep : in STD_LOGIC;
    \bram_wr_en_reg_rep__0\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__1\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__2\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__3\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__4\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__5\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__6\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__7\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__8\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__9\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__10\ : in STD_LOGIC;
    \bram_wr_en_reg_rep__11\ : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    rst_n : in STD_LOGIC;
    enc_b : in STD_LOGIC_VECTOR ( 5 downto 0 );
    enc_a : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axis_tready : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    fx_enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_fx_system_wrapper_0_1_fx_core : entity is "fx_core";
end design_1_fx_system_wrapper_0_1_fx_core;

architecture STRUCTURE of design_1_fx_system_wrapper_0_1_fx_core is
  signal \enc_count[0]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \enc_count[1]_1\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \enc_count[2]_2\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \enc_count[4]_4\ : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal \enc_count[5]_5\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \^enc_tick\ : STD_LOGIC;
  signal \g_enc[3].u_enc_n_10\ : STD_LOGIC;
  signal \g_enc[3].u_enc_n_13\ : STD_LOGIC;
  signal \g_enc[3].u_enc_n_14\ : STD_LOGIC;
  signal \g_enc[3].u_enc_n_15\ : STD_LOGIC;
  signal \g_enc[3].u_enc_n_16\ : STD_LOGIC;
  signal \g_enc[3].u_enc_n_17\ : STD_LOGIC;
  signal \g_enc[3].u_enc_n_18\ : STD_LOGIC;
  signal \g_enc[3].u_enc_n_19\ : STD_LOGIC;
  signal \g_enc[3].u_enc_n_2\ : STD_LOGIC;
  signal \g_enc[3].u_enc_n_20\ : STD_LOGIC;
  signal \g_enc[3].u_enc_n_21\ : STD_LOGIC;
  signal \g_enc[3].u_enc_n_22\ : STD_LOGIC;
  signal \g_enc[3].u_enc_n_23\ : STD_LOGIC;
  signal \g_enc[3].u_enc_n_24\ : STD_LOGIC;
  signal \g_enc[3].u_enc_n_3\ : STD_LOGIC;
  signal \g_enc[3].u_enc_n_4\ : STD_LOGIC;
  signal \g_enc[3].u_enc_n_5\ : STD_LOGIC;
  signal \g_enc[3].u_enc_n_6\ : STD_LOGIC;
  signal \g_enc[3].u_enc_n_7\ : STD_LOGIC;
  signal \g_enc[3].u_enc_n_8\ : STD_LOGIC;
  signal \g_enc[3].u_enc_n_9\ : STD_LOGIC;
  signal \g_enc[4].u_enc_n_10\ : STD_LOGIC;
  signal \g_enc[4].u_enc_n_11\ : STD_LOGIC;
  signal \g_enc[4].u_enc_n_12\ : STD_LOGIC;
  signal \g_enc[4].u_enc_n_13\ : STD_LOGIC;
  signal \g_enc[4].u_enc_n_14\ : STD_LOGIC;
  signal \g_enc[4].u_enc_n_15\ : STD_LOGIC;
  signal \g_enc[4].u_enc_n_16\ : STD_LOGIC;
  signal \g_enc[4].u_enc_n_17\ : STD_LOGIC;
  signal \g_enc[4].u_enc_n_6\ : STD_LOGIC;
  signal \g_enc[4].u_enc_n_7\ : STD_LOGIC;
  signal \g_enc[4].u_enc_n_8\ : STD_LOGIC;
  signal \g_enc[4].u_enc_n_9\ : STD_LOGIC;
  signal \g_enc[5].u_enc_n_16\ : STD_LOGIC;
  signal \g_enc[5].u_enc_n_28\ : STD_LOGIC;
  signal \g_enc[5].u_enc_n_29\ : STD_LOGIC;
  signal \g_enc[5].u_enc_n_30\ : STD_LOGIC;
  signal \g_enc[5].u_enc_n_31\ : STD_LOGIC;
  signal inflight0 : STD_LOGIC;
  signal mono_data : STD_LOGIC_VECTOR ( 31 downto 6 );
  signal mono_valid : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 30 downto 15 );
  signal reg_D_16_16 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_enable : STD_LOGIC;
  signal reg_fb_q1_31 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_wet : STD_LOGIC;
  signal reg_wet_q1_31 : STD_LOGIC_VECTOR ( 31 downto 17 );
  signal ret_data : STD_LOGIC_VECTOR ( 31 downto 6 );
  signal ret_valid : STD_LOGIC;
  signal u_delay_n_14 : STD_LOGIC;
  signal u_delay_n_17 : STD_LOGIC;
  signal u_delay_n_18 : STD_LOGIC;
  signal u_regmap_n_10 : STD_LOGIC;
  signal u_regmap_n_100 : STD_LOGIC;
  signal u_regmap_n_101 : STD_LOGIC;
  signal u_regmap_n_102 : STD_LOGIC;
  signal u_regmap_n_103 : STD_LOGIC;
  signal u_regmap_n_104 : STD_LOGIC;
  signal u_regmap_n_105 : STD_LOGIC;
  signal u_regmap_n_106 : STD_LOGIC;
  signal u_regmap_n_107 : STD_LOGIC;
  signal u_regmap_n_108 : STD_LOGIC;
  signal u_regmap_n_109 : STD_LOGIC;
  signal u_regmap_n_11 : STD_LOGIC;
  signal u_regmap_n_110 : STD_LOGIC;
  signal u_regmap_n_111 : STD_LOGIC;
  signal u_regmap_n_112 : STD_LOGIC;
  signal u_regmap_n_113 : STD_LOGIC;
  signal u_regmap_n_114 : STD_LOGIC;
  signal u_regmap_n_115 : STD_LOGIC;
  signal u_regmap_n_116 : STD_LOGIC;
  signal u_regmap_n_117 : STD_LOGIC;
  signal u_regmap_n_118 : STD_LOGIC;
  signal u_regmap_n_119 : STD_LOGIC;
  signal u_regmap_n_12 : STD_LOGIC;
  signal u_regmap_n_120 : STD_LOGIC;
  signal u_regmap_n_121 : STD_LOGIC;
  signal u_regmap_n_122 : STD_LOGIC;
  signal u_regmap_n_123 : STD_LOGIC;
  signal u_regmap_n_13 : STD_LOGIC;
  signal u_regmap_n_8 : STD_LOGIC;
  signal u_regmap_n_93 : STD_LOGIC;
  signal u_regmap_n_94 : STD_LOGIC;
  signal u_regmap_n_95 : STD_LOGIC;
  signal u_regmap_n_96 : STD_LOGIC;
  signal u_regmap_n_97 : STD_LOGIC;
  signal u_regmap_n_98 : STD_LOGIC;
  signal u_regmap_n_99 : STD_LOGIC;
begin
  enc_tick <= \^enc_tick\;
\g_enc[0].u_enc\: entity work.design_1_fx_system_wrapper_0_1_quad_decoder
     port map (
      D(1 downto 0) => state(1 downto 0),
      Q(0) => Q(0),
      \a_sync_reg[1]_0\(0) => \a_sync_reg[1]\(0),
      clean_a_reg_0 => clean_a_reg,
      clean_b_reg_0 => clean_b_reg,
      clk => clk,
      \cnt_a__0\(2 downto 0) => \cnt_a__0\(2 downto 0),
      \cnt_a_reg[0]_0\ => \^enc_tick\,
      \cnt_b__0\(2 downto 0) => \cnt_b__0\(2 downto 0),
      enc_a(0) => enc_a(0),
      enc_b(0) => enc_b(0),
      \enc_count[0]_0\(15 downto 0) => \enc_count[0]_0\(15 downto 0),
      p_0_in => p_0_in,
      rst_n => rst_n
    );
\g_enc[1].u_enc\: entity work.design_1_fx_system_wrapper_0_1_quad_decoder_0
     port map (
      D(1 downto 0) => state_0(1 downto 0),
      Q(0) => \b_sync_reg[1]\(0),
      \a_sync_reg[1]_0\(0) => \a_sync_reg[1]_0\(0),
      clean_a_reg_0 => clean_a_reg_0,
      clean_b_reg_0 => clean_b_reg_0,
      clk => clk,
      \cnt_a__0_7\(2 downto 0) => \cnt_a__0_7\(2 downto 0),
      \cnt_a_reg[0]_0\ => \^enc_tick\,
      \cnt_b__0_6\(2 downto 0) => \cnt_b__0_6\(2 downto 0),
      enc_a(0) => enc_a(1),
      enc_b(0) => enc_b(1),
      \enc_count[1]_1\(15 downto 0) => \enc_count[1]_1\(15 downto 0),
      p_0_in => p_0_in,
      rst_n => rst_n
    );
\g_enc[2].u_enc\: entity work.design_1_fx_system_wrapper_0_1_quad_decoder_1
     port map (
      D(1 downto 0) => state_1(1 downto 0),
      Q(0) => \b_sync_reg[1]_0\(0),
      \a_sync_reg[1]_0\(0) => \a_sync_reg[1]_1\(0),
      clean_a_reg_0 => clean_a_reg_1,
      clean_b_reg_0 => clean_b_reg_1,
      clk => clk,
      \cnt_a__0_9\(2 downto 0) => \cnt_a__0_9\(2 downto 0),
      \cnt_a_reg[0]_0\ => \^enc_tick\,
      \cnt_b__0_8\(2 downto 0) => \cnt_b__0_8\(2 downto 0),
      enc_a(0) => enc_a(2),
      enc_b(0) => enc_b(2),
      \enc_count[2]_2\(15 downto 0) => \enc_count[2]_2\(15 downto 0),
      p_0_in => p_0_in,
      rst_n => rst_n
    );
\g_enc[3].u_enc\: entity work.design_1_fx_system_wrapper_0_1_quad_decoder_2
     port map (
      D(1 downto 0) => state_2(1 downto 0),
      Q(0) => \b_sync_reg[1]_1\(0),
      \a_sync_reg[1]_0\(0) => \a_sync_reg[1]_2\(0),
      clean_a_reg_0 => clean_a_reg_2,
      clean_b_reg_0 => clean_b_reg_2,
      clk => clk,
      \cnt_a__0_11\(2 downto 0) => \cnt_a__0_11\(2 downto 0),
      \cnt_a_reg[0]_0\ => \^enc_tick\,
      \cnt_b__0_10\(2 downto 0) => \cnt_b__0_10\(2 downto 0),
      \count_reg[0]_0\ => \g_enc[3].u_enc_n_13\,
      \count_reg[10]_0\ => \g_enc[3].u_enc_n_17\,
      \count_reg[11]_0\ => \g_enc[3].u_enc_n_16\,
      \count_reg[12]_0\ => \g_enc[3].u_enc_n_15\,
      \count_reg[13]_0\ => \g_enc[3].u_enc_n_14\,
      \count_reg[15]_0\ => \g_enc[3].u_enc_n_10\,
      \count_reg[1]_0\ => \g_enc[3].u_enc_n_24\,
      \count_reg[2]_0\ => \g_enc[3].u_enc_n_23\,
      \count_reg[3]_0\ => \g_enc[3].u_enc_n_22\,
      \count_reg[5]_0\ => \g_enc[3].u_enc_n_21\,
      \count_reg[6]_0\ => \g_enc[3].u_enc_n_20\,
      \count_reg[7]_0\ => \g_enc[3].u_enc_n_19\,
      \count_reg[9]_0\ => \g_enc[3].u_enc_n_18\,
      enc_a(0) => enc_a(3),
      enc_b(0) => enc_b(3),
      \enc_count[0]_0\(15 downto 0) => \enc_count[0]_0\(15 downto 0),
      \enc_count[1]_1\(15 downto 0) => \enc_count[1]_1\(15 downto 0),
      \enc_count[2]_2\(15 downto 0) => \enc_count[2]_2\(15 downto 0),
      p_0_in => p_0_in,
      rst_n => rst_n,
      s_axi_araddr(2) => s_axi_araddr(5),
      s_axi_araddr(1 downto 0) => s_axi_araddr(1 downto 0),
      \s_axi_araddr[7]\(7) => \g_enc[3].u_enc_n_2\,
      \s_axi_araddr[7]\(6) => \g_enc[3].u_enc_n_3\,
      \s_axi_araddr[7]\(5) => \g_enc[3].u_enc_n_4\,
      \s_axi_araddr[7]\(4) => \g_enc[3].u_enc_n_5\,
      \s_axi_araddr[7]\(3) => \g_enc[3].u_enc_n_6\,
      \s_axi_araddr[7]\(2) => \g_enc[3].u_enc_n_7\,
      \s_axi_araddr[7]\(1) => \g_enc[3].u_enc_n_8\,
      \s_axi_araddr[7]\(0) => \g_enc[3].u_enc_n_9\,
      \s_axi_rdata_reg[14]\ => u_regmap_n_109,
      \s_axi_rdata_reg[14]_0\ => \g_enc[5].u_enc_n_31\,
      \s_axi_rdata_reg[17]\ => u_regmap_n_13,
      \s_axi_rdata_reg[17]_0\ => u_regmap_n_106,
      \s_axi_rdata_reg[17]_1\ => u_regmap_n_10,
      \s_axi_rdata_reg[17]_2\ => \g_enc[5].u_enc_n_16\,
      \s_axi_rdata_reg[20]\ => u_regmap_n_103,
      \s_axi_rdata_reg[22]\ => u_regmap_n_101,
      \s_axi_rdata_reg[24]\ => u_regmap_n_99,
      \s_axi_rdata_reg[29]\ => u_regmap_n_94,
      \s_axi_rdata_reg[4]\ => u_regmap_n_119,
      \s_axi_rdata_reg[4]_0\ => \g_enc[5].u_enc_n_29\,
      \s_axi_rdata_reg[8]\ => u_regmap_n_115,
      \s_axi_rdata_reg[8]_0\ => \g_enc[5].u_enc_n_30\
    );
\g_enc[4].u_enc\: entity work.design_1_fx_system_wrapper_0_1_quad_decoder_3
     port map (
      D(1 downto 0) => state_3(1 downto 0),
      Q(0) => \b_sync_reg[1]_2\(0),
      \a_sync_reg[1]_0\(0) => \a_sync_reg[1]_3\(0),
      clean_a_reg_0 => clean_a_reg_3,
      clean_b_reg_0 => clean_b_reg_3,
      clk => clk,
      \cnt_a__0_13\(2 downto 0) => \cnt_a__0_13\(2 downto 0),
      \cnt_a_reg[0]_0\ => \^enc_tick\,
      \cnt_b__0_12\(2 downto 0) => \cnt_b__0_12\(2 downto 0),
      \count_reg[15]_0\(3 downto 2) => \enc_count[4]_4\(15 downto 14),
      \count_reg[15]_0\(1) => \enc_count[4]_4\(8),
      \count_reg[15]_0\(0) => \enc_count[4]_4\(4),
      enc_a(0) => enc_a(4),
      enc_b(0) => enc_b(4),
      \enc_count[5]_5\(11 downto 7) => \enc_count[5]_5\(13 downto 9),
      \enc_count[5]_5\(6 downto 4) => \enc_count[5]_5\(7 downto 5),
      \enc_count[5]_5\(3 downto 0) => \enc_count[5]_5\(3 downto 0),
      p_0_in => p_0_in,
      rst_n => rst_n,
      s_axi_araddr(3 downto 2) => s_axi_araddr(5 downto 4),
      s_axi_araddr(1 downto 0) => s_axi_araddr(1 downto 0),
      \s_axi_araddr[7]\(11) => \g_enc[4].u_enc_n_6\,
      \s_axi_araddr[7]\(10) => \g_enc[4].u_enc_n_7\,
      \s_axi_araddr[7]\(9) => \g_enc[4].u_enc_n_8\,
      \s_axi_araddr[7]\(8) => \g_enc[4].u_enc_n_9\,
      \s_axi_araddr[7]\(7) => \g_enc[4].u_enc_n_10\,
      \s_axi_araddr[7]\(6) => \g_enc[4].u_enc_n_11\,
      \s_axi_araddr[7]\(5) => \g_enc[4].u_enc_n_12\,
      \s_axi_araddr[7]\(4) => \g_enc[4].u_enc_n_13\,
      \s_axi_araddr[7]\(3) => \g_enc[4].u_enc_n_14\,
      \s_axi_araddr[7]\(2) => \g_enc[4].u_enc_n_15\,
      \s_axi_araddr[7]\(1) => \g_enc[4].u_enc_n_16\,
      \s_axi_araddr[7]\(0) => \g_enc[4].u_enc_n_17\,
      \s_axi_rdata_reg[0]\ => u_regmap_n_10,
      \s_axi_rdata_reg[0]_0\ => \g_enc[3].u_enc_n_13\,
      \s_axi_rdata_reg[0]_1\ => u_regmap_n_13,
      \s_axi_rdata_reg[0]_2\ => u_regmap_n_123,
      \s_axi_rdata_reg[10]\ => \g_enc[3].u_enc_n_17\,
      \s_axi_rdata_reg[10]_0\ => u_regmap_n_113,
      \s_axi_rdata_reg[11]\ => \g_enc[3].u_enc_n_16\,
      \s_axi_rdata_reg[11]_0\ => u_regmap_n_112,
      \s_axi_rdata_reg[12]\ => \g_enc[3].u_enc_n_15\,
      \s_axi_rdata_reg[12]_0\ => u_regmap_n_111,
      \s_axi_rdata_reg[13]\ => \g_enc[3].u_enc_n_14\,
      \s_axi_rdata_reg[13]_0\ => u_regmap_n_110,
      \s_axi_rdata_reg[1]\ => \g_enc[3].u_enc_n_24\,
      \s_axi_rdata_reg[1]_0\ => u_regmap_n_122,
      \s_axi_rdata_reg[2]\ => \g_enc[3].u_enc_n_23\,
      \s_axi_rdata_reg[2]_0\ => u_regmap_n_121,
      \s_axi_rdata_reg[3]\ => \g_enc[3].u_enc_n_22\,
      \s_axi_rdata_reg[3]_0\ => u_regmap_n_120,
      \s_axi_rdata_reg[5]\ => \g_enc[3].u_enc_n_21\,
      \s_axi_rdata_reg[5]_0\ => u_regmap_n_118,
      \s_axi_rdata_reg[6]\ => \g_enc[3].u_enc_n_20\,
      \s_axi_rdata_reg[6]_0\ => u_regmap_n_117,
      \s_axi_rdata_reg[7]\ => \g_enc[3].u_enc_n_19\,
      \s_axi_rdata_reg[7]_0\ => u_regmap_n_116,
      \s_axi_rdata_reg[9]\ => \g_enc[3].u_enc_n_18\,
      \s_axi_rdata_reg[9]_0\ => u_regmap_n_114
    );
\g_enc[5].u_enc\: entity work.design_1_fx_system_wrapper_0_1_quad_decoder_4
     port map (
      D(1 downto 0) => state_4(1 downto 0),
      Q(0) => \b_sync_reg[1]_3\(0),
      \a_sync_reg[1]_0\(0) => \a_sync_reg[1]_4\(0),
      clean_a_reg_0 => clean_a_reg_4,
      clean_b_reg_0 => clean_b_reg_4,
      clk => clk,
      \cnt_a__0_15\(2 downto 0) => \cnt_a__0_15\(2 downto 0),
      \cnt_a_reg[0]_0\ => \^enc_tick\,
      \cnt_b__0_14\(2 downto 0) => \cnt_b__0_14\(2 downto 0),
      \count_reg[13]_0\(11 downto 7) => \enc_count[5]_5\(13 downto 9),
      \count_reg[13]_0\(6 downto 4) => \enc_count[5]_5\(7 downto 5),
      \count_reg[13]_0\(3 downto 0) => \enc_count[5]_5\(3 downto 0),
      \count_reg[14]_0\ => \g_enc[5].u_enc_n_31\,
      \count_reg[15]_0\ => \g_enc[5].u_enc_n_16\,
      \count_reg[4]_0\ => \g_enc[5].u_enc_n_29\,
      \count_reg[8]_0\ => \g_enc[5].u_enc_n_30\,
      enc_a(0) => enc_a(5),
      enc_b(0) => enc_b(5),
      p_0_in => p_0_in,
      rst_n => rst_n,
      s_axi_araddr(5 downto 0) => s_axi_araddr(5 downto 0),
      \s_axi_araddr[5]\(10) => p_1_in(30),
      \s_axi_araddr[5]\(9 downto 6) => p_1_in(28 downto 25),
      \s_axi_araddr[5]\(5) => p_1_in(23),
      \s_axi_araddr[5]\(4) => p_1_in(21),
      \s_axi_araddr[5]\(3 downto 2) => p_1_in(19 downto 18),
      \s_axi_araddr[5]\(1 downto 0) => p_1_in(16 downto 15),
      \s_axi_araddr[7]\ => \g_enc[5].u_enc_n_28\,
      \s_axi_rdata_reg[15]\ => u_regmap_n_108,
      \s_axi_rdata_reg[15]_0\ => \g_enc[3].u_enc_n_10\,
      \s_axi_rdata_reg[15]_1\ => u_regmap_n_10,
      \s_axi_rdata_reg[15]_2\ => u_regmap_n_12,
      \s_axi_rdata_reg[15]_3\ => u_regmap_n_11,
      \s_axi_rdata_reg[16]\ => u_regmap_n_107,
      \s_axi_rdata_reg[17]\(3 downto 2) => \enc_count[4]_4\(15 downto 14),
      \s_axi_rdata_reg[17]\(1) => \enc_count[4]_4\(8),
      \s_axi_rdata_reg[17]\(0) => \enc_count[4]_4\(4),
      \s_axi_rdata_reg[17]_0\ => u_regmap_n_13,
      \s_axi_rdata_reg[18]\ => u_regmap_n_105,
      \s_axi_rdata_reg[19]\ => u_regmap_n_104,
      \s_axi_rdata_reg[21]\ => u_regmap_n_102,
      \s_axi_rdata_reg[23]\ => u_regmap_n_100,
      \s_axi_rdata_reg[25]\ => u_regmap_n_98,
      \s_axi_rdata_reg[26]\ => u_regmap_n_97,
      \s_axi_rdata_reg[27]\ => u_regmap_n_96,
      \s_axi_rdata_reg[28]\ => u_regmap_n_95,
      \s_axi_rdata_reg[30]\ => u_regmap_n_93
    );
u_adapter: entity work.design_1_fx_system_wrapper_0_1_fx_axis_mono_adapter
     port map (
      Q(25 downto 0) => ret_data(31 downto 6),
      clk => clk,
      \in_data_reg[31]_0\(23) => mono_data(31),
      \in_data_reg[31]_0\(22 downto 0) => mono_data(28 downto 6),
      \in_state_reg[0]_0\ => \in_state_reg[0]\,
      \in_state_reg[0]_1\ => \in_state_reg[0]_0\,
      inflight0 => inflight0,
      inflight_reg_0 => inflight_reg,
      m_axis_tdata(25 downto 0) => m_axis_tdata(25 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      mono_valid => mono_valid,
      p_0_in => p_0_in,
      ret_valid => ret_valid,
      rst_n => rst_n,
      s_axis_tdata(23 downto 0) => s_axis_tdata(23 downto 0),
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tready => u_delay_n_18,
      s_axis_tready_0 => u_delay_n_14,
      s_axis_tready_1 => u_delay_n_17,
      s_axis_tvalid => s_axis_tvalid
    );
u_delay: entity work.design_1_fx_system_wrapper_0_1_fx_delay_simple
     port map (
      D(23) => mono_data(31),
      D(22 downto 0) => mono_data(28 downto 6),
      E(0) => wptr_latched,
      \FSM_sequential_state_reg[0]_0\ => state_5(0),
      \FSM_sequential_state_reg[1]_0\ => state_5(1),
      \FSM_sequential_state_reg[1]_1\(0) => \FSM_sequential_state_reg[1]\,
      \FSM_sequential_state_reg[2]_0\ => state_5(2),
      \FSM_sequential_state_reg[2]_1\ => \FSM_sequential_state_reg[2]\,
      P(0) => P(0),
      Q(31 downto 0) => reg_D_16_16(31 downto 0),
      bram_wr_en_reg_rep => bram_wr_en_reg_rep,
      \bram_wr_en_reg_rep__0\ => \bram_wr_en_reg_rep__0\,
      \bram_wr_en_reg_rep__1\ => \bram_wr_en_reg_rep__1\,
      \bram_wr_en_reg_rep__10\ => \bram_wr_en_reg_rep__10\,
      \bram_wr_en_reg_rep__11\ => \bram_wr_en_reg_rep__11\,
      \bram_wr_en_reg_rep__2\ => \bram_wr_en_reg_rep__2\,
      \bram_wr_en_reg_rep__3\ => \bram_wr_en_reg_rep__3\,
      \bram_wr_en_reg_rep__4\ => \bram_wr_en_reg_rep__4\,
      \bram_wr_en_reg_rep__5\ => \bram_wr_en_reg_rep__5\,
      \bram_wr_en_reg_rep__6\ => \bram_wr_en_reg_rep__6\,
      \bram_wr_en_reg_rep__7\ => \bram_wr_en_reg_rep__7\,
      \bram_wr_en_reg_rep__8\ => \bram_wr_en_reg_rep__8\,
      \bram_wr_en_reg_rep__9\ => \bram_wr_en_reg_rep__9\,
      clear_req_reg_0 => clear_req,
      clk => clk,
      d_reg_valid_reg => d_valid,
      d_reg_valid_reg_0 => d_reg_valid_reg,
      enable_d_reg_0 => u_regmap_n_8,
      frac_d_valid => frac_d_valid,
      frac_start_reg => frac_start_reg,
      fx_enable => fx_enable,
      inflight0 => inflight0,
      mono_valid => mono_valid,
      \out_buf_reg[31]_0\(25 downto 0) => ret_data(31 downto 6),
      out_buf_valid_reg_0 => u_delay_n_17,
      p_0_in => p_0_in,
      rd_en => bram_rd_en,
      rd_en_reg => rd_en_reg,
      rd_en_reg_rep => rd_en_reg_rep,
      \reg_ctrl_reg[0]\ => u_delay_n_14,
      ret_valid => ret_valid,
      rst_n => rst_n,
      s_axi_wdata(16 downto 0) => s_axi_wdata(16 downto 0),
      \state_reg[0]\ => \state_reg[0]\,
      \state_reg[0]_0\ => \state_reg[0]_0\,
      \state_reg[1]\ => \state_reg[1]\,
      \state_reg[1]_0\ => u_delay_n_18,
      \term_r_reg[0]\(0) => \term_r_reg[0]\(0),
      \term_r_reg[0]_0\ => \term_r_reg[0]_0\,
      \v1__0_0\(31 downto 0) => reg_fb_q1_31(31 downto 0),
      \v1__3_0\(0) => reg_wet,
      \v1__4_0\(14 downto 0) => reg_wet_q1_31(31 downto 17),
      \x_reg_reg[6]_0\(0) => reg_enable
    );
u_regmap: entity work.design_1_fx_system_wrapper_0_1_fx_regmap
     port map (
      D(30) => p_1_in(30),
      D(29) => \g_enc[3].u_enc_n_2\,
      D(28 downto 25) => p_1_in(28 downto 25),
      D(24) => \g_enc[3].u_enc_n_3\,
      D(23) => p_1_in(23),
      D(22) => \g_enc[3].u_enc_n_4\,
      D(21) => p_1_in(21),
      D(20) => \g_enc[3].u_enc_n_5\,
      D(19 downto 18) => p_1_in(19 downto 18),
      D(17) => \g_enc[3].u_enc_n_6\,
      D(16 downto 15) => p_1_in(16 downto 15),
      D(14) => \g_enc[3].u_enc_n_7\,
      D(13) => \g_enc[4].u_enc_n_6\,
      D(12) => \g_enc[4].u_enc_n_7\,
      D(11) => \g_enc[4].u_enc_n_8\,
      D(10) => \g_enc[4].u_enc_n_9\,
      D(9) => \g_enc[4].u_enc_n_10\,
      D(8) => \g_enc[3].u_enc_n_8\,
      D(7) => \g_enc[4].u_enc_n_11\,
      D(6) => \g_enc[4].u_enc_n_12\,
      D(5) => \g_enc[4].u_enc_n_13\,
      D(4) => \g_enc[3].u_enc_n_9\,
      D(3) => \g_enc[4].u_enc_n_14\,
      D(2) => \g_enc[4].u_enc_n_15\,
      D(1) => \g_enc[4].u_enc_n_16\,
      D(0) => \g_enc[4].u_enc_n_17\,
      E(0) => reg_wet,
      Q(0) => reg_enable,
      aw_done_reg_0 => aw_done,
      aw_done_reg_1 => aw_done_reg,
      clk => clk,
      fx_enable => fx_enable,
      fx_enable_0 => u_regmap_n_8,
      p_0_in => p_0_in,
      \reg_delay_reg[31]_0\(31 downto 0) => reg_D_16_16(31 downto 0),
      \reg_fb_reg[31]_0\(31 downto 0) => reg_fb_q1_31(31 downto 0),
      \reg_wet_reg[0]_0\ => u_regmap_n_123,
      \reg_wet_reg[10]_0\ => u_regmap_n_113,
      \reg_wet_reg[11]_0\ => u_regmap_n_112,
      \reg_wet_reg[12]_0\ => u_regmap_n_111,
      \reg_wet_reg[13]_0\ => u_regmap_n_110,
      \reg_wet_reg[14]_0\ => u_regmap_n_109,
      \reg_wet_reg[15]_0\ => u_regmap_n_108,
      \reg_wet_reg[16]_0\ => u_regmap_n_107,
      \reg_wet_reg[17]_0\ => u_regmap_n_106,
      \reg_wet_reg[18]_0\ => u_regmap_n_105,
      \reg_wet_reg[19]_0\ => u_regmap_n_104,
      \reg_wet_reg[1]_0\ => u_regmap_n_122,
      \reg_wet_reg[20]_0\ => u_regmap_n_103,
      \reg_wet_reg[21]_0\ => u_regmap_n_102,
      \reg_wet_reg[22]_0\ => u_regmap_n_101,
      \reg_wet_reg[23]_0\ => u_regmap_n_100,
      \reg_wet_reg[24]_0\ => u_regmap_n_99,
      \reg_wet_reg[25]_0\ => u_regmap_n_98,
      \reg_wet_reg[26]_0\ => u_regmap_n_97,
      \reg_wet_reg[27]_0\ => u_regmap_n_96,
      \reg_wet_reg[28]_0\ => u_regmap_n_95,
      \reg_wet_reg[29]_0\ => u_regmap_n_94,
      \reg_wet_reg[2]_0\ => u_regmap_n_121,
      \reg_wet_reg[30]_0\ => u_regmap_n_93,
      \reg_wet_reg[31]_0\(14 downto 0) => reg_wet_q1_31(31 downto 17),
      \reg_wet_reg[3]_0\ => u_regmap_n_120,
      \reg_wet_reg[4]_0\ => u_regmap_n_119,
      \reg_wet_reg[5]_0\ => u_regmap_n_118,
      \reg_wet_reg[6]_0\ => u_regmap_n_117,
      \reg_wet_reg[7]_0\ => u_regmap_n_116,
      \reg_wet_reg[8]_0\ => u_regmap_n_115,
      \reg_wet_reg[9]_0\ => u_regmap_n_114,
      rst_n => rst_n,
      s_axi_araddr(4 downto 0) => s_axi_araddr(4 downto 0),
      \s_axi_araddr[5]\ => u_regmap_n_10,
      \s_axi_araddr[5]_0\ => u_regmap_n_13,
      \s_axi_araddr[6]\ => u_regmap_n_11,
      s_axi_araddr_4_sp_1 => u_regmap_n_12,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(5 downto 0) => s_axi_awaddr(5 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      \s_axi_rdata_reg[31]_0\ => \g_enc[3].u_enc_n_10\,
      \s_axi_rdata_reg[31]_1\ => \g_enc[5].u_enc_n_28\,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      w_done_reg_0 => w_done_reg,
      w_done_reg_1 => w_done_reg_0
    );
u_tick: entity work.design_1_fx_system_wrapper_0_1_tick_gen
     port map (
      clk => clk,
      p_0_in => p_0_in,
      rst_n => rst_n,
      tick_reg_0 => \^enc_tick\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fx_system_wrapper_0_1_fx_system_wrapper is
  port (
    inflight_reg : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 25 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    rst_n : in STD_LOGIC;
    clk : in STD_LOGIC;
    enc_b : in STD_LOGIC_VECTOR ( 5 downto 0 );
    enc_a : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tready : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    fx_enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_fx_system_wrapper_0_1_fx_system_wrapper : entity is "fx_system_wrapper";
end design_1_fx_system_wrapper_0_1_fx_system_wrapper;

architecture STRUCTURE of design_1_fx_system_wrapper_0_1_fx_system_wrapper is
  signal aw_done_i_1_n_0 : STD_LOGIC;
  signal \bram_wr_en_rep_i_1__0_n_0\ : STD_LOGIC;
  signal \bram_wr_en_rep_i_1__10_n_0\ : STD_LOGIC;
  signal \bram_wr_en_rep_i_1__11_n_0\ : STD_LOGIC;
  signal \bram_wr_en_rep_i_1__1_n_0\ : STD_LOGIC;
  signal \bram_wr_en_rep_i_1__2_n_0\ : STD_LOGIC;
  signal \bram_wr_en_rep_i_1__3_n_0\ : STD_LOGIC;
  signal \bram_wr_en_rep_i_1__4_n_0\ : STD_LOGIC;
  signal \bram_wr_en_rep_i_1__5_n_0\ : STD_LOGIC;
  signal \bram_wr_en_rep_i_1__6_n_0\ : STD_LOGIC;
  signal \bram_wr_en_rep_i_1__7_n_0\ : STD_LOGIC;
  signal \bram_wr_en_rep_i_1__8_n_0\ : STD_LOGIC;
  signal \bram_wr_en_rep_i_1__9_n_0\ : STD_LOGIC;
  signal bram_wr_en_rep_i_1_n_0 : STD_LOGIC;
  signal \clean_a_i_1__0_n_0\ : STD_LOGIC;
  signal \clean_a_i_1__1_n_0\ : STD_LOGIC;
  signal \clean_a_i_1__2_n_0\ : STD_LOGIC;
  signal \clean_a_i_1__3_n_0\ : STD_LOGIC;
  signal \clean_a_i_1__4_n_0\ : STD_LOGIC;
  signal clean_a_i_1_n_0 : STD_LOGIC;
  signal \clean_b_i_1__0_n_0\ : STD_LOGIC;
  signal \clean_b_i_1__1_n_0\ : STD_LOGIC;
  signal \clean_b_i_1__2_n_0\ : STD_LOGIC;
  signal \clean_b_i_1__3_n_0\ : STD_LOGIC;
  signal \clean_b_i_1__4_n_0\ : STD_LOGIC;
  signal clean_b_i_1_n_0 : STD_LOGIC;
  signal d_reg_valid_i_1_n_0 : STD_LOGIC;
  signal enc_tick : STD_LOGIC;
  signal frac_start_i_1_n_0 : STD_LOGIC;
  signal \g_enc[0].u_enc/a_s\ : STD_LOGIC;
  signal \g_enc[0].u_enc/b_s\ : STD_LOGIC;
  signal \g_enc[0].u_enc/cnt_a__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \g_enc[0].u_enc/cnt_b__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \g_enc[0].u_enc/state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \g_enc[1].u_enc/a_s\ : STD_LOGIC;
  signal \g_enc[1].u_enc/b_s\ : STD_LOGIC;
  signal \g_enc[1].u_enc/cnt_a__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \g_enc[1].u_enc/cnt_b__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \g_enc[1].u_enc/state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \g_enc[2].u_enc/a_s\ : STD_LOGIC;
  signal \g_enc[2].u_enc/b_s\ : STD_LOGIC;
  signal \g_enc[2].u_enc/cnt_a__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \g_enc[2].u_enc/cnt_b__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \g_enc[2].u_enc/state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \g_enc[3].u_enc/a_s\ : STD_LOGIC;
  signal \g_enc[3].u_enc/b_s\ : STD_LOGIC;
  signal \g_enc[3].u_enc/cnt_a__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \g_enc[3].u_enc/cnt_b__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \g_enc[3].u_enc/state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \g_enc[4].u_enc/a_s\ : STD_LOGIC;
  signal \g_enc[4].u_enc/b_s\ : STD_LOGIC;
  signal \g_enc[4].u_enc/cnt_a__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \g_enc[4].u_enc/cnt_b__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \g_enc[4].u_enc/state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \g_enc[5].u_enc/a_s\ : STD_LOGIC;
  signal \g_enc[5].u_enc/b_s\ : STD_LOGIC;
  signal \g_enc[5].u_enc/cnt_a__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \g_enc[5].u_enc/cnt_b__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \g_enc[5].u_enc/state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \in_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \^inflight_reg\ : STD_LOGIC;
  signal rd_en_i_1_n_0 : STD_LOGIC;
  signal rd_en_rep_i_1_n_0 : STD_LOGIC;
  signal \term_r[0]_i_1_n_0\ : STD_LOGIC;
  signal u_core_n_141 : STD_LOGIC;
  signal u_core_n_142 : STD_LOGIC;
  signal u_core_n_22 : STD_LOGIC;
  signal u_core_n_26 : STD_LOGIC;
  signal u_core_n_29 : STD_LOGIC;
  signal u_core_n_30 : STD_LOGIC;
  signal u_core_n_31 : STD_LOGIC;
  signal \u_delay/clear_req\ : STD_LOGIC;
  signal \u_delay/d_valid\ : STD_LOGIC;
  signal \u_delay/p_1_in__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \u_delay/term_r\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \u_delay/u_dl/bram_rd_en\ : STD_LOGIC;
  signal \u_delay/u_dl/frac_d_valid\ : STD_LOGIC;
  signal \u_delay/u_dl/frac_u/state\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \u_delay/u_dl/wptr_latched\ : STD_LOGIC;
  signal \u_regmap/aw_done\ : STD_LOGIC;
  signal w_done_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of aw_done_i_1 : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of w_done_i_1 : label is "soft_lutpair106";
begin
  inflight_reg <= \^inflight_reg\;
aw_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C88"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => rst_n,
      I2 => u_core_n_22,
      I3 => \u_regmap/aw_done\,
      O => aw_done_i_1_n_0
    );
bram_wr_en_rep_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888808"
    )
        port map (
      I0 => u_core_n_142,
      I1 => rst_n,
      I2 => \u_delay/clear_req\,
      I3 => u_core_n_31,
      I4 => u_core_n_30,
      O => bram_wr_en_rep_i_1_n_0
    );
\bram_wr_en_rep_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888808"
    )
        port map (
      I0 => u_core_n_142,
      I1 => rst_n,
      I2 => \u_delay/clear_req\,
      I3 => u_core_n_31,
      I4 => u_core_n_30,
      O => \bram_wr_en_rep_i_1__0_n_0\
    );
\bram_wr_en_rep_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888808"
    )
        port map (
      I0 => u_core_n_142,
      I1 => rst_n,
      I2 => \u_delay/clear_req\,
      I3 => u_core_n_31,
      I4 => u_core_n_30,
      O => \bram_wr_en_rep_i_1__1_n_0\
    );
\bram_wr_en_rep_i_1__10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888808"
    )
        port map (
      I0 => u_core_n_142,
      I1 => rst_n,
      I2 => \u_delay/clear_req\,
      I3 => u_core_n_31,
      I4 => u_core_n_30,
      O => \bram_wr_en_rep_i_1__10_n_0\
    );
\bram_wr_en_rep_i_1__11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888808"
    )
        port map (
      I0 => u_core_n_142,
      I1 => rst_n,
      I2 => \u_delay/clear_req\,
      I3 => u_core_n_31,
      I4 => u_core_n_30,
      O => \bram_wr_en_rep_i_1__11_n_0\
    );
\bram_wr_en_rep_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888808"
    )
        port map (
      I0 => u_core_n_142,
      I1 => rst_n,
      I2 => \u_delay/clear_req\,
      I3 => u_core_n_31,
      I4 => u_core_n_30,
      O => \bram_wr_en_rep_i_1__2_n_0\
    );
\bram_wr_en_rep_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888808"
    )
        port map (
      I0 => u_core_n_142,
      I1 => rst_n,
      I2 => \u_delay/clear_req\,
      I3 => u_core_n_31,
      I4 => u_core_n_30,
      O => \bram_wr_en_rep_i_1__3_n_0\
    );
\bram_wr_en_rep_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888808"
    )
        port map (
      I0 => u_core_n_142,
      I1 => rst_n,
      I2 => \u_delay/clear_req\,
      I3 => u_core_n_31,
      I4 => u_core_n_30,
      O => \bram_wr_en_rep_i_1__4_n_0\
    );
\bram_wr_en_rep_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888808"
    )
        port map (
      I0 => u_core_n_142,
      I1 => rst_n,
      I2 => \u_delay/clear_req\,
      I3 => u_core_n_31,
      I4 => u_core_n_30,
      O => \bram_wr_en_rep_i_1__5_n_0\
    );
\bram_wr_en_rep_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888808"
    )
        port map (
      I0 => u_core_n_142,
      I1 => rst_n,
      I2 => \u_delay/clear_req\,
      I3 => u_core_n_31,
      I4 => u_core_n_30,
      O => \bram_wr_en_rep_i_1__6_n_0\
    );
\bram_wr_en_rep_i_1__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888808"
    )
        port map (
      I0 => u_core_n_142,
      I1 => rst_n,
      I2 => \u_delay/clear_req\,
      I3 => u_core_n_31,
      I4 => u_core_n_30,
      O => \bram_wr_en_rep_i_1__7_n_0\
    );
\bram_wr_en_rep_i_1__8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888808"
    )
        port map (
      I0 => u_core_n_142,
      I1 => rst_n,
      I2 => \u_delay/clear_req\,
      I3 => u_core_n_31,
      I4 => u_core_n_30,
      O => \bram_wr_en_rep_i_1__8_n_0\
    );
\bram_wr_en_rep_i_1__9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888808"
    )
        port map (
      I0 => u_core_n_142,
      I1 => rst_n,
      I2 => \u_delay/clear_req\,
      I3 => u_core_n_31,
      I4 => u_core_n_30,
      O => \bram_wr_en_rep_i_1__9_n_0\
    );
clean_a_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7F8000FFFF0000"
    )
        port map (
      I0 => \g_enc[0].u_enc/cnt_a__0\(0),
      I1 => \g_enc[0].u_enc/cnt_a__0\(1),
      I2 => \g_enc[0].u_enc/cnt_a__0\(2),
      I3 => \g_enc[0].u_enc/a_s\,
      I4 => \g_enc[0].u_enc/state\(1),
      I5 => enc_tick,
      O => clean_a_i_1_n_0
    );
\clean_a_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7F8000FFFF0000"
    )
        port map (
      I0 => \g_enc[1].u_enc/cnt_a__0\(0),
      I1 => \g_enc[1].u_enc/cnt_a__0\(1),
      I2 => \g_enc[1].u_enc/cnt_a__0\(2),
      I3 => \g_enc[1].u_enc/a_s\,
      I4 => \g_enc[1].u_enc/state\(1),
      I5 => enc_tick,
      O => \clean_a_i_1__0_n_0\
    );
\clean_a_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7F8000FFFF0000"
    )
        port map (
      I0 => \g_enc[2].u_enc/cnt_a__0\(0),
      I1 => \g_enc[2].u_enc/cnt_a__0\(1),
      I2 => \g_enc[2].u_enc/cnt_a__0\(2),
      I3 => \g_enc[2].u_enc/a_s\,
      I4 => \g_enc[2].u_enc/state\(1),
      I5 => enc_tick,
      O => \clean_a_i_1__1_n_0\
    );
\clean_a_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7F8000FFFF0000"
    )
        port map (
      I0 => \g_enc[3].u_enc/cnt_a__0\(0),
      I1 => \g_enc[3].u_enc/cnt_a__0\(1),
      I2 => \g_enc[3].u_enc/cnt_a__0\(2),
      I3 => \g_enc[3].u_enc/a_s\,
      I4 => \g_enc[3].u_enc/state\(1),
      I5 => enc_tick,
      O => \clean_a_i_1__2_n_0\
    );
\clean_a_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7F8000FFFF0000"
    )
        port map (
      I0 => \g_enc[4].u_enc/cnt_a__0\(0),
      I1 => \g_enc[4].u_enc/cnt_a__0\(1),
      I2 => \g_enc[4].u_enc/cnt_a__0\(2),
      I3 => \g_enc[4].u_enc/a_s\,
      I4 => \g_enc[4].u_enc/state\(1),
      I5 => enc_tick,
      O => \clean_a_i_1__3_n_0\
    );
\clean_a_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7F8000FFFF0000"
    )
        port map (
      I0 => \g_enc[5].u_enc/cnt_a__0\(0),
      I1 => \g_enc[5].u_enc/cnt_a__0\(1),
      I2 => \g_enc[5].u_enc/cnt_a__0\(2),
      I3 => \g_enc[5].u_enc/a_s\,
      I4 => \g_enc[5].u_enc/state\(1),
      I5 => enc_tick,
      O => \clean_a_i_1__4_n_0\
    );
clean_b_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7F8000FFFF0000"
    )
        port map (
      I0 => \g_enc[0].u_enc/cnt_b__0\(0),
      I1 => \g_enc[0].u_enc/cnt_b__0\(1),
      I2 => \g_enc[0].u_enc/cnt_b__0\(2),
      I3 => \g_enc[0].u_enc/b_s\,
      I4 => \g_enc[0].u_enc/state\(0),
      I5 => enc_tick,
      O => clean_b_i_1_n_0
    );
\clean_b_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7F8000FFFF0000"
    )
        port map (
      I0 => \g_enc[1].u_enc/cnt_b__0\(0),
      I1 => \g_enc[1].u_enc/cnt_b__0\(1),
      I2 => \g_enc[1].u_enc/cnt_b__0\(2),
      I3 => \g_enc[1].u_enc/b_s\,
      I4 => \g_enc[1].u_enc/state\(0),
      I5 => enc_tick,
      O => \clean_b_i_1__0_n_0\
    );
\clean_b_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7F8000FFFF0000"
    )
        port map (
      I0 => \g_enc[2].u_enc/cnt_b__0\(0),
      I1 => \g_enc[2].u_enc/cnt_b__0\(1),
      I2 => \g_enc[2].u_enc/cnt_b__0\(2),
      I3 => \g_enc[2].u_enc/b_s\,
      I4 => \g_enc[2].u_enc/state\(0),
      I5 => enc_tick,
      O => \clean_b_i_1__1_n_0\
    );
\clean_b_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7F8000FFFF0000"
    )
        port map (
      I0 => \g_enc[3].u_enc/cnt_b__0\(0),
      I1 => \g_enc[3].u_enc/cnt_b__0\(1),
      I2 => \g_enc[3].u_enc/cnt_b__0\(2),
      I3 => \g_enc[3].u_enc/b_s\,
      I4 => \g_enc[3].u_enc/state\(0),
      I5 => enc_tick,
      O => \clean_b_i_1__2_n_0\
    );
\clean_b_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7F8000FFFF0000"
    )
        port map (
      I0 => \g_enc[4].u_enc/cnt_b__0\(0),
      I1 => \g_enc[4].u_enc/cnt_b__0\(1),
      I2 => \g_enc[4].u_enc/cnt_b__0\(2),
      I3 => \g_enc[4].u_enc/b_s\,
      I4 => \g_enc[4].u_enc/state\(0),
      I5 => enc_tick,
      O => \clean_b_i_1__3_n_0\
    );
\clean_b_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7F8000FFFF0000"
    )
        port map (
      I0 => \g_enc[5].u_enc/cnt_b__0\(0),
      I1 => \g_enc[5].u_enc/cnt_b__0\(1),
      I2 => \g_enc[5].u_enc/cnt_b__0\(2),
      I3 => \g_enc[5].u_enc/b_s\,
      I4 => \g_enc[5].u_enc/state\(0),
      I5 => enc_tick,
      O => \clean_b_i_1__4_n_0\
    );
d_reg_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAC080"
    )
        port map (
      I0 => \u_delay/d_valid\,
      I1 => u_core_n_141,
      I2 => u_core_n_30,
      I3 => \u_delay/u_dl/frac_d_valid\,
      I4 => u_core_n_31,
      I5 => u_core_n_29,
      O => d_reg_valid_i_1_n_0
    );
frac_start_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888808"
    )
        port map (
      I0 => \u_delay/u_dl/wptr_latched\,
      I1 => rst_n,
      I2 => \u_delay/clear_req\,
      I3 => u_core_n_31,
      I4 => u_core_n_30,
      O => frac_start_i_1_n_0
    );
\in_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFF01000000"
    )
        port map (
      I0 => s_axis_tid(2),
      I1 => s_axis_tid(1),
      I2 => s_axis_tid(0),
      I3 => s_axis_tvalid,
      I4 => \^inflight_reg\,
      I5 => u_core_n_26,
      O => \in_state[0]_i_1_n_0\
    );
rd_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EC0C"
    )
        port map (
      I0 => \u_delay/u_dl/frac_u/state\(1),
      I1 => \u_delay/u_dl/frac_u/state\(0),
      I2 => \u_delay/u_dl/frac_u/state\(2),
      I3 => \u_delay/u_dl/bram_rd_en\,
      O => rd_en_i_1_n_0
    );
rd_en_rep_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EC0C"
    )
        port map (
      I0 => \u_delay/u_dl/frac_u/state\(1),
      I1 => \u_delay/u_dl/frac_u/state\(0),
      I2 => \u_delay/u_dl/frac_u/state\(2),
      I3 => \u_delay/u_dl/bram_rd_en\,
      O => rd_en_rep_i_1_n_0
    );
\term_r[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => \u_delay/p_1_in__0\(0),
      I1 => \u_delay/u_dl/frac_u/state\(1),
      I2 => \u_delay/u_dl/frac_u/state\(2),
      I3 => \u_delay/u_dl/frac_u/state\(0),
      I4 => \u_delay/term_r\(0),
      O => \term_r[0]_i_1_n_0\
    );
u_core: entity work.design_1_fx_system_wrapper_0_1_fx_core
     port map (
      \FSM_sequential_state_reg[1]\ => u_core_n_142,
      \FSM_sequential_state_reg[2]\ => u_core_n_141,
      P(0) => \u_delay/p_1_in__0\(0),
      Q(0) => \g_enc[0].u_enc/b_s\,
      \a_sync_reg[1]\(0) => \g_enc[0].u_enc/a_s\,
      \a_sync_reg[1]_0\(0) => \g_enc[1].u_enc/a_s\,
      \a_sync_reg[1]_1\(0) => \g_enc[2].u_enc/a_s\,
      \a_sync_reg[1]_2\(0) => \g_enc[3].u_enc/a_s\,
      \a_sync_reg[1]_3\(0) => \g_enc[4].u_enc/a_s\,
      \a_sync_reg[1]_4\(0) => \g_enc[5].u_enc/a_s\,
      aw_done => \u_regmap/aw_done\,
      aw_done_reg => aw_done_i_1_n_0,
      \b_sync_reg[1]\(0) => \g_enc[1].u_enc/b_s\,
      \b_sync_reg[1]_0\(0) => \g_enc[2].u_enc/b_s\,
      \b_sync_reg[1]_1\(0) => \g_enc[3].u_enc/b_s\,
      \b_sync_reg[1]_2\(0) => \g_enc[4].u_enc/b_s\,
      \b_sync_reg[1]_3\(0) => \g_enc[5].u_enc/b_s\,
      bram_rd_en => \u_delay/u_dl/bram_rd_en\,
      bram_wr_en_reg_rep => bram_wr_en_rep_i_1_n_0,
      \bram_wr_en_reg_rep__0\ => \bram_wr_en_rep_i_1__0_n_0\,
      \bram_wr_en_reg_rep__1\ => \bram_wr_en_rep_i_1__1_n_0\,
      \bram_wr_en_reg_rep__10\ => \bram_wr_en_rep_i_1__10_n_0\,
      \bram_wr_en_reg_rep__11\ => \bram_wr_en_rep_i_1__11_n_0\,
      \bram_wr_en_reg_rep__2\ => \bram_wr_en_rep_i_1__2_n_0\,
      \bram_wr_en_reg_rep__3\ => \bram_wr_en_rep_i_1__3_n_0\,
      \bram_wr_en_reg_rep__4\ => \bram_wr_en_rep_i_1__4_n_0\,
      \bram_wr_en_reg_rep__5\ => \bram_wr_en_rep_i_1__5_n_0\,
      \bram_wr_en_reg_rep__6\ => \bram_wr_en_rep_i_1__6_n_0\,
      \bram_wr_en_reg_rep__7\ => \bram_wr_en_rep_i_1__7_n_0\,
      \bram_wr_en_reg_rep__8\ => \bram_wr_en_rep_i_1__8_n_0\,
      \bram_wr_en_reg_rep__9\ => \bram_wr_en_rep_i_1__9_n_0\,
      clean_a_reg => clean_a_i_1_n_0,
      clean_a_reg_0 => \clean_a_i_1__0_n_0\,
      clean_a_reg_1 => \clean_a_i_1__1_n_0\,
      clean_a_reg_2 => \clean_a_i_1__2_n_0\,
      clean_a_reg_3 => \clean_a_i_1__3_n_0\,
      clean_a_reg_4 => \clean_a_i_1__4_n_0\,
      clean_b_reg => clean_b_i_1_n_0,
      clean_b_reg_0 => \clean_b_i_1__0_n_0\,
      clean_b_reg_1 => \clean_b_i_1__1_n_0\,
      clean_b_reg_2 => \clean_b_i_1__2_n_0\,
      clean_b_reg_3 => \clean_b_i_1__3_n_0\,
      clean_b_reg_4 => \clean_b_i_1__4_n_0\,
      clear_req => \u_delay/clear_req\,
      clk => clk,
      \cnt_a__0\(2 downto 0) => \g_enc[0].u_enc/cnt_a__0\(2 downto 0),
      \cnt_a__0_11\(2 downto 0) => \g_enc[3].u_enc/cnt_a__0\(2 downto 0),
      \cnt_a__0_13\(2 downto 0) => \g_enc[4].u_enc/cnt_a__0\(2 downto 0),
      \cnt_a__0_15\(2 downto 0) => \g_enc[5].u_enc/cnt_a__0\(2 downto 0),
      \cnt_a__0_7\(2 downto 0) => \g_enc[1].u_enc/cnt_a__0\(2 downto 0),
      \cnt_a__0_9\(2 downto 0) => \g_enc[2].u_enc/cnt_a__0\(2 downto 0),
      \cnt_b__0\(2 downto 0) => \g_enc[0].u_enc/cnt_b__0\(2 downto 0),
      \cnt_b__0_10\(2 downto 0) => \g_enc[3].u_enc/cnt_b__0\(2 downto 0),
      \cnt_b__0_12\(2 downto 0) => \g_enc[4].u_enc/cnt_b__0\(2 downto 0),
      \cnt_b__0_14\(2 downto 0) => \g_enc[5].u_enc/cnt_b__0\(2 downto 0),
      \cnt_b__0_6\(2 downto 0) => \g_enc[1].u_enc/cnt_b__0\(2 downto 0),
      \cnt_b__0_8\(2 downto 0) => \g_enc[2].u_enc/cnt_b__0\(2 downto 0),
      d_reg_valid_reg => d_reg_valid_i_1_n_0,
      d_valid => \u_delay/d_valid\,
      enc_a(5 downto 0) => enc_a(5 downto 0),
      enc_b(5 downto 0) => enc_b(5 downto 0),
      enc_tick => enc_tick,
      frac_d_valid => \u_delay/u_dl/frac_d_valid\,
      frac_start_reg => frac_start_i_1_n_0,
      fx_enable => fx_enable,
      \in_state_reg[0]\ => u_core_n_26,
      \in_state_reg[0]_0\ => \in_state[0]_i_1_n_0\,
      inflight_reg => \^inflight_reg\,
      m_axis_tdata(25 downto 0) => m_axis_tdata(25 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      rd_en_reg => rd_en_i_1_n_0,
      rd_en_reg_rep => rd_en_rep_i_1_n_0,
      rst_n => rst_n,
      s_axi_araddr(5 downto 0) => s_axi_araddr(5 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(5 downto 0) => s_axi_awaddr(5 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      s_axis_tdata(23 downto 0) => s_axis_tdata(23 downto 0),
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tvalid => s_axis_tvalid,
      state(1 downto 0) => \g_enc[0].u_enc/state\(1 downto 0),
      state_0(1 downto 0) => \g_enc[1].u_enc/state\(1 downto 0),
      state_1(1 downto 0) => \g_enc[2].u_enc/state\(1 downto 0),
      state_2(1 downto 0) => \g_enc[3].u_enc/state\(1 downto 0),
      state_3(1 downto 0) => \g_enc[4].u_enc/state\(1 downto 0),
      state_4(1 downto 0) => \g_enc[5].u_enc/state\(1 downto 0),
      state_5(2 downto 0) => \u_delay/u_dl/frac_u/state\(2 downto 0),
      \state_reg[0]\ => u_core_n_29,
      \state_reg[0]_0\ => u_core_n_30,
      \state_reg[1]\ => u_core_n_31,
      \term_r_reg[0]\(0) => \u_delay/term_r\(0),
      \term_r_reg[0]_0\ => \term_r[0]_i_1_n_0\,
      w_done_reg => u_core_n_22,
      w_done_reg_0 => w_done_i_1_n_0,
      wptr_latched => \u_delay/u_dl/wptr_latched\
    );
w_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08C8"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => rst_n,
      I2 => u_core_n_22,
      I3 => \u_regmap/aw_done\,
      O => w_done_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fx_system_wrapper_0_1 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    fx_enable : in STD_LOGIC;
    enc_a : in STD_LOGIC_VECTOR ( 5 downto 0 );
    enc_b : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_fx_system_wrapper_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_fx_system_wrapper_0_1 : entity is "design_1_fx_system_wrapper_0_1,fx_system_wrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_fx_system_wrapper_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_fx_system_wrapper_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_fx_system_wrapper_0_1 : entity is "fx_system_wrapper,Vivado 2025.1";
end design_1_fx_system_wrapper_0_1;

architecture STRUCTURE of design_1_fx_system_wrapper_0_1 is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF S_AXI:S_AXIS:M_AXIS, ASSOCIATED_RESET rst_n, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_MODE of rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_MODE of m_axis_tdata : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axis_tdata : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 3, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TID";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_MODE of s_axi_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_awaddr : signal is "XIL_INTERFACENAME S_AXI, PROTOCOL AXI4LITE, ADDR_WIDTH 32, DATA_WIDTH 32, READ_WRITE_MODE READ_WRITE, FREQ_HZ 50000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute X_INTERFACE_MODE of s_axis_tdata : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axis_tdata : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 3, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TID";
begin
  m_axis_tdata(31) <= \<const0>\;
  m_axis_tdata(30) <= \<const0>\;
  m_axis_tdata(29) <= \<const0>\;
  m_axis_tdata(28) <= \<const0>\;
  m_axis_tdata(27 downto 4) <= \^m_axis_tdata\(27 downto 4);
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1 downto 0) <= \^m_axis_tdata\(1 downto 0);
  m_axis_tid(2) <= \<const0>\;
  m_axis_tid(1) <= \<const0>\;
  m_axis_tid(0) <= \^m_axis_tdata\(1);
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_fx_system_wrapper_0_1_fx_system_wrapper
     port map (
      clk => clk,
      enc_a(5 downto 0) => enc_a(5 downto 0),
      enc_b(5 downto 0) => enc_b(5 downto 0),
      fx_enable => fx_enable,
      inflight_reg => s_axis_tready,
      m_axis_tdata(25 downto 2) => \^m_axis_tdata\(27 downto 4),
      m_axis_tdata(1 downto 0) => \^m_axis_tdata\(1 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      rst_n => rst_n,
      s_axi_araddr(5 downto 0) => s_axi_araddr(7 downto 2),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(5 downto 0) => s_axi_awaddr(7 downto 2),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      s_axis_tdata(23 downto 0) => s_axis_tdata(27 downto 4),
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
