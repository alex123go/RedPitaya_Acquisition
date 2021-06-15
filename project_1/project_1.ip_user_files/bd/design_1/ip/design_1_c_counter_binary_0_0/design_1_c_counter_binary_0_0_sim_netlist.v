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
Loq4YSbTQzw/
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
