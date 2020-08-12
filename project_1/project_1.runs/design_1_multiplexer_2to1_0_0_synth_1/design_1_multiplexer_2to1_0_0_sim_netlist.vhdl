-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed Aug 12 10:49:58 2020
-- Host        : DESKTOP-AUBSA4O running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_multiplexer_2to1_0_0_sim_netlist.vhdl
-- Design      : design_1_multiplexer_2to1_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_multiplexer_2to1 is
  port (
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_in_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_in_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sel : in STD_LOGIC;
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_multiplexer_2to1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_multiplexer_2to1 is
  signal \data_out[15]_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_out[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_out[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out[11]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out[13]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_out[15]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_out[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_out[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_out[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_out[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_out[9]_i_1\ : label is "soft_lutpair4";
begin
\data_out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_2(0),
      I1 => data_in_1(0),
      I2 => sel,
      O => p_0_in(0)
    );
\data_out[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_2(10),
      I1 => data_in_1(10),
      I2 => sel,
      O => p_0_in(10)
    );
\data_out[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_2(11),
      I1 => data_in_1(11),
      I2 => sel,
      O => p_0_in(11)
    );
\data_out[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_2(12),
      I1 => data_in_1(12),
      I2 => sel,
      O => p_0_in(12)
    );
\data_out[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_2(13),
      I1 => data_in_1(13),
      I2 => sel,
      O => p_0_in(13)
    );
\data_out[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_2(14),
      I1 => data_in_1(14),
      I2 => sel,
      O => p_0_in(14)
    );
\data_out[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_2(15),
      I1 => data_in_1(15),
      I2 => sel,
      O => p_0_in(15)
    );
\data_out[15]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => \data_out[15]_i_2_n_0\
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_2(1),
      I1 => data_in_1(1),
      I2 => sel,
      O => p_0_in(1)
    );
\data_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_2(2),
      I1 => data_in_1(2),
      I2 => sel,
      O => p_0_in(2)
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_2(3),
      I1 => data_in_1(3),
      I2 => sel,
      O => p_0_in(3)
    );
\data_out[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_2(4),
      I1 => data_in_1(4),
      I2 => sel,
      O => p_0_in(4)
    );
\data_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_2(5),
      I1 => data_in_1(5),
      I2 => sel,
      O => p_0_in(5)
    );
\data_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_2(6),
      I1 => data_in_1(6),
      I2 => sel,
      O => p_0_in(6)
    );
\data_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_2(7),
      I1 => data_in_1(7),
      I2 => sel,
      O => p_0_in(7)
    );
\data_out[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_2(8),
      I1 => data_in_1(8),
      I2 => sel,
      O => p_0_in(8)
    );
\data_out[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_2(9),
      I1 => data_in_1(9),
      I2 => sel,
      O => p_0_in(9)
    );
\data_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_out[15]_i_2_n_0\,
      D => p_0_in(0),
      Q => data_out(0)
    );
\data_out_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_out[15]_i_2_n_0\,
      D => p_0_in(10),
      Q => data_out(10)
    );
\data_out_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_out[15]_i_2_n_0\,
      D => p_0_in(11),
      Q => data_out(11)
    );
\data_out_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_out[15]_i_2_n_0\,
      D => p_0_in(12),
      Q => data_out(12)
    );
\data_out_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_out[15]_i_2_n_0\,
      D => p_0_in(13),
      Q => data_out(13)
    );
\data_out_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_out[15]_i_2_n_0\,
      D => p_0_in(14),
      Q => data_out(14)
    );
\data_out_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_out[15]_i_2_n_0\,
      D => p_0_in(15),
      Q => data_out(15)
    );
\data_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_out[15]_i_2_n_0\,
      D => p_0_in(1),
      Q => data_out(1)
    );
\data_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_out[15]_i_2_n_0\,
      D => p_0_in(2),
      Q => data_out(2)
    );
\data_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_out[15]_i_2_n_0\,
      D => p_0_in(3),
      Q => data_out(3)
    );
\data_out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_out[15]_i_2_n_0\,
      D => p_0_in(4),
      Q => data_out(4)
    );
\data_out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_out[15]_i_2_n_0\,
      D => p_0_in(5),
      Q => data_out(5)
    );
\data_out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_out[15]_i_2_n_0\,
      D => p_0_in(6),
      Q => data_out(6)
    );
\data_out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_out[15]_i_2_n_0\,
      D => p_0_in(7),
      Q => data_out(7)
    );
\data_out_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_out[15]_i_2_n_0\,
      D => p_0_in(8),
      Q => data_out(8)
    );
\data_out_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data_out[15]_i_2_n_0\,
      D => p_0_in(9),
      Q => data_out(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    sel : in STD_LOGIC;
    data_in_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_in_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_multiplexer_2to1_0_0,multiplexer_2to1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "multiplexer_2to1,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute x_interface_parameter of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_multiplexer_2to1
     port map (
      clk => clk,
      data_in_1(15 downto 0) => data_in_1(15 downto 0),
      data_in_2(15 downto 0) => data_in_2(15 downto 0),
      data_out(15 downto 0) => data_out(15 downto 0),
      resetn => resetn,
      sel => sel
    );
end STRUCTURE;
