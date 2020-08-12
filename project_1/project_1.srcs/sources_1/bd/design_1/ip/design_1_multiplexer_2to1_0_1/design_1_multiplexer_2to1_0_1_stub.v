// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Aug 12 10:49:59 2020
// Host        : DESKTOP-AUBSA4O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Users/Alex/Documents/GitHub/RedPitaya_Acquisition/RedPitaya_Acquisition/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_multiplexer_2to1_0_1/design_1_multiplexer_2to1_0_1_stub.v
// Design      : design_1_multiplexer_2to1_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "multiplexer_2to1,Vivado 2019.1" *)
module design_1_multiplexer_2to1_0_1(clk, resetn, sel, data_in_1, data_in_2, data_out)
/* synthesis syn_black_box black_box_pad_pin="clk,resetn,sel,data_in_1[15:0],data_in_2[15:0],data_out[15:0]" */;
  input clk;
  input resetn;
  input sel;
  input [15:0]data_in_1;
  input [15:0]data_in_2;
  output [15:0]data_out;
endmodule
