-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Mon Jun 14 18:53:23 2021
-- Host        : DESKTOP-AUBSA4O running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/Users/Alex/Documents/GitHub/RedPitaya_Acquisition/RedPitaya_Acquisition/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_DDS_output_div_by_2_0_0/design_1_DDS_output_div_by_2_0_0_sim_netlist.vhdl
-- Design      : design_1_DDS_output_div_by_2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_DDS_output_div_by_2_0_0_DDS_output_div_by_2 is
  port (
    data_out : out STD_LOGIC_VECTOR ( 13 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_out[12]_INST_0_i_2_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_DDS_output_div_by_2_0_0_DDS_output_div_by_2 : entity is "DDS_output_div_by_2";
end design_1_DDS_output_div_by_2_0_0_DDS_output_div_by_2;

architecture STRUCTURE of design_1_DDS_output_div_by_2_0_0_DDS_output_div_by_2 is
  signal data_out1 : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal data_out3 : STD_LOGIC_VECTOR ( 13 downto 1 );
  signal \data_out[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_out[0]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \data_out[0]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \data_out[0]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \data_out[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \data_out[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \data_out[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \data_out[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \data_out[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \data_out[12]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \data_out[12]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \data_out[12]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \data_out[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_out[12]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \data_out[12]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \data_out[12]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \data_out[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \data_out[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \data_out[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \data_out[12]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \data_out[12]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \data_out[12]_INST_0_i_7_n_1\ : STD_LOGIC;
  signal \data_out[12]_INST_0_i_7_n_2\ : STD_LOGIC;
  signal \data_out[12]_INST_0_i_7_n_3\ : STD_LOGIC;
  signal \data_out[13]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \data_out[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_out[4]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \data_out[4]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \data_out[4]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \data_out[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \data_out[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \data_out[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \data_out[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \data_out[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \data_out[8]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \data_out[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_out[8]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \data_out[8]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \data_out[8]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \data_out[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \data_out[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \data_out[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \data_out[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \data_out[8]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \data_out[8]_INST_0_i_6_n_1\ : STD_LOGIC;
  signal \data_out[8]_INST_0_i_6_n_2\ : STD_LOGIC;
  signal \data_out[8]_INST_0_i_6_n_3\ : STD_LOGIC;
  signal \data_out[8]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \data_out[8]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \data_out[8]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \NLW_data_out[12]_INST_0_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_data_out[12]_INST_0_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_data_out[13]_INST_0_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_data_out[13]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_out[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_out[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_out[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_out[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_out[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_out[9]_INST_0\ : label is "soft_lutpair4";
begin
\data_out[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => data_in(1),
      I1 => data_out3(1),
      I2 => data_in(13),
      O => data_out(0)
    );
\data_out[0]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \data_out[0]_INST_0_i_1_n_0\,
      CO(2) => \data_out[0]_INST_0_i_1_n_1\,
      CO(1) => \data_out[0]_INST_0_i_1_n_2\,
      CO(0) => \data_out[0]_INST_0_i_1_n_3\,
      CYINIT => \data_out[0]_INST_0_i_2_n_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data_out3(4 downto 1),
      S(3) => \data_out[0]_INST_0_i_3_n_0\,
      S(2) => \data_out[0]_INST_0_i_4_n_0\,
      S(1) => \data_out[0]_INST_0_i_5_n_0\,
      S(0) => \data_out[0]_INST_0_i_6_n_0\
    );
\data_out[0]_INST_0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_in(0),
      O => \data_out[0]_INST_0_i_2_n_0\
    );
\data_out[0]_INST_0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_in(4),
      O => \data_out[0]_INST_0_i_3_n_0\
    );
\data_out[0]_INST_0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_in(3),
      O => \data_out[0]_INST_0_i_4_n_0\
    );
\data_out[0]_INST_0_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_in(2),
      O => \data_out[0]_INST_0_i_5_n_0\
    );
\data_out[0]_INST_0_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_in(1),
      O => \data_out[0]_INST_0_i_6_n_0\
    );
\data_out[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_out1(10),
      I1 => data_in(11),
      I2 => data_in(13),
      O => data_out(10)
    );
\data_out[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_out1(11),
      I1 => data_in(13),
      I2 => data_in(12),
      O => data_out(11)
    );
\data_out[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_out1(12),
      I1 => data_in(13),
      O => data_out(12)
    );
\data_out[12]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out[8]_INST_0_i_1_n_0\,
      CO(3) => \data_out[12]_INST_0_i_1_n_0\,
      CO(2) => \data_out[12]_INST_0_i_1_n_1\,
      CO(1) => \data_out[12]_INST_0_i_1_n_2\,
      CO(0) => \data_out[12]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data_out1(12 downto 9),
      S(3) => \data_out[12]_INST_0_i_2_n_0\,
      S(2) => \data_out[12]_INST_0_i_3_n_0\,
      S(1) => \data_out[12]_INST_0_i_4_n_0\,
      S(0) => \data_out[12]_INST_0_i_5_n_0\
    );
\data_out[12]_INST_0_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_in(11),
      O => \data_out[12]_INST_0_i_10_n_0\
    );
\data_out[12]_INST_0_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_in(10),
      O => \data_out[12]_INST_0_i_11_n_0\
    );
\data_out[12]_INST_0_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_in(9),
      O => \data_out[12]_INST_0_i_12_n_0\
    );
\data_out[12]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => data_in(13),
      I1 => data_out3(13),
      O => \data_out[12]_INST_0_i_2_n_0\
    );
\data_out[12]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => data_in(12),
      I1 => data_in(13),
      I2 => data_out3(12),
      O => \data_out[12]_INST_0_i_3_n_0\
    );
\data_out[12]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"27"
    )
        port map (
      I0 => data_in(13),
      I1 => data_out3(11),
      I2 => data_in(11),
      O => \data_out[12]_INST_0_i_4_n_0\
    );
\data_out[12]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"27"
    )
        port map (
      I0 => data_in(13),
      I1 => data_out3(10),
      I2 => data_in(10),
      O => \data_out[12]_INST_0_i_5_n_0\
    );
\data_out[12]_INST_0_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out[12]_INST_0_i_7_n_0\,
      CO(3 downto 0) => \NLW_data_out[12]_INST_0_i_6_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_data_out[12]_INST_0_i_6_O_UNCONNECTED\(3 downto 1),
      O(0) => data_out3(13),
      S(3 downto 1) => B"000",
      S(0) => \data_out[12]_INST_0_i_2_0\(0)
    );
\data_out[12]_INST_0_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out[8]_INST_0_i_6_n_0\,
      CO(3) => \data_out[12]_INST_0_i_7_n_0\,
      CO(2) => \data_out[12]_INST_0_i_7_n_1\,
      CO(1) => \data_out[12]_INST_0_i_7_n_2\,
      CO(0) => \data_out[12]_INST_0_i_7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data_out3(12 downto 9),
      S(3) => S(0),
      S(2) => \data_out[12]_INST_0_i_10_n_0\,
      S(1) => \data_out[12]_INST_0_i_11_n_0\,
      S(0) => \data_out[12]_INST_0_i_12_n_0\
    );
\data_out[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in(13),
      I1 => \data_out[13]_INST_0_i_1_n_3\,
      O => data_out(13)
    );
\data_out[13]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out[12]_INST_0_i_1_n_0\,
      CO(3 downto 1) => \NLW_data_out[13]_INST_0_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \data_out[13]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_data_out[13]_INST_0_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\data_out[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_out1(1),
      I1 => data_in(2),
      I2 => data_in(13),
      O => data_out(1)
    );
\data_out[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_out1(2),
      I1 => data_in(3),
      I2 => data_in(13),
      O => data_out(2)
    );
\data_out[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_out1(3),
      I1 => data_in(4),
      I2 => data_in(13),
      O => data_out(3)
    );
\data_out[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_out1(4),
      I1 => data_in(5),
      I2 => data_in(13),
      O => data_out(4)
    );
\data_out[4]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \data_out[4]_INST_0_i_1_n_0\,
      CO(2) => \data_out[4]_INST_0_i_1_n_1\,
      CO(1) => \data_out[4]_INST_0_i_1_n_2\,
      CO(0) => \data_out[4]_INST_0_i_1_n_3\,
      CYINIT => \data_out[4]_INST_0_i_2_n_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data_out1(4 downto 1),
      S(3) => \data_out[4]_INST_0_i_3_n_0\,
      S(2) => \data_out[4]_INST_0_i_4_n_0\,
      S(1) => \data_out[4]_INST_0_i_5_n_0\,
      S(0) => \data_out[4]_INST_0_i_6_n_0\
    );
\data_out[4]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"27"
    )
        port map (
      I0 => data_in(13),
      I1 => data_out3(1),
      I2 => data_in(1),
      O => \data_out[4]_INST_0_i_2_n_0\
    );
\data_out[4]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"27"
    )
        port map (
      I0 => data_in(13),
      I1 => data_out3(5),
      I2 => data_in(5),
      O => \data_out[4]_INST_0_i_3_n_0\
    );
\data_out[4]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"27"
    )
        port map (
      I0 => data_in(13),
      I1 => data_out3(4),
      I2 => data_in(4),
      O => \data_out[4]_INST_0_i_4_n_0\
    );
\data_out[4]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"27"
    )
        port map (
      I0 => data_in(13),
      I1 => data_out3(3),
      I2 => data_in(3),
      O => \data_out[4]_INST_0_i_5_n_0\
    );
\data_out[4]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"27"
    )
        port map (
      I0 => data_in(13),
      I1 => data_out3(2),
      I2 => data_in(2),
      O => \data_out[4]_INST_0_i_6_n_0\
    );
\data_out[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_out1(5),
      I1 => data_in(6),
      I2 => data_in(13),
      O => data_out(5)
    );
\data_out[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_out1(6),
      I1 => data_in(7),
      I2 => data_in(13),
      O => data_out(6)
    );
\data_out[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_out1(7),
      I1 => data_in(8),
      I2 => data_in(13),
      O => data_out(7)
    );
\data_out[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_out1(8),
      I1 => data_in(9),
      I2 => data_in(13),
      O => data_out(8)
    );
\data_out[8]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out[4]_INST_0_i_1_n_0\,
      CO(3) => \data_out[8]_INST_0_i_1_n_0\,
      CO(2) => \data_out[8]_INST_0_i_1_n_1\,
      CO(1) => \data_out[8]_INST_0_i_1_n_2\,
      CO(0) => \data_out[8]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data_out1(8 downto 5),
      S(3) => \data_out[8]_INST_0_i_2_n_0\,
      S(2) => \data_out[8]_INST_0_i_3_n_0\,
      S(1) => \data_out[8]_INST_0_i_4_n_0\,
      S(0) => \data_out[8]_INST_0_i_5_n_0\
    );
\data_out[8]_INST_0_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_in(5),
      O => \data_out[8]_INST_0_i_10_n_0\
    );
\data_out[8]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"27"
    )
        port map (
      I0 => data_in(13),
      I1 => data_out3(9),
      I2 => data_in(9),
      O => \data_out[8]_INST_0_i_2_n_0\
    );
\data_out[8]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"27"
    )
        port map (
      I0 => data_in(13),
      I1 => data_out3(8),
      I2 => data_in(8),
      O => \data_out[8]_INST_0_i_3_n_0\
    );
\data_out[8]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"27"
    )
        port map (
      I0 => data_in(13),
      I1 => data_out3(7),
      I2 => data_in(7),
      O => \data_out[8]_INST_0_i_4_n_0\
    );
\data_out[8]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"27"
    )
        port map (
      I0 => data_in(13),
      I1 => data_out3(6),
      I2 => data_in(6),
      O => \data_out[8]_INST_0_i_5_n_0\
    );
\data_out[8]_INST_0_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out[0]_INST_0_i_1_n_0\,
      CO(3) => \data_out[8]_INST_0_i_6_n_0\,
      CO(2) => \data_out[8]_INST_0_i_6_n_1\,
      CO(1) => \data_out[8]_INST_0_i_6_n_2\,
      CO(0) => \data_out[8]_INST_0_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data_out3(8 downto 5),
      S(3) => \data_out[8]_INST_0_i_7_n_0\,
      S(2) => \data_out[8]_INST_0_i_8_n_0\,
      S(1) => \data_out[8]_INST_0_i_9_n_0\,
      S(0) => \data_out[8]_INST_0_i_10_n_0\
    );
\data_out[8]_INST_0_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_in(8),
      O => \data_out[8]_INST_0_i_7_n_0\
    );
\data_out[8]_INST_0_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_in(7),
      O => \data_out[8]_INST_0_i_8_n_0\
    );
\data_out[8]_INST_0_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_in(6),
      O => \data_out[8]_INST_0_i_9_n_0\
    );
\data_out[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_out1(9),
      I1 => data_in(10),
      I2 => data_in(13),
      O => data_out(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_DDS_output_div_by_2_0_0 is
  port (
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_DDS_output_div_by_2_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_DDS_output_div_by_2_0_0 : entity is "design_1_DDS_output_div_by_2_0_0,DDS_output_div_by_2,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_DDS_output_div_by_2_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_DDS_output_div_by_2_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_DDS_output_div_by_2_0_0 : entity is "DDS_output_div_by_2,Vivado 2019.1";
end design_1_DDS_output_div_by_2_0_0;

architecture STRUCTURE of design_1_DDS_output_div_by_2_0_0 is
  signal \data_out[12]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \data_out[12]_INST_0_i_9_n_0\ : STD_LOGIC;
begin
U0: entity work.design_1_DDS_output_div_by_2_0_0_DDS_output_div_by_2
     port map (
      S(0) => \data_out[12]_INST_0_i_9_n_0\,
      data_in(13 downto 0) => data_in(13 downto 0),
      data_out(13 downto 0) => data_out(13 downto 0),
      \data_out[12]_INST_0_i_2_0\(0) => \data_out[12]_INST_0_i_8_n_0\
    );
\data_out[12]_INST_0_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_in(13),
      O => \data_out[12]_INST_0_i_8_n_0\
    );
\data_out[12]_INST_0_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_in(12),
      O => \data_out[12]_INST_0_i_9_n_0\
    );
end STRUCTURE;
