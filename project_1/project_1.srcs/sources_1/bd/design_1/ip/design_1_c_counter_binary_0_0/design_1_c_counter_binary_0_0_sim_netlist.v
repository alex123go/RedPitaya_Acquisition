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
UQfhb39PIYJH
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
