// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Apr 23 22:27:25 2020
// Host        : DESKTOP-AUBSA4O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ADCs_wrapper_0_0_stub.v
// Design      : design_1_ADCs_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ADCs_wrapper,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(adc_clk, adc_dat_a_i, adc_dat_b_i, adc_a, adc_b, 
  adc_cdcs_o)
/* synthesis syn_black_box black_box_pad_pin="adc_clk,adc_dat_a_i[15:2],adc_dat_b_i[15:2],adc_a[15:0],adc_b[15:0],adc_cdcs_o" */;
  input adc_clk;
  input [15:2]adc_dat_a_i;
  input [15:2]adc_dat_b_i;
  output [15:0]adc_a;
  output [15:0]adc_b;
  output adc_cdcs_o;
endmodule
