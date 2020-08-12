-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Mon Apr 27 16:19:17 2020
-- Host        : DESKTOP-AUBSA4O running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/Red_Pitaya/Acq_Card/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_DACs_wrapper_0_0/design_1_DACs_wrapper_0_0_sim_netlist.vhdl
-- Design      : design_1_DACs_wrapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_DACs_wrapper_0_0_DACs_wrapper is
  port (
    dac_clk_o : out STD_LOGIC;
    dac_wrt_o : out STD_LOGIC;
    dac_sel_o : out STD_LOGIC;
    dac_rst_o : out STD_LOGIC;
    dac_dat_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_a : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_a_tvalid : in STD_LOGIC;
    dac_b : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_b_tvalid : in STD_LOGIC;
    dac_clk : in STD_LOGIC;
    clk : in STD_LOGIC;
    pll_locked : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_DACs_wrapper_0_0_DACs_wrapper : entity is "DACs_wrapper";
end design_1_DACs_wrapper_0_0_DACs_wrapper;

architecture STRUCTURE of design_1_DACs_wrapper_0_0_DACs_wrapper is
  signal dac_dat_a : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \dac_dat_a[0]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[10]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[11]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[12]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[13]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[1]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[2]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[3]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[4]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[5]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[6]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[7]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[8]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[9]_i_1_n_0\ : STD_LOGIC;
  signal dac_dat_b : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \dac_dat_b[0]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_b[10]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_b[11]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_b[12]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_b[13]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_b[1]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_b[2]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_b[3]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_b[4]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_b[5]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_b[6]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_b[7]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_b[8]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_b[9]_i_1_n_0\ : STD_LOGIC;
  signal dac_rst : STD_LOGIC;
  signal dac_rst_i_1_n_0 : STD_LOGIC;
  signal NLW_ODDR_clk_R_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR_clk_S_UNCONNECTED : STD_LOGIC;
  signal \NLW_ODDR_dac_dat[0]_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ODDR_dac_dat[10]_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ODDR_dac_dat[11]_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ODDR_dac_dat[12]_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ODDR_dac_dat[13]_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ODDR_dac_dat[1]_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ODDR_dac_dat[2]_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ODDR_dac_dat[3]_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ODDR_dac_dat[4]_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ODDR_dac_dat[5]_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ODDR_dac_dat[6]_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ODDR_dac_dat[7]_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ODDR_dac_dat[8]_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ODDR_dac_dat[9]_S_UNCONNECTED\ : STD_LOGIC;
  signal NLW_ODDR_rst_R_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR_rst_S_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR_sel_S_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR_wrt_R_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR_wrt_S_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of ODDR_clk : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of ODDR_clk : label is "MLO";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of ODDR_clk : label is "TRUE";
  attribute BOX_TYPE of \ODDR_dac_dat[0]\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \ODDR_dac_dat[0]\ : label is "MLO";
  attribute \__SRVAL\ of \ODDR_dac_dat[0]\ : label is "FALSE";
  attribute BOX_TYPE of \ODDR_dac_dat[10]\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \ODDR_dac_dat[10]\ : label is "MLO";
  attribute \__SRVAL\ of \ODDR_dac_dat[10]\ : label is "FALSE";
  attribute BOX_TYPE of \ODDR_dac_dat[11]\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \ODDR_dac_dat[11]\ : label is "MLO";
  attribute \__SRVAL\ of \ODDR_dac_dat[11]\ : label is "FALSE";
  attribute BOX_TYPE of \ODDR_dac_dat[12]\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \ODDR_dac_dat[12]\ : label is "MLO";
  attribute \__SRVAL\ of \ODDR_dac_dat[12]\ : label is "FALSE";
  attribute BOX_TYPE of \ODDR_dac_dat[13]\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \ODDR_dac_dat[13]\ : label is "MLO";
  attribute \__SRVAL\ of \ODDR_dac_dat[13]\ : label is "FALSE";
  attribute BOX_TYPE of \ODDR_dac_dat[1]\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \ODDR_dac_dat[1]\ : label is "MLO";
  attribute \__SRVAL\ of \ODDR_dac_dat[1]\ : label is "FALSE";
  attribute BOX_TYPE of \ODDR_dac_dat[2]\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \ODDR_dac_dat[2]\ : label is "MLO";
  attribute \__SRVAL\ of \ODDR_dac_dat[2]\ : label is "FALSE";
  attribute BOX_TYPE of \ODDR_dac_dat[3]\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \ODDR_dac_dat[3]\ : label is "MLO";
  attribute \__SRVAL\ of \ODDR_dac_dat[3]\ : label is "FALSE";
  attribute BOX_TYPE of \ODDR_dac_dat[4]\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \ODDR_dac_dat[4]\ : label is "MLO";
  attribute \__SRVAL\ of \ODDR_dac_dat[4]\ : label is "FALSE";
  attribute BOX_TYPE of \ODDR_dac_dat[5]\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \ODDR_dac_dat[5]\ : label is "MLO";
  attribute \__SRVAL\ of \ODDR_dac_dat[5]\ : label is "FALSE";
  attribute BOX_TYPE of \ODDR_dac_dat[6]\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \ODDR_dac_dat[6]\ : label is "MLO";
  attribute \__SRVAL\ of \ODDR_dac_dat[6]\ : label is "FALSE";
  attribute BOX_TYPE of \ODDR_dac_dat[7]\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \ODDR_dac_dat[7]\ : label is "MLO";
  attribute \__SRVAL\ of \ODDR_dac_dat[7]\ : label is "FALSE";
  attribute BOX_TYPE of \ODDR_dac_dat[8]\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \ODDR_dac_dat[8]\ : label is "MLO";
  attribute \__SRVAL\ of \ODDR_dac_dat[8]\ : label is "FALSE";
  attribute BOX_TYPE of \ODDR_dac_dat[9]\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \ODDR_dac_dat[9]\ : label is "MLO";
  attribute \__SRVAL\ of \ODDR_dac_dat[9]\ : label is "FALSE";
  attribute BOX_TYPE of ODDR_rst : label is "PRIMITIVE";
  attribute OPT_MODIFIED of ODDR_rst : label is "MLO";
  attribute \__SRVAL\ of ODDR_rst : label is "TRUE";
  attribute BOX_TYPE of ODDR_sel : label is "PRIMITIVE";
  attribute OPT_MODIFIED of ODDR_sel : label is "MLO";
  attribute \__SRVAL\ of ODDR_sel : label is "FALSE";
  attribute BOX_TYPE of ODDR_wrt : label is "PRIMITIVE";
  attribute OPT_MODIFIED of ODDR_wrt : label is "MLO";
  attribute \__SRVAL\ of ODDR_wrt : label is "TRUE";
begin
ODDR_clk: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => dac_clk,
      CE => '1',
      D1 => '0',
      D2 => '1',
      Q => dac_clk_o,
      R => NLW_ODDR_clk_R_UNCONNECTED,
      S => NLW_ODDR_clk_S_UNCONNECTED
    );
\ODDR_dac_dat[0]\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => dac_dat_a(0),
      D2 => dac_dat_b(0),
      Q => dac_dat_o(0),
      R => dac_rst,
      S => \NLW_ODDR_dac_dat[0]_S_UNCONNECTED\
    );
\ODDR_dac_dat[10]\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => dac_dat_a(10),
      D2 => dac_dat_b(10),
      Q => dac_dat_o(10),
      R => dac_rst,
      S => \NLW_ODDR_dac_dat[10]_S_UNCONNECTED\
    );
\ODDR_dac_dat[11]\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => dac_dat_a(11),
      D2 => dac_dat_b(11),
      Q => dac_dat_o(11),
      R => dac_rst,
      S => \NLW_ODDR_dac_dat[11]_S_UNCONNECTED\
    );
\ODDR_dac_dat[12]\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => dac_dat_a(12),
      D2 => dac_dat_b(12),
      Q => dac_dat_o(12),
      R => dac_rst,
      S => \NLW_ODDR_dac_dat[12]_S_UNCONNECTED\
    );
\ODDR_dac_dat[13]\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => dac_dat_a(13),
      D2 => dac_dat_b(13),
      Q => dac_dat_o(13),
      R => dac_rst,
      S => \NLW_ODDR_dac_dat[13]_S_UNCONNECTED\
    );
\ODDR_dac_dat[1]\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => dac_dat_a(1),
      D2 => dac_dat_b(1),
      Q => dac_dat_o(1),
      R => dac_rst,
      S => \NLW_ODDR_dac_dat[1]_S_UNCONNECTED\
    );
\ODDR_dac_dat[2]\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => dac_dat_a(2),
      D2 => dac_dat_b(2),
      Q => dac_dat_o(2),
      R => dac_rst,
      S => \NLW_ODDR_dac_dat[2]_S_UNCONNECTED\
    );
\ODDR_dac_dat[3]\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => dac_dat_a(3),
      D2 => dac_dat_b(3),
      Q => dac_dat_o(3),
      R => dac_rst,
      S => \NLW_ODDR_dac_dat[3]_S_UNCONNECTED\
    );
\ODDR_dac_dat[4]\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => dac_dat_a(4),
      D2 => dac_dat_b(4),
      Q => dac_dat_o(4),
      R => dac_rst,
      S => \NLW_ODDR_dac_dat[4]_S_UNCONNECTED\
    );
\ODDR_dac_dat[5]\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => dac_dat_a(5),
      D2 => dac_dat_b(5),
      Q => dac_dat_o(5),
      R => dac_rst,
      S => \NLW_ODDR_dac_dat[5]_S_UNCONNECTED\
    );
\ODDR_dac_dat[6]\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => dac_dat_a(6),
      D2 => dac_dat_b(6),
      Q => dac_dat_o(6),
      R => dac_rst,
      S => \NLW_ODDR_dac_dat[6]_S_UNCONNECTED\
    );
\ODDR_dac_dat[7]\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => dac_dat_a(7),
      D2 => dac_dat_b(7),
      Q => dac_dat_o(7),
      R => dac_rst,
      S => \NLW_ODDR_dac_dat[7]_S_UNCONNECTED\
    );
\ODDR_dac_dat[8]\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => dac_dat_a(8),
      D2 => dac_dat_b(8),
      Q => dac_dat_o(8),
      R => dac_rst,
      S => \NLW_ODDR_dac_dat[8]_S_UNCONNECTED\
    );
\ODDR_dac_dat[9]\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => dac_dat_a(9),
      D2 => dac_dat_b(9),
      Q => dac_dat_o(9),
      R => dac_rst,
      S => \NLW_ODDR_dac_dat[9]_S_UNCONNECTED\
    );
ODDR_rst: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => dac_rst,
      D2 => dac_rst,
      Q => dac_rst_o,
      R => NLW_ODDR_rst_R_UNCONNECTED,
      S => NLW_ODDR_rst_S_UNCONNECTED
    );
ODDR_sel: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => '0',
      D2 => '1',
      Q => dac_sel_o,
      R => dac_rst,
      S => NLW_ODDR_sel_S_UNCONNECTED
    );
ODDR_wrt: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => dac_clk,
      CE => '1',
      D1 => '0',
      D2 => '1',
      Q => dac_wrt_o,
      R => NLW_ODDR_wrt_R_UNCONNECTED,
      S => NLW_ODDR_wrt_S_UNCONNECTED
    );
\dac_dat_a[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => dac_a(0),
      I1 => dac_a_tvalid,
      O => \dac_dat_a[0]_i_1_n_0\
    );
\dac_dat_a[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_a(10),
      O => \dac_dat_a[10]_i_1_n_0\
    );
\dac_dat_a[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_a(11),
      O => \dac_dat_a[11]_i_1_n_0\
    );
\dac_dat_a[12]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_a(12),
      O => \dac_dat_a[12]_i_1_n_0\
    );
\dac_dat_a[13]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_a_tvalid,
      O => \dac_dat_a[13]_i_1_n_0\
    );
\dac_dat_a[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_a(1),
      O => \dac_dat_a[1]_i_1_n_0\
    );
\dac_dat_a[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_a(2),
      O => \dac_dat_a[2]_i_1_n_0\
    );
\dac_dat_a[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_a(3),
      O => \dac_dat_a[3]_i_1_n_0\
    );
\dac_dat_a[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_a(4),
      O => \dac_dat_a[4]_i_1_n_0\
    );
\dac_dat_a[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_a(5),
      O => \dac_dat_a[5]_i_1_n_0\
    );
\dac_dat_a[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_a(6),
      O => \dac_dat_a[6]_i_1_n_0\
    );
\dac_dat_a[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_a(7),
      O => \dac_dat_a[7]_i_1_n_0\
    );
\dac_dat_a[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_a(8),
      O => \dac_dat_a[8]_i_1_n_0\
    );
\dac_dat_a[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_a(9),
      O => \dac_dat_a[9]_i_1_n_0\
    );
\dac_dat_a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_dat_a[0]_i_1_n_0\,
      Q => dac_dat_a(0),
      R => '0'
    );
\dac_dat_a_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_dat_a[10]_i_1_n_0\,
      Q => dac_dat_a(10),
      R => \dac_dat_a[13]_i_1_n_0\
    );
\dac_dat_a_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_dat_a[11]_i_1_n_0\,
      Q => dac_dat_a(11),
      R => \dac_dat_a[13]_i_1_n_0\
    );
\dac_dat_a_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_dat_a[12]_i_1_n_0\,
      Q => dac_dat_a(12),
      R => \dac_dat_a[13]_i_1_n_0\
    );
\dac_dat_a_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => dac_a(13),
      Q => dac_dat_a(13),
      R => \dac_dat_a[13]_i_1_n_0\
    );
\dac_dat_a_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_dat_a[1]_i_1_n_0\,
      Q => dac_dat_a(1),
      R => \dac_dat_a[13]_i_1_n_0\
    );
\dac_dat_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_dat_a[2]_i_1_n_0\,
      Q => dac_dat_a(2),
      R => \dac_dat_a[13]_i_1_n_0\
    );
\dac_dat_a_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_dat_a[3]_i_1_n_0\,
      Q => dac_dat_a(3),
      R => \dac_dat_a[13]_i_1_n_0\
    );
\dac_dat_a_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_dat_a[4]_i_1_n_0\,
      Q => dac_dat_a(4),
      R => \dac_dat_a[13]_i_1_n_0\
    );
\dac_dat_a_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_dat_a[5]_i_1_n_0\,
      Q => dac_dat_a(5),
      R => \dac_dat_a[13]_i_1_n_0\
    );
\dac_dat_a_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_dat_a[6]_i_1_n_0\,
      Q => dac_dat_a(6),
      R => \dac_dat_a[13]_i_1_n_0\
    );
\dac_dat_a_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_dat_a[7]_i_1_n_0\,
      Q => dac_dat_a(7),
      R => \dac_dat_a[13]_i_1_n_0\
    );
\dac_dat_a_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_dat_a[8]_i_1_n_0\,
      Q => dac_dat_a(8),
      R => \dac_dat_a[13]_i_1_n_0\
    );
\dac_dat_a_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_dat_a[9]_i_1_n_0\,
      Q => dac_dat_a(9),
      R => \dac_dat_a[13]_i_1_n_0\
    );
\dac_dat_b[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => dac_b(0),
      I1 => dac_b_tvalid,
      O => \dac_dat_b[0]_i_1_n_0\
    );
\dac_dat_b[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_b(10),
      O => \dac_dat_b[10]_i_1_n_0\
    );
\dac_dat_b[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_b(11),
      O => \dac_dat_b[11]_i_1_n_0\
    );
\dac_dat_b[12]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_b(12),
      O => \dac_dat_b[12]_i_1_n_0\
    );
\dac_dat_b[13]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_b_tvalid,
      O => \dac_dat_b[13]_i_1_n_0\
    );
\dac_dat_b[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_b(1),
      O => \dac_dat_b[1]_i_1_n_0\
    );
\dac_dat_b[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_b(2),
      O => \dac_dat_b[2]_i_1_n_0\
    );
\dac_dat_b[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_b(3),
      O => \dac_dat_b[3]_i_1_n_0\
    );
\dac_dat_b[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_b(4),
      O => \dac_dat_b[4]_i_1_n_0\
    );
\dac_dat_b[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_b(5),
      O => \dac_dat_b[5]_i_1_n_0\
    );
\dac_dat_b[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_b(6),
      O => \dac_dat_b[6]_i_1_n_0\
    );
\dac_dat_b[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_b(7),
      O => \dac_dat_b[7]_i_1_n_0\
    );
\dac_dat_b[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_b(8),
      O => \dac_dat_b[8]_i_1_n_0\
    );
\dac_dat_b[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_b(9),
      O => \dac_dat_b[9]_i_1_n_0\
    );
\dac_dat_b_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_dat_b[0]_i_1_n_0\,
      Q => dac_dat_b(0),
      R => '0'
    );
\dac_dat_b_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_dat_b[10]_i_1_n_0\,
      Q => dac_dat_b(10),
      R => \dac_dat_b[13]_i_1_n_0\
    );
\dac_dat_b_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_dat_b[11]_i_1_n_0\,
      Q => dac_dat_b(11),
      R => \dac_dat_b[13]_i_1_n_0\
    );
\dac_dat_b_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_dat_b[12]_i_1_n_0\,
      Q => dac_dat_b(12),
      R => \dac_dat_b[13]_i_1_n_0\
    );
\dac_dat_b_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => dac_b(13),
      Q => dac_dat_b(13),
      R => \dac_dat_b[13]_i_1_n_0\
    );
\dac_dat_b_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_dat_b[1]_i_1_n_0\,
      Q => dac_dat_b(1),
      R => \dac_dat_b[13]_i_1_n_0\
    );
\dac_dat_b_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_dat_b[2]_i_1_n_0\,
      Q => dac_dat_b(2),
      R => \dac_dat_b[13]_i_1_n_0\
    );
\dac_dat_b_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_dat_b[3]_i_1_n_0\,
      Q => dac_dat_b(3),
      R => \dac_dat_b[13]_i_1_n_0\
    );
\dac_dat_b_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_dat_b[4]_i_1_n_0\,
      Q => dac_dat_b(4),
      R => \dac_dat_b[13]_i_1_n_0\
    );
\dac_dat_b_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_dat_b[5]_i_1_n_0\,
      Q => dac_dat_b(5),
      R => \dac_dat_b[13]_i_1_n_0\
    );
\dac_dat_b_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_dat_b[6]_i_1_n_0\,
      Q => dac_dat_b(6),
      R => \dac_dat_b[13]_i_1_n_0\
    );
\dac_dat_b_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_dat_b[7]_i_1_n_0\,
      Q => dac_dat_b(7),
      R => \dac_dat_b[13]_i_1_n_0\
    );
\dac_dat_b_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_dat_b[8]_i_1_n_0\,
      Q => dac_dat_b(8),
      R => \dac_dat_b[13]_i_1_n_0\
    );
\dac_dat_b_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_dat_b[9]_i_1_n_0\,
      Q => dac_dat_b(9),
      R => \dac_dat_b[13]_i_1_n_0\
    );
dac_rst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pll_locked,
      O => dac_rst_i_1_n_0
    );
dac_rst_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => dac_rst_i_1_n_0,
      Q => dac_rst,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_DACs_wrapper_0_0 is
  port (
    clk : in STD_LOGIC;
    dac_clk : in STD_LOGIC;
    pll_locked : in STD_LOGIC;
    dac_a : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_a_tvalid : in STD_LOGIC;
    dac_b : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_b_tvalid : in STD_LOGIC;
    dac_dat_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_wrt_o : out STD_LOGIC;
    dac_sel_o : out STD_LOGIC;
    dac_clk_o : out STD_LOGIC;
    dac_rst_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_DACs_wrapper_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_DACs_wrapper_0_0 : entity is "design_1_DACs_wrapper_0_0,DACs_wrapper,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_DACs_wrapper_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_DACs_wrapper_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_DACs_wrapper_0_0 : entity is "DACs_wrapper,Vivado 2019.1";
end design_1_DACs_wrapper_0_0;

architecture STRUCTURE of design_1_DACs_wrapper_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of dac_clk : signal is "xilinx.com:signal:clock:1.0 dac_clk CLK";
  attribute x_interface_parameter of dac_clk : signal is "XIL_INTERFACENAME dac_clk, FREQ_HZ 250000000, PHASE 90.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
begin
U0: entity work.design_1_DACs_wrapper_0_0_DACs_wrapper
     port map (
      clk => clk,
      dac_a(13 downto 0) => dac_a(13 downto 0),
      dac_a_tvalid => dac_a_tvalid,
      dac_b(13 downto 0) => dac_b(13 downto 0),
      dac_b_tvalid => dac_b_tvalid,
      dac_clk => dac_clk,
      dac_clk_o => dac_clk_o,
      dac_dat_o(13 downto 0) => dac_dat_o(13 downto 0),
      dac_rst_o => dac_rst_o,
      dac_sel_o => dac_sel_o,
      dac_wrt_o => dac_wrt_o,
      pll_locked => pll_locked
    );
end STRUCTURE;
