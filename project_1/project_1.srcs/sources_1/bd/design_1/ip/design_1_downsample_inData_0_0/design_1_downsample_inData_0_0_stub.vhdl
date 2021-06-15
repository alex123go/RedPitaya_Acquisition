-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Jun 15 11:14:28 2021
-- Host        : DESKTOP-AUBSA4O running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Users/Alex/Documents/GitHub/RedPitaya_Acquisition/RedPitaya_Acquisition/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_downsample_inData_0_0/design_1_downsample_inData_0_0_stub.vhdl
-- Design      : design_1_downsample_inData_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_downsample_inData_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    downsample_value_minus_one : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_tvalid : out STD_LOGIC
  );

end design_1_downsample_inData_0_0;

architecture stub of design_1_downsample_inData_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,resetn,downsample_value_minus_one[31:0],data_tvalid";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "downsample_inData,Vivado 2019.1";
begin
end;
