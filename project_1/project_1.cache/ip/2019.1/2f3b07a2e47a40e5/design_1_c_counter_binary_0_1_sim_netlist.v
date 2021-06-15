// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Jun  8 10:42:27 2021
// Host        : DESKTOP-AUBSA4O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_c_counter_binary_0_1_sim_netlist.v
// Design      : design_1_c_counter_binary_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_counter_binary_0_1,c_counter_binary_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 27} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 27}" *) output [26:0]Q;

  wire CLK;
  wire [26:0]Q;
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
  (* C_WIDTH = "27" *) 
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
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "27" *) 
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
  input [26:0]L;
  output THRESH0;
  output [26:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [26:0]Q;
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
  (* C_WIDTH = "27" *) 
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
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
AZy1/GhMpTsyzxL20BqE0COfs5CVt0+4jHnJhx3JmYrX1HgBtEeKJJBZHlLVkZ6XltzYZR1r+Jl6
ya45n3kpjPtChj5jMDRVrK62K6jPtDth5AKjVs8BGYNojDaYFvvFRb+FNYD4g4zlmEf03U3N1PoN
OeEoRVAShEr6mYYI/jYziKRpVrQYOX/ysMNtqspt5dW7DE5zEp0Axuz8chPhKO/pE0kA+6KvaAns
UHFK+YxVHDwN8kxc3L7w7Q8fp35JWHgFqkZKIS8437VSqGEWof8TWhS5Cr7KL8Zu5KhHGzY/h3ix
73Y/jMo/FL4b0ilOAng1cbmMDyyc3mkvRCD3pA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QpGBm0wkvFhvdwUvI5gF3JRfr2FQJmIHJzKKAIenDOGk/mlSBf2fnxcXYbAYB1RZMgsEwOUd1KbL
lGJnRfFEXUtq5TIomQnjMtVBWU4ioyfDGX5f3CaRMftGBry7FN9wFTv1HveMnLsmvvdgl1QUfdhb
tEms2dYqxBRAw6vmfF4VNo4KucC7K1rAddZdeUL/tAPx2rOIcvBfnnjJTRbGefpE4Jw2WzADLRxe
YxGKVzmcCmGPAfd0PXkZ6POYnMODhandtLSNCh6BfDKu8qukFqrEJGxJ+u2npF5KjXOADc4hs43y
oUnlh9cN0v7uW1zCPT6eJfDj7qrFaaoVZyeORQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15552)
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
