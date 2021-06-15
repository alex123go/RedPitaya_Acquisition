// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Jun  8 10:42:27 2021
// Host        : DESKTOP-AUBSA4O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_c_counter_binary_0_1 -prefix
//               design_1_c_counter_binary_0_1_ design_1_c_counter_binary_0_1_sim_netlist.v
// Design      : design_1_c_counter_binary_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_counter_binary_0_1,c_counter_binary_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module design_1_c_counter_binary_0_1
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
  design_1_c_counter_binary_0_1_c_counter_binary_v12_0_13 U0
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
module design_1_c_counter_binary_0_1_c_counter_binary_v12_0_13
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
  design_1_c_counter_binary_0_1_c_counter_binary_v12_0_13_viv i_synth
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
