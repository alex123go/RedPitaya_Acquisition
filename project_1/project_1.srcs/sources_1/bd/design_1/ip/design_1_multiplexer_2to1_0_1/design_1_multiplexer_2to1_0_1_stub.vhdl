-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Mon Jun 14 18:51:27 2021
-- Host        : DESKTOP-AUBSA4O running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/Users/Alex/Documents/GitHub/RedPitaya_Acquisition/RedPitaya_Acquisition/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_multiplexer_2to1_0_1/design_1_multiplexer_2to1_0_1_stub.vhdl
-- Design      : design_1_multiplexer_2to1_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_multiplexer_2to1_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    sel : in STD_LOGIC;
    data_in_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_in_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end design_1_multiplexer_2to1_0_1;

architecture stub of design_1_multiplexer_2to1_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,resetn,sel,data_in_1[15:0],data_in_2[15:0],data_out[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "multiplexer_2to1,Vivado 2019.1";
begin
end;
