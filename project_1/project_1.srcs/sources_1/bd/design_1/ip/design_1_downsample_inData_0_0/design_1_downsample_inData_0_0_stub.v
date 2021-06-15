// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Jun 15 11:14:28 2021
// Host        : DESKTOP-AUBSA4O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Users/Alex/Documents/GitHub/RedPitaya_Acquisition/RedPitaya_Acquisition/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_downsample_inData_0_0/design_1_downsample_inData_0_0_stub.v
// Design      : design_1_downsample_inData_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "downsample_inData,Vivado 2019.1" *)
module design_1_downsample_inData_0_0(clk, resetn, downsample_value_minus_one, 
  data_tvalid)
/* synthesis syn_black_box black_box_pad_pin="clk,resetn,downsample_value_minus_one[31:0],data_tvalid" */;
  input clk;
  input resetn;
  input [31:0]downsample_value_minus_one;
  output data_tvalid;
endmodule
