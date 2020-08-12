-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Apr 23 22:27:25 2020
-- Host        : DESKTOP-AUBSA4O running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/Red_Pitaya/Acq_Card/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_ADCs_wrapper_0_0/design_1_ADCs_wrapper_0_0_sim_netlist.vhdl
-- Design      : design_1_ADCs_wrapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ADCs_wrapper_0_0_ADCs_wrapper is
  port (
    adc_a : out STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_b : out STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_dat_a_i : in STD_LOGIC_VECTOR ( 15 downto 2 );
    adc_clk : in STD_LOGIC;
    adc_dat_b_i : in STD_LOGIC_VECTOR ( 15 downto 2 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ADCs_wrapper_0_0_ADCs_wrapper : entity is "ADCs_wrapper";
end design_1_ADCs_wrapper_0_0_ADCs_wrapper;

architecture STRUCTURE of design_1_ADCs_wrapper_0_0_ADCs_wrapper is
  signal adc_dat_a : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal adc_dat_b : STD_LOGIC_VECTOR ( 12 downto 0 );
begin
\adc_a[10]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a(8),
      O => adc_a(8)
    );
\adc_a[11]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a(9),
      O => adc_a(9)
    );
\adc_a[12]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a(10),
      O => adc_a(10)
    );
\adc_a[13]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a(11),
      O => adc_a(11)
    );
\adc_a[14]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a(12),
      O => adc_a(12)
    );
\adc_a[2]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a(0),
      O => adc_a(0)
    );
\adc_a[3]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a(1),
      O => adc_a(1)
    );
\adc_a[4]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a(2),
      O => adc_a(2)
    );
\adc_a[5]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a(3),
      O => adc_a(3)
    );
\adc_a[6]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a(4),
      O => adc_a(4)
    );
\adc_a[7]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a(5),
      O => adc_a(5)
    );
\adc_a[8]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a(6),
      O => adc_a(6)
    );
\adc_a[9]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a(7),
      O => adc_a(7)
    );
\adc_b[10]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_b(8),
      O => adc_b(8)
    );
\adc_b[11]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_b(9),
      O => adc_b(9)
    );
\adc_b[12]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_b(10),
      O => adc_b(10)
    );
\adc_b[13]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_b(11),
      O => adc_b(11)
    );
\adc_b[14]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_b(12),
      O => adc_b(12)
    );
\adc_b[2]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_b(0),
      O => adc_b(0)
    );
\adc_b[3]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_b(1),
      O => adc_b(1)
    );
\adc_b[4]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_b(2),
      O => adc_b(2)
    );
\adc_b[5]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_b(3),
      O => adc_b(3)
    );
\adc_b[6]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_b(4),
      O => adc_b(4)
    );
\adc_b[7]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_b(5),
      O => adc_b(5)
    );
\adc_b[8]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_b(6),
      O => adc_b(6)
    );
\adc_b[9]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_b(7),
      O => adc_b(7)
    );
\adc_dat_a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_a_i(2),
      Q => adc_dat_a(0),
      R => '0'
    );
\adc_dat_a_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_a_i(12),
      Q => adc_dat_a(10),
      R => '0'
    );
\adc_dat_a_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_a_i(13),
      Q => adc_dat_a(11),
      R => '0'
    );
\adc_dat_a_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_a_i(14),
      Q => adc_dat_a(12),
      R => '0'
    );
\adc_dat_a_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_a_i(15),
      Q => adc_a(13),
      R => '0'
    );
\adc_dat_a_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_a_i(3),
      Q => adc_dat_a(1),
      R => '0'
    );
\adc_dat_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_a_i(4),
      Q => adc_dat_a(2),
      R => '0'
    );
\adc_dat_a_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_a_i(5),
      Q => adc_dat_a(3),
      R => '0'
    );
\adc_dat_a_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_a_i(6),
      Q => adc_dat_a(4),
      R => '0'
    );
\adc_dat_a_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_a_i(7),
      Q => adc_dat_a(5),
      R => '0'
    );
\adc_dat_a_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_a_i(8),
      Q => adc_dat_a(6),
      R => '0'
    );
\adc_dat_a_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_a_i(9),
      Q => adc_dat_a(7),
      R => '0'
    );
\adc_dat_a_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_a_i(10),
      Q => adc_dat_a(8),
      R => '0'
    );
\adc_dat_a_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_a_i(11),
      Q => adc_dat_a(9),
      R => '0'
    );
\adc_dat_b_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_b_i(2),
      Q => adc_dat_b(0),
      R => '0'
    );
\adc_dat_b_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_b_i(12),
      Q => adc_dat_b(10),
      R => '0'
    );
\adc_dat_b_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_b_i(13),
      Q => adc_dat_b(11),
      R => '0'
    );
\adc_dat_b_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_b_i(14),
      Q => adc_dat_b(12),
      R => '0'
    );
\adc_dat_b_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_b_i(15),
      Q => adc_b(13),
      R => '0'
    );
\adc_dat_b_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_b_i(3),
      Q => adc_dat_b(1),
      R => '0'
    );
\adc_dat_b_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_b_i(4),
      Q => adc_dat_b(2),
      R => '0'
    );
\adc_dat_b_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_b_i(5),
      Q => adc_dat_b(3),
      R => '0'
    );
\adc_dat_b_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_b_i(6),
      Q => adc_dat_b(4),
      R => '0'
    );
\adc_dat_b_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_b_i(7),
      Q => adc_dat_b(5),
      R => '0'
    );
\adc_dat_b_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_b_i(8),
      Q => adc_dat_b(6),
      R => '0'
    );
\adc_dat_b_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_b_i(9),
      Q => adc_dat_b(7),
      R => '0'
    );
\adc_dat_b_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_b_i(10),
      Q => adc_dat_b(8),
      R => '0'
    );
\adc_dat_b_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_b_i(11),
      Q => adc_dat_b(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ADCs_wrapper_0_0 is
  port (
    adc_clk : in STD_LOGIC;
    adc_dat_a_i : in STD_LOGIC_VECTOR ( 15 downto 2 );
    adc_dat_b_i : in STD_LOGIC_VECTOR ( 15 downto 2 );
    adc_a : out STD_LOGIC_VECTOR ( 15 downto 0 );
    adc_b : out STD_LOGIC_VECTOR ( 15 downto 0 );
    adc_cdcs_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_ADCs_wrapper_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ADCs_wrapper_0_0 : entity is "design_1_ADCs_wrapper_0_0,ADCs_wrapper,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_ADCs_wrapper_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_ADCs_wrapper_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_ADCs_wrapper_0_0 : entity is "ADCs_wrapper,Vivado 2019.1";
end design_1_ADCs_wrapper_0_0;

architecture STRUCTURE of design_1_ADCs_wrapper_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^adc_a\ : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \^adc_b\ : STD_LOGIC_VECTOR ( 15 downto 2 );
  attribute x_interface_info : string;
  attribute x_interface_info of adc_clk : signal is "xilinx.com:signal:clock:1.0 adc_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of adc_clk : signal is "XIL_INTERFACENAME adc_clk, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
begin
  adc_a(15 downto 2) <= \^adc_a\(15 downto 2);
  adc_a(1) <= \<const0>\;
  adc_a(0) <= \<const0>\;
  adc_b(15 downto 2) <= \^adc_b\(15 downto 2);
  adc_b(1) <= \<const0>\;
  adc_b(0) <= \<const0>\;
  adc_cdcs_o <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_ADCs_wrapper_0_0_ADCs_wrapper
     port map (
      adc_a(13 downto 0) => \^adc_a\(15 downto 2),
      adc_b(13 downto 0) => \^adc_b\(15 downto 2),
      adc_clk => adc_clk,
      adc_dat_a_i(15 downto 2) => adc_dat_a_i(15 downto 2),
      adc_dat_b_i(15 downto 2) => adc_dat_b_i(15 downto 2)
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
