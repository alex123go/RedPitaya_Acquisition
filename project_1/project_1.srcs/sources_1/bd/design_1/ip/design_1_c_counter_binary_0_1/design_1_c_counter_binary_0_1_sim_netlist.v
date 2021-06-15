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
