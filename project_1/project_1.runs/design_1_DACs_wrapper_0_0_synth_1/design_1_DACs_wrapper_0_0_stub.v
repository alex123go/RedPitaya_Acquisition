// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Apr 27 16:19:17 2020
// Host        : DESKTOP-AUBSA4O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_DACs_wrapper_0_0_stub.v
// Design      : design_1_DACs_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "DACs_wrapper,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, dac_clk, pll_locked, dac_a, dac_a_tvalid, 
  dac_b, dac_b_tvalid, dac_dat_o, dac_wrt_o, dac_sel_o, dac_clk_o, dac_rst_o)
/* synthesis syn_black_box black_box_pad_pin="clk,dac_clk,pll_locked,dac_a[13:0],dac_a_tvalid,dac_b[13:0],dac_b_tvalid,dac_dat_o[13:0],dac_wrt_o,dac_sel_o,dac_clk_o,dac_rst_o" */;
  input clk;
  input dac_clk;
  input pll_locked;
  input [13:0]dac_a;
  input dac_a_tvalid;
  input [13:0]dac_b;
  input dac_b_tvalid;
  output [13:0]dac_dat_o;
  output dac_wrt_o;
  output dac_sel_o;
  output dac_clk_o;
  output dac_rst_o;
endmodule
