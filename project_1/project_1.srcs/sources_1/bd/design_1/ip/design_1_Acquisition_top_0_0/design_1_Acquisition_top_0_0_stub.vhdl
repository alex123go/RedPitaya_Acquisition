-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Aug  4 10:57:01 2020
-- Host        : DESKTOP-AUBSA4O running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/Users/Alex/Documents/GitHub/RedPitaya_Acquisition/RedPitaya_Acquisition/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_Acquisition_top_0_0/design_1_Acquisition_top_0_0_stub.vhdl
-- Design      : design_1_Acquisition_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_Acquisition_top_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    start_sig : in STD_LOGIC;
    number_bytes : in STD_LOGIC_VECTOR ( 31 downto 0 );
    channel_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ADC1_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ADC2_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    FIFO_S2MM_data_count : in STD_LOGIC_VECTOR ( 31 downto 0 );
    start_address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reset_ACQ : out STD_LOGIC;
    status_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_s2mm_cmd_tdata : out STD_LOGIC_VECTOR ( 71 downto 0 );
    m_axis_s2mm_cmd_tready : in STD_LOGIC;
    m_axis_s2mm_cmd_tvalid : out STD_LOGIC;
    s_axis_s2mm_sts_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_s2mm_sts_tready : out STD_LOGIC;
    s_axis_s2mm_sts_tvalid : in STD_LOGIC
  );

end design_1_Acquisition_top_0_0;

architecture stub of design_1_Acquisition_top_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,resetn,start_sig,number_bytes[31:0],channel_sel[1:0],ADC1_data[15:0],ADC2_data[15:0],FIFO_S2MM_data_count[31:0],start_address[31:0],reset_ACQ,status_out[1:0],m_axis_tvalid,m_axis_tready,m_axis_tdata[63:0],m_axis_s2mm_cmd_tdata[71:0],m_axis_s2mm_cmd_tready,m_axis_s2mm_cmd_tvalid,s_axis_s2mm_sts_tdata[7:0],s_axis_s2mm_sts_tready,s_axis_s2mm_sts_tvalid";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Acquisition_top,Vivado 2019.1";
begin
end;
