// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Apr 17 13:55:20 2020
// Host        : DESKTOP-AUBSA4O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ADC_1_mimic_0_sim_netlist.v
// Design      : design_1_ADC_1_mimic_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ADC_1_mimic_0,c_counter_binary_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 16}, PortType data, PortType.PROP_SRC false" *) output [15:0]Q;

  wire CLK;
  wire [15:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "1" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_13 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "1" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "16" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_13
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [15:0]L;
  output THRESH0;
  output [15:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [15:0]Q;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "1" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_13_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
hkYW+OZm6k9gF5yAUfXGm/n8kfXYD6tjFQYha968Ws0SqrM/NNAjCrrtMG8kIqTbkipnmceefxNr
sB0PtSpUrw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
NEPpD4CxNBVJLV3hg1agn83QnqiCz3YuR89MlVuNyQGERKVJ+uGolFDqHFzBKLQArFTiHBWivkzK
A2DQ42XdOxp30NKOgHjrjgmF+fZMjDs24rn3Ue1INLHwTS5RT84Kih7Jx/7R0dl03/COJq+33l9u
7l+ArdY7mLwqqI9iIjU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cfBwEwc95LpKuxDGqpON2gGac620iHNKrm/QNXYg3/OFA5ZQNdpdhRz4vCTQRVbOg7b1nIox6GR8
TD/cf0JW38RU0NuY+TR6CkFT19NCdy67gR6JTDdXifhr/zTKjOL5gvp0XjT9PSLwwPyDirNX4TMa
9y9X5pf4gEnt0dikHNgySZO+Qpr30MP7n6oAjuxowlf45cfmPqZthYPnIjBSCdQGBPfSF+kZ2F1N
XCDEja5xE4CQshPPodH5njadc6kj7/qp9C4PfKcyNtDug+qsws9UK25Z2IFc8vk6/15HlIkQHkXv
Wq0iHaPLidqh3035FinHyPD/FDnfGGa5Oa2qcg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QmjD3HAHcP+h0RsjR0iH8h2N6drNxei50nfQN9RC8HobMEaARq/6rKjZEhHXMSCStQeCMhyVKRmN
HM7ZrqMf3W0s/8U4QMqp3M1VuYXVjEe2PCIpvtRcMY3JngdSWOydG2dH6dDA16ehxinMKgIr0TjA
PXA+lfyX6yTs1FWrne/6ufrl6ZAPpNG7EDKQ2aHqSm8DEXT1BJYMblBfAjAajwaJmPEu1aDlQeNo
onryTiFJkKP92pcZLCCufZL8ZAJ5uMvZZxiZRsiLd0BnCfOe3rl9AON+q53U+iK11EvAkpIBT+Cc
VYb5NqVAVaqXbQrqo3+YHEW5ft3fM9kZnlFDew==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FkHW107swc8fPv4xOTlQJU6PWERObturlywl6rsGCswc/v367bmQ1Maze/8QdmUPjEYwhAcHKVMu
7U4o3CvYhmrDpYiUQdQQ0B7gAbMZbJ8MFY5jRxn7KYDk+Bi9Ov8092IdW1a51FPWEVPmF4Kn6z4E
DSqpQDL58qieEUnrU2Ltb4GLJc3NrWTLvnbvRtHUUuQWTMZTQ7WqX4iH2dZ/EICpbRjlAF50iMAS
YHuuFTRKXcIFQlKYRyeQV4nyaA5JGbb3RC3N/Q2IZjdSXqQ9EOpmdhttpxReCnsdJiD/pPCtf7ZN
d/TheLy1Va2FZR+p4MozZorVui5/FtcCwKy6aw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
NgZm/7Jvy0UZQRVxBVxeZ/odxMd59IlnRFHjM+6Bof6o6u4Qy4u9MOoQ3Sr2paPuGq+B+5EhdcD8
a5WGiurBrPW0qF+L2CoUJsDqz0WonRehZECQynibSUlmctvvMyr790pwb+C78gtW47p8uALYdUCJ
NhcDkV8fE3jFdDEYmfQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TxQNdd2WOThZCBZEYNgXxai4jK9AqWD/GRadYnarEfzmLUfcNDUoG7DxVWHCdTVuW8i2qZpouT1H
FUHt76rzZk8vI2tFLfUbKyTaRqik1aYwOCp1ZdqbgqQEDhBRWJjGxcJuxZbSQ2z8IUgiJ0eT148+
nf9UmzvYS1jrIsN/a7K4EjyRNMk0V917y85rxdk7itlisaUw4Cm72z9slByFtALj6/077uPjcK9U
mbWm7PbXk8PT44eQeaJl990wlWvD5/8BZS6AHqjg8520Xs+jftSeB6aNqTiYxfp21FJqmexwo7cG
G3BH/DRHhP7ZIsXHqSaJJFo20Nx9VgpLuF5t2g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YoTD3HoXFiy6ekGwRBME2PhaThtK1mUynyKGJIiB9iwRCexd2Rss3dYtKwfMRdXBcREA1SB7oPB2
K9EpC0slsm9hJR9I1WijEflKCeyfOrZ6JTh8hcAh5+4CbtypOtaDGhO2kJDfi4n8AXdFt3k5K7CS
33LYuLwSlXpQor8ZtZcWvfuURgGj1woYcJGlB8S0YD9VUw3O3PRF4RoDEwnjAaLiYJuXy9mEYluc
q0EQKdIrVQ/WeB4QbW5xylWNX4ndNGU6xe53HFubzjgUMcpgEH3FKsVTbq2sa57P7uRAO6QF5M0R
Yk1FcLhcuGaHaXehVRoookGiD0JwyAwtKUJDyQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
N3V4IhC8Lfd3Pr1MqSW0KViJrVsIrSHWI586FhTxZb8Eg1KqVeyBIPh9dTjpsJ6t+w605osbFKgV
eLINjrU/CSpl3f7BLIaLjKiQjpGrfoAvTriKCooO5GM6PhPsFBuiUA+sMJpcK+EBuAYYnGj9dz7i
XvHhAlWLPbeMx2oF0rtmg+5pBvIMZlSUUzGGiNW9d9+cMv9isoy2FyfnUORwRu2/PX/KCkuFKIyf
H7TLGxHfcyI3syTciFjwzURNBsxhyIP69KjXkYzEPDLFlx7zD8bhETiYEZvRj4lw0wr/WnGGKl42
LloNdXQQzL8BLLOYyxrmOHu/qAH3J+aS3/2h/g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14336)
`pragma protect data_block
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
JYj357qJJgcjJim8Kf2VoJA0Vn+gluB28aXM4As=
`pragma protect end_protected
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
