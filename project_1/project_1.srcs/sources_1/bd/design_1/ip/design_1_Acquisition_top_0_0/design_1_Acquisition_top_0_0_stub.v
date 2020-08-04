// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Aug  4 10:57:01 2020
// Host        : DESKTOP-AUBSA4O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/Users/Alex/Documents/GitHub/RedPitaya_Acquisition/RedPitaya_Acquisition/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_Acquisition_top_0_0/design_1_Acquisition_top_0_0_stub.v
// Design      : design_1_Acquisition_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Acquisition_top,Vivado 2019.1" *)
module design_1_Acquisition_top_0_0(clk, resetn, start_sig, number_bytes, 
  channel_sel, ADC1_data, ADC2_data, FIFO_S2MM_data_count, start_address, reset_ACQ, 
  status_out, m_axis_tvalid, m_axis_tready, m_axis_tdata, m_axis_s2mm_cmd_tdata, 
  m_axis_s2mm_cmd_tready, m_axis_s2mm_cmd_tvalid, s_axis_s2mm_sts_tdata, 
  s_axis_s2mm_sts_tready, s_axis_s2mm_sts_tvalid)
/* synthesis syn_black_box black_box_pad_pin="clk,resetn,start_sig,number_bytes[31:0],channel_sel[1:0],ADC1_data[15:0],ADC2_data[15:0],FIFO_S2MM_data_count[31:0],start_address[31:0],reset_ACQ,status_out[1:0],m_axis_tvalid,m_axis_tready,m_axis_tdata[63:0],m_axis_s2mm_cmd_tdata[71:0],m_axis_s2mm_cmd_tready,m_axis_s2mm_cmd_tvalid,s_axis_s2mm_sts_tdata[7:0],s_axis_s2mm_sts_tready,s_axis_s2mm_sts_tvalid" */;
  input clk;
  input resetn;
  input start_sig;
  input [31:0]number_bytes;
  input [1:0]channel_sel;
  input [15:0]ADC1_data;
  input [15:0]ADC2_data;
  input [31:0]FIFO_S2MM_data_count;
  input [31:0]start_address;
  output reset_ACQ;
  output [1:0]status_out;
  output m_axis_tvalid;
  input m_axis_tready;
  output [63:0]m_axis_tdata;
  output [71:0]m_axis_s2mm_cmd_tdata;
  input m_axis_s2mm_cmd_tready;
  output m_axis_s2mm_cmd_tvalid;
  input [7:0]s_axis_s2mm_sts_tdata;
  output s_axis_s2mm_sts_tready;
  input s_axis_s2mm_sts_tvalid;
endmodule
