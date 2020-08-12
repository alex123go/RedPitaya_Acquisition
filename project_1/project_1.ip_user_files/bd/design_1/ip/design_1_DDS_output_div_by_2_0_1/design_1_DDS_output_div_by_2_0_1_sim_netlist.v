// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Apr 27 16:19:17 2020
// Host        : DESKTOP-AUBSA4O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Red_Pitaya/Acq_Card/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_DDS_output_div_by_2_0_1/design_1_DDS_output_div_by_2_0_1_sim_netlist.v
// Design      : design_1_DDS_output_div_by_2_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_DDS_output_div_by_2_0_1,DDS_output_div_by_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "DDS_output_div_by_2,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module design_1_DDS_output_div_by_2_0_1
   (data_in,
    data_out);
  input [15:0]data_in;
  output [13:0]data_out;

  wire [15:0]data_in;
  wire [13:0]data_out;
  wire \data_out[12]_INST_0_i_8_n_0 ;
  wire \data_out[12]_INST_0_i_9_n_0 ;

  design_1_DDS_output_div_by_2_0_1_DDS_output_div_by_2 U0
       (.S(\data_out[12]_INST_0_i_9_n_0 ),
        .data_in(data_in[13:0]),
        .data_out(data_out),
        .\data_out[12]_INST_0_i_2_0 (\data_out[12]_INST_0_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[12]_INST_0_i_8 
       (.I0(data_in[13]),
        .O(\data_out[12]_INST_0_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[12]_INST_0_i_9 
       (.I0(data_in[12]),
        .O(\data_out[12]_INST_0_i_9_n_0 ));
endmodule

(* ORIG_REF_NAME = "DDS_output_div_by_2" *) 
module design_1_DDS_output_div_by_2_0_1_DDS_output_div_by_2
   (data_out,
    S,
    \data_out[12]_INST_0_i_2_0 ,
    data_in);
  output [13:0]data_out;
  input [0:0]S;
  input [0:0]\data_out[12]_INST_0_i_2_0 ;
  input [13:0]data_in;

  wire [0:0]S;
  wire [13:0]data_in;
  wire [13:0]data_out;
  wire [12:1]data_out1;
  wire [13:1]data_out3;
  wire \data_out[0]_INST_0_i_1_n_0 ;
  wire \data_out[0]_INST_0_i_1_n_1 ;
  wire \data_out[0]_INST_0_i_1_n_2 ;
  wire \data_out[0]_INST_0_i_1_n_3 ;
  wire \data_out[0]_INST_0_i_2_n_0 ;
  wire \data_out[0]_INST_0_i_3_n_0 ;
  wire \data_out[0]_INST_0_i_4_n_0 ;
  wire \data_out[0]_INST_0_i_5_n_0 ;
  wire \data_out[0]_INST_0_i_6_n_0 ;
  wire \data_out[12]_INST_0_i_10_n_0 ;
  wire \data_out[12]_INST_0_i_11_n_0 ;
  wire \data_out[12]_INST_0_i_12_n_0 ;
  wire \data_out[12]_INST_0_i_1_n_0 ;
  wire \data_out[12]_INST_0_i_1_n_1 ;
  wire \data_out[12]_INST_0_i_1_n_2 ;
  wire \data_out[12]_INST_0_i_1_n_3 ;
  wire [0:0]\data_out[12]_INST_0_i_2_0 ;
  wire \data_out[12]_INST_0_i_2_n_0 ;
  wire \data_out[12]_INST_0_i_3_n_0 ;
  wire \data_out[12]_INST_0_i_4_n_0 ;
  wire \data_out[12]_INST_0_i_5_n_0 ;
  wire \data_out[12]_INST_0_i_7_n_0 ;
  wire \data_out[12]_INST_0_i_7_n_1 ;
  wire \data_out[12]_INST_0_i_7_n_2 ;
  wire \data_out[12]_INST_0_i_7_n_3 ;
  wire \data_out[13]_INST_0_i_1_n_3 ;
  wire \data_out[4]_INST_0_i_1_n_0 ;
  wire \data_out[4]_INST_0_i_1_n_1 ;
  wire \data_out[4]_INST_0_i_1_n_2 ;
  wire \data_out[4]_INST_0_i_1_n_3 ;
  wire \data_out[4]_INST_0_i_2_n_0 ;
  wire \data_out[4]_INST_0_i_3_n_0 ;
  wire \data_out[4]_INST_0_i_4_n_0 ;
  wire \data_out[4]_INST_0_i_5_n_0 ;
  wire \data_out[4]_INST_0_i_6_n_0 ;
  wire \data_out[8]_INST_0_i_10_n_0 ;
  wire \data_out[8]_INST_0_i_1_n_0 ;
  wire \data_out[8]_INST_0_i_1_n_1 ;
  wire \data_out[8]_INST_0_i_1_n_2 ;
  wire \data_out[8]_INST_0_i_1_n_3 ;
  wire \data_out[8]_INST_0_i_2_n_0 ;
  wire \data_out[8]_INST_0_i_3_n_0 ;
  wire \data_out[8]_INST_0_i_4_n_0 ;
  wire \data_out[8]_INST_0_i_5_n_0 ;
  wire \data_out[8]_INST_0_i_6_n_0 ;
  wire \data_out[8]_INST_0_i_6_n_1 ;
  wire \data_out[8]_INST_0_i_6_n_2 ;
  wire \data_out[8]_INST_0_i_6_n_3 ;
  wire \data_out[8]_INST_0_i_7_n_0 ;
  wire \data_out[8]_INST_0_i_8_n_0 ;
  wire \data_out[8]_INST_0_i_9_n_0 ;
  wire [3:0]\NLW_data_out[12]_INST_0_i_6_CO_UNCONNECTED ;
  wire [3:1]\NLW_data_out[12]_INST_0_i_6_O_UNCONNECTED ;
  wire [3:1]\NLW_data_out[13]_INST_0_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_data_out[13]_INST_0_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \data_out[0]_INST_0 
       (.I0(data_in[1]),
        .I1(data_out3[1]),
        .I2(data_in[13]),
        .O(data_out[0]));
  CARRY4 \data_out[0]_INST_0_i_1 
       (.CI(1'b0),
        .CO({\data_out[0]_INST_0_i_1_n_0 ,\data_out[0]_INST_0_i_1_n_1 ,\data_out[0]_INST_0_i_1_n_2 ,\data_out[0]_INST_0_i_1_n_3 }),
        .CYINIT(\data_out[0]_INST_0_i_2_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data_out3[4:1]),
        .S({\data_out[0]_INST_0_i_3_n_0 ,\data_out[0]_INST_0_i_4_n_0 ,\data_out[0]_INST_0_i_5_n_0 ,\data_out[0]_INST_0_i_6_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[0]_INST_0_i_2 
       (.I0(data_in[0]),
        .O(\data_out[0]_INST_0_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[0]_INST_0_i_3 
       (.I0(data_in[4]),
        .O(\data_out[0]_INST_0_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[0]_INST_0_i_4 
       (.I0(data_in[3]),
        .O(\data_out[0]_INST_0_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[0]_INST_0_i_5 
       (.I0(data_in[2]),
        .O(\data_out[0]_INST_0_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[0]_INST_0_i_6 
       (.I0(data_in[1]),
        .O(\data_out[0]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[10]_INST_0 
       (.I0(data_out1[10]),
        .I1(data_in[11]),
        .I2(data_in[13]),
        .O(data_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[11]_INST_0 
       (.I0(data_out1[11]),
        .I1(data_in[13]),
        .I2(data_in[12]),
        .O(data_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[12]_INST_0 
       (.I0(data_out1[12]),
        .I1(data_in[13]),
        .O(data_out[12]));
  CARRY4 \data_out[12]_INST_0_i_1 
       (.CI(\data_out[8]_INST_0_i_1_n_0 ),
        .CO({\data_out[12]_INST_0_i_1_n_0 ,\data_out[12]_INST_0_i_1_n_1 ,\data_out[12]_INST_0_i_1_n_2 ,\data_out[12]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data_out1[12:9]),
        .S({\data_out[12]_INST_0_i_2_n_0 ,\data_out[12]_INST_0_i_3_n_0 ,\data_out[12]_INST_0_i_4_n_0 ,\data_out[12]_INST_0_i_5_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[12]_INST_0_i_10 
       (.I0(data_in[11]),
        .O(\data_out[12]_INST_0_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[12]_INST_0_i_11 
       (.I0(data_in[10]),
        .O(\data_out[12]_INST_0_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[12]_INST_0_i_12 
       (.I0(data_in[9]),
        .O(\data_out[12]_INST_0_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \data_out[12]_INST_0_i_2 
       (.I0(data_in[13]),
        .I1(data_out3[13]),
        .O(\data_out[12]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \data_out[12]_INST_0_i_3 
       (.I0(data_in[12]),
        .I1(data_in[13]),
        .I2(data_out3[12]),
        .O(\data_out[12]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h27)) 
    \data_out[12]_INST_0_i_4 
       (.I0(data_in[13]),
        .I1(data_out3[11]),
        .I2(data_in[11]),
        .O(\data_out[12]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h27)) 
    \data_out[12]_INST_0_i_5 
       (.I0(data_in[13]),
        .I1(data_out3[10]),
        .I2(data_in[10]),
        .O(\data_out[12]_INST_0_i_5_n_0 ));
  CARRY4 \data_out[12]_INST_0_i_6 
       (.CI(\data_out[12]_INST_0_i_7_n_0 ),
        .CO(\NLW_data_out[12]_INST_0_i_6_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_data_out[12]_INST_0_i_6_O_UNCONNECTED [3:1],data_out3[13]}),
        .S({1'b0,1'b0,1'b0,\data_out[12]_INST_0_i_2_0 }));
  CARRY4 \data_out[12]_INST_0_i_7 
       (.CI(\data_out[8]_INST_0_i_6_n_0 ),
        .CO({\data_out[12]_INST_0_i_7_n_0 ,\data_out[12]_INST_0_i_7_n_1 ,\data_out[12]_INST_0_i_7_n_2 ,\data_out[12]_INST_0_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data_out3[12:9]),
        .S({S,\data_out[12]_INST_0_i_10_n_0 ,\data_out[12]_INST_0_i_11_n_0 ,\data_out[12]_INST_0_i_12_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_out[13]_INST_0 
       (.I0(data_in[13]),
        .I1(\data_out[13]_INST_0_i_1_n_3 ),
        .O(data_out[13]));
  CARRY4 \data_out[13]_INST_0_i_1 
       (.CI(\data_out[12]_INST_0_i_1_n_0 ),
        .CO({\NLW_data_out[13]_INST_0_i_1_CO_UNCONNECTED [3:1],\data_out[13]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_data_out[13]_INST_0_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[1]_INST_0 
       (.I0(data_out1[1]),
        .I1(data_in[2]),
        .I2(data_in[13]),
        .O(data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[2]_INST_0 
       (.I0(data_out1[2]),
        .I1(data_in[3]),
        .I2(data_in[13]),
        .O(data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[3]_INST_0 
       (.I0(data_out1[3]),
        .I1(data_in[4]),
        .I2(data_in[13]),
        .O(data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[4]_INST_0 
       (.I0(data_out1[4]),
        .I1(data_in[5]),
        .I2(data_in[13]),
        .O(data_out[4]));
  CARRY4 \data_out[4]_INST_0_i_1 
       (.CI(1'b0),
        .CO({\data_out[4]_INST_0_i_1_n_0 ,\data_out[4]_INST_0_i_1_n_1 ,\data_out[4]_INST_0_i_1_n_2 ,\data_out[4]_INST_0_i_1_n_3 }),
        .CYINIT(\data_out[4]_INST_0_i_2_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data_out1[4:1]),
        .S({\data_out[4]_INST_0_i_3_n_0 ,\data_out[4]_INST_0_i_4_n_0 ,\data_out[4]_INST_0_i_5_n_0 ,\data_out[4]_INST_0_i_6_n_0 }));
  LUT3 #(
    .INIT(8'h27)) 
    \data_out[4]_INST_0_i_2 
       (.I0(data_in[13]),
        .I1(data_out3[1]),
        .I2(data_in[1]),
        .O(\data_out[4]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h27)) 
    \data_out[4]_INST_0_i_3 
       (.I0(data_in[13]),
        .I1(data_out3[5]),
        .I2(data_in[5]),
        .O(\data_out[4]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h27)) 
    \data_out[4]_INST_0_i_4 
       (.I0(data_in[13]),
        .I1(data_out3[4]),
        .I2(data_in[4]),
        .O(\data_out[4]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h27)) 
    \data_out[4]_INST_0_i_5 
       (.I0(data_in[13]),
        .I1(data_out3[3]),
        .I2(data_in[3]),
        .O(\data_out[4]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h27)) 
    \data_out[4]_INST_0_i_6 
       (.I0(data_in[13]),
        .I1(data_out3[2]),
        .I2(data_in[2]),
        .O(\data_out[4]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[5]_INST_0 
       (.I0(data_out1[5]),
        .I1(data_in[6]),
        .I2(data_in[13]),
        .O(data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[6]_INST_0 
       (.I0(data_out1[6]),
        .I1(data_in[7]),
        .I2(data_in[13]),
        .O(data_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[7]_INST_0 
       (.I0(data_out1[7]),
        .I1(data_in[8]),
        .I2(data_in[13]),
        .O(data_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[8]_INST_0 
       (.I0(data_out1[8]),
        .I1(data_in[9]),
        .I2(data_in[13]),
        .O(data_out[8]));
  CARRY4 \data_out[8]_INST_0_i_1 
       (.CI(\data_out[4]_INST_0_i_1_n_0 ),
        .CO({\data_out[8]_INST_0_i_1_n_0 ,\data_out[8]_INST_0_i_1_n_1 ,\data_out[8]_INST_0_i_1_n_2 ,\data_out[8]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data_out1[8:5]),
        .S({\data_out[8]_INST_0_i_2_n_0 ,\data_out[8]_INST_0_i_3_n_0 ,\data_out[8]_INST_0_i_4_n_0 ,\data_out[8]_INST_0_i_5_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[8]_INST_0_i_10 
       (.I0(data_in[5]),
        .O(\data_out[8]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h27)) 
    \data_out[8]_INST_0_i_2 
       (.I0(data_in[13]),
        .I1(data_out3[9]),
        .I2(data_in[9]),
        .O(\data_out[8]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h27)) 
    \data_out[8]_INST_0_i_3 
       (.I0(data_in[13]),
        .I1(data_out3[8]),
        .I2(data_in[8]),
        .O(\data_out[8]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h27)) 
    \data_out[8]_INST_0_i_4 
       (.I0(data_in[13]),
        .I1(data_out3[7]),
        .I2(data_in[7]),
        .O(\data_out[8]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h27)) 
    \data_out[8]_INST_0_i_5 
       (.I0(data_in[13]),
        .I1(data_out3[6]),
        .I2(data_in[6]),
        .O(\data_out[8]_INST_0_i_5_n_0 ));
  CARRY4 \data_out[8]_INST_0_i_6 
       (.CI(\data_out[0]_INST_0_i_1_n_0 ),
        .CO({\data_out[8]_INST_0_i_6_n_0 ,\data_out[8]_INST_0_i_6_n_1 ,\data_out[8]_INST_0_i_6_n_2 ,\data_out[8]_INST_0_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data_out3[8:5]),
        .S({\data_out[8]_INST_0_i_7_n_0 ,\data_out[8]_INST_0_i_8_n_0 ,\data_out[8]_INST_0_i_9_n_0 ,\data_out[8]_INST_0_i_10_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[8]_INST_0_i_7 
       (.I0(data_in[8]),
        .O(\data_out[8]_INST_0_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[8]_INST_0_i_8 
       (.I0(data_in[7]),
        .O(\data_out[8]_INST_0_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[8]_INST_0_i_9 
       (.I0(data_in[6]),
        .O(\data_out[8]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[9]_INST_0 
       (.I0(data_out1[9]),
        .I1(data_in[10]),
        .I2(data_in[13]),
        .O(data_out[9]));
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
