// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Apr 23 22:27:25 2020
// Host        : DESKTOP-AUBSA4O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Red_Pitaya/Acq_Card/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_ADCs_wrapper_0_0/design_1_ADCs_wrapper_0_0_sim_netlist.v
// Design      : design_1_ADCs_wrapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ADCs_wrapper_0_0,ADCs_wrapper,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ADCs_wrapper,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module design_1_ADCs_wrapper_0_0
   (adc_clk,
    adc_dat_a_i,
    adc_dat_b_i,
    adc_a,
    adc_b,
    adc_cdcs_o);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 adc_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME adc_clk, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input adc_clk;
  input [15:2]adc_dat_a_i;
  input [15:2]adc_dat_b_i;
  output [15:0]adc_a;
  output [15:0]adc_b;
  output adc_cdcs_o;

  wire \<const0> ;
  wire \<const1> ;
  wire [15:2]\^adc_a ;
  wire [15:2]\^adc_b ;
  wire adc_clk;
  wire [15:2]adc_dat_a_i;
  wire [15:2]adc_dat_b_i;

  assign adc_a[15:2] = \^adc_a [15:2];
  assign adc_a[1] = \<const0> ;
  assign adc_a[0] = \<const0> ;
  assign adc_b[15:2] = \^adc_b [15:2];
  assign adc_b[1] = \<const0> ;
  assign adc_b[0] = \<const0> ;
  assign adc_cdcs_o = \<const1> ;
  GND GND
       (.G(\<const0> ));
  design_1_ADCs_wrapper_0_0_ADCs_wrapper U0
       (.adc_a(\^adc_a ),
        .adc_b(\^adc_b ),
        .adc_clk(adc_clk),
        .adc_dat_a_i(adc_dat_a_i),
        .adc_dat_b_i(adc_dat_b_i));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "ADCs_wrapper" *) 
module design_1_ADCs_wrapper_0_0_ADCs_wrapper
   (adc_a,
    adc_b,
    adc_dat_a_i,
    adc_clk,
    adc_dat_b_i);
  output [13:0]adc_a;
  output [13:0]adc_b;
  input [15:2]adc_dat_a_i;
  input adc_clk;
  input [15:2]adc_dat_b_i;

  wire [13:0]adc_a;
  wire [13:0]adc_b;
  wire adc_clk;
  wire [12:0]adc_dat_a;
  wire [15:2]adc_dat_a_i;
  wire [12:0]adc_dat_b;
  wire [15:2]adc_dat_b_i;

  LUT1 #(
    .INIT(2'h1)) 
    \adc_a[10]_INST_0 
       (.I0(adc_dat_a[8]),
        .O(adc_a[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_a[11]_INST_0 
       (.I0(adc_dat_a[9]),
        .O(adc_a[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_a[12]_INST_0 
       (.I0(adc_dat_a[10]),
        .O(adc_a[10]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_a[13]_INST_0 
       (.I0(adc_dat_a[11]),
        .O(adc_a[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_a[14]_INST_0 
       (.I0(adc_dat_a[12]),
        .O(adc_a[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_a[2]_INST_0 
       (.I0(adc_dat_a[0]),
        .O(adc_a[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_a[3]_INST_0 
       (.I0(adc_dat_a[1]),
        .O(adc_a[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_a[4]_INST_0 
       (.I0(adc_dat_a[2]),
        .O(adc_a[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_a[5]_INST_0 
       (.I0(adc_dat_a[3]),
        .O(adc_a[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_a[6]_INST_0 
       (.I0(adc_dat_a[4]),
        .O(adc_a[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_a[7]_INST_0 
       (.I0(adc_dat_a[5]),
        .O(adc_a[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_a[8]_INST_0 
       (.I0(adc_dat_a[6]),
        .O(adc_a[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_a[9]_INST_0 
       (.I0(adc_dat_a[7]),
        .O(adc_a[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_b[10]_INST_0 
       (.I0(adc_dat_b[8]),
        .O(adc_b[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_b[11]_INST_0 
       (.I0(adc_dat_b[9]),
        .O(adc_b[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_b[12]_INST_0 
       (.I0(adc_dat_b[10]),
        .O(adc_b[10]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_b[13]_INST_0 
       (.I0(adc_dat_b[11]),
        .O(adc_b[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_b[14]_INST_0 
       (.I0(adc_dat_b[12]),
        .O(adc_b[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_b[2]_INST_0 
       (.I0(adc_dat_b[0]),
        .O(adc_b[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_b[3]_INST_0 
       (.I0(adc_dat_b[1]),
        .O(adc_b[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_b[4]_INST_0 
       (.I0(adc_dat_b[2]),
        .O(adc_b[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_b[5]_INST_0 
       (.I0(adc_dat_b[3]),
        .O(adc_b[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_b[6]_INST_0 
       (.I0(adc_dat_b[4]),
        .O(adc_b[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_b[7]_INST_0 
       (.I0(adc_dat_b[5]),
        .O(adc_b[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_b[8]_INST_0 
       (.I0(adc_dat_b[6]),
        .O(adc_b[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_b[9]_INST_0 
       (.I0(adc_dat_b[7]),
        .O(adc_b[7]));
  FDRE \adc_dat_a_reg[0] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a_i[2]),
        .Q(adc_dat_a[0]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[10] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a_i[12]),
        .Q(adc_dat_a[10]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[11] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a_i[13]),
        .Q(adc_dat_a[11]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[12] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a_i[14]),
        .Q(adc_dat_a[12]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[13] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a_i[15]),
        .Q(adc_a[13]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[1] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a_i[3]),
        .Q(adc_dat_a[1]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[2] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a_i[4]),
        .Q(adc_dat_a[2]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[3] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a_i[5]),
        .Q(adc_dat_a[3]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[4] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a_i[6]),
        .Q(adc_dat_a[4]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[5] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a_i[7]),
        .Q(adc_dat_a[5]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[6] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a_i[8]),
        .Q(adc_dat_a[6]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[7] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a_i[9]),
        .Q(adc_dat_a[7]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[8] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a_i[10]),
        .Q(adc_dat_a[8]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[9] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a_i[11]),
        .Q(adc_dat_a[9]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[0] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b_i[2]),
        .Q(adc_dat_b[0]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[10] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b_i[12]),
        .Q(adc_dat_b[10]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[11] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b_i[13]),
        .Q(adc_dat_b[11]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[12] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b_i[14]),
        .Q(adc_dat_b[12]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[13] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b_i[15]),
        .Q(adc_b[13]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[1] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b_i[3]),
        .Q(adc_dat_b[1]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[2] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b_i[4]),
        .Q(adc_dat_b[2]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[3] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b_i[5]),
        .Q(adc_dat_b[3]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[4] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b_i[6]),
        .Q(adc_dat_b[4]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[5] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b_i[7]),
        .Q(adc_dat_b[5]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[6] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b_i[8]),
        .Q(adc_dat_b[6]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[7] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b_i[9]),
        .Q(adc_dat_b[7]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[8] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b_i[10]),
        .Q(adc_dat_b[8]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[9] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b_i[11]),
        .Q(adc_dat_b[9]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
