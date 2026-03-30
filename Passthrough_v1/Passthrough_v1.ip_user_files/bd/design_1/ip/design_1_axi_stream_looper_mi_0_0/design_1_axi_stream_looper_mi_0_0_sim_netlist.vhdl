-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Sun Mar 29 14:01:17 2026
-- Host        : DESKTOP-FLN9N0C running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/Tesis/Passthrough_v1/Passthrough_v1.gen/sources_1/bd/design_1/ip/design_1_axi_stream_looper_mi_0_0/design_1_axi_stream_looper_mi_0_0_sim_netlist.vhdl
-- Design      : design_1_axi_stream_looper_mi_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_stream_looper_mi_0_0_axi_stream_looper_mixer is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s0_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s1_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s1_axis_tvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_stream_looper_mi_0_0_axi_stream_looper_mixer : entity is "axi_stream_looper_mixer";
end design_1_axi_stream_looper_mi_0_0_axi_stream_looper_mixer;

architecture STRUCTURE of design_1_axi_stream_looper_mi_0_0_axi_stream_looper_mixer is
  signal \full_sum_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \full_sum_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \full_sum_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \full_sum_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \full_sum_carry__0_n_0\ : STD_LOGIC;
  signal \full_sum_carry__0_n_1\ : STD_LOGIC;
  signal \full_sum_carry__0_n_2\ : STD_LOGIC;
  signal \full_sum_carry__0_n_3\ : STD_LOGIC;
  signal \full_sum_carry__0_n_4\ : STD_LOGIC;
  signal \full_sum_carry__0_n_5\ : STD_LOGIC;
  signal \full_sum_carry__0_n_6\ : STD_LOGIC;
  signal \full_sum_carry__0_n_7\ : STD_LOGIC;
  signal \full_sum_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \full_sum_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \full_sum_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \full_sum_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \full_sum_carry__1_n_0\ : STD_LOGIC;
  signal \full_sum_carry__1_n_1\ : STD_LOGIC;
  signal \full_sum_carry__1_n_2\ : STD_LOGIC;
  signal \full_sum_carry__1_n_3\ : STD_LOGIC;
  signal \full_sum_carry__1_n_4\ : STD_LOGIC;
  signal \full_sum_carry__1_n_5\ : STD_LOGIC;
  signal \full_sum_carry__1_n_6\ : STD_LOGIC;
  signal \full_sum_carry__1_n_7\ : STD_LOGIC;
  signal \full_sum_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \full_sum_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \full_sum_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \full_sum_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \full_sum_carry__2_n_0\ : STD_LOGIC;
  signal \full_sum_carry__2_n_1\ : STD_LOGIC;
  signal \full_sum_carry__2_n_2\ : STD_LOGIC;
  signal \full_sum_carry__2_n_3\ : STD_LOGIC;
  signal \full_sum_carry__2_n_4\ : STD_LOGIC;
  signal \full_sum_carry__2_n_5\ : STD_LOGIC;
  signal \full_sum_carry__2_n_6\ : STD_LOGIC;
  signal \full_sum_carry__2_n_7\ : STD_LOGIC;
  signal \full_sum_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \full_sum_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \full_sum_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \full_sum_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \full_sum_carry__3_n_0\ : STD_LOGIC;
  signal \full_sum_carry__3_n_1\ : STD_LOGIC;
  signal \full_sum_carry__3_n_2\ : STD_LOGIC;
  signal \full_sum_carry__3_n_3\ : STD_LOGIC;
  signal \full_sum_carry__3_n_4\ : STD_LOGIC;
  signal \full_sum_carry__3_n_5\ : STD_LOGIC;
  signal \full_sum_carry__3_n_6\ : STD_LOGIC;
  signal \full_sum_carry__3_n_7\ : STD_LOGIC;
  signal \full_sum_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \full_sum_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \full_sum_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \full_sum_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \full_sum_carry__4_n_0\ : STD_LOGIC;
  signal \full_sum_carry__4_n_1\ : STD_LOGIC;
  signal \full_sum_carry__4_n_2\ : STD_LOGIC;
  signal \full_sum_carry__4_n_3\ : STD_LOGIC;
  signal \full_sum_carry__4_n_4\ : STD_LOGIC;
  signal \full_sum_carry__4_n_5\ : STD_LOGIC;
  signal \full_sum_carry__4_n_6\ : STD_LOGIC;
  signal \full_sum_carry__4_n_7\ : STD_LOGIC;
  signal \full_sum_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \full_sum_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \full_sum_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \full_sum_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \full_sum_carry__5_n_0\ : STD_LOGIC;
  signal \full_sum_carry__5_n_1\ : STD_LOGIC;
  signal \full_sum_carry__5_n_2\ : STD_LOGIC;
  signal \full_sum_carry__5_n_3\ : STD_LOGIC;
  signal \full_sum_carry__5_n_4\ : STD_LOGIC;
  signal \full_sum_carry__5_n_5\ : STD_LOGIC;
  signal \full_sum_carry__5_n_6\ : STD_LOGIC;
  signal \full_sum_carry__5_n_7\ : STD_LOGIC;
  signal \full_sum_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \full_sum_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \full_sum_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \full_sum_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \full_sum_carry__6_i_5_n_0\ : STD_LOGIC;
  signal \full_sum_carry__6_n_0\ : STD_LOGIC;
  signal \full_sum_carry__6_n_1\ : STD_LOGIC;
  signal \full_sum_carry__6_n_2\ : STD_LOGIC;
  signal \full_sum_carry__6_n_3\ : STD_LOGIC;
  signal \full_sum_carry__6_n_4\ : STD_LOGIC;
  signal \full_sum_carry__6_n_5\ : STD_LOGIC;
  signal \full_sum_carry__6_n_6\ : STD_LOGIC;
  signal \full_sum_carry__6_n_7\ : STD_LOGIC;
  signal full_sum_carry_i_1_n_0 : STD_LOGIC;
  signal full_sum_carry_i_2_n_0 : STD_LOGIC;
  signal full_sum_carry_i_3_n_0 : STD_LOGIC;
  signal full_sum_carry_i_4_n_0 : STD_LOGIC;
  signal full_sum_carry_n_0 : STD_LOGIC;
  signal full_sum_carry_n_1 : STD_LOGIC;
  signal full_sum_carry_n_2 : STD_LOGIC;
  signal full_sum_carry_n_3 : STD_LOGIC;
  signal full_sum_carry_n_4 : STD_LOGIC;
  signal full_sum_carry_n_5 : STD_LOGIC;
  signal full_sum_carry_n_6 : STD_LOGIC;
  signal full_sum_carry_n_7 : STD_LOGIC;
  signal m_axis_tdata1 : STD_LOGIC;
  signal m_axis_tdata1_carry_i_1_n_3 : STD_LOGIC;
  signal m_axis_tdata1_carry_i_2_n_0 : STD_LOGIC;
  signal m_axis_tdata1_carry_n_3 : STD_LOGIC;
  signal m_axis_tdata2 : STD_LOGIC;
  signal m_axis_tdata2_carry_i_1_n_0 : STD_LOGIC;
  signal m_axis_tdata2_carry_i_2_n_0 : STD_LOGIC;
  signal m_axis_tdata2_carry_i_3_n_0 : STD_LOGIC;
  signal m_axis_tdata2_carry_n_3 : STD_LOGIC;
  signal NLW_m_axis_tdata1_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_m_axis_tdata1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_m_axis_tdata1_carry_i_1_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_m_axis_tdata1_carry_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_m_axis_tdata2_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_m_axis_tdata2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of m_axis_tdata1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of m_axis_tdata2_carry : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_tdata[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[11]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[13]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata[14]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata[15]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[16]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[17]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tdata[18]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tdata[19]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[20]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdata[21]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tdata[22]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata[24]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata[25]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata[26]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata[27]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tdata[28]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tdata[29]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tdata[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[30]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tdata[31]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata[9]_INST_0\ : label is "soft_lutpair5";
begin
full_sum_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => full_sum_carry_n_0,
      CO(2) => full_sum_carry_n_1,
      CO(1) => full_sum_carry_n_2,
      CO(0) => full_sum_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => s0_axis_tdata(3 downto 0),
      O(3) => full_sum_carry_n_4,
      O(2) => full_sum_carry_n_5,
      O(1) => full_sum_carry_n_6,
      O(0) => full_sum_carry_n_7,
      S(3) => full_sum_carry_i_1_n_0,
      S(2) => full_sum_carry_i_2_n_0,
      S(1) => full_sum_carry_i_3_n_0,
      S(0) => full_sum_carry_i_4_n_0
    );
\full_sum_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => full_sum_carry_n_0,
      CO(3) => \full_sum_carry__0_n_0\,
      CO(2) => \full_sum_carry__0_n_1\,
      CO(1) => \full_sum_carry__0_n_2\,
      CO(0) => \full_sum_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => s0_axis_tdata(7 downto 4),
      O(3) => \full_sum_carry__0_n_4\,
      O(2) => \full_sum_carry__0_n_5\,
      O(1) => \full_sum_carry__0_n_6\,
      O(0) => \full_sum_carry__0_n_7\,
      S(3) => \full_sum_carry__0_i_1_n_0\,
      S(2) => \full_sum_carry__0_i_2_n_0\,
      S(1) => \full_sum_carry__0_i_3_n_0\,
      S(0) => \full_sum_carry__0_i_4_n_0\
    );
\full_sum_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(7),
      I1 => s1_axis_tdata(7),
      I2 => s1_axis_tvalid,
      O => \full_sum_carry__0_i_1_n_0\
    );
\full_sum_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(6),
      I1 => s1_axis_tdata(6),
      I2 => s1_axis_tvalid,
      O => \full_sum_carry__0_i_2_n_0\
    );
\full_sum_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(5),
      I1 => s1_axis_tdata(5),
      I2 => s1_axis_tvalid,
      O => \full_sum_carry__0_i_3_n_0\
    );
\full_sum_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(4),
      I1 => s1_axis_tdata(4),
      I2 => s1_axis_tvalid,
      O => \full_sum_carry__0_i_4_n_0\
    );
\full_sum_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \full_sum_carry__0_n_0\,
      CO(3) => \full_sum_carry__1_n_0\,
      CO(2) => \full_sum_carry__1_n_1\,
      CO(1) => \full_sum_carry__1_n_2\,
      CO(0) => \full_sum_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => s0_axis_tdata(11 downto 8),
      O(3) => \full_sum_carry__1_n_4\,
      O(2) => \full_sum_carry__1_n_5\,
      O(1) => \full_sum_carry__1_n_6\,
      O(0) => \full_sum_carry__1_n_7\,
      S(3) => \full_sum_carry__1_i_1_n_0\,
      S(2) => \full_sum_carry__1_i_2_n_0\,
      S(1) => \full_sum_carry__1_i_3_n_0\,
      S(0) => \full_sum_carry__1_i_4_n_0\
    );
\full_sum_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(11),
      I1 => s1_axis_tdata(11),
      I2 => s1_axis_tvalid,
      O => \full_sum_carry__1_i_1_n_0\
    );
\full_sum_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(10),
      I1 => s1_axis_tdata(10),
      I2 => s1_axis_tvalid,
      O => \full_sum_carry__1_i_2_n_0\
    );
\full_sum_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(9),
      I1 => s1_axis_tdata(9),
      I2 => s1_axis_tvalid,
      O => \full_sum_carry__1_i_3_n_0\
    );
\full_sum_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(8),
      I1 => s1_axis_tdata(8),
      I2 => s1_axis_tvalid,
      O => \full_sum_carry__1_i_4_n_0\
    );
\full_sum_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \full_sum_carry__1_n_0\,
      CO(3) => \full_sum_carry__2_n_0\,
      CO(2) => \full_sum_carry__2_n_1\,
      CO(1) => \full_sum_carry__2_n_2\,
      CO(0) => \full_sum_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => s0_axis_tdata(15 downto 12),
      O(3) => \full_sum_carry__2_n_4\,
      O(2) => \full_sum_carry__2_n_5\,
      O(1) => \full_sum_carry__2_n_6\,
      O(0) => \full_sum_carry__2_n_7\,
      S(3) => \full_sum_carry__2_i_1_n_0\,
      S(2) => \full_sum_carry__2_i_2_n_0\,
      S(1) => \full_sum_carry__2_i_3_n_0\,
      S(0) => \full_sum_carry__2_i_4_n_0\
    );
\full_sum_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(15),
      I1 => s1_axis_tdata(15),
      I2 => s1_axis_tvalid,
      O => \full_sum_carry__2_i_1_n_0\
    );
\full_sum_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(14),
      I1 => s1_axis_tdata(14),
      I2 => s1_axis_tvalid,
      O => \full_sum_carry__2_i_2_n_0\
    );
\full_sum_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(13),
      I1 => s1_axis_tdata(13),
      I2 => s1_axis_tvalid,
      O => \full_sum_carry__2_i_3_n_0\
    );
\full_sum_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(12),
      I1 => s1_axis_tdata(12),
      I2 => s1_axis_tvalid,
      O => \full_sum_carry__2_i_4_n_0\
    );
\full_sum_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \full_sum_carry__2_n_0\,
      CO(3) => \full_sum_carry__3_n_0\,
      CO(2) => \full_sum_carry__3_n_1\,
      CO(1) => \full_sum_carry__3_n_2\,
      CO(0) => \full_sum_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => s0_axis_tdata(19 downto 16),
      O(3) => \full_sum_carry__3_n_4\,
      O(2) => \full_sum_carry__3_n_5\,
      O(1) => \full_sum_carry__3_n_6\,
      O(0) => \full_sum_carry__3_n_7\,
      S(3) => \full_sum_carry__3_i_1_n_0\,
      S(2) => \full_sum_carry__3_i_2_n_0\,
      S(1) => \full_sum_carry__3_i_3_n_0\,
      S(0) => \full_sum_carry__3_i_4_n_0\
    );
\full_sum_carry__3_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(19),
      I1 => s1_axis_tdata(19),
      I2 => s1_axis_tvalid,
      O => \full_sum_carry__3_i_1_n_0\
    );
\full_sum_carry__3_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(18),
      I1 => s1_axis_tdata(18),
      I2 => s1_axis_tvalid,
      O => \full_sum_carry__3_i_2_n_0\
    );
\full_sum_carry__3_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(17),
      I1 => s1_axis_tdata(17),
      I2 => s1_axis_tvalid,
      O => \full_sum_carry__3_i_3_n_0\
    );
\full_sum_carry__3_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(16),
      I1 => s1_axis_tdata(16),
      I2 => s1_axis_tvalid,
      O => \full_sum_carry__3_i_4_n_0\
    );
\full_sum_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \full_sum_carry__3_n_0\,
      CO(3) => \full_sum_carry__4_n_0\,
      CO(2) => \full_sum_carry__4_n_1\,
      CO(1) => \full_sum_carry__4_n_2\,
      CO(0) => \full_sum_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => s0_axis_tdata(23 downto 20),
      O(3) => \full_sum_carry__4_n_4\,
      O(2) => \full_sum_carry__4_n_5\,
      O(1) => \full_sum_carry__4_n_6\,
      O(0) => \full_sum_carry__4_n_7\,
      S(3) => \full_sum_carry__4_i_1_n_0\,
      S(2) => \full_sum_carry__4_i_2_n_0\,
      S(1) => \full_sum_carry__4_i_3_n_0\,
      S(0) => \full_sum_carry__4_i_4_n_0\
    );
\full_sum_carry__4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(23),
      I1 => s1_axis_tdata(23),
      I2 => s1_axis_tvalid,
      O => \full_sum_carry__4_i_1_n_0\
    );
\full_sum_carry__4_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(22),
      I1 => s1_axis_tdata(22),
      I2 => s1_axis_tvalid,
      O => \full_sum_carry__4_i_2_n_0\
    );
\full_sum_carry__4_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(21),
      I1 => s1_axis_tdata(21),
      I2 => s1_axis_tvalid,
      O => \full_sum_carry__4_i_3_n_0\
    );
\full_sum_carry__4_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(20),
      I1 => s1_axis_tdata(20),
      I2 => s1_axis_tvalid,
      O => \full_sum_carry__4_i_4_n_0\
    );
\full_sum_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \full_sum_carry__4_n_0\,
      CO(3) => \full_sum_carry__5_n_0\,
      CO(2) => \full_sum_carry__5_n_1\,
      CO(1) => \full_sum_carry__5_n_2\,
      CO(0) => \full_sum_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => s0_axis_tdata(27 downto 24),
      O(3) => \full_sum_carry__5_n_4\,
      O(2) => \full_sum_carry__5_n_5\,
      O(1) => \full_sum_carry__5_n_6\,
      O(0) => \full_sum_carry__5_n_7\,
      S(3) => \full_sum_carry__5_i_1_n_0\,
      S(2) => \full_sum_carry__5_i_2_n_0\,
      S(1) => \full_sum_carry__5_i_3_n_0\,
      S(0) => \full_sum_carry__5_i_4_n_0\
    );
\full_sum_carry__5_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(27),
      I1 => s1_axis_tdata(27),
      I2 => s1_axis_tvalid,
      O => \full_sum_carry__5_i_1_n_0\
    );
\full_sum_carry__5_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(26),
      I1 => s1_axis_tdata(26),
      I2 => s1_axis_tvalid,
      O => \full_sum_carry__5_i_2_n_0\
    );
\full_sum_carry__5_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(25),
      I1 => s1_axis_tdata(25),
      I2 => s1_axis_tvalid,
      O => \full_sum_carry__5_i_3_n_0\
    );
\full_sum_carry__5_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(24),
      I1 => s1_axis_tdata(24),
      I2 => s1_axis_tvalid,
      O => \full_sum_carry__5_i_4_n_0\
    );
\full_sum_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \full_sum_carry__5_n_0\,
      CO(3) => \full_sum_carry__6_n_0\,
      CO(2) => \full_sum_carry__6_n_1\,
      CO(1) => \full_sum_carry__6_n_2\,
      CO(0) => \full_sum_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => \full_sum_carry__6_i_1_n_0\,
      DI(2 downto 0) => s0_axis_tdata(30 downto 28),
      O(3) => \full_sum_carry__6_n_4\,
      O(2) => \full_sum_carry__6_n_5\,
      O(1) => \full_sum_carry__6_n_6\,
      O(0) => \full_sum_carry__6_n_7\,
      S(3) => \full_sum_carry__6_i_2_n_0\,
      S(2) => \full_sum_carry__6_i_3_n_0\,
      S(1) => \full_sum_carry__6_i_4_n_0\,
      S(0) => \full_sum_carry__6_i_5_n_0\
    );
\full_sum_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s0_axis_tdata(31),
      O => \full_sum_carry__6_i_1_n_0\
    );
\full_sum_carry__6_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(31),
      I1 => s1_axis_tdata(31),
      I2 => s1_axis_tvalid,
      O => \full_sum_carry__6_i_2_n_0\
    );
\full_sum_carry__6_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(30),
      I1 => s1_axis_tdata(30),
      I2 => s1_axis_tvalid,
      O => \full_sum_carry__6_i_3_n_0\
    );
\full_sum_carry__6_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(29),
      I1 => s1_axis_tdata(29),
      I2 => s1_axis_tvalid,
      O => \full_sum_carry__6_i_4_n_0\
    );
\full_sum_carry__6_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(28),
      I1 => s1_axis_tdata(28),
      I2 => s1_axis_tvalid,
      O => \full_sum_carry__6_i_5_n_0\
    );
full_sum_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(3),
      I1 => s1_axis_tdata(3),
      I2 => s1_axis_tvalid,
      O => full_sum_carry_i_1_n_0
    );
full_sum_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(2),
      I1 => s1_axis_tdata(2),
      I2 => s1_axis_tvalid,
      O => full_sum_carry_i_2_n_0
    );
full_sum_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(1),
      I1 => s1_axis_tdata(1),
      I2 => s1_axis_tvalid,
      O => full_sum_carry_i_3_n_0
    );
full_sum_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s0_axis_tdata(0),
      I1 => s1_axis_tdata(0),
      I2 => s1_axis_tvalid,
      O => full_sum_carry_i_4_n_0
    );
m_axis_tdata1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => NLW_m_axis_tdata1_carry_CO_UNCONNECTED(3 downto 2),
      CO(1) => m_axis_tdata1,
      CO(0) => m_axis_tdata1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \full_sum_carry__6_n_4\,
      O(3 downto 0) => NLW_m_axis_tdata1_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => m_axis_tdata1_carry_i_1_n_3,
      S(0) => m_axis_tdata1_carry_i_2_n_0
    );
m_axis_tdata1_carry_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => \full_sum_carry__6_n_0\,
      CO(3 downto 1) => NLW_m_axis_tdata1_carry_i_1_CO_UNCONNECTED(3 downto 1),
      CO(0) => m_axis_tdata1_carry_i_1_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_m_axis_tdata1_carry_i_1_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => B"0001"
    );
m_axis_tdata1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \full_sum_carry__6_n_5\,
      I1 => \full_sum_carry__6_n_4\,
      O => m_axis_tdata1_carry_i_2_n_0
    );
m_axis_tdata2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => NLW_m_axis_tdata2_carry_CO_UNCONNECTED(3 downto 2),
      CO(1) => m_axis_tdata2,
      CO(0) => m_axis_tdata2_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => m_axis_tdata2_carry_i_1_n_0,
      O(3 downto 0) => NLW_m_axis_tdata2_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => m_axis_tdata2_carry_i_2_n_0,
      S(0) => m_axis_tdata2_carry_i_3_n_0
    );
m_axis_tdata2_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \full_sum_carry__6_n_4\,
      O => m_axis_tdata2_carry_i_1_n_0
    );
m_axis_tdata2_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_tdata1_carry_i_1_n_3,
      O => m_axis_tdata2_carry_i_2_n_0
    );
m_axis_tdata2_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \full_sum_carry__6_n_4\,
      I1 => \full_sum_carry__6_n_5\,
      O => m_axis_tdata2_carry_i_3_n_0
    );
\m_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => m_axis_tdata2,
      I2 => full_sum_carry_n_7,
      O => m_axis_tdata(0)
    );
\m_axis_tdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => m_axis_tdata2,
      I2 => \full_sum_carry__1_n_5\,
      O => m_axis_tdata(10)
    );
\m_axis_tdata[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => m_axis_tdata2,
      I2 => \full_sum_carry__1_n_4\,
      O => m_axis_tdata(11)
    );
\m_axis_tdata[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => m_axis_tdata2,
      I2 => \full_sum_carry__2_n_7\,
      O => m_axis_tdata(12)
    );
\m_axis_tdata[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => m_axis_tdata2,
      I2 => \full_sum_carry__2_n_6\,
      O => m_axis_tdata(13)
    );
\m_axis_tdata[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => m_axis_tdata2,
      I2 => \full_sum_carry__2_n_5\,
      O => m_axis_tdata(14)
    );
\m_axis_tdata[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => m_axis_tdata2,
      I2 => \full_sum_carry__2_n_4\,
      O => m_axis_tdata(15)
    );
\m_axis_tdata[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => m_axis_tdata2,
      I2 => \full_sum_carry__3_n_7\,
      O => m_axis_tdata(16)
    );
\m_axis_tdata[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => m_axis_tdata2,
      I2 => \full_sum_carry__3_n_6\,
      O => m_axis_tdata(17)
    );
\m_axis_tdata[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => m_axis_tdata2,
      I2 => \full_sum_carry__3_n_5\,
      O => m_axis_tdata(18)
    );
\m_axis_tdata[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => m_axis_tdata2,
      I2 => \full_sum_carry__3_n_4\,
      O => m_axis_tdata(19)
    );
\m_axis_tdata[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => m_axis_tdata2,
      I2 => full_sum_carry_n_6,
      O => m_axis_tdata(1)
    );
\m_axis_tdata[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => m_axis_tdata2,
      I2 => \full_sum_carry__4_n_7\,
      O => m_axis_tdata(20)
    );
\m_axis_tdata[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => m_axis_tdata2,
      I2 => \full_sum_carry__4_n_6\,
      O => m_axis_tdata(21)
    );
\m_axis_tdata[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => m_axis_tdata2,
      I2 => \full_sum_carry__4_n_5\,
      O => m_axis_tdata(22)
    );
\m_axis_tdata[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => m_axis_tdata2,
      I2 => \full_sum_carry__4_n_4\,
      O => m_axis_tdata(23)
    );
\m_axis_tdata[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => m_axis_tdata2,
      I2 => \full_sum_carry__5_n_7\,
      O => m_axis_tdata(24)
    );
\m_axis_tdata[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => m_axis_tdata2,
      I2 => \full_sum_carry__5_n_6\,
      O => m_axis_tdata(25)
    );
\m_axis_tdata[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => m_axis_tdata2,
      I2 => \full_sum_carry__5_n_5\,
      O => m_axis_tdata(26)
    );
\m_axis_tdata[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => m_axis_tdata2,
      I2 => \full_sum_carry__5_n_4\,
      O => m_axis_tdata(27)
    );
\m_axis_tdata[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => m_axis_tdata2,
      I2 => \full_sum_carry__6_n_7\,
      O => m_axis_tdata(28)
    );
\m_axis_tdata[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => m_axis_tdata2,
      I2 => \full_sum_carry__6_n_6\,
      O => m_axis_tdata(29)
    );
\m_axis_tdata[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => m_axis_tdata2,
      I2 => full_sum_carry_n_5,
      O => m_axis_tdata(2)
    );
\m_axis_tdata[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => m_axis_tdata2,
      I2 => \full_sum_carry__6_n_5\,
      O => m_axis_tdata(30)
    );
\m_axis_tdata[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \full_sum_carry__6_n_4\,
      I1 => m_axis_tdata2,
      I2 => m_axis_tdata1,
      O => m_axis_tdata(31)
    );
\m_axis_tdata[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => m_axis_tdata2,
      I2 => full_sum_carry_n_4,
      O => m_axis_tdata(3)
    );
\m_axis_tdata[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => m_axis_tdata2,
      I2 => \full_sum_carry__0_n_7\,
      O => m_axis_tdata(4)
    );
\m_axis_tdata[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => m_axis_tdata2,
      I2 => \full_sum_carry__0_n_6\,
      O => m_axis_tdata(5)
    );
\m_axis_tdata[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => m_axis_tdata2,
      I2 => \full_sum_carry__0_n_5\,
      O => m_axis_tdata(6)
    );
\m_axis_tdata[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => m_axis_tdata2,
      I2 => \full_sum_carry__0_n_4\,
      O => m_axis_tdata(7)
    );
\m_axis_tdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => m_axis_tdata2,
      I2 => \full_sum_carry__1_n_7\,
      O => m_axis_tdata(8)
    );
\m_axis_tdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => m_axis_tdata2,
      I2 => \full_sum_carry__1_n_6\,
      O => m_axis_tdata(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_stream_looper_mi_0_0 is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    s0_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s0_axis_tvalid : in STD_LOGIC;
    s0_axis_tlast : in STD_LOGIC;
    s0_axis_tready : out STD_LOGIC;
    s1_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s1_axis_tvalid : in STD_LOGIC;
    s1_axis_tlast : in STD_LOGIC;
    s1_axis_tready : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_axi_stream_looper_mi_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axi_stream_looper_mi_0_0 : entity is "design_1_axi_stream_looper_mi_0_0,axi_stream_looper_mixer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_axi_stream_looper_mi_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_axi_stream_looper_mi_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_axi_stream_looper_mi_0_0 : entity is "axi_stream_looper_mixer,Vivado 2025.1";
end design_1_axi_stream_looper_mi_0_0;

architecture STRUCTURE of design_1_axi_stream_looper_mi_0_0 is
  signal \^m_axis_tready\ : STD_LOGIC;
  signal \^s0_axis_tlast\ : STD_LOGIC;
  signal \^s0_axis_tvalid\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:s0_axis:s1_axis, ASSOCIATED_RESET resetn, FREQ_HZ 12288013, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_MODE of resetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s0_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s0_axis TLAST";
  attribute X_INTERFACE_INFO of s0_axis_tready : signal is "xilinx.com:interface:axis:1.0 s0_axis TREADY";
  attribute X_INTERFACE_INFO of s0_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s0_axis TVALID";
  attribute X_INTERFACE_INFO of s1_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s1_axis TLAST";
  attribute X_INTERFACE_INFO of s1_axis_tready : signal is "xilinx.com:interface:axis:1.0 s1_axis TREADY";
  attribute X_INTERFACE_INFO of s1_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s1_axis TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_MODE of m_axis_tdata : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axis_tdata : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 12288013, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s0_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s0_axis TDATA";
  attribute X_INTERFACE_MODE of s0_axis_tdata : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s0_axis_tdata : signal is "XIL_INTERFACENAME s0_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 12288013, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s1_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s1_axis TDATA";
  attribute X_INTERFACE_MODE of s1_axis_tdata : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s1_axis_tdata : signal is "XIL_INTERFACENAME s1_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 12288013, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  \^m_axis_tready\ <= m_axis_tready;
  \^s0_axis_tlast\ <= s0_axis_tlast;
  \^s0_axis_tvalid\ <= s0_axis_tvalid;
  m_axis_tlast <= \^s0_axis_tlast\;
  m_axis_tvalid <= \^s0_axis_tvalid\;
  s0_axis_tready <= \^m_axis_tready\;
inst: entity work.design_1_axi_stream_looper_mi_0_0_axi_stream_looper_mixer
     port map (
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      s0_axis_tdata(31 downto 0) => s0_axis_tdata(31 downto 0),
      s1_axis_tdata(31 downto 0) => s1_axis_tdata(31 downto 0),
      s1_axis_tvalid => s1_axis_tvalid
    );
s1_axis_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s0_axis_tvalid\,
      I1 => \^m_axis_tready\,
      O => s1_axis_tready
    );
end STRUCTURE;
