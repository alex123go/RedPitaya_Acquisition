-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Apr 23 22:27:25 2020
-- Host        : DESKTOP-AUBSA4O running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/Red_Pitaya/Acq_Card/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_ADCs_wrapper_0_0/design_1_ADCs_wrapper_0_0_stub.vhdl
-- Design      : design_1_ADCs_wrapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_ADCs_wrapper_0_0 is
  Port ( 
    adc_clk : in STD_LOGIC;
    adc_dat_a_i : in STD_LOGIC_VECTOR ( 15 downto 2 );
    adc_dat_b_i : in STD_LOGIC_VECTOR ( 15 downto 2 );
    adc_a : out STD_LOGIC_VECTOR ( 15 downto 0 );
    adc_b : out STD_LOGIC_VECTOR ( 15 downto 0 );
    adc_cdcs_o : out STD_LOGIC
  );

end design_1_ADCs_wrapper_0_0;

architecture stub of design_1_ADCs_wrapper_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "adc_clk,adc_dat_a_i[15:2],adc_dat_b_i[15:2],adc_a[15:0],adc_b[15:0],adc_cdcs_o";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ADCs_wrapper,Vivado 2019.1";
begin
end;
