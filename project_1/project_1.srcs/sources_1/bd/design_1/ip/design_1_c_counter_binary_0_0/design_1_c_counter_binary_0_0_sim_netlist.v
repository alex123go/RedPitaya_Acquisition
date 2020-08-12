// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Aug 11 14:15:46 2020
// Host        : DESKTOP-AUBSA4O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Users/Alex/Documents/GitHub/RedPitaya_Acquisition/RedPitaya_Acquisition/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_c_counter_binary_0_0/design_1_c_counter_binary_0_0_sim_netlist.v
// Design      : design_1_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_counter_binary_0_0,c_counter_binary_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module design_1_c_counter_binary_0_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 32}" *) output [31:0]Q;

  wire CLK;
  wire [31:0]Q;
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
  (* C_WIDTH = "32" *) 
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
  design_1_c_counter_binary_0_0_c_counter_binary_v12_0_13 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "32" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_13" *) (* downgradeipidentifiedwarnings = "yes" *) 
module design_1_c_counter_binary_0_0_c_counter_binary_v12_0_13
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
  input [31:0]L;
  output THRESH0;
  output [31:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [31:0]Q;
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
  (* C_WIDTH = "32" *) 
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
  design_1_c_counter_binary_0_0_c_counter_binary_v12_0_13_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
dQaGcsbIaughesLnZWugJt/MWsFkdiw8AQPwpa9GIwe5fiQE5Ed6nditPQByzJlqOCMdcxIE9OP4
aNjIk8553fSZL+thg5GXsvFzmVNvzMqcvw4e5chSad6FaE8WFchyKxzD7gmJQwK2KvayDuYfqN6Q
htpIyfoU0QXDUw6NrOVTPzyMOCOhHBGyAq6zRjpyuNg0ONNTfCk/HYNNsaMmu747dJDyWQ5KLOLp
kT5Mfo92S9HqwUQh5/eGn/F0gIOr/dGPDaLK+FqIkpSCYok3vWBe3Ao0aHz5GWD0VPbEvx5CXVsU
iVZcZckPVu9Z7u5ffajEvVSJWONFaLWMx/7zpA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LLmuOr+fAAVWbvIVFzugAv3PRx7DPT6SBX4OWkHemTB6HVDeJNLdqYwv3JyrlO4/3COsmfHEiBzT
6lvr/pQX3eeTj2NA+e0jOBnjAejUn4wom67FJIfTesj5pk3Xc16TGdhs7Mxez5zFou3IGULKUEoP
zQlFXEjYnPvm8mBTBBdCbxw9rDjTSunLvEf6pBjdAgn/6FuNFTDL2EMwbzwDhYcCtpIDFf4TpytC
sxWcTNzSiLqBojtSYQ6sWKRXS57bIllV/3N4XMCPsbYWtDNkFfSNYDwQ8/1IEDJvFOOgjn1jD0Vp
jfag0DxMvi++mzjPBrjghuAn9cphIyevVXQJ/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17600)
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
