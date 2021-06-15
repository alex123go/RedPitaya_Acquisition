// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Aug 11 14:15:45 2020
// Host        : DESKTOP-AUBSA4O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_c_counter_binary_0_0 -prefix
//               design_1_c_counter_binary_0_0_ design_1_c_counter_binary_0_0_sim_netlist.v
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
(* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
NuxOdnFPRmS8vUI53otgzjRjDcuSxzMstsT2oDr531bndO0JbuT444zFJusTRY1yUlRlUpr2AYDP
wO8raQvSgQ6dTigtFEKK1Gsr0p/x8P1ac5KyYUP9JdqXbgYeMEFiM5JnHqv5Y/RFRs/jd/7UV4Xp
Kxu0kEwplRjR0/MVRWdRm4yyl2EBe9zZ8mN7XqE0XBx0BgE4xlcyWlGYalAEFy/FImb96gib4yPt
Gn+mmobiOju47iXSOpe8emG6yX/OF+69/4cxwG+DMLA9R8cyTwyEAzdiloUV+7YnrR6jQWuQJ19j
Uf/e20gOSMlu2GuFgHmmhymnL7cJqPyKiL7xhA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
q1fyxxEYBpNSObZeaendNkBhodTVF46ovDO2zbnrByBNHEaxsDvNGFsUhwaOVwPcJ0ehEI+Gf+8s
u272WE/95yoVnL/R7o42d99kmssBEOHZk2uzs+WOtQDcQiiPqDyqG/41Ohf+NPplPGf3r8wpaNci
SBwZBAfm77XhIAsSXok7sZtOiBBHyGBQZAQ+42+KKf1gysyHR2uucvpnWa8GoYG0XfPGaMBkwbqv
H8h8GNiJHQvHgaLsWOuopXSxKYhOfbOj03tic86WLdQX4//tFXZvZb3q769JFCLsp1J8+eugHogo
wxBM2sphMA+HbLArM0GiVLa1/KTsn3Fw5CXlZQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17408)
`pragma protect data_block
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
CfaO65hRSSxl
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
