// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Aug 11 23:23:47 2020
// Host        : DESKTOP-AUBSA4O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ila_1_0_stub.v
// Design      : design_1_ila_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ila,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, trig_in, trig_in_ack, probe0, probe1, probe2, 
  probe3, probe4, probe5, probe6, probe7, probe8)
/* synthesis syn_black_box black_box_pad_pin="clk,trig_in,trig_in_ack,probe0[0:0],probe1[63:0],probe2[7:0],probe3[0:0],probe4[0:0],probe5[0:0],probe6[7:0],probe7[0:0],probe8[0:0]" */;
  input clk;
  input trig_in;
  output trig_in_ack;
  input [0:0]probe0;
  input [63:0]probe1;
  input [7:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
  input [7:0]probe6;
  input [0:0]probe7;
  input [0:0]probe8;
endmodule
