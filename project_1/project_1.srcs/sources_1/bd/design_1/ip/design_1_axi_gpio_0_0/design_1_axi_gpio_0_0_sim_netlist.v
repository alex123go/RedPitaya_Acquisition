// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Apr 17 13:58:06 2020
// Host        : DESKTOP-AUBSA4O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_axi_gpio_0_0 -prefix
//               design_1_axi_gpio_0_0_ design_1_axi_gpio_0_0_sim_netlist.v
// Design      : design_1_axi_gpio_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_axi_gpio_0_0_GPIO_Core
   (reg3,
    gpio2_io_o,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[31].reg1_reg ,
    gpio_io_o,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[30].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[29].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[28].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[27].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[26].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[25].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[24].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[23].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[22].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[21].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[20].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[19].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[18].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[17].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[16].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[15].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[14].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[13].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[12].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[11].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[10].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[9].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[8].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[7].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[6].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[5].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[4].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[3].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[2].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[1].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg ,
    GPIO_xferAck_i,
    gpio_xferAck_Reg,
    ip2bus_wrack_i,
    ip2bus_rdack_i,
    gpio_io_t,
    gpio2_io_t,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ,
    s_axi_aclk,
    bus2ip_reset,
    bus2ip_cs,
    bus2ip_rnw,
    E,
    D,
    \Dual.gpio_OE_reg[0]_0 ,
    s_axi_wdata,
    Q,
    \Dual.gpio2_Data_Out_reg[0]_0 ,
    \Dual.gpio2_OE_reg[0]_0 );
  output [1:0]reg3;
  output [1:0]gpio2_io_o;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[31].reg1_reg ;
  output [31:0]gpio_io_o;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[30].reg1_reg ;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[29].reg1_reg ;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[28].reg1_reg ;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[27].reg1_reg ;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[26].reg1_reg ;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[25].reg1_reg ;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[24].reg1_reg ;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[23].reg1_reg ;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[22].reg1_reg ;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[21].reg1_reg ;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[20].reg1_reg ;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[19].reg1_reg ;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[18].reg1_reg ;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[17].reg1_reg ;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[16].reg1_reg ;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[15].reg1_reg ;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[14].reg1_reg ;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[13].reg1_reg ;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[12].reg1_reg ;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[11].reg1_reg ;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[10].reg1_reg ;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[9].reg1_reg ;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[8].reg1_reg ;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[7].reg1_reg ;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[6].reg1_reg ;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[5].reg1_reg ;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[4].reg1_reg ;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[3].reg1_reg ;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[2].reg1_reg ;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[1].reg1_reg ;
  output \Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg ;
  output GPIO_xferAck_i;
  output gpio_xferAck_Reg;
  output ip2bus_wrack_i;
  output ip2bus_rdack_i;
  output [31:0]gpio_io_t;
  output [1:0]gpio2_io_t;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ;
  input s_axi_aclk;
  input bus2ip_reset;
  input bus2ip_cs;
  input bus2ip_rnw;
  input [0:0]E;
  input [31:0]D;
  input [0:0]\Dual.gpio_OE_reg[0]_0 ;
  input [3:0]s_axi_wdata;
  input [0:0]Q;
  input \Dual.gpio2_Data_Out_reg[0]_0 ;
  input \Dual.gpio2_OE_reg[0]_0 ;

  wire [31:0]D;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[10].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[11].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[12].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[13].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[14].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[15].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[16].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[17].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[18].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[19].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[1].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[20].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[21].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[22].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[23].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[24].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[25].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[26].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[27].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[28].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[29].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[2].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[30].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[31].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[3].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[4].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[5].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[6].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[7].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[8].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[9].reg1_reg ;
  wire \Dual.gpio2_Data_Out[0]_i_1_n_0 ;
  wire \Dual.gpio2_Data_Out[1]_i_1_n_0 ;
  wire \Dual.gpio2_Data_Out_reg[0]_0 ;
  wire \Dual.gpio2_OE[0]_i_1_n_0 ;
  wire \Dual.gpio2_OE[1]_i_1_n_0 ;
  wire \Dual.gpio2_OE_reg[0]_0 ;
  wire [0:0]\Dual.gpio_OE_reg[0]_0 ;
  wire [0:0]E;
  wire GPIO_xferAck_i;
  wire [0:0]Q;
  wire bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire [1:0]gpio2_io_o;
  wire [1:0]gpio2_io_t;
  wire [31:0]gpio_io_o;
  wire [31:0]gpio_io_t;
  wire gpio_xferAck_Reg;
  wire iGPIO_xferAck;
  wire ip2bus_rdack_i;
  wire ip2bus_wrack_i;
  wire [1:0]reg3;
  wire s_axi_aclk;
  wire [3:0]s_axi_wdata;

  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \/i_ 
       (.I0(gpio_xferAck_Reg),
        .I1(bus2ip_cs),
        .I2(GPIO_xferAck_i),
        .O(iGPIO_xferAck));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[31]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[10].reg1_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[21]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[10].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[11].reg1_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[20]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[11].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[12].reg1_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[19]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[12].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[13].reg1_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[18]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[13].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[14].reg1_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[17]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[14].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[15].reg1_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[16]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[15].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[16].reg1_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[15]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[16].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[17].reg1_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[14]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[17].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[18].reg1_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[13]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[18].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[19].reg1_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[12]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[19].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[1].reg1_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[30]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[1].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[20].reg1_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[11]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[20].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[21].reg1_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[10]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[21].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[22].reg1_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[9]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[22].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[23].reg1_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[8]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[23].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[24].reg1_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[7]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[24].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[25].reg1_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[6]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[25].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[26].reg1_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[5]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[26].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[27].reg1_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[4]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[27].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[28].reg1_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[3]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[28].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[29].reg1_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[2]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[29].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[2].reg1_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[29]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[2].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[30].reg1_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[1]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[30].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[31].reg1_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[0]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[31].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[3].reg1_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[28]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[3].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[4].reg1_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[27]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[4].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[5].reg1_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[26]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[5].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[6].reg1_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[25]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[6].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[7].reg1_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[24]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[7].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[8].reg1_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[23]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[8].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT0_ND_G1.READ_REG_GEN[9].reg1_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[22]),
        .Q(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[9].reg1_reg ),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[0].reg3_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_o[1]),
        .Q(reg3[1]),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  FDRE \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[1].reg3_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_o[0]),
        .Q(reg3[0]),
        .R(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \Dual.gpio2_Data_Out[0]_i_1 
       (.I0(s_axi_wdata[3]),
        .I1(bus2ip_cs),
        .I2(Q),
        .I3(s_axi_wdata[1]),
        .I4(\Dual.gpio2_Data_Out_reg[0]_0 ),
        .I5(gpio2_io_o[1]),
        .O(\Dual.gpio2_Data_Out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \Dual.gpio2_Data_Out[1]_i_1 
       (.I0(s_axi_wdata[2]),
        .I1(bus2ip_cs),
        .I2(Q),
        .I3(s_axi_wdata[0]),
        .I4(\Dual.gpio2_Data_Out_reg[0]_0 ),
        .I5(gpio2_io_o[0]),
        .O(\Dual.gpio2_Data_Out[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_Data_Out[0]_i_1_n_0 ),
        .Q(gpio2_io_o[1]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_Data_Out[1]_i_1_n_0 ),
        .Q(gpio2_io_o[0]),
        .R(bus2ip_reset));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \Dual.gpio2_OE[0]_i_1 
       (.I0(s_axi_wdata[3]),
        .I1(bus2ip_cs),
        .I2(Q),
        .I3(s_axi_wdata[1]),
        .I4(\Dual.gpio2_OE_reg[0]_0 ),
        .I5(gpio2_io_t[1]),
        .O(\Dual.gpio2_OE[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \Dual.gpio2_OE[1]_i_1 
       (.I0(s_axi_wdata[2]),
        .I1(bus2ip_cs),
        .I2(Q),
        .I3(s_axi_wdata[0]),
        .I4(\Dual.gpio2_OE_reg[0]_0 ),
        .I5(gpio2_io_t[0]),
        .O(\Dual.gpio2_OE[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_OE[0]_i_1_n_0 ),
        .Q(gpio2_io_t[1]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_OE[1]_i_1_n_0 ),
        .Q(gpio2_io_t[0]),
        .S(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[31]),
        .Q(gpio_io_o[31]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[21]),
        .Q(gpio_io_o[21]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[20]),
        .Q(gpio_io_o[20]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[19]),
        .Q(gpio_io_o[19]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[18]),
        .Q(gpio_io_o[18]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[17]),
        .Q(gpio_io_o[17]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[16]),
        .Q(gpio_io_o[16]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[16] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[15]),
        .Q(gpio_io_o[15]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[17] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[14]),
        .Q(gpio_io_o[14]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[18] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[13]),
        .Q(gpio_io_o[13]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[19] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[12]),
        .Q(gpio_io_o[12]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[30]),
        .Q(gpio_io_o[30]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[20] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[11]),
        .Q(gpio_io_o[11]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[21] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[10]),
        .Q(gpio_io_o[10]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[22] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[9]),
        .Q(gpio_io_o[9]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[23] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[8]),
        .Q(gpio_io_o[8]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[24] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[7]),
        .Q(gpio_io_o[7]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[25] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[6]),
        .Q(gpio_io_o[6]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[26] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[5]),
        .Q(gpio_io_o[5]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[27] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[4]),
        .Q(gpio_io_o[4]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[28] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[3]),
        .Q(gpio_io_o[3]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[29] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[2]),
        .Q(gpio_io_o[2]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[29]),
        .Q(gpio_io_o[29]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[30] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[1]),
        .Q(gpio_io_o[1]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[31] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[0]),
        .Q(gpio_io_o[0]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[28]),
        .Q(gpio_io_o[28]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[27]),
        .Q(gpio_io_o[27]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[26]),
        .Q(gpio_io_o[26]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[25]),
        .Q(gpio_io_o[25]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[24]),
        .Q(gpio_io_o[24]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[23]),
        .Q(gpio_io_o[23]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[22]),
        .Q(gpio_io_o[22]),
        .R(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[0] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[31]),
        .Q(gpio_io_t[31]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[10] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[21]),
        .Q(gpio_io_t[21]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[11] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[20]),
        .Q(gpio_io_t[20]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[12] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[19]),
        .Q(gpio_io_t[19]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[13] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[18]),
        .Q(gpio_io_t[18]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[14] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[17]),
        .Q(gpio_io_t[17]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[15] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[16]),
        .Q(gpio_io_t[16]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[16] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[15]),
        .Q(gpio_io_t[15]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[17] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[14]),
        .Q(gpio_io_t[14]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[18] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[13]),
        .Q(gpio_io_t[13]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[19] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[12]),
        .Q(gpio_io_t[12]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[1] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[30]),
        .Q(gpio_io_t[30]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[20] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[11]),
        .Q(gpio_io_t[11]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[21] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[10]),
        .Q(gpio_io_t[10]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[22] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[9]),
        .Q(gpio_io_t[9]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[23] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[8]),
        .Q(gpio_io_t[8]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[24] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[7]),
        .Q(gpio_io_t[7]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[25] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[6]),
        .Q(gpio_io_t[6]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[26] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[5]),
        .Q(gpio_io_t[5]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[27] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[4]),
        .Q(gpio_io_t[4]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[28] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[3]),
        .Q(gpio_io_t[3]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[29] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[2]),
        .Q(gpio_io_t[2]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[2] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[29]),
        .Q(gpio_io_t[29]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[30] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[1]),
        .Q(gpio_io_t[1]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[31] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[0]),
        .Q(gpio_io_t[0]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[3] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[28]),
        .Q(gpio_io_t[28]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[4] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[27]),
        .Q(gpio_io_t[27]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[5] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[26]),
        .Q(gpio_io_t[26]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[6] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[25]),
        .Q(gpio_io_t[25]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[7] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[24]),
        .Q(gpio_io_t[24]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[8] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[23]),
        .Q(gpio_io_t[23]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[9] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_0 ),
        .D(D[22]),
        .Q(gpio_io_t[22]),
        .S(bus2ip_reset));
  FDRE gpio_xferAck_Reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(GPIO_xferAck_i),
        .Q(gpio_xferAck_Reg),
        .R(bus2ip_reset));
  FDRE iGPIO_xferAck_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iGPIO_xferAck),
        .Q(GPIO_xferAck_i),
        .R(bus2ip_reset));
  LUT2 #(
    .INIT(4'h8)) 
    ip2bus_rdack_i_D1_i_1
       (.I0(GPIO_xferAck_i),
        .I1(bus2ip_rnw),
        .O(ip2bus_rdack_i));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ip2bus_wrack_i_D1_i_1
       (.I0(GPIO_xferAck_i),
        .I1(bus2ip_rnw),
        .O(ip2bus_wrack_i));
endmodule

module design_1_axi_gpio_0_0_address_decoder
   (\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    rst_reg,
    rst_reg_0,
    E,
    bus2ip_rnw_i_reg,
    ip2bus_rdack_i_D1_reg,
    ip2bus_wrack_i_D1_reg,
    bus2ip_rnw_i_reg_0,
    D,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] ,
    Q,
    s_axi_aclk,
    \Dual.gpio_Data_Out_reg[0] ,
    \Dual.gpio2_OE_reg[0] ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ,
    s_axi_aresetn,
    GPIO_xferAck_i,
    gpio_xferAck_Reg,
    ip2bus_rdack_i_D1,
    s_axi_arready,
    s_axi_arready_0,
    ip2bus_wrack_i_D1,
    s_axi_wready,
    s_axi_wdata,
    reg3,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[31].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[30].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[29].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[28].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[27].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[26].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[25].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[24].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[23].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[22].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[21].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[20].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[19].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[18].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[17].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[16].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[15].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[14].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[13].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[12].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[11].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[10].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[9].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[8].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[7].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[6].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[5].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[4].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[3].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[2].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[1].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg );
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  output rst_reg;
  output rst_reg_0;
  output [0:0]E;
  output [0:0]bus2ip_rnw_i_reg;
  output ip2bus_rdack_i_D1_reg;
  output ip2bus_wrack_i_D1_reg;
  output bus2ip_rnw_i_reg_0;
  output [31:0]D;
  output [31:0]\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] ;
  input Q;
  input s_axi_aclk;
  input [2:0]\Dual.gpio_Data_Out_reg[0] ;
  input \Dual.gpio2_OE_reg[0] ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ;
  input s_axi_aresetn;
  input GPIO_xferAck_i;
  input gpio_xferAck_Reg;
  input ip2bus_rdack_i_D1;
  input s_axi_arready;
  input [3:0]s_axi_arready_0;
  input ip2bus_wrack_i_D1;
  input s_axi_wready;
  input [31:0]s_axi_wdata;
  input [1:0]reg3;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[31].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[30].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[29].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[28].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[27].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[26].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[25].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[24].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[23].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[22].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[21].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[20].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[19].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[18].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[17].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[16].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[15].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[14].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[13].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[12].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[11].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[10].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[9].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[8].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[7].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[6].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[5].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[4].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[3].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[2].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[1].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg ;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_i_1_n_0;
  wire [31:0]D;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg ;
  wire [31:0]\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[10].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[11].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[12].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[13].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[14].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[15].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[16].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[17].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[18].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[19].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[1].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[20].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[21].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[22].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[23].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[24].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[25].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[26].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[27].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[28].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[29].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[2].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[30].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[31].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[3].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[4].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[5].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[6].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[7].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[8].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[9].reg1_reg ;
  wire \Dual.gpio2_OE_reg[0] ;
  wire [2:0]\Dual.gpio_Data_Out_reg[0] ;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire GPIO_xferAck_i;
  wire \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire Q;
  wire [0:0]bus2ip_rnw_i_reg;
  wire bus2ip_rnw_i_reg_0;
  wire ce_expnd_i_0;
  wire ce_expnd_i_1;
  wire ce_expnd_i_2;
  wire ce_expnd_i_3;
  wire cs_ce_clr;
  wire gpio_xferAck_Reg;
  wire \ip2bus_data_i_D1[30]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[30]_i_3_n_0 ;
  wire \ip2bus_data_i_D1[31]_i_2_n_0 ;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_rdack_i_D1_reg;
  wire ip2bus_wrack_i_D1;
  wire ip2bus_wrack_i_D1_reg;
  wire [1:0]reg3;
  wire rst_reg;
  wire rst_reg_0;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire [3:0]s_axi_arready_0;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;

  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ),
        .I1(Q),
        .I2(Bus_RNW_reg),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(Bus_RNW_reg),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFDFF)) 
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[1].reg3[31]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ),
        .I1(GPIO_xferAck_i),
        .I2(gpio_xferAck_Reg),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .O(bus2ip_rnw_i_reg_0));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAAAAA)) 
    \Dual.gpio2_Data_Out[0]_i_2 
       (.I0(\Dual.gpio2_OE_reg[0] ),
        .I1(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ),
        .I2(\Dual.gpio_Data_Out_reg[0] [2]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I4(\Dual.gpio_Data_Out_reg[0] [0]),
        .I5(\Dual.gpio_Data_Out_reg[0] [1]),
        .O(rst_reg_0));
  LUT6 #(
    .INIT(64'hABAAAAAAAAAAAAAA)) 
    \Dual.gpio2_OE[0]_i_2 
       (.I0(\Dual.gpio2_OE_reg[0] ),
        .I1(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ),
        .I2(\Dual.gpio_Data_Out_reg[0] [2]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I4(\Dual.gpio_Data_Out_reg[0] [1]),
        .I5(\Dual.gpio_Data_Out_reg[0] [0]),
        .O(rst_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \Dual.gpio_Data_Out[0]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ),
        .I1(\Dual.gpio_Data_Out_reg[0] [2]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I3(\Dual.gpio_Data_Out_reg[0] [1]),
        .I4(\Dual.gpio_Data_Out_reg[0] [0]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Dual.gpio_Data_Out[0]_i_2 
       (.I0(s_axi_wdata[31]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio_Data_Out_reg[0] [1]),
        .I3(s_axi_wdata[1]),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Dual.gpio_Data_Out[10]_i_1 
       (.I0(\Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(s_axi_wdata[21]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Dual.gpio_Data_Out[11]_i_1 
       (.I0(\Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(s_axi_wdata[20]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Dual.gpio_Data_Out[12]_i_1 
       (.I0(\Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(s_axi_wdata[19]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Dual.gpio_Data_Out[13]_i_1 
       (.I0(\Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(s_axi_wdata[18]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Dual.gpio_Data_Out[14]_i_1 
       (.I0(\Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(s_axi_wdata[17]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Dual.gpio_Data_Out[15]_i_1 
       (.I0(\Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(s_axi_wdata[16]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Dual.gpio_Data_Out[16]_i_1 
       (.I0(\Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(s_axi_wdata[15]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Dual.gpio_Data_Out[17]_i_1 
       (.I0(\Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(s_axi_wdata[14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Dual.gpio_Data_Out[18]_i_1 
       (.I0(\Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(s_axi_wdata[13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Dual.gpio_Data_Out[19]_i_1 
       (.I0(\Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(s_axi_wdata[12]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Dual.gpio_Data_Out[1]_i_1 
       (.I0(s_axi_wdata[30]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio_Data_Out_reg[0] [1]),
        .I3(s_axi_wdata[0]),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Dual.gpio_Data_Out[20]_i_1 
       (.I0(\Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(s_axi_wdata[11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Dual.gpio_Data_Out[21]_i_1 
       (.I0(\Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(s_axi_wdata[10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Dual.gpio_Data_Out[22]_i_1 
       (.I0(\Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(s_axi_wdata[9]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Dual.gpio_Data_Out[23]_i_1 
       (.I0(\Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(s_axi_wdata[8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Dual.gpio_Data_Out[24]_i_1 
       (.I0(\Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(s_axi_wdata[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Dual.gpio_Data_Out[25]_i_1 
       (.I0(\Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(s_axi_wdata[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Dual.gpio_Data_Out[26]_i_1 
       (.I0(\Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(s_axi_wdata[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Dual.gpio_Data_Out[27]_i_1 
       (.I0(\Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(s_axi_wdata[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Dual.gpio_Data_Out[28]_i_1 
       (.I0(\Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(s_axi_wdata[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Dual.gpio_Data_Out[29]_i_1 
       (.I0(\Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(s_axi_wdata[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Dual.gpio_Data_Out[2]_i_1 
       (.I0(\Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(s_axi_wdata[29]),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Dual.gpio_Data_Out[30]_i_1 
       (.I0(\Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(s_axi_wdata[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Dual.gpio_Data_Out[31]_i_1 
       (.I0(\Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(s_axi_wdata[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Dual.gpio_Data_Out[3]_i_1 
       (.I0(\Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(s_axi_wdata[28]),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Dual.gpio_Data_Out[4]_i_1 
       (.I0(\Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(s_axi_wdata[27]),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Dual.gpio_Data_Out[5]_i_1 
       (.I0(\Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(s_axi_wdata[26]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Dual.gpio_Data_Out[6]_i_1 
       (.I0(\Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(s_axi_wdata[25]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Dual.gpio_Data_Out[7]_i_1 
       (.I0(\Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(s_axi_wdata[24]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Dual.gpio_Data_Out[8]_i_1 
       (.I0(\Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(s_axi_wdata[23]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Dual.gpio_Data_Out[9]_i_1 
       (.I0(\Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(s_axi_wdata[22]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \Dual.gpio_OE[0]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 ),
        .I1(\Dual.gpio_Data_Out_reg[0] [2]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I3(\Dual.gpio_Data_Out_reg[0] [1]),
        .I4(\Dual.gpio_Data_Out_reg[0] [0]),
        .O(bus2ip_rnw_i_reg));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_3),
        .Q(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 
       (.I0(\Dual.gpio_Data_Out_reg[0] [0]),
        .I1(\Dual.gpio_Data_Out_reg[0] [1]),
        .O(ce_expnd_i_2));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_2),
        .Q(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_1),
        .Q(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .R(cs_ce_clr));
  LUT3 #(
    .INIT(8'hEF)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 
       (.I0(ip2bus_wrack_i_D1_reg),
        .I1(ip2bus_rdack_i_D1_reg),
        .I2(s_axi_aresetn),
        .O(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2 
       (.I0(\Dual.gpio_Data_Out_reg[0] [1]),
        .I1(\Dual.gpio_Data_Out_reg[0] [0]),
        .O(ce_expnd_i_0));
  FDRE \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_0),
        .Q(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .R(cs_ce_clr));
  design_1_axi_gpio_0_0_pselect_f \MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\Dual.gpio_Data_Out_reg[0] [1:0]),
        .ce_expnd_i_3(ce_expnd_i_3));
  design_1_axi_gpio_0_0_pselect_f__parameterized1 \MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] (\Dual.gpio_Data_Out_reg[0] [1:0]),
        .ce_expnd_i_1(ce_expnd_i_1));
  LUT5 #(
    .INIT(32'h000000E0)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I1(Q),
        .I2(s_axi_aresetn),
        .I3(ip2bus_rdack_i_D1_reg),
        .I4(ip2bus_wrack_i_D1_reg),
        .O(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ));
  FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ),
        .Q(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000303080)) 
    \ip2bus_data_i_D1[0]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [31]));
  LUT6 #(
    .INIT(64'h0000000000303080)) 
    \ip2bus_data_i_D1[10]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[10].reg1_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [21]));
  LUT6 #(
    .INIT(64'h0000000000303080)) 
    \ip2bus_data_i_D1[11]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[11].reg1_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [20]));
  LUT6 #(
    .INIT(64'h0000000000303080)) 
    \ip2bus_data_i_D1[12]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[12].reg1_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [19]));
  LUT6 #(
    .INIT(64'h0000000000303080)) 
    \ip2bus_data_i_D1[13]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[13].reg1_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [18]));
  LUT6 #(
    .INIT(64'h0000000000303080)) 
    \ip2bus_data_i_D1[14]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[14].reg1_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [17]));
  LUT6 #(
    .INIT(64'h0000000000303080)) 
    \ip2bus_data_i_D1[15]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[15].reg1_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [16]));
  LUT6 #(
    .INIT(64'h0000000000303080)) 
    \ip2bus_data_i_D1[16]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[16].reg1_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [15]));
  LUT6 #(
    .INIT(64'h0000000000303080)) 
    \ip2bus_data_i_D1[17]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[17].reg1_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [14]));
  LUT6 #(
    .INIT(64'h0000000000303080)) 
    \ip2bus_data_i_D1[18]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[18].reg1_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [13]));
  LUT6 #(
    .INIT(64'h0000000000303080)) 
    \ip2bus_data_i_D1[19]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[19].reg1_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [12]));
  LUT6 #(
    .INIT(64'h0000000000303080)) 
    \ip2bus_data_i_D1[1]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[1].reg1_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [30]));
  LUT6 #(
    .INIT(64'h0000000000303080)) 
    \ip2bus_data_i_D1[20]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[20].reg1_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [11]));
  LUT6 #(
    .INIT(64'h0000000000303080)) 
    \ip2bus_data_i_D1[21]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[21].reg1_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [10]));
  LUT6 #(
    .INIT(64'h0000000000303080)) 
    \ip2bus_data_i_D1[22]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[22].reg1_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [9]));
  LUT6 #(
    .INIT(64'h0000000000303080)) 
    \ip2bus_data_i_D1[23]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[23].reg1_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [8]));
  LUT6 #(
    .INIT(64'h0000000000303080)) 
    \ip2bus_data_i_D1[24]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[24].reg1_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [7]));
  LUT6 #(
    .INIT(64'h0000000000303080)) 
    \ip2bus_data_i_D1[25]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[25].reg1_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [6]));
  LUT6 #(
    .INIT(64'h0000000000303080)) 
    \ip2bus_data_i_D1[26]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[26].reg1_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [5]));
  LUT6 #(
    .INIT(64'h0000000000303080)) 
    \ip2bus_data_i_D1[27]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[27].reg1_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [4]));
  LUT6 #(
    .INIT(64'h0000000000303080)) 
    \ip2bus_data_i_D1[28]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[28].reg1_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [3]));
  LUT6 #(
    .INIT(64'h0000000000303080)) 
    \ip2bus_data_i_D1[29]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[29].reg1_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [2]));
  LUT6 #(
    .INIT(64'h0000000000303080)) 
    \ip2bus_data_i_D1[2]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[2].reg1_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [29]));
  LUT5 #(
    .INIT(32'h08FF0800)) 
    \ip2bus_data_i_D1[30]_i_1 
       (.I0(reg3[1]),
        .I1(\ip2bus_data_i_D1[30]_i_2_n_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I4(\ip2bus_data_i_D1[30]_i_3_n_0 ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \ip2bus_data_i_D1[30]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .O(\ip2bus_data_i_D1[30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h10600060)) 
    \ip2bus_data_i_D1[30]_i_3 
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I4(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[30].reg1_reg ),
        .O(\ip2bus_data_i_D1[30]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h08FF0800)) 
    \ip2bus_data_i_D1[31]_i_1 
       (.I0(reg3[0]),
        .I1(\ip2bus_data_i_D1[30]_i_2_n_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I4(\ip2bus_data_i_D1[31]_i_2_n_0 ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [0]));
  LUT5 #(
    .INIT(32'h10600060)) 
    \ip2bus_data_i_D1[31]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I4(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[31].reg1_reg ),
        .O(\ip2bus_data_i_D1[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000303080)) 
    \ip2bus_data_i_D1[3]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[3].reg1_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [28]));
  LUT6 #(
    .INIT(64'h0000000000303080)) 
    \ip2bus_data_i_D1[4]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[4].reg1_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [27]));
  LUT6 #(
    .INIT(64'h0000000000303080)) 
    \ip2bus_data_i_D1[5]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[5].reg1_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [26]));
  LUT6 #(
    .INIT(64'h0000000000303080)) 
    \ip2bus_data_i_D1[6]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[6].reg1_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [25]));
  LUT6 #(
    .INIT(64'h0000000000303080)) 
    \ip2bus_data_i_D1[7]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[7].reg1_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [24]));
  LUT6 #(
    .INIT(64'h0000000000303080)) 
    \ip2bus_data_i_D1[8]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[8].reg1_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [23]));
  LUT6 #(
    .INIT(64'h0000000000303080)) 
    \ip2bus_data_i_D1[9]_i_1 
       (.I0(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[9].reg1_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] [22]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    s_axi_arready_INST_0
       (.I0(ip2bus_rdack_i_D1),
        .I1(s_axi_arready),
        .I2(s_axi_arready_0[2]),
        .I3(s_axi_arready_0[1]),
        .I4(s_axi_arready_0[3]),
        .I5(s_axi_arready_0[0]),
        .O(ip2bus_rdack_i_D1_reg));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    s_axi_wready_INST_0
       (.I0(ip2bus_wrack_i_D1),
        .I1(s_axi_wready),
        .I2(s_axi_arready_0[2]),
        .I3(s_axi_arready_0[1]),
        .I4(s_axi_arready_0[3]),
        .I5(s_axi_arready_0[0]),
        .O(ip2bus_wrack_i_D1_reg));
endmodule

(* C_ALL_INPUTS = "0" *) (* C_ALL_INPUTS_2 = "0" *) (* C_ALL_OUTPUTS = "1" *) 
(* C_ALL_OUTPUTS_2 = "1" *) (* C_DOUT_DEFAULT = "0" *) (* C_DOUT_DEFAULT_2 = "0" *) 
(* C_FAMILY = "zynq" *) (* C_GPIO2_WIDTH = "2" *) (* C_GPIO_WIDTH = "32" *) 
(* C_INTERRUPT_PRESENT = "0" *) (* C_IS_DUAL = "1" *) (* C_S_AXI_ADDR_WIDTH = "9" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_TRI_DEFAULT = "-1" *) (* C_TRI_DEFAULT_2 = "-1" *) 
(* downgradeipidentifiedwarnings = "yes" *) (* ip_group = "LOGICORE" *) 
module design_1_axi_gpio_0_0_axi_gpio
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    ip2intc_irpt,
    gpio_io_i,
    gpio_io_o,
    gpio_io_t,
    gpio2_io_i,
    gpio2_io_o,
    gpio2_io_t);
  (* sigis = "Clk" *) input s_axi_aclk;
  (* sigis = "Rst" *) input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  (* sigis = "INTR_LEVEL_HIGH" *) output ip2intc_irpt;
  input [31:0]gpio_io_i;
  output [31:0]gpio_io_o;
  output [31:0]gpio_io_t;
  input [1:0]gpio2_io_i;
  output [1:0]gpio2_io_o;
  output [1:0]gpio2_io_t;

  wire \<const0> ;
  wire AXI_LITE_IPIF_I_n_12;
  wire AXI_LITE_IPIF_I_n_47;
  wire AXI_LITE_IPIF_I_n_48;
  wire AXI_LITE_IPIF_I_n_49;
  wire AXI_LITE_IPIF_I_n_50;
  wire AXI_LITE_IPIF_I_n_51;
  wire AXI_LITE_IPIF_I_n_52;
  wire AXI_LITE_IPIF_I_n_53;
  wire AXI_LITE_IPIF_I_n_54;
  wire AXI_LITE_IPIF_I_n_55;
  wire AXI_LITE_IPIF_I_n_56;
  wire AXI_LITE_IPIF_I_n_57;
  wire AXI_LITE_IPIF_I_n_58;
  wire AXI_LITE_IPIF_I_n_59;
  wire AXI_LITE_IPIF_I_n_6;
  wire AXI_LITE_IPIF_I_n_60;
  wire AXI_LITE_IPIF_I_n_61;
  wire AXI_LITE_IPIF_I_n_62;
  wire AXI_LITE_IPIF_I_n_63;
  wire AXI_LITE_IPIF_I_n_64;
  wire AXI_LITE_IPIF_I_n_65;
  wire AXI_LITE_IPIF_I_n_66;
  wire AXI_LITE_IPIF_I_n_67;
  wire AXI_LITE_IPIF_I_n_68;
  wire AXI_LITE_IPIF_I_n_69;
  wire AXI_LITE_IPIF_I_n_7;
  wire AXI_LITE_IPIF_I_n_70;
  wire AXI_LITE_IPIF_I_n_71;
  wire AXI_LITE_IPIF_I_n_72;
  wire AXI_LITE_IPIF_I_n_73;
  wire AXI_LITE_IPIF_I_n_74;
  wire AXI_LITE_IPIF_I_n_75;
  wire AXI_LITE_IPIF_I_n_76;
  wire AXI_LITE_IPIF_I_n_8;
  wire AXI_LITE_IPIF_I_n_9;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[10].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[11].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[12].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[13].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[14].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[15].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[16].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[17].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[18].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[19].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[1].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[20].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[21].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[22].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[23].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[24].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[25].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[26].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[27].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[28].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[29].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[2].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[30].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[31].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[3].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[4].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[5].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[6].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[7].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[8].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[9].reg1_reg ;
  wire GPIO_xferAck_i;
  wire [5:5]bus2ip_addr;
  wire bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire [1:0]gpio2_io_o;
  wire [1:0]gpio2_io_t;
  wire [31:0]gpio_io_o;
  wire [31:0]gpio_io_t;
  wire gpio_xferAck_Reg;
  wire [0:31]ip2bus_data;
  wire [0:31]ip2bus_data_i_D1;
  wire ip2bus_rdack_i;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_wrack_i;
  wire ip2bus_wrack_i_D1;
  wire [1:0]p_2_out;
  wire [30:31]reg3;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;

  assign ip2intc_irpt = \<const0> ;
  assign s_axi_awready = s_axi_wready;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  design_1_axi_gpio_0_0_axi_lite_ipif AXI_LITE_IPIF_I
       (.D({p_2_out,AXI_LITE_IPIF_I_n_47,AXI_LITE_IPIF_I_n_48,AXI_LITE_IPIF_I_n_49,AXI_LITE_IPIF_I_n_50,AXI_LITE_IPIF_I_n_51,AXI_LITE_IPIF_I_n_52,AXI_LITE_IPIF_I_n_53,AXI_LITE_IPIF_I_n_54,AXI_LITE_IPIF_I_n_55,AXI_LITE_IPIF_I_n_56,AXI_LITE_IPIF_I_n_57,AXI_LITE_IPIF_I_n_58,AXI_LITE_IPIF_I_n_59,AXI_LITE_IPIF_I_n_60,AXI_LITE_IPIF_I_n_61,AXI_LITE_IPIF_I_n_62,AXI_LITE_IPIF_I_n_63,AXI_LITE_IPIF_I_n_64,AXI_LITE_IPIF_I_n_65,AXI_LITE_IPIF_I_n_66,AXI_LITE_IPIF_I_n_67,AXI_LITE_IPIF_I_n_68,AXI_LITE_IPIF_I_n_69,AXI_LITE_IPIF_I_n_70,AXI_LITE_IPIF_I_n_71,AXI_LITE_IPIF_I_n_72,AXI_LITE_IPIF_I_n_73,AXI_LITE_IPIF_I_n_74,AXI_LITE_IPIF_I_n_75,AXI_LITE_IPIF_I_n_76}),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] ({ip2bus_data[0],ip2bus_data[1],ip2bus_data[2],ip2bus_data[3],ip2bus_data[4],ip2bus_data[5],ip2bus_data[6],ip2bus_data[7],ip2bus_data[8],ip2bus_data[9],ip2bus_data[10],ip2bus_data[11],ip2bus_data[12],ip2bus_data[13],ip2bus_data[14],ip2bus_data[15],ip2bus_data[16],ip2bus_data[17],ip2bus_data[18],ip2bus_data[19],ip2bus_data[20],ip2bus_data[21],ip2bus_data[22],ip2bus_data[23],ip2bus_data[24],ip2bus_data[25],ip2bus_data[26],ip2bus_data[27],ip2bus_data[28],ip2bus_data[29],ip2bus_data[30],ip2bus_data[31]}),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[10].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[10].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[11].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[11].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[12].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[12].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[13].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[13].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[14].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[14].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[15].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[15].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[16].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[16].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[17].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[17].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[18].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[18].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[19].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[19].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[1].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[1].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[20].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[20].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[21].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[21].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[22].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[22].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[23].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[23].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[24].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[24].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[25].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[25].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[26].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[26].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[27].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[27].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[28].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[28].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[29].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[29].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[2].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[2].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[30].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[30].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[31].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[31].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[3].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[3].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[4].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[4].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[5].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[5].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[6].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[6].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[7].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[7].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[8].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[8].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[9].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[9].reg1_reg ),
        .E(AXI_LITE_IPIF_I_n_8),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .Q(bus2ip_addr),
        .bus2ip_cs(bus2ip_cs),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_rnw(bus2ip_rnw),
        .bus2ip_rnw_i_reg(AXI_LITE_IPIF_I_n_9),
        .bus2ip_rnw_i_reg_0(AXI_LITE_IPIF_I_n_12),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_rdack_i_D1_reg(s_axi_arready),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .ip2bus_wrack_i_D1_reg(s_axi_wready),
        .reg3({reg3[30],reg3[31]}),
        .rst_reg(AXI_LITE_IPIF_I_n_6),
        .rst_reg_0(AXI_LITE_IPIF_I_n_7),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({s_axi_araddr[8],s_axi_araddr[3:2]}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({s_axi_awaddr[8],s_axi_awaddr[3:2]}),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid_i_reg(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i_reg[31] ({ip2bus_data_i_D1[0],ip2bus_data_i_D1[1],ip2bus_data_i_D1[2],ip2bus_data_i_D1[3],ip2bus_data_i_D1[4],ip2bus_data_i_D1[5],ip2bus_data_i_D1[6],ip2bus_data_i_D1[7],ip2bus_data_i_D1[8],ip2bus_data_i_D1[9],ip2bus_data_i_D1[10],ip2bus_data_i_D1[11],ip2bus_data_i_D1[12],ip2bus_data_i_D1[13],ip2bus_data_i_D1[14],ip2bus_data_i_D1[15],ip2bus_data_i_D1[16],ip2bus_data_i_D1[17],ip2bus_data_i_D1[18],ip2bus_data_i_D1[19],ip2bus_data_i_D1[20],ip2bus_data_i_D1[21],ip2bus_data_i_D1[22],ip2bus_data_i_D1[23],ip2bus_data_i_D1[24],ip2bus_data_i_D1[25],ip2bus_data_i_D1[26],ip2bus_data_i_D1[27],ip2bus_data_i_D1[28],ip2bus_data_i_D1[29],ip2bus_data_i_D1[30],ip2bus_data_i_D1[31]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_i_reg(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid));
  GND GND
       (.G(\<const0> ));
  design_1_axi_gpio_0_0_GPIO_Core gpio_core_1
       (.D({p_2_out,AXI_LITE_IPIF_I_n_47,AXI_LITE_IPIF_I_n_48,AXI_LITE_IPIF_I_n_49,AXI_LITE_IPIF_I_n_50,AXI_LITE_IPIF_I_n_51,AXI_LITE_IPIF_I_n_52,AXI_LITE_IPIF_I_n_53,AXI_LITE_IPIF_I_n_54,AXI_LITE_IPIF_I_n_55,AXI_LITE_IPIF_I_n_56,AXI_LITE_IPIF_I_n_57,AXI_LITE_IPIF_I_n_58,AXI_LITE_IPIF_I_n_59,AXI_LITE_IPIF_I_n_60,AXI_LITE_IPIF_I_n_61,AXI_LITE_IPIF_I_n_62,AXI_LITE_IPIF_I_n_63,AXI_LITE_IPIF_I_n_64,AXI_LITE_IPIF_I_n_65,AXI_LITE_IPIF_I_n_66,AXI_LITE_IPIF_I_n_67,AXI_LITE_IPIF_I_n_68,AXI_LITE_IPIF_I_n_69,AXI_LITE_IPIF_I_n_70,AXI_LITE_IPIF_I_n_71,AXI_LITE_IPIF_I_n_72,AXI_LITE_IPIF_I_n_73,AXI_LITE_IPIF_I_n_74,AXI_LITE_IPIF_I_n_75,AXI_LITE_IPIF_I_n_76}),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 (AXI_LITE_IPIF_I_n_12),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[10].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[10].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[11].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[11].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[12].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[12].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[13].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[13].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[14].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[14].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[15].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[15].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[16].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[16].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[17].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[17].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[18].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[18].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[19].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[19].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[1].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[1].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[20].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[20].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[21].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[21].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[22].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[22].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[23].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[23].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[24].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[24].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[25].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[25].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[26].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[26].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[27].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[27].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[28].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[28].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[29].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[29].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[2].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[2].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[30].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[30].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[31].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[31].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[3].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[3].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[4].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[4].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[5].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[5].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[6].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[6].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[7].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[7].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[8].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[8].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[9].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[9].reg1_reg ),
        .\Dual.gpio2_Data_Out_reg[0]_0 (AXI_LITE_IPIF_I_n_7),
        .\Dual.gpio2_OE_reg[0]_0 (AXI_LITE_IPIF_I_n_6),
        .\Dual.gpio_OE_reg[0]_0 (AXI_LITE_IPIF_I_n_9),
        .E(AXI_LITE_IPIF_I_n_8),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .Q(bus2ip_addr),
        .bus2ip_cs(bus2ip_cs),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_rnw(bus2ip_rnw),
        .gpio2_io_o(gpio2_io_o),
        .gpio2_io_t(gpio2_io_t),
        .gpio_io_o(gpio_io_o),
        .gpio_io_t(gpio_io_t),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .ip2bus_rdack_i(ip2bus_rdack_i),
        .ip2bus_wrack_i(ip2bus_wrack_i),
        .reg3({reg3[30],reg3[31]}),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata({s_axi_wdata[31:30],s_axi_wdata[1:0]}));
  FDRE \ip2bus_data_i_D1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[0]),
        .Q(ip2bus_data_i_D1[0]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[10]),
        .Q(ip2bus_data_i_D1[10]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[11]),
        .Q(ip2bus_data_i_D1[11]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[12]),
        .Q(ip2bus_data_i_D1[12]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[13]),
        .Q(ip2bus_data_i_D1[13]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[14]),
        .Q(ip2bus_data_i_D1[14]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[15]),
        .Q(ip2bus_data_i_D1[15]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[16]),
        .Q(ip2bus_data_i_D1[16]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[17]),
        .Q(ip2bus_data_i_D1[17]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[18]),
        .Q(ip2bus_data_i_D1[18]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[19]),
        .Q(ip2bus_data_i_D1[19]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[1]),
        .Q(ip2bus_data_i_D1[1]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[20]),
        .Q(ip2bus_data_i_D1[20]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[21]),
        .Q(ip2bus_data_i_D1[21]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[22]),
        .Q(ip2bus_data_i_D1[22]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[23]),
        .Q(ip2bus_data_i_D1[23]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[24]),
        .Q(ip2bus_data_i_D1[24]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[25]),
        .Q(ip2bus_data_i_D1[25]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[26]),
        .Q(ip2bus_data_i_D1[26]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[27]),
        .Q(ip2bus_data_i_D1[27]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[28]),
        .Q(ip2bus_data_i_D1[28]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[29]),
        .Q(ip2bus_data_i_D1[29]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[2]),
        .Q(ip2bus_data_i_D1[2]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[30]),
        .Q(ip2bus_data_i_D1[30]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[31]),
        .Q(ip2bus_data_i_D1[31]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[3]),
        .Q(ip2bus_data_i_D1[3]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[4]),
        .Q(ip2bus_data_i_D1[4]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[5]),
        .Q(ip2bus_data_i_D1[5]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[6]),
        .Q(ip2bus_data_i_D1[6]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[7]),
        .Q(ip2bus_data_i_D1[7]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[8]),
        .Q(ip2bus_data_i_D1[8]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[9]),
        .Q(ip2bus_data_i_D1[9]),
        .R(bus2ip_reset));
  FDRE ip2bus_rdack_i_D1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_rdack_i),
        .Q(ip2bus_rdack_i_D1),
        .R(bus2ip_reset));
  FDRE ip2bus_wrack_i_D1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_wrack_i),
        .Q(ip2bus_wrack_i_D1),
        .R(bus2ip_reset));
endmodule

module design_1_axi_gpio_0_0_axi_lite_ipif
   (bus2ip_reset,
    Q,
    bus2ip_rnw,
    s_axi_rvalid_i_reg,
    s_axi_bvalid_i_reg,
    bus2ip_cs,
    rst_reg,
    rst_reg_0,
    E,
    bus2ip_rnw_i_reg,
    ip2bus_rdack_i_D1_reg,
    ip2bus_wrack_i_D1_reg,
    bus2ip_rnw_i_reg_0,
    s_axi_rdata,
    D,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] ,
    s_axi_aclk,
    s_axi_arvalid,
    s_axi_rready,
    s_axi_bready,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_wvalid,
    GPIO_xferAck_i,
    gpio_xferAck_Reg,
    \s_axi_rdata_i_reg[31] ,
    s_axi_wdata,
    reg3,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[31].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[30].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[29].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[28].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[27].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[26].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[25].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[24].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[23].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[22].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[21].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[20].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[19].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[18].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[17].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[16].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[15].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[14].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[13].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[12].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[11].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[10].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[9].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[8].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[7].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[6].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[5].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[4].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[3].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[2].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[1].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg ,
    ip2bus_rdack_i_D1,
    ip2bus_wrack_i_D1,
    s_axi_araddr,
    s_axi_awaddr);
  output bus2ip_reset;
  output [0:0]Q;
  output bus2ip_rnw;
  output s_axi_rvalid_i_reg;
  output s_axi_bvalid_i_reg;
  output bus2ip_cs;
  output rst_reg;
  output rst_reg_0;
  output [0:0]E;
  output [0:0]bus2ip_rnw_i_reg;
  output ip2bus_rdack_i_D1_reg;
  output ip2bus_wrack_i_D1_reg;
  output bus2ip_rnw_i_reg_0;
  output [31:0]s_axi_rdata;
  output [31:0]D;
  output [31:0]\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] ;
  input s_axi_aclk;
  input s_axi_arvalid;
  input s_axi_rready;
  input s_axi_bready;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input GPIO_xferAck_i;
  input gpio_xferAck_Reg;
  input [31:0]\s_axi_rdata_i_reg[31] ;
  input [31:0]s_axi_wdata;
  input [1:0]reg3;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[31].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[30].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[29].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[28].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[27].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[26].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[25].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[24].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[23].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[22].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[21].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[20].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[19].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[18].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[17].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[16].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[15].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[14].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[13].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[12].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[11].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[10].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[9].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[8].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[7].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[6].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[5].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[4].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[3].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[2].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[1].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg ;
  input ip2bus_rdack_i_D1;
  input ip2bus_wrack_i_D1;
  input [2:0]s_axi_araddr;
  input [2:0]s_axi_awaddr;

  wire [31:0]D;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg ;
  wire [31:0]\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[10].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[11].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[12].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[13].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[14].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[15].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[16].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[17].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[18].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[19].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[1].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[20].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[21].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[22].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[23].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[24].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[25].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[26].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[27].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[28].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[29].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[2].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[30].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[31].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[3].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[4].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[5].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[6].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[7].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[8].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[9].reg1_reg ;
  wire [0:0]E;
  wire GPIO_xferAck_i;
  wire [0:0]Q;
  wire bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire [0:0]bus2ip_rnw_i_reg;
  wire bus2ip_rnw_i_reg_0;
  wire gpio_xferAck_Reg;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_rdack_i_D1_reg;
  wire ip2bus_wrack_i_D1;
  wire ip2bus_wrack_i_D1_reg;
  wire [1:0]reg3;
  wire rst_reg;
  wire rst_reg_0;
  wire s_axi_aclk;
  wire [2:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [2:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid_i_reg;
  wire [31:0]s_axi_rdata;
  wire [31:0]\s_axi_rdata_i_reg[31] ;
  wire s_axi_rready;
  wire s_axi_rvalid_i_reg;
  wire [31:0]s_axi_wdata;
  wire s_axi_wvalid;

  design_1_axi_gpio_0_0_slave_attachment I_SLAVE_ATTACHMENT
       (.D(D),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[10].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[10].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[11].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[11].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[12].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[12].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[13].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[13].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[14].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[14].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[15].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[15].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[16].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[16].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[17].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[17].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[18].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[18].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[19].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[19].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[1].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[1].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[20].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[20].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[21].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[21].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[22].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[22].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[23].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[23].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[24].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[24].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[25].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[25].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[26].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[26].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[27].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[27].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[28].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[28].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[29].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[29].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[2].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[2].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[30].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[30].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[31].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[31].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[3].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[3].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[4].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[4].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[5].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[5].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[6].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[6].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[7].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[7].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[8].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[8].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[9].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[9].reg1_reg ),
        .E(E),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (bus2ip_cs),
        .Q(Q),
        .SR(bus2ip_reset),
        .bus2ip_rnw_i_reg_0(bus2ip_rnw),
        .bus2ip_rnw_i_reg_1(bus2ip_rnw_i_reg),
        .bus2ip_rnw_i_reg_2(bus2ip_rnw_i_reg_0),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_rdack_i_D1_reg(ip2bus_rdack_i_D1_reg),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .ip2bus_wrack_i_D1_reg(ip2bus_wrack_i_D1_reg),
        .reg3(reg3),
        .rst_reg_0(rst_reg),
        .rst_reg_1(rst_reg_0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid_i_reg_0(s_axi_bvalid_i_reg),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i_reg[31]_0 (\s_axi_rdata_i_reg[31] ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_i_reg_0(s_axi_rvalid_i_reg),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_axi_gpio_0_0,axi_gpio,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_gpio,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module design_1_axi_gpio_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    gpio_io_o,
    gpio2_io_o);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [8:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [8:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 GPIO TRI_O" *) (* x_interface_parameter = "XIL_INTERFACENAME GPIO, BOARD.ASSOCIATED_PARAM GPIO_BOARD_INTERFACE" *) output [31:0]gpio_io_o;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 GPIO2 TRI_O" *) (* x_interface_parameter = "XIL_INTERFACENAME GPIO2, BOARD.ASSOCIATED_PARAM GPIO2_BOARD_INTERFACE" *) output [1:0]gpio2_io_o;

  wire [1:0]gpio2_io_o;
  wire [31:0]gpio_io_o;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_U0_ip2intc_irpt_UNCONNECTED;
  wire [1:0]NLW_U0_gpio2_io_t_UNCONNECTED;
  wire [31:0]NLW_U0_gpio_io_t_UNCONNECTED;

  (* C_ALL_INPUTS = "0" *) 
  (* C_ALL_INPUTS_2 = "0" *) 
  (* C_ALL_OUTPUTS = "1" *) 
  (* C_ALL_OUTPUTS_2 = "1" *) 
  (* C_DOUT_DEFAULT = "0" *) 
  (* C_DOUT_DEFAULT_2 = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_GPIO2_WIDTH = "2" *) 
  (* C_GPIO_WIDTH = "32" *) 
  (* C_INTERRUPT_PRESENT = "0" *) 
  (* C_IS_DUAL = "1" *) 
  (* C_S_AXI_ADDR_WIDTH = "9" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_TRI_DEFAULT = "-1" *) 
  (* C_TRI_DEFAULT_2 = "-1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_group = "LOGICORE" *) 
  design_1_axi_gpio_0_0_axi_gpio U0
       (.gpio2_io_i({1'b0,1'b0}),
        .gpio2_io_o(gpio2_io_o),
        .gpio2_io_t(NLW_U0_gpio2_io_t_UNCONNECTED[1:0]),
        .gpio_io_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gpio_io_o(gpio_io_o),
        .gpio_io_t(NLW_U0_gpio_io_t_UNCONNECTED[31:0]),
        .ip2intc_irpt(NLW_U0_ip2intc_irpt_UNCONNECTED),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module design_1_axi_gpio_0_0_pselect_f
   (ce_expnd_i_3,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] );
  output ce_expnd_i_3;
  input [1:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;

  wire [1:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire ce_expnd_i_3;

  LUT2 #(
    .INIT(4'h1)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [0]),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [1]),
        .O(ce_expnd_i_3));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module design_1_axi_gpio_0_0_pselect_f__parameterized1
   (ce_expnd_i_1,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] );
  output ce_expnd_i_1;
  input [1:0]\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;

  wire [1:0]\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  wire ce_expnd_i_1;

  LUT2 #(
    .INIT(4'h2)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [1]),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [0]),
        .O(ce_expnd_i_1));
endmodule

module design_1_axi_gpio_0_0_slave_attachment
   (SR,
    Q,
    bus2ip_rnw_i_reg_0,
    s_axi_rvalid_i_reg_0,
    s_axi_bvalid_i_reg_0,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    rst_reg_0,
    rst_reg_1,
    E,
    bus2ip_rnw_i_reg_1,
    ip2bus_rdack_i_D1_reg,
    ip2bus_wrack_i_D1_reg,
    bus2ip_rnw_i_reg_2,
    s_axi_rdata,
    D,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] ,
    s_axi_aclk,
    s_axi_arvalid,
    s_axi_rready,
    s_axi_bready,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_wvalid,
    GPIO_xferAck_i,
    gpio_xferAck_Reg,
    \s_axi_rdata_i_reg[31]_0 ,
    s_axi_wdata,
    reg3,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[31].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[30].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[29].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[28].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[27].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[26].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[25].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[24].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[23].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[22].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[21].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[20].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[19].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[18].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[17].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[16].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[15].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[14].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[13].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[12].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[11].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[10].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[9].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[8].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[7].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[6].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[5].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[4].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[3].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[2].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[1].reg1_reg ,
    \Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg ,
    ip2bus_rdack_i_D1,
    ip2bus_wrack_i_D1,
    s_axi_araddr,
    s_axi_awaddr);
  output [0:0]SR;
  output [0:0]Q;
  output bus2ip_rnw_i_reg_0;
  output s_axi_rvalid_i_reg_0;
  output s_axi_bvalid_i_reg_0;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  output rst_reg_0;
  output rst_reg_1;
  output [0:0]E;
  output [0:0]bus2ip_rnw_i_reg_1;
  output ip2bus_rdack_i_D1_reg;
  output ip2bus_wrack_i_D1_reg;
  output bus2ip_rnw_i_reg_2;
  output [31:0]s_axi_rdata;
  output [31:0]D;
  output [31:0]\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] ;
  input s_axi_aclk;
  input s_axi_arvalid;
  input s_axi_rready;
  input s_axi_bready;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input GPIO_xferAck_i;
  input gpio_xferAck_Reg;
  input [31:0]\s_axi_rdata_i_reg[31]_0 ;
  input [31:0]s_axi_wdata;
  input [1:0]reg3;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[31].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[30].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[29].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[28].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[27].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[26].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[25].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[24].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[23].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[22].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[21].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[20].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[19].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[18].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[17].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[16].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[15].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[14].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[13].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[12].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[11].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[10].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[9].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[8].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[7].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[6].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[5].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[4].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[3].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[2].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[1].reg1_reg ;
  input \Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg ;
  input ip2bus_rdack_i_D1;
  input ip2bus_wrack_i_D1;
  input [2:0]s_axi_araddr;
  input [2:0]s_axi_awaddr;

  wire [31:0]D;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg ;
  wire [31:0]\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[10].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[11].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[12].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[13].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[14].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[15].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[16].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[17].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[18].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[19].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[1].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[20].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[21].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[22].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[23].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[24].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[25].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[26].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[27].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[28].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[29].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[2].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[30].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[31].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[3].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[4].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[5].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[6].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[7].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[8].reg1_reg ;
  wire \Dual.ALLOUT0_ND_G1.READ_REG_GEN[9].reg1_reg ;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire GPIO_xferAck_i;
  wire [3:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [0:6]bus2ip_addr;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[8]_i_1_n_0 ;
  wire \bus2ip_addr_i[8]_i_2_n_0 ;
  wire bus2ip_rnw_i_reg_0;
  wire [0:0]bus2ip_rnw_i_reg_1;
  wire bus2ip_rnw_i_reg_2;
  wire clear;
  wire gpio_xferAck_Reg;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_rdack_i_D1_reg;
  wire ip2bus_wrack_i_D1;
  wire ip2bus_wrack_i_D1_reg;
  wire is_read_i_1_n_0;
  wire is_read_reg_n_0;
  wire is_write_i_1_n_0;
  wire is_write_i_2_n_0;
  wire is_write_reg_n_0;
  wire p_0_in;
  wire [1:0]p_0_out;
  wire p_5_in;
  wire [3:0]plusOp;
  wire [1:0]reg3;
  wire rst_reg_0;
  wire rst_reg_1;
  wire s_axi_aclk;
  wire [2:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [2:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bresp_i;
  wire s_axi_bvalid_i_i_1_n_0;
  wire s_axi_bvalid_i_reg_0;
  wire [31:0]s_axi_rdata;
  wire [31:0]\s_axi_rdata_i_reg[31]_0 ;
  wire s_axi_rready;
  wire s_axi_rresp_i;
  wire s_axi_rvalid_i_i_1_n_0;
  wire s_axi_rvalid_i_reg_0;
  wire [31:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire start2;
  wire start2_i_1_n_0;
  wire [1:0]state;
  wire state1__2;

  LUT6 #(
    .INIT(64'hFFFF150015001500)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(state1__2),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ip2bus_rdack_i_D1_reg),
        .I3(s_axi_rresp_i),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(ip2bus_wrack_i_D1_reg),
        .I5(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F888FFFFF888)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(ip2bus_wrack_i_D1_reg),
        .I1(s_axi_bresp_i),
        .I2(s_axi_rresp_i),
        .I3(ip2bus_rdack_i_D1_reg),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(state1__2),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid_i_reg_0),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid_i_reg_0),
        .O(state1__2));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .O(plusOp[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .O(plusOp[3]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .R(clear));
  design_1_axi_gpio_0_0_address_decoder I_DECODER
       (.D(D),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0] ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[0].reg1_reg[0]_0 (bus2ip_rnw_i_reg_0),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[10].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[10].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[11].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[11].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[12].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[12].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[13].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[13].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[14].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[14].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[15].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[15].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[16].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[16].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[17].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[17].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[18].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[18].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[19].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[19].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[1].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[1].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[20].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[20].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[21].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[21].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[22].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[22].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[23].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[23].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[24].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[24].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[25].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[25].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[26].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[26].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[27].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[27].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[28].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[28].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[29].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[29].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[2].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[2].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[30].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[30].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[31].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[31].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[3].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[3].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[4].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[4].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[5].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[5].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[6].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[6].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[7].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[7].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[8].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[8].reg1_reg ),
        .\Dual.ALLOUT0_ND_G1.READ_REG_GEN[9].reg1_reg (\Dual.ALLOUT0_ND_G1.READ_REG_GEN[9].reg1_reg ),
        .\Dual.gpio2_OE_reg[0] (SR),
        .\Dual.gpio_Data_Out_reg[0] ({bus2ip_addr[0],Q,bus2ip_addr[6]}),
        .E(E),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .Q(start2),
        .bus2ip_rnw_i_reg(bus2ip_rnw_i_reg_1),
        .bus2ip_rnw_i_reg_0(bus2ip_rnw_i_reg_2),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_rdack_i_D1_reg(ip2bus_rdack_i_D1_reg),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .ip2bus_wrack_i_D1_reg(ip2bus_wrack_i_D1_reg),
        .reg3(reg3),
        .rst_reg(rst_reg_0),
        .rst_reg_0(rst_reg_1),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(is_read_reg_n_0),
        .s_axi_arready_0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(is_write_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_arvalid),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_arvalid),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \bus2ip_addr_i[8]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(state[1]),
        .I4(state[0]),
        .O(\bus2ip_addr_i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[8]_i_2 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_awaddr[2]),
        .I2(s_axi_arvalid),
        .O(\bus2ip_addr_i[8]_i_2_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(bus2ip_addr[6]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(Q),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[8]_i_2_n_0 ),
        .Q(bus2ip_addr[0]),
        .R(SR));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(s_axi_arvalid),
        .Q(bus2ip_rnw_i_reg_0),
        .R(SR));
  LUT5 #(
    .INIT(32'h8BBB8888)) 
    is_read_i_1
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(state1__2),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(is_read_reg_n_0),
        .O(is_read_i_1_n_0));
  FDRE is_read_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_read_i_1_n_0),
        .Q(is_read_reg_n_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h2000FFFF20000000)) 
    is_write_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(is_write_i_2_n_0),
        .I5(is_write_reg_n_0),
        .O(is_write_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    is_write_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_bready),
        .I2(s_axi_bvalid_i_reg_0),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid_i_reg_0),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(is_write_i_2_n_0));
  FDRE is_write_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_write_i_1_n_0),
        .Q(is_write_reg_n_0),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    rst_i_1
       (.I0(s_axi_aresetn),
        .O(p_0_in));
  FDRE rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(SR),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_bvalid_i_i_1
       (.I0(ip2bus_wrack_i_D1_reg),
        .I1(state[1]),
        .I2(state[0]),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid_i_reg_0),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid_i_reg_0),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [0]),
        .Q(s_axi_rdata[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [10]),
        .Q(s_axi_rdata[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [11]),
        .Q(s_axi_rdata[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [12]),
        .Q(s_axi_rdata[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [13]),
        .Q(s_axi_rdata[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [14]),
        .Q(s_axi_rdata[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [15]),
        .Q(s_axi_rdata[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [16]),
        .Q(s_axi_rdata[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [17]),
        .Q(s_axi_rdata[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [18]),
        .Q(s_axi_rdata[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [19]),
        .Q(s_axi_rdata[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [1]),
        .Q(s_axi_rdata[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [20]),
        .Q(s_axi_rdata[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [21]),
        .Q(s_axi_rdata[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [22]),
        .Q(s_axi_rdata[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [23]),
        .Q(s_axi_rdata[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [24]),
        .Q(s_axi_rdata[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [25]),
        .Q(s_axi_rdata[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [26]),
        .Q(s_axi_rdata[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [27]),
        .Q(s_axi_rdata[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [28]),
        .Q(s_axi_rdata[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [29]),
        .Q(s_axi_rdata[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [2]),
        .Q(s_axi_rdata[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [30]),
        .Q(s_axi_rdata[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [31]),
        .Q(s_axi_rdata[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [3]),
        .Q(s_axi_rdata[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [4]),
        .Q(s_axi_rdata[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [5]),
        .Q(s_axi_rdata[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [6]),
        .Q(s_axi_rdata[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [7]),
        .Q(s_axi_rdata[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [8]),
        .Q(s_axi_rdata[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [9]),
        .Q(s_axi_rdata[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_rvalid_i_i_1
       (.I0(ip2bus_rdack_i_D1_reg),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid_i_reg_0),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid_i_reg_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h000000F8)) 
    start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(state[0]),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(SR));
  LUT5 #(
    .INIT(32'h77FC44FC)) 
    \state[0]_i_1 
       (.I0(state1__2),
        .I1(state[0]),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(ip2bus_wrack_i_D1_reg),
        .O(p_0_out[0]));
  LUT6 #(
    .INIT(64'h55FFFF0C5500FF0C)) 
    \state[1]_i_1 
       (.I0(state1__2),
        .I1(p_5_in),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(state[0]),
        .I5(ip2bus_rdack_i_D1_reg),
        .O(p_0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_2 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .O(p_5_in));
  FDRE \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_out[0]),
        .Q(state[0]),
        .R(SR));
  FDRE \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_out[1]),
        .Q(state[1]),
        .R(SR));
endmodule
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
