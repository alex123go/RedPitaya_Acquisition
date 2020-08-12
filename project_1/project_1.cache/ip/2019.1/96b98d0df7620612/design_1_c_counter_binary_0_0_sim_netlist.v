// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Aug 11 14:15:45 2020
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_13 U0
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_13_viv i_synth
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
vsirFgJYJMwibFgDt1jNyvEEPcoc418=
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
