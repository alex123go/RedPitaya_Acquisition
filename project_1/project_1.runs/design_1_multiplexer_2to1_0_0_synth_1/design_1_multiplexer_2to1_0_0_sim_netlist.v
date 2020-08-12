// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Aug 12 10:49:58 2020
// Host        : DESKTOP-AUBSA4O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_multiplexer_2to1_0_0_sim_netlist.v
// Design      : design_1_multiplexer_2to1_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_multiplexer_2to1_0_0,multiplexer_2to1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "multiplexer_2to1,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    resetn,
    sel,
    data_in_1,
    data_in_2,
    data_out);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 resetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  input sel;
  input [15:0]data_in_1;
  input [15:0]data_in_2;
  output [15:0]data_out;

  wire clk;
  wire [15:0]data_in_1;
  wire [15:0]data_in_2;
  wire [15:0]data_out;
  wire resetn;
  wire sel;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_multiplexer_2to1 U0
       (.clk(clk),
        .data_in_1(data_in_1),
        .data_in_2(data_in_2),
        .data_out(data_out),
        .resetn(resetn),
        .sel(sel));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_multiplexer_2to1
   (data_out,
    data_in_2,
    data_in_1,
    sel,
    clk,
    resetn);
  output [15:0]data_out;
  input [15:0]data_in_2;
  input [15:0]data_in_1;
  input sel;
  input clk;
  input resetn;

  wire clk;
  wire [15:0]data_in_1;
  wire [15:0]data_in_2;
  wire [15:0]data_out;
  wire \data_out[15]_i_2_n_0 ;
  wire [15:0]p_0_in;
  wire resetn;
  wire sel;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[0]_i_1 
       (.I0(data_in_2[0]),
        .I1(data_in_1[0]),
        .I2(sel),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[10]_i_1 
       (.I0(data_in_2[10]),
        .I1(data_in_1[10]),
        .I2(sel),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[11]_i_1 
       (.I0(data_in_2[11]),
        .I1(data_in_1[11]),
        .I2(sel),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[12]_i_1 
       (.I0(data_in_2[12]),
        .I1(data_in_1[12]),
        .I2(sel),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[13]_i_1 
       (.I0(data_in_2[13]),
        .I1(data_in_1[13]),
        .I2(sel),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[14]_i_1 
       (.I0(data_in_2[14]),
        .I1(data_in_1[14]),
        .I2(sel),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[15]_i_1 
       (.I0(data_in_2[15]),
        .I1(data_in_1[15]),
        .I2(sel),
        .O(p_0_in[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[15]_i_2 
       (.I0(resetn),
        .O(\data_out[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[1]_i_1 
       (.I0(data_in_2[1]),
        .I1(data_in_1[1]),
        .I2(sel),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[2]_i_1 
       (.I0(data_in_2[2]),
        .I1(data_in_1[2]),
        .I2(sel),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[3]_i_1 
       (.I0(data_in_2[3]),
        .I1(data_in_1[3]),
        .I2(sel),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[4]_i_1 
       (.I0(data_in_2[4]),
        .I1(data_in_1[4]),
        .I2(sel),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[5]_i_1 
       (.I0(data_in_2[5]),
        .I1(data_in_1[5]),
        .I2(sel),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[6]_i_1 
       (.I0(data_in_2[6]),
        .I1(data_in_1[6]),
        .I2(sel),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[7]_i_1 
       (.I0(data_in_2[7]),
        .I1(data_in_1[7]),
        .I2(sel),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[8]_i_1 
       (.I0(data_in_2[8]),
        .I1(data_in_1[8]),
        .I2(sel),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[9]_i_1 
       (.I0(data_in_2[9]),
        .I1(data_in_1[9]),
        .I2(sel),
        .O(p_0_in[9]));
  FDCE \data_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_out[15]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(data_out[0]));
  FDCE \data_out_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_out[15]_i_2_n_0 ),
        .D(p_0_in[10]),
        .Q(data_out[10]));
  FDCE \data_out_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_out[15]_i_2_n_0 ),
        .D(p_0_in[11]),
        .Q(data_out[11]));
  FDCE \data_out_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_out[15]_i_2_n_0 ),
        .D(p_0_in[12]),
        .Q(data_out[12]));
  FDCE \data_out_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_out[15]_i_2_n_0 ),
        .D(p_0_in[13]),
        .Q(data_out[13]));
  FDCE \data_out_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_out[15]_i_2_n_0 ),
        .D(p_0_in[14]),
        .Q(data_out[14]));
  FDCE \data_out_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_out[15]_i_2_n_0 ),
        .D(p_0_in[15]),
        .Q(data_out[15]));
  FDCE \data_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_out[15]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(data_out[1]));
  FDCE \data_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_out[15]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(data_out[2]));
  FDCE \data_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_out[15]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(data_out[3]));
  FDCE \data_out_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_out[15]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(data_out[4]));
  FDCE \data_out_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_out[15]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(data_out[5]));
  FDCE \data_out_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_out[15]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(data_out[6]));
  FDCE \data_out_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_out[15]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(data_out[7]));
  FDCE \data_out_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_out[15]_i_2_n_0 ),
        .D(p_0_in[8]),
        .Q(data_out[8]));
  FDCE \data_out_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_out[15]_i_2_n_0 ),
        .D(p_0_in[9]),
        .Q(data_out[9]));
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
