// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Apr 27 16:19:17 2020
// Host        : DESKTOP-AUBSA4O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_DACs_wrapper_0_0_sim_netlist.v
// Design      : design_1_DACs_wrapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DACs_wrapper
   (dac_clk_o,
    dac_wrt_o,
    dac_sel_o,
    dac_rst_o,
    dac_dat_o,
    dac_a,
    dac_a_tvalid,
    dac_b,
    dac_b_tvalid,
    dac_clk,
    clk,
    pll_locked);
  output dac_clk_o;
  output dac_wrt_o;
  output dac_sel_o;
  output dac_rst_o;
  output [13:0]dac_dat_o;
  input [13:0]dac_a;
  input dac_a_tvalid;
  input [13:0]dac_b;
  input dac_b_tvalid;
  input dac_clk;
  input clk;
  input pll_locked;

  wire clk;
  wire [13:0]dac_a;
  wire dac_a_tvalid;
  wire [13:0]dac_b;
  wire dac_b_tvalid;
  wire dac_clk;
  wire dac_clk_o;
  wire [13:0]dac_dat_a;
  wire \dac_dat_a[0]_i_1_n_0 ;
  wire \dac_dat_a[10]_i_1_n_0 ;
  wire \dac_dat_a[11]_i_1_n_0 ;
  wire \dac_dat_a[12]_i_1_n_0 ;
  wire \dac_dat_a[13]_i_1_n_0 ;
  wire \dac_dat_a[1]_i_1_n_0 ;
  wire \dac_dat_a[2]_i_1_n_0 ;
  wire \dac_dat_a[3]_i_1_n_0 ;
  wire \dac_dat_a[4]_i_1_n_0 ;
  wire \dac_dat_a[5]_i_1_n_0 ;
  wire \dac_dat_a[6]_i_1_n_0 ;
  wire \dac_dat_a[7]_i_1_n_0 ;
  wire \dac_dat_a[8]_i_1_n_0 ;
  wire \dac_dat_a[9]_i_1_n_0 ;
  wire [13:0]dac_dat_b;
  wire \dac_dat_b[0]_i_1_n_0 ;
  wire \dac_dat_b[10]_i_1_n_0 ;
  wire \dac_dat_b[11]_i_1_n_0 ;
  wire \dac_dat_b[12]_i_1_n_0 ;
  wire \dac_dat_b[13]_i_1_n_0 ;
  wire \dac_dat_b[1]_i_1_n_0 ;
  wire \dac_dat_b[2]_i_1_n_0 ;
  wire \dac_dat_b[3]_i_1_n_0 ;
  wire \dac_dat_b[4]_i_1_n_0 ;
  wire \dac_dat_b[5]_i_1_n_0 ;
  wire \dac_dat_b[6]_i_1_n_0 ;
  wire \dac_dat_b[7]_i_1_n_0 ;
  wire \dac_dat_b[8]_i_1_n_0 ;
  wire \dac_dat_b[9]_i_1_n_0 ;
  wire [13:0]dac_dat_o;
  wire dac_rst;
  wire dac_rst_i_1_n_0;
  wire dac_rst_o;
  wire dac_sel_o;
  wire dac_wrt_o;
  wire pll_locked;
  wire NLW_ODDR_clk_R_UNCONNECTED;
  wire NLW_ODDR_clk_S_UNCONNECTED;
  wire \NLW_ODDR_dac_dat[0]_S_UNCONNECTED ;
  wire \NLW_ODDR_dac_dat[10]_S_UNCONNECTED ;
  wire \NLW_ODDR_dac_dat[11]_S_UNCONNECTED ;
  wire \NLW_ODDR_dac_dat[12]_S_UNCONNECTED ;
  wire \NLW_ODDR_dac_dat[13]_S_UNCONNECTED ;
  wire \NLW_ODDR_dac_dat[1]_S_UNCONNECTED ;
  wire \NLW_ODDR_dac_dat[2]_S_UNCONNECTED ;
  wire \NLW_ODDR_dac_dat[3]_S_UNCONNECTED ;
  wire \NLW_ODDR_dac_dat[4]_S_UNCONNECTED ;
  wire \NLW_ODDR_dac_dat[5]_S_UNCONNECTED ;
  wire \NLW_ODDR_dac_dat[6]_S_UNCONNECTED ;
  wire \NLW_ODDR_dac_dat[7]_S_UNCONNECTED ;
  wire \NLW_ODDR_dac_dat[8]_S_UNCONNECTED ;
  wire \NLW_ODDR_dac_dat[9]_S_UNCONNECTED ;
  wire NLW_ODDR_rst_R_UNCONNECTED;
  wire NLW_ODDR_rst_S_UNCONNECTED;
  wire NLW_ODDR_sel_S_UNCONNECTED;
  wire NLW_ODDR_wrt_R_UNCONNECTED;
  wire NLW_ODDR_wrt_S_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    ODDR_clk
       (.C(dac_clk),
        .CE(1'b1),
        .D1(1'b0),
        .D2(1'b1),
        .Q(dac_clk_o),
        .R(NLW_ODDR_clk_R_UNCONNECTED),
        .S(NLW_ODDR_clk_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \ODDR_dac_dat[0] 
       (.C(clk),
        .CE(1'b1),
        .D1(dac_dat_a[0]),
        .D2(dac_dat_b[0]),
        .Q(dac_dat_o[0]),
        .R(dac_rst),
        .S(\NLW_ODDR_dac_dat[0]_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \ODDR_dac_dat[10] 
       (.C(clk),
        .CE(1'b1),
        .D1(dac_dat_a[10]),
        .D2(dac_dat_b[10]),
        .Q(dac_dat_o[10]),
        .R(dac_rst),
        .S(\NLW_ODDR_dac_dat[10]_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \ODDR_dac_dat[11] 
       (.C(clk),
        .CE(1'b1),
        .D1(dac_dat_a[11]),
        .D2(dac_dat_b[11]),
        .Q(dac_dat_o[11]),
        .R(dac_rst),
        .S(\NLW_ODDR_dac_dat[11]_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \ODDR_dac_dat[12] 
       (.C(clk),
        .CE(1'b1),
        .D1(dac_dat_a[12]),
        .D2(dac_dat_b[12]),
        .Q(dac_dat_o[12]),
        .R(dac_rst),
        .S(\NLW_ODDR_dac_dat[12]_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \ODDR_dac_dat[13] 
       (.C(clk),
        .CE(1'b1),
        .D1(dac_dat_a[13]),
        .D2(dac_dat_b[13]),
        .Q(dac_dat_o[13]),
        .R(dac_rst),
        .S(\NLW_ODDR_dac_dat[13]_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \ODDR_dac_dat[1] 
       (.C(clk),
        .CE(1'b1),
        .D1(dac_dat_a[1]),
        .D2(dac_dat_b[1]),
        .Q(dac_dat_o[1]),
        .R(dac_rst),
        .S(\NLW_ODDR_dac_dat[1]_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \ODDR_dac_dat[2] 
       (.C(clk),
        .CE(1'b1),
        .D1(dac_dat_a[2]),
        .D2(dac_dat_b[2]),
        .Q(dac_dat_o[2]),
        .R(dac_rst),
        .S(\NLW_ODDR_dac_dat[2]_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \ODDR_dac_dat[3] 
       (.C(clk),
        .CE(1'b1),
        .D1(dac_dat_a[3]),
        .D2(dac_dat_b[3]),
        .Q(dac_dat_o[3]),
        .R(dac_rst),
        .S(\NLW_ODDR_dac_dat[3]_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \ODDR_dac_dat[4] 
       (.C(clk),
        .CE(1'b1),
        .D1(dac_dat_a[4]),
        .D2(dac_dat_b[4]),
        .Q(dac_dat_o[4]),
        .R(dac_rst),
        .S(\NLW_ODDR_dac_dat[4]_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \ODDR_dac_dat[5] 
       (.C(clk),
        .CE(1'b1),
        .D1(dac_dat_a[5]),
        .D2(dac_dat_b[5]),
        .Q(dac_dat_o[5]),
        .R(dac_rst),
        .S(\NLW_ODDR_dac_dat[5]_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \ODDR_dac_dat[6] 
       (.C(clk),
        .CE(1'b1),
        .D1(dac_dat_a[6]),
        .D2(dac_dat_b[6]),
        .Q(dac_dat_o[6]),
        .R(dac_rst),
        .S(\NLW_ODDR_dac_dat[6]_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \ODDR_dac_dat[7] 
       (.C(clk),
        .CE(1'b1),
        .D1(dac_dat_a[7]),
        .D2(dac_dat_b[7]),
        .Q(dac_dat_o[7]),
        .R(dac_rst),
        .S(\NLW_ODDR_dac_dat[7]_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \ODDR_dac_dat[8] 
       (.C(clk),
        .CE(1'b1),
        .D1(dac_dat_a[8]),
        .D2(dac_dat_b[8]),
        .Q(dac_dat_o[8]),
        .R(dac_rst),
        .S(\NLW_ODDR_dac_dat[8]_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \ODDR_dac_dat[9] 
       (.C(clk),
        .CE(1'b1),
        .D1(dac_dat_a[9]),
        .D2(dac_dat_b[9]),
        .Q(dac_dat_o[9]),
        .R(dac_rst),
        .S(\NLW_ODDR_dac_dat[9]_S_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    ODDR_rst
       (.C(clk),
        .CE(1'b1),
        .D1(dac_rst),
        .D2(dac_rst),
        .Q(dac_rst_o),
        .R(NLW_ODDR_rst_R_UNCONNECTED),
        .S(NLW_ODDR_rst_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    ODDR_sel
       (.C(clk),
        .CE(1'b1),
        .D1(1'b0),
        .D2(1'b1),
        .Q(dac_sel_o),
        .R(dac_rst),
        .S(NLW_ODDR_sel_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    ODDR_wrt
       (.C(dac_clk),
        .CE(1'b1),
        .D1(1'b0),
        .D2(1'b1),
        .Q(dac_wrt_o),
        .R(NLW_ODDR_wrt_R_UNCONNECTED),
        .S(NLW_ODDR_wrt_S_UNCONNECTED));
  LUT2 #(
    .INIT(4'h7)) 
    \dac_dat_a[0]_i_1 
       (.I0(dac_a[0]),
        .I1(dac_a_tvalid),
        .O(\dac_dat_a[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[10]_i_1 
       (.I0(dac_a[10]),
        .O(\dac_dat_a[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[11]_i_1 
       (.I0(dac_a[11]),
        .O(\dac_dat_a[11]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[12]_i_1 
       (.I0(dac_a[12]),
        .O(\dac_dat_a[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[13]_i_1 
       (.I0(dac_a_tvalid),
        .O(\dac_dat_a[13]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[1]_i_1 
       (.I0(dac_a[1]),
        .O(\dac_dat_a[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[2]_i_1 
       (.I0(dac_a[2]),
        .O(\dac_dat_a[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[3]_i_1 
       (.I0(dac_a[3]),
        .O(\dac_dat_a[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[4]_i_1 
       (.I0(dac_a[4]),
        .O(\dac_dat_a[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[5]_i_1 
       (.I0(dac_a[5]),
        .O(\dac_dat_a[5]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[6]_i_1 
       (.I0(dac_a[6]),
        .O(\dac_dat_a[6]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[7]_i_1 
       (.I0(dac_a[7]),
        .O(\dac_dat_a[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[8]_i_1 
       (.I0(dac_a[8]),
        .O(\dac_dat_a[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[9]_i_1 
       (.I0(dac_a[9]),
        .O(\dac_dat_a[9]_i_1_n_0 ));
  FDRE \dac_dat_a_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_dat_a[0]_i_1_n_0 ),
        .Q(dac_dat_a[0]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_dat_a[10]_i_1_n_0 ),
        .Q(dac_dat_a[10]),
        .R(\dac_dat_a[13]_i_1_n_0 ));
  FDRE \dac_dat_a_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_dat_a[11]_i_1_n_0 ),
        .Q(dac_dat_a[11]),
        .R(\dac_dat_a[13]_i_1_n_0 ));
  FDRE \dac_dat_a_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_dat_a[12]_i_1_n_0 ),
        .Q(dac_dat_a[12]),
        .R(\dac_dat_a[13]_i_1_n_0 ));
  FDRE \dac_dat_a_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(dac_a[13]),
        .Q(dac_dat_a[13]),
        .R(\dac_dat_a[13]_i_1_n_0 ));
  FDRE \dac_dat_a_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_dat_a[1]_i_1_n_0 ),
        .Q(dac_dat_a[1]),
        .R(\dac_dat_a[13]_i_1_n_0 ));
  FDRE \dac_dat_a_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_dat_a[2]_i_1_n_0 ),
        .Q(dac_dat_a[2]),
        .R(\dac_dat_a[13]_i_1_n_0 ));
  FDRE \dac_dat_a_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_dat_a[3]_i_1_n_0 ),
        .Q(dac_dat_a[3]),
        .R(\dac_dat_a[13]_i_1_n_0 ));
  FDRE \dac_dat_a_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_dat_a[4]_i_1_n_0 ),
        .Q(dac_dat_a[4]),
        .R(\dac_dat_a[13]_i_1_n_0 ));
  FDRE \dac_dat_a_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_dat_a[5]_i_1_n_0 ),
        .Q(dac_dat_a[5]),
        .R(\dac_dat_a[13]_i_1_n_0 ));
  FDRE \dac_dat_a_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_dat_a[6]_i_1_n_0 ),
        .Q(dac_dat_a[6]),
        .R(\dac_dat_a[13]_i_1_n_0 ));
  FDRE \dac_dat_a_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_dat_a[7]_i_1_n_0 ),
        .Q(dac_dat_a[7]),
        .R(\dac_dat_a[13]_i_1_n_0 ));
  FDRE \dac_dat_a_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_dat_a[8]_i_1_n_0 ),
        .Q(dac_dat_a[8]),
        .R(\dac_dat_a[13]_i_1_n_0 ));
  FDRE \dac_dat_a_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_dat_a[9]_i_1_n_0 ),
        .Q(dac_dat_a[9]),
        .R(\dac_dat_a[13]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \dac_dat_b[0]_i_1 
       (.I0(dac_b[0]),
        .I1(dac_b_tvalid),
        .O(\dac_dat_b[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[10]_i_1 
       (.I0(dac_b[10]),
        .O(\dac_dat_b[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[11]_i_1 
       (.I0(dac_b[11]),
        .O(\dac_dat_b[11]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[12]_i_1 
       (.I0(dac_b[12]),
        .O(\dac_dat_b[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[13]_i_1 
       (.I0(dac_b_tvalid),
        .O(\dac_dat_b[13]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[1]_i_1 
       (.I0(dac_b[1]),
        .O(\dac_dat_b[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[2]_i_1 
       (.I0(dac_b[2]),
        .O(\dac_dat_b[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[3]_i_1 
       (.I0(dac_b[3]),
        .O(\dac_dat_b[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[4]_i_1 
       (.I0(dac_b[4]),
        .O(\dac_dat_b[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[5]_i_1 
       (.I0(dac_b[5]),
        .O(\dac_dat_b[5]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[6]_i_1 
       (.I0(dac_b[6]),
        .O(\dac_dat_b[6]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[7]_i_1 
       (.I0(dac_b[7]),
        .O(\dac_dat_b[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[8]_i_1 
       (.I0(dac_b[8]),
        .O(\dac_dat_b[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[9]_i_1 
       (.I0(dac_b[9]),
        .O(\dac_dat_b[9]_i_1_n_0 ));
  FDRE \dac_dat_b_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_dat_b[0]_i_1_n_0 ),
        .Q(dac_dat_b[0]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_dat_b[10]_i_1_n_0 ),
        .Q(dac_dat_b[10]),
        .R(\dac_dat_b[13]_i_1_n_0 ));
  FDRE \dac_dat_b_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_dat_b[11]_i_1_n_0 ),
        .Q(dac_dat_b[11]),
        .R(\dac_dat_b[13]_i_1_n_0 ));
  FDRE \dac_dat_b_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_dat_b[12]_i_1_n_0 ),
        .Q(dac_dat_b[12]),
        .R(\dac_dat_b[13]_i_1_n_0 ));
  FDRE \dac_dat_b_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(dac_b[13]),
        .Q(dac_dat_b[13]),
        .R(\dac_dat_b[13]_i_1_n_0 ));
  FDRE \dac_dat_b_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_dat_b[1]_i_1_n_0 ),
        .Q(dac_dat_b[1]),
        .R(\dac_dat_b[13]_i_1_n_0 ));
  FDRE \dac_dat_b_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_dat_b[2]_i_1_n_0 ),
        .Q(dac_dat_b[2]),
        .R(\dac_dat_b[13]_i_1_n_0 ));
  FDRE \dac_dat_b_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_dat_b[3]_i_1_n_0 ),
        .Q(dac_dat_b[3]),
        .R(\dac_dat_b[13]_i_1_n_0 ));
  FDRE \dac_dat_b_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_dat_b[4]_i_1_n_0 ),
        .Q(dac_dat_b[4]),
        .R(\dac_dat_b[13]_i_1_n_0 ));
  FDRE \dac_dat_b_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_dat_b[5]_i_1_n_0 ),
        .Q(dac_dat_b[5]),
        .R(\dac_dat_b[13]_i_1_n_0 ));
  FDRE \dac_dat_b_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_dat_b[6]_i_1_n_0 ),
        .Q(dac_dat_b[6]),
        .R(\dac_dat_b[13]_i_1_n_0 ));
  FDRE \dac_dat_b_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_dat_b[7]_i_1_n_0 ),
        .Q(dac_dat_b[7]),
        .R(\dac_dat_b[13]_i_1_n_0 ));
  FDRE \dac_dat_b_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_dat_b[8]_i_1_n_0 ),
        .Q(dac_dat_b[8]),
        .R(\dac_dat_b[13]_i_1_n_0 ));
  FDRE \dac_dat_b_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_dat_b[9]_i_1_n_0 ),
        .Q(dac_dat_b[9]),
        .R(\dac_dat_b[13]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    dac_rst_i_1
       (.I0(pll_locked),
        .O(dac_rst_i_1_n_0));
  FDRE dac_rst_reg
       (.C(clk),
        .CE(1'b1),
        .D(dac_rst_i_1_n_0),
        .Q(dac_rst),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_DACs_wrapper_0_0,DACs_wrapper,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "DACs_wrapper,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    dac_clk,
    pll_locked,
    dac_a,
    dac_a_tvalid,
    dac_b,
    dac_b_tvalid,
    dac_dat_o,
    dac_wrt_o,
    dac_sel_o,
    dac_clk_o,
    dac_rst_o);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 dac_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME dac_clk, FREQ_HZ 250000000, PHASE 90.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input dac_clk;
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

  wire clk;
  wire [13:0]dac_a;
  wire dac_a_tvalid;
  wire [13:0]dac_b;
  wire dac_b_tvalid;
  wire dac_clk;
  wire dac_clk_o;
  wire [13:0]dac_dat_o;
  wire dac_rst_o;
  wire dac_sel_o;
  wire dac_wrt_o;
  wire pll_locked;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DACs_wrapper U0
       (.clk(clk),
        .dac_a(dac_a),
        .dac_a_tvalid(dac_a_tvalid),
        .dac_b(dac_b),
        .dac_b_tvalid(dac_b_tvalid),
        .dac_clk(dac_clk),
        .dac_clk_o(dac_clk_o),
        .dac_dat_o(dac_dat_o),
        .dac_rst_o(dac_rst_o),
        .dac_sel_o(dac_sel_o),
        .dac_wrt_o(dac_wrt_o),
        .pll_locked(pll_locked));
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
