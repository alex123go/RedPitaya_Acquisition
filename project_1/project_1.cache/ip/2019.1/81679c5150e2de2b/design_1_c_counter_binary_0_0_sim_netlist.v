// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Apr 17 13:54:01 2020
// Host        : DESKTOP-AUBSA4O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_c_counter_binary_0_0_sim_netlist.v
// Design      : design_1_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_counter_binary_0_0,c_counter_binary_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 16}" *) output [15:0]Q;

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
  (* c_count_mode = "0" *) 
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
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
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
  (* c_count_mode = "0" *) 
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
cFLIR0LVny9KXjeVnoobffehpNZZDNcAYdjcawEp5QsBKS4KT9SIfY3nXr6wujb+ilKHSc6ZVzBM
yQbZlTbEhM1lxofPy2g1qgFoouQKqExtHUAq+eZfGCE0Z/qMFv8+c8oik6Sztu3Lfl/NoZtFNBn1
Bs0G8hTdnWsof6+VW/6Y2VYO1C5Kv+dlV3MIEaoCqdsnePFR7fgnFacCjj/hC6N3IfX4zJm+HRuH
4XTaiW2M/NchYrPH8cVR/MiWsElg/EbxtZP3639Ygj4bsy1P2zn07qtub82KOZT6tTfBkvoSPKEF
mfo4o0xi7PefVbIAZSTwMf6isySIilZ5HiCEYg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pL//My9mWxgzPTdeLDHIjNANOLQjuh8NrpvHxCsl6hwtJeGLWUe/pfjeHpKL8eKzeYGmrBeA+krI
aBYNWKzDLK8lt69MNcQjekMw5gCuWpi1zBNyBU9DwxgCl0mgYUcBMUMGF1QbcJ5U2qq280hx7VOT
PeoS+lpjiGtyHXvatGjvNiWVsy6dY/OuKrTbWrpacKGH7ztc9orjqWmKu+57EW7k+VTQVsZBkJVA
YUq+kg8lJHNcU+Py2msX7yuhGdK8kaRnCm2pYUog2ngR5TzDMhGtO3SyVaSnoc0dQ4Hbf4uCf6cq
bmrZgOJ0AR8FfRCAfsawgizs8m6Mq5kr9rwkyA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10144)
`pragma protect data_block
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
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
