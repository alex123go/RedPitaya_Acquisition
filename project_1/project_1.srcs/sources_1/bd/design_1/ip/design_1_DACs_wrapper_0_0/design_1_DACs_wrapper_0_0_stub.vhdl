-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Mon Apr 27 16:19:17 2020
-- Host        : DESKTOP-AUBSA4O running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/Red_Pitaya/Acq_Card/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_DACs_wrapper_0_0/design_1_DACs_wrapper_0_0_stub.vhdl
-- Design      : design_1_DACs_wrapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_DACs_wrapper_0_0 is
  Port ( 
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

end design_1_DACs_wrapper_0_0;

architecture stub of design_1_DACs_wrapper_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,dac_clk,pll_locked,dac_a[13:0],dac_a_tvalid,dac_b[13:0],dac_b_tvalid,dac_dat_o[13:0],dac_wrt_o,dac_sel_o,dac_clk_o,dac_rst_o";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "DACs_wrapper,Vivado 2019.1";
begin
end;
