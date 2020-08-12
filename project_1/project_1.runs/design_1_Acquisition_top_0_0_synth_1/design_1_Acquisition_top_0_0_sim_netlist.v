// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Aug 11 14:15:45 2020
// Host        : DESKTOP-AUBSA4O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Acquisition_top_0_0_sim_netlist.v
// Design      : design_1_Acquisition_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Acquisition_FSM_2
   (reset_ACQ,
    m_axis_s2mm_cmd_tvalid,
    status_out,
    s_axis_tvalid,
    m_axis_s2mm_cmd_tdata,
    start_sig,
    clk,
    resetn,
    number_bytes,
    s_axis_s2mm_sts_tvalid,
    s_axis_s2mm_sts_tdata,
    FIFO_S2MM_data_count,
    start_address);
  output reset_ACQ;
  output m_axis_s2mm_cmd_tvalid;
  output [1:0]status_out;
  output s_axis_tvalid;
  output [23:0]m_axis_s2mm_cmd_tdata;
  input start_sig;
  input clk;
  input resetn;
  input [23:0]number_bytes;
  input s_axis_s2mm_sts_tvalid;
  input [7:0]s_axis_s2mm_sts_tdata;
  input [29:0]FIFO_S2MM_data_count;
  input [23:0]start_address;

  wire [29:0]FIFO_S2MM_data_count;
  wire \FSM_onehot_s2mm_fsm_state[0]_i_1_n_0 ;
  wire \FSM_onehot_s2mm_fsm_state[1]_i_1_n_0 ;
  wire \FSM_onehot_s2mm_fsm_state[2]_i_1_n_0 ;
  wire \FSM_onehot_s2mm_fsm_state[2]_i_2_n_0 ;
  wire \FSM_onehot_s2mm_fsm_state[2]_i_3_n_0 ;
  wire \FSM_onehot_s2mm_fsm_state[3]_i_1_n_0 ;
  wire \FSM_onehot_s2mm_fsm_state[3]_i_2_n_0 ;
  wire \FSM_onehot_s2mm_fsm_state[3]_i_3_n_0 ;
  wire \FSM_onehot_s2mm_fsm_state[3]_i_4_n_0 ;
  wire \FSM_onehot_s2mm_fsm_state[3]_i_5_n_0 ;
  wire \FSM_onehot_s2mm_fsm_state[3]_i_6_n_0 ;
  wire \FSM_onehot_s2mm_fsm_state[3]_i_7_n_0 ;
  wire \FSM_onehot_s2mm_fsm_state[3]_i_8_n_0 ;
  wire \FSM_onehot_s2mm_fsm_state[3]_i_9_n_0 ;
  wire \FSM_onehot_s2mm_fsm_state[4]_i_1_n_0 ;
  wire \FSM_onehot_s2mm_fsm_state[5]_i_1_n_0 ;
  wire \FSM_onehot_s2mm_fsm_state[6]_i_1_n_0 ;
  wire \FSM_onehot_s2mm_fsm_state[7]_i_1_n_0 ;
  wire \FSM_onehot_s2mm_fsm_state[7]_i_2_n_0 ;
  wire \FSM_onehot_s2mm_fsm_state[7]_i_3_n_0 ;
  wire \FSM_onehot_s2mm_fsm_state_reg_n_0_[0] ;
  wire \FSM_onehot_s2mm_fsm_state_reg_n_0_[1] ;
  wire \FSM_onehot_s2mm_fsm_state_reg_n_0_[2] ;
  wire \FSM_onehot_s2mm_fsm_state_reg_n_0_[3] ;
  wire \FSM_onehot_s2mm_fsm_state_reg_n_0_[4] ;
  wire \FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ;
  wire [31:8]bytes_sent;
  wire bytes_sent0_carry__0_n_0;
  wire bytes_sent0_carry__0_n_1;
  wire bytes_sent0_carry__0_n_2;
  wire bytes_sent0_carry__0_n_3;
  wire bytes_sent0_carry__1_n_0;
  wire bytes_sent0_carry__1_n_1;
  wire bytes_sent0_carry__1_n_2;
  wire bytes_sent0_carry__1_n_3;
  wire bytes_sent0_carry__2_n_0;
  wire bytes_sent0_carry__2_n_1;
  wire bytes_sent0_carry__2_n_2;
  wire bytes_sent0_carry__2_n_3;
  wire bytes_sent0_carry__3_n_0;
  wire bytes_sent0_carry__3_n_1;
  wire bytes_sent0_carry__3_n_2;
  wire bytes_sent0_carry__3_n_3;
  wire bytes_sent0_carry__4_n_1;
  wire bytes_sent0_carry__4_n_2;
  wire bytes_sent0_carry__4_n_3;
  wire bytes_sent0_carry_i_1_n_0;
  wire bytes_sent0_carry_n_0;
  wire bytes_sent0_carry_n_1;
  wire bytes_sent0_carry_n_2;
  wire bytes_sent0_carry_n_3;
  wire \bytes_sent[31]_i_1_n_0 ;
  wire [31:8]bytes_sent_0;
  wire clk;
  wire data_tvalid_int;
  wire data_tvalid_int_i_1_n_0;
  wire error_ACQ_int;
  wire error_ACQ_int_i_1_n_0;
  wire error_ACQ_int_i_2_n_0;
  wire error_ACQ_int_i_3_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire in7;
  wire [31:8]in8;
  wire [31:8]in9;
  wire [23:0]m_axis_s2mm_cmd_tdata;
  wire m_axis_s2mm_cmd_tdata0_carry__0_i_1_n_0;
  wire m_axis_s2mm_cmd_tdata0_carry__0_i_2_n_0;
  wire m_axis_s2mm_cmd_tdata0_carry__0_i_3_n_0;
  wire m_axis_s2mm_cmd_tdata0_carry__0_i_4_n_0;
  wire m_axis_s2mm_cmd_tdata0_carry__0_n_0;
  wire m_axis_s2mm_cmd_tdata0_carry__0_n_1;
  wire m_axis_s2mm_cmd_tdata0_carry__0_n_2;
  wire m_axis_s2mm_cmd_tdata0_carry__0_n_3;
  wire m_axis_s2mm_cmd_tdata0_carry__1_i_1_n_0;
  wire m_axis_s2mm_cmd_tdata0_carry__1_i_2_n_0;
  wire m_axis_s2mm_cmd_tdata0_carry__1_i_3_n_0;
  wire m_axis_s2mm_cmd_tdata0_carry__1_i_4_n_0;
  wire m_axis_s2mm_cmd_tdata0_carry__1_n_0;
  wire m_axis_s2mm_cmd_tdata0_carry__1_n_1;
  wire m_axis_s2mm_cmd_tdata0_carry__1_n_2;
  wire m_axis_s2mm_cmd_tdata0_carry__1_n_3;
  wire m_axis_s2mm_cmd_tdata0_carry__2_i_1_n_0;
  wire m_axis_s2mm_cmd_tdata0_carry__2_i_2_n_0;
  wire m_axis_s2mm_cmd_tdata0_carry__2_i_3_n_0;
  wire m_axis_s2mm_cmd_tdata0_carry__2_i_4_n_0;
  wire m_axis_s2mm_cmd_tdata0_carry__2_n_0;
  wire m_axis_s2mm_cmd_tdata0_carry__2_n_1;
  wire m_axis_s2mm_cmd_tdata0_carry__2_n_2;
  wire m_axis_s2mm_cmd_tdata0_carry__2_n_3;
  wire m_axis_s2mm_cmd_tdata0_carry__3_i_1_n_0;
  wire m_axis_s2mm_cmd_tdata0_carry__3_i_2_n_0;
  wire m_axis_s2mm_cmd_tdata0_carry__3_i_3_n_0;
  wire m_axis_s2mm_cmd_tdata0_carry__3_i_4_n_0;
  wire m_axis_s2mm_cmd_tdata0_carry__3_n_0;
  wire m_axis_s2mm_cmd_tdata0_carry__3_n_1;
  wire m_axis_s2mm_cmd_tdata0_carry__3_n_2;
  wire m_axis_s2mm_cmd_tdata0_carry__3_n_3;
  wire m_axis_s2mm_cmd_tdata0_carry__4_i_1_n_0;
  wire m_axis_s2mm_cmd_tdata0_carry__4_i_2_n_0;
  wire m_axis_s2mm_cmd_tdata0_carry__4_i_3_n_0;
  wire m_axis_s2mm_cmd_tdata0_carry__4_i_4_n_0;
  wire m_axis_s2mm_cmd_tdata0_carry__4_n_1;
  wire m_axis_s2mm_cmd_tdata0_carry__4_n_2;
  wire m_axis_s2mm_cmd_tdata0_carry__4_n_3;
  wire m_axis_s2mm_cmd_tdata0_carry_i_1_n_0;
  wire m_axis_s2mm_cmd_tdata0_carry_i_2_n_0;
  wire m_axis_s2mm_cmd_tdata0_carry_i_3_n_0;
  wire m_axis_s2mm_cmd_tdata0_carry_i_4_n_0;
  wire m_axis_s2mm_cmd_tdata0_carry_n_0;
  wire m_axis_s2mm_cmd_tdata0_carry_n_1;
  wire m_axis_s2mm_cmd_tdata0_carry_n_2;
  wire m_axis_s2mm_cmd_tdata0_carry_n_3;
  wire m_axis_s2mm_cmd_tvalid;
  wire [23:0]number_bytes;
  wire reset_ACQ;
  wire reset_ACQ_i_1_n_0;
  wire reset_ACQ_i_2_n_0;
  wire [3:1]reset_counter;
  wire \reset_counter[0]_i_1_n_0 ;
  wire \reset_counter_reg_n_0_[0] ;
  wire \reset_counter_reg_n_0_[1] ;
  wire \reset_counter_reg_n_0_[2] ;
  wire \reset_counter_reg_n_0_[3] ;
  wire resetn;
  wire [31:8]s2mm_addr;
  wire s2mm_addr0_carry__0_n_0;
  wire s2mm_addr0_carry__0_n_1;
  wire s2mm_addr0_carry__0_n_2;
  wire s2mm_addr0_carry__0_n_3;
  wire s2mm_addr0_carry__1_n_0;
  wire s2mm_addr0_carry__1_n_1;
  wire s2mm_addr0_carry__1_n_2;
  wire s2mm_addr0_carry__1_n_3;
  wire s2mm_addr0_carry__2_n_0;
  wire s2mm_addr0_carry__2_n_1;
  wire s2mm_addr0_carry__2_n_2;
  wire s2mm_addr0_carry__2_n_3;
  wire s2mm_addr0_carry__3_n_0;
  wire s2mm_addr0_carry__3_n_1;
  wire s2mm_addr0_carry__3_n_2;
  wire s2mm_addr0_carry__3_n_3;
  wire s2mm_addr0_carry__4_n_1;
  wire s2mm_addr0_carry__4_n_2;
  wire s2mm_addr0_carry__4_n_3;
  wire s2mm_addr0_carry_i_1_n_0;
  wire s2mm_addr0_carry_n_0;
  wire s2mm_addr0_carry_n_1;
  wire s2mm_addr0_carry_n_2;
  wire s2mm_addr0_carry_n_3;
  wire \s2mm_addr[31]_i_1_n_0 ;
  wire [31:8]s2mm_addr_1;
  wire \s2mm_fsm_state1_inferred__1/i__carry__0_n_0 ;
  wire \s2mm_fsm_state1_inferred__1/i__carry__0_n_1 ;
  wire \s2mm_fsm_state1_inferred__1/i__carry__0_n_2 ;
  wire \s2mm_fsm_state1_inferred__1/i__carry__0_n_3 ;
  wire \s2mm_fsm_state1_inferred__1/i__carry__1_n_1 ;
  wire \s2mm_fsm_state1_inferred__1/i__carry__1_n_2 ;
  wire \s2mm_fsm_state1_inferred__1/i__carry__1_n_3 ;
  wire \s2mm_fsm_state1_inferred__1/i__carry_n_0 ;
  wire \s2mm_fsm_state1_inferred__1/i__carry_n_1 ;
  wire \s2mm_fsm_state1_inferred__1/i__carry_n_2 ;
  wire \s2mm_fsm_state1_inferred__1/i__carry_n_3 ;
  wire [31:8]s2mm_fsm_state2;
  wire s2mm_fsm_state2_carry__0_i_1_n_0;
  wire s2mm_fsm_state2_carry__0_i_2_n_0;
  wire s2mm_fsm_state2_carry__0_i_3_n_0;
  wire s2mm_fsm_state2_carry__0_i_4_n_0;
  wire s2mm_fsm_state2_carry__0_n_0;
  wire s2mm_fsm_state2_carry__0_n_1;
  wire s2mm_fsm_state2_carry__0_n_2;
  wire s2mm_fsm_state2_carry__0_n_3;
  wire s2mm_fsm_state2_carry__1_i_1_n_0;
  wire s2mm_fsm_state2_carry__1_i_2_n_0;
  wire s2mm_fsm_state2_carry__1_i_3_n_0;
  wire s2mm_fsm_state2_carry__1_i_4_n_0;
  wire s2mm_fsm_state2_carry__1_n_0;
  wire s2mm_fsm_state2_carry__1_n_1;
  wire s2mm_fsm_state2_carry__1_n_2;
  wire s2mm_fsm_state2_carry__1_n_3;
  wire s2mm_fsm_state2_carry__2_i_1_n_0;
  wire s2mm_fsm_state2_carry__2_i_2_n_0;
  wire s2mm_fsm_state2_carry__2_i_3_n_0;
  wire s2mm_fsm_state2_carry__2_i_4_n_0;
  wire s2mm_fsm_state2_carry__2_n_0;
  wire s2mm_fsm_state2_carry__2_n_1;
  wire s2mm_fsm_state2_carry__2_n_2;
  wire s2mm_fsm_state2_carry__2_n_3;
  wire s2mm_fsm_state2_carry__3_i_1_n_0;
  wire s2mm_fsm_state2_carry__3_i_2_n_0;
  wire s2mm_fsm_state2_carry__3_i_3_n_0;
  wire s2mm_fsm_state2_carry__3_i_4_n_0;
  wire s2mm_fsm_state2_carry__3_n_0;
  wire s2mm_fsm_state2_carry__3_n_1;
  wire s2mm_fsm_state2_carry__3_n_2;
  wire s2mm_fsm_state2_carry__3_n_3;
  wire s2mm_fsm_state2_carry__4_i_1_n_0;
  wire s2mm_fsm_state2_carry__4_i_2_n_0;
  wire s2mm_fsm_state2_carry__4_i_3_n_0;
  wire s2mm_fsm_state2_carry__4_i_4_n_0;
  wire s2mm_fsm_state2_carry__4_n_1;
  wire s2mm_fsm_state2_carry__4_n_2;
  wire s2mm_fsm_state2_carry__4_n_3;
  wire s2mm_fsm_state2_carry_i_1_n_0;
  wire s2mm_fsm_state2_carry_i_2_n_0;
  wire s2mm_fsm_state2_carry_i_3_n_0;
  wire s2mm_fsm_state2_carry_n_0;
  wire s2mm_fsm_state2_carry_n_1;
  wire s2mm_fsm_state2_carry_n_2;
  wire s2mm_fsm_state2_carry_n_3;
  wire [7:0]s_axis_s2mm_sts_tdata;
  wire s_axis_s2mm_sts_tvalid;
  wire s_axis_tvalid;
  wire [23:0]start_address;
  wire start_new;
  wire start_old;
  wire start_sig;
  wire [1:0]status_out;
  wire [3:3]NLW_bytes_sent0_carry__4_CO_UNCONNECTED;
  wire [0:0]NLW_m_axis_s2mm_cmd_tdata0_carry_O_UNCONNECTED;
  wire [3:3]NLW_m_axis_s2mm_cmd_tdata0_carry__4_CO_UNCONNECTED;
  wire [3:3]NLW_s2mm_addr0_carry__4_CO_UNCONNECTED;
  wire [3:0]\NLW_s2mm_fsm_state1_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_s2mm_fsm_state1_inferred__1/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_s2mm_fsm_state1_inferred__1/i__carry__1_O_UNCONNECTED ;
  wire [3:3]NLW_s2mm_fsm_state2_carry__4_CO_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    ADC1_converter_i_1
       (.I0(status_out[0]),
        .O(s_axis_tvalid));
  LUT5 #(
    .INIT(32'hFFFFFF8A)) 
    \FSM_onehot_s2mm_fsm_state[0]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[0] ),
        .I1(start_old),
        .I2(start_new),
        .I3(error_ACQ_int),
        .I4(data_tvalid_int),
        .O(\FSM_onehot_s2mm_fsm_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \FSM_onehot_s2mm_fsm_state[1]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_s2mm_fsm_state_reg_n_0_[1] ),
        .I2(start_old),
        .I3(start_new),
        .I4(\FSM_onehot_s2mm_fsm_state_reg_n_0_[0] ),
        .O(\FSM_onehot_s2mm_fsm_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88F888F8FFFF88F8)) 
    \FSM_onehot_s2mm_fsm_state[2]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_s2mm_fsm_state[2]_i_2_n_0 ),
        .I2(\FSM_onehot_s2mm_fsm_state[2]_i_3_n_0 ),
        .I3(\FSM_onehot_s2mm_fsm_state[3]_i_3_n_0 ),
        .I4(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I5(in7),
        .O(\FSM_onehot_s2mm_fsm_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFEEE)) 
    \FSM_onehot_s2mm_fsm_state[2]_i_2 
       (.I0(\reset_counter_reg_n_0_[3] ),
        .I1(\reset_counter_reg_n_0_[2] ),
        .I2(\reset_counter_reg_n_0_[1] ),
        .I3(\reset_counter_reg_n_0_[0] ),
        .O(\FSM_onehot_s2mm_fsm_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7777777F00000000)) 
    \FSM_onehot_s2mm_fsm_state[2]_i_3 
       (.I0(FIFO_S2MM_data_count[3]),
        .I1(FIFO_S2MM_data_count[4]),
        .I2(FIFO_S2MM_data_count[2]),
        .I3(FIFO_S2MM_data_count[1]),
        .I4(FIFO_S2MM_data_count[0]),
        .I5(\FSM_onehot_s2mm_fsm_state_reg_n_0_[2] ),
        .O(\FSM_onehot_s2mm_fsm_state[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF004000)) 
    \FSM_onehot_s2mm_fsm_state[3]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state[3]_i_2_n_0 ),
        .I1(FIFO_S2MM_data_count[4]),
        .I2(FIFO_S2MM_data_count[3]),
        .I3(\FSM_onehot_s2mm_fsm_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_s2mm_fsm_state[3]_i_3_n_0 ),
        .O(\FSM_onehot_s2mm_fsm_state[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_onehot_s2mm_fsm_state[3]_i_2 
       (.I0(FIFO_S2MM_data_count[2]),
        .I1(FIFO_S2MM_data_count[1]),
        .I2(FIFO_S2MM_data_count[0]),
        .O(\FSM_onehot_s2mm_fsm_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_s2mm_fsm_state[3]_i_3 
       (.I0(\FSM_onehot_s2mm_fsm_state[3]_i_4_n_0 ),
        .I1(\FSM_onehot_s2mm_fsm_state[3]_i_5_n_0 ),
        .I2(\FSM_onehot_s2mm_fsm_state[3]_i_6_n_0 ),
        .I3(\FSM_onehot_s2mm_fsm_state[3]_i_7_n_0 ),
        .I4(\FSM_onehot_s2mm_fsm_state[3]_i_8_n_0 ),
        .I5(\FSM_onehot_s2mm_fsm_state[3]_i_9_n_0 ),
        .O(\FSM_onehot_s2mm_fsm_state[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_s2mm_fsm_state[3]_i_4 
       (.I0(FIFO_S2MM_data_count[21]),
        .I1(FIFO_S2MM_data_count[20]),
        .I2(FIFO_S2MM_data_count[23]),
        .I3(FIFO_S2MM_data_count[22]),
        .O(\FSM_onehot_s2mm_fsm_state[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_s2mm_fsm_state[3]_i_5 
       (.I0(FIFO_S2MM_data_count[25]),
        .I1(FIFO_S2MM_data_count[24]),
        .I2(FIFO_S2MM_data_count[27]),
        .I3(FIFO_S2MM_data_count[26]),
        .O(\FSM_onehot_s2mm_fsm_state[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_s2mm_fsm_state[3]_i_6 
       (.I0(FIFO_S2MM_data_count[13]),
        .I1(FIFO_S2MM_data_count[12]),
        .I2(FIFO_S2MM_data_count[15]),
        .I3(FIFO_S2MM_data_count[14]),
        .O(\FSM_onehot_s2mm_fsm_state[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_s2mm_fsm_state[3]_i_7 
       (.I0(FIFO_S2MM_data_count[17]),
        .I1(FIFO_S2MM_data_count[16]),
        .I2(FIFO_S2MM_data_count[19]),
        .I3(FIFO_S2MM_data_count[18]),
        .O(\FSM_onehot_s2mm_fsm_state[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_s2mm_fsm_state[3]_i_8 
       (.I0(FIFO_S2MM_data_count[9]),
        .I1(FIFO_S2MM_data_count[8]),
        .I2(FIFO_S2MM_data_count[11]),
        .I3(FIFO_S2MM_data_count[10]),
        .O(\FSM_onehot_s2mm_fsm_state[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_s2mm_fsm_state[3]_i_9 
       (.I0(FIFO_S2MM_data_count[5]),
        .I1(FIFO_S2MM_data_count[28]),
        .I2(FIFO_S2MM_data_count[29]),
        .I3(FIFO_S2MM_data_count[7]),
        .I4(FIFO_S2MM_data_count[6]),
        .O(\FSM_onehot_s2mm_fsm_state[3]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_s2mm_fsm_state[4]_i_1 
       (.I0(s_axis_s2mm_sts_tvalid),
        .I1(\FSM_onehot_s2mm_fsm_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_s2mm_fsm_state_reg_n_0_[3] ),
        .O(\FSM_onehot_s2mm_fsm_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_s2mm_fsm_state[5]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[4] ),
        .I1(s_axis_s2mm_sts_tvalid),
        .I2(\FSM_onehot_s2mm_fsm_state[7]_i_2_n_0 ),
        .O(\FSM_onehot_s2mm_fsm_state[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_s2mm_fsm_state[6]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in7),
        .O(\FSM_onehot_s2mm_fsm_state[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_s2mm_fsm_state[7]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state[7]_i_2_n_0 ),
        .I1(\FSM_onehot_s2mm_fsm_state_reg_n_0_[4] ),
        .I2(s_axis_s2mm_sts_tvalid),
        .O(\FSM_onehot_s2mm_fsm_state[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_s2mm_fsm_state[7]_i_2 
       (.I0(s_axis_s2mm_sts_tdata[2]),
        .I1(s_axis_s2mm_sts_tdata[3]),
        .I2(s_axis_s2mm_sts_tdata[0]),
        .I3(s_axis_s2mm_sts_tdata[1]),
        .I4(\FSM_onehot_s2mm_fsm_state[7]_i_3_n_0 ),
        .O(\FSM_onehot_s2mm_fsm_state[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_onehot_s2mm_fsm_state[7]_i_3 
       (.I0(s_axis_s2mm_sts_tdata[5]),
        .I1(s_axis_s2mm_sts_tdata[4]),
        .I2(s_axis_s2mm_sts_tdata[7]),
        .I3(s_axis_s2mm_sts_tdata[6]),
        .O(\FSM_onehot_s2mm_fsm_state[7]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "idle:00000001,reset_fifo:00000010,write_s2mm:00001000,wait_s2mm_valid:00010000,error_s2mm:10000000,prep_next_s2mm:00100000,fifo_fill:00000100,finish_s2mm:01000000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_s2mm_fsm_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_s2mm_fsm_state[0]_i_1_n_0 ),
        .PRE(reset_ACQ_i_2_n_0),
        .Q(\FSM_onehot_s2mm_fsm_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "idle:00000001,reset_fifo:00000010,write_s2mm:00001000,wait_s2mm_valid:00010000,error_s2mm:10000000,prep_next_s2mm:00100000,fifo_fill:00000100,finish_s2mm:01000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_s2mm_fsm_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_ACQ_i_2_n_0),
        .D(\FSM_onehot_s2mm_fsm_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_s2mm_fsm_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "idle:00000001,reset_fifo:00000010,write_s2mm:00001000,wait_s2mm_valid:00010000,error_s2mm:10000000,prep_next_s2mm:00100000,fifo_fill:00000100,finish_s2mm:01000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_s2mm_fsm_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_ACQ_i_2_n_0),
        .D(\FSM_onehot_s2mm_fsm_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_s2mm_fsm_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "idle:00000001,reset_fifo:00000010,write_s2mm:00001000,wait_s2mm_valid:00010000,error_s2mm:10000000,prep_next_s2mm:00100000,fifo_fill:00000100,finish_s2mm:01000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_s2mm_fsm_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_ACQ_i_2_n_0),
        .D(\FSM_onehot_s2mm_fsm_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_s2mm_fsm_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "idle:00000001,reset_fifo:00000010,write_s2mm:00001000,wait_s2mm_valid:00010000,error_s2mm:10000000,prep_next_s2mm:00100000,fifo_fill:00000100,finish_s2mm:01000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_s2mm_fsm_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_ACQ_i_2_n_0),
        .D(\FSM_onehot_s2mm_fsm_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_s2mm_fsm_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "idle:00000001,reset_fifo:00000010,write_s2mm:00001000,wait_s2mm_valid:00010000,error_s2mm:10000000,prep_next_s2mm:00100000,fifo_fill:00000100,finish_s2mm:01000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_s2mm_fsm_state_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_ACQ_i_2_n_0),
        .D(\FSM_onehot_s2mm_fsm_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "idle:00000001,reset_fifo:00000010,write_s2mm:00001000,wait_s2mm_valid:00010000,error_s2mm:10000000,prep_next_s2mm:00100000,fifo_fill:00000100,finish_s2mm:01000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_s2mm_fsm_state_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_ACQ_i_2_n_0),
        .D(\FSM_onehot_s2mm_fsm_state[6]_i_1_n_0 ),
        .Q(data_tvalid_int));
  (* FSM_ENCODED_STATES = "idle:00000001,reset_fifo:00000010,write_s2mm:00001000,wait_s2mm_valid:00010000,error_s2mm:10000000,prep_next_s2mm:00100000,fifo_fill:00000100,finish_s2mm:01000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_s2mm_fsm_state_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_ACQ_i_2_n_0),
        .D(\FSM_onehot_s2mm_fsm_state[7]_i_1_n_0 ),
        .Q(error_ACQ_int));
  CARRY4 bytes_sent0_carry
       (.CI(1'b0),
        .CO({bytes_sent0_carry_n_0,bytes_sent0_carry_n_1,bytes_sent0_carry_n_2,bytes_sent0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,bytes_sent[9],1'b0}),
        .O(in8[11:8]),
        .S({bytes_sent[11:10],bytes_sent0_carry_i_1_n_0,bytes_sent[8]}));
  CARRY4 bytes_sent0_carry__0
       (.CI(bytes_sent0_carry_n_0),
        .CO({bytes_sent0_carry__0_n_0,bytes_sent0_carry__0_n_1,bytes_sent0_carry__0_n_2,bytes_sent0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[15:12]),
        .S(bytes_sent[15:12]));
  CARRY4 bytes_sent0_carry__1
       (.CI(bytes_sent0_carry__0_n_0),
        .CO({bytes_sent0_carry__1_n_0,bytes_sent0_carry__1_n_1,bytes_sent0_carry__1_n_2,bytes_sent0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[19:16]),
        .S(bytes_sent[19:16]));
  CARRY4 bytes_sent0_carry__2
       (.CI(bytes_sent0_carry__1_n_0),
        .CO({bytes_sent0_carry__2_n_0,bytes_sent0_carry__2_n_1,bytes_sent0_carry__2_n_2,bytes_sent0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[23:20]),
        .S(bytes_sent[23:20]));
  CARRY4 bytes_sent0_carry__3
       (.CI(bytes_sent0_carry__2_n_0),
        .CO({bytes_sent0_carry__3_n_0,bytes_sent0_carry__3_n_1,bytes_sent0_carry__3_n_2,bytes_sent0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[27:24]),
        .S(bytes_sent[27:24]));
  CARRY4 bytes_sent0_carry__4
       (.CI(bytes_sent0_carry__3_n_0),
        .CO({NLW_bytes_sent0_carry__4_CO_UNCONNECTED[3],bytes_sent0_carry__4_n_1,bytes_sent0_carry__4_n_2,bytes_sent0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[31:28]),
        .S(bytes_sent[31:28]));
  LUT1 #(
    .INIT(2'h1)) 
    bytes_sent0_carry_i_1
       (.I0(bytes_sent[9]),
        .O(bytes_sent0_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bytes_sent[10]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in8[10]),
        .O(bytes_sent_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bytes_sent[11]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in8[11]),
        .O(bytes_sent_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bytes_sent[12]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in8[12]),
        .O(bytes_sent_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bytes_sent[13]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in8[13]),
        .O(bytes_sent_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bytes_sent[14]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in8[14]),
        .O(bytes_sent_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bytes_sent[15]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in8[15]),
        .O(bytes_sent_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bytes_sent[16]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in8[16]),
        .O(bytes_sent_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bytes_sent[17]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in8[17]),
        .O(bytes_sent_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bytes_sent[18]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in8[18]),
        .O(bytes_sent_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bytes_sent[19]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in8[19]),
        .O(bytes_sent_0[19]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bytes_sent[20]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in8[20]),
        .O(bytes_sent_0[20]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bytes_sent[21]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in8[21]),
        .O(bytes_sent_0[21]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bytes_sent[22]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in8[22]),
        .O(bytes_sent_0[22]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bytes_sent[23]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in8[23]),
        .O(bytes_sent_0[23]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bytes_sent[24]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in8[24]),
        .O(bytes_sent_0[24]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bytes_sent[25]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in8[25]),
        .O(bytes_sent_0[25]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bytes_sent[26]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in8[26]),
        .O(bytes_sent_0[26]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bytes_sent[27]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in8[27]),
        .O(bytes_sent_0[27]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bytes_sent[28]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in8[28]),
        .O(bytes_sent_0[28]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bytes_sent[29]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in8[29]),
        .O(bytes_sent_0[29]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bytes_sent[30]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in8[30]),
        .O(bytes_sent_0[30]));
  LUT2 #(
    .INIT(4'hE)) 
    \bytes_sent[31]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .O(\bytes_sent[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bytes_sent[31]_i_2 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in8[31]),
        .O(bytes_sent_0[31]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bytes_sent[8]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in8[8]),
        .O(bytes_sent_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bytes_sent[9]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in8[9]),
        .O(bytes_sent_0[9]));
  FDCE \bytes_sent_reg[10] 
       (.C(clk),
        .CE(\bytes_sent[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(bytes_sent_0[10]),
        .Q(bytes_sent[10]));
  FDCE \bytes_sent_reg[11] 
       (.C(clk),
        .CE(\bytes_sent[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(bytes_sent_0[11]),
        .Q(bytes_sent[11]));
  FDCE \bytes_sent_reg[12] 
       (.C(clk),
        .CE(\bytes_sent[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(bytes_sent_0[12]),
        .Q(bytes_sent[12]));
  FDCE \bytes_sent_reg[13] 
       (.C(clk),
        .CE(\bytes_sent[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(bytes_sent_0[13]),
        .Q(bytes_sent[13]));
  FDCE \bytes_sent_reg[14] 
       (.C(clk),
        .CE(\bytes_sent[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(bytes_sent_0[14]),
        .Q(bytes_sent[14]));
  FDCE \bytes_sent_reg[15] 
       (.C(clk),
        .CE(\bytes_sent[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(bytes_sent_0[15]),
        .Q(bytes_sent[15]));
  FDCE \bytes_sent_reg[16] 
       (.C(clk),
        .CE(\bytes_sent[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(bytes_sent_0[16]),
        .Q(bytes_sent[16]));
  FDCE \bytes_sent_reg[17] 
       (.C(clk),
        .CE(\bytes_sent[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(bytes_sent_0[17]),
        .Q(bytes_sent[17]));
  FDCE \bytes_sent_reg[18] 
       (.C(clk),
        .CE(\bytes_sent[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(bytes_sent_0[18]),
        .Q(bytes_sent[18]));
  FDCE \bytes_sent_reg[19] 
       (.C(clk),
        .CE(\bytes_sent[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(bytes_sent_0[19]),
        .Q(bytes_sent[19]));
  FDCE \bytes_sent_reg[20] 
       (.C(clk),
        .CE(\bytes_sent[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(bytes_sent_0[20]),
        .Q(bytes_sent[20]));
  FDCE \bytes_sent_reg[21] 
       (.C(clk),
        .CE(\bytes_sent[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(bytes_sent_0[21]),
        .Q(bytes_sent[21]));
  FDCE \bytes_sent_reg[22] 
       (.C(clk),
        .CE(\bytes_sent[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(bytes_sent_0[22]),
        .Q(bytes_sent[22]));
  FDCE \bytes_sent_reg[23] 
       (.C(clk),
        .CE(\bytes_sent[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(bytes_sent_0[23]),
        .Q(bytes_sent[23]));
  FDCE \bytes_sent_reg[24] 
       (.C(clk),
        .CE(\bytes_sent[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(bytes_sent_0[24]),
        .Q(bytes_sent[24]));
  FDCE \bytes_sent_reg[25] 
       (.C(clk),
        .CE(\bytes_sent[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(bytes_sent_0[25]),
        .Q(bytes_sent[25]));
  FDCE \bytes_sent_reg[26] 
       (.C(clk),
        .CE(\bytes_sent[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(bytes_sent_0[26]),
        .Q(bytes_sent[26]));
  FDCE \bytes_sent_reg[27] 
       (.C(clk),
        .CE(\bytes_sent[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(bytes_sent_0[27]),
        .Q(bytes_sent[27]));
  FDCE \bytes_sent_reg[28] 
       (.C(clk),
        .CE(\bytes_sent[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(bytes_sent_0[28]),
        .Q(bytes_sent[28]));
  FDCE \bytes_sent_reg[29] 
       (.C(clk),
        .CE(\bytes_sent[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(bytes_sent_0[29]),
        .Q(bytes_sent[29]));
  FDCE \bytes_sent_reg[30] 
       (.C(clk),
        .CE(\bytes_sent[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(bytes_sent_0[30]),
        .Q(bytes_sent[30]));
  FDCE \bytes_sent_reg[31] 
       (.C(clk),
        .CE(\bytes_sent[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(bytes_sent_0[31]),
        .Q(bytes_sent[31]));
  FDCE \bytes_sent_reg[8] 
       (.C(clk),
        .CE(\bytes_sent[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(bytes_sent_0[8]),
        .Q(bytes_sent[8]));
  FDCE \bytes_sent_reg[9] 
       (.C(clk),
        .CE(\bytes_sent[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(bytes_sent_0[9]),
        .Q(bytes_sent[9]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    data_tvalid_int_i_1
       (.I0(data_tvalid_int),
        .I1(error_ACQ_int_i_2_n_0),
        .I2(status_out[0]),
        .O(data_tvalid_int_i_1_n_0));
  FDCE data_tvalid_int_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_ACQ_i_2_n_0),
        .D(data_tvalid_int_i_1_n_0),
        .Q(status_out[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    error_ACQ_int_i_1
       (.I0(error_ACQ_int),
        .I1(error_ACQ_int_i_2_n_0),
        .I2(status_out[1]),
        .O(error_ACQ_int_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    error_ACQ_int_i_2
       (.I0(error_ACQ_int_i_3_n_0),
        .I1(\FSM_onehot_s2mm_fsm_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_s2mm_fsm_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_s2mm_fsm_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_s2mm_fsm_state_reg_n_0_[1] ),
        .O(error_ACQ_int_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    error_ACQ_int_i_3
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(error_ACQ_int),
        .I2(data_tvalid_int),
        .O(error_ACQ_int_i_3_n_0));
  FDCE error_ACQ_int_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_ACQ_i_2_n_0),
        .D(error_ACQ_int_i_1_n_0),
        .Q(status_out[1]));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_1
       (.I0(bytes_sent[23]),
        .I1(s2mm_fsm_state2[23]),
        .I2(bytes_sent[22]),
        .I3(s2mm_fsm_state2[22]),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_2
       (.I0(bytes_sent[21]),
        .I1(s2mm_fsm_state2[21]),
        .I2(bytes_sent[20]),
        .I3(s2mm_fsm_state2[20]),
        .O(i__carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_3
       (.I0(bytes_sent[19]),
        .I1(s2mm_fsm_state2[19]),
        .I2(bytes_sent[18]),
        .I3(s2mm_fsm_state2[18]),
        .O(i__carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_4
       (.I0(bytes_sent[17]),
        .I1(s2mm_fsm_state2[17]),
        .I2(bytes_sent[16]),
        .I3(s2mm_fsm_state2[16]),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5
       (.I0(s2mm_fsm_state2[23]),
        .I1(bytes_sent[23]),
        .I2(s2mm_fsm_state2[22]),
        .I3(bytes_sent[22]),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6
       (.I0(s2mm_fsm_state2[21]),
        .I1(bytes_sent[21]),
        .I2(s2mm_fsm_state2[20]),
        .I3(bytes_sent[20]),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7
       (.I0(s2mm_fsm_state2[19]),
        .I1(bytes_sent[19]),
        .I2(s2mm_fsm_state2[18]),
        .I3(bytes_sent[18]),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8
       (.I0(s2mm_fsm_state2[17]),
        .I1(bytes_sent[17]),
        .I2(s2mm_fsm_state2[16]),
        .I3(bytes_sent[16]),
        .O(i__carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_1
       (.I0(bytes_sent[31]),
        .I1(s2mm_fsm_state2[31]),
        .I2(bytes_sent[30]),
        .I3(s2mm_fsm_state2[30]),
        .O(i__carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_2
       (.I0(bytes_sent[29]),
        .I1(s2mm_fsm_state2[29]),
        .I2(bytes_sent[28]),
        .I3(s2mm_fsm_state2[28]),
        .O(i__carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_3
       (.I0(bytes_sent[27]),
        .I1(s2mm_fsm_state2[27]),
        .I2(bytes_sent[26]),
        .I3(s2mm_fsm_state2[26]),
        .O(i__carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_4
       (.I0(bytes_sent[25]),
        .I1(s2mm_fsm_state2[25]),
        .I2(bytes_sent[24]),
        .I3(s2mm_fsm_state2[24]),
        .O(i__carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_5
       (.I0(s2mm_fsm_state2[31]),
        .I1(bytes_sent[31]),
        .I2(s2mm_fsm_state2[30]),
        .I3(bytes_sent[30]),
        .O(i__carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6
       (.I0(s2mm_fsm_state2[29]),
        .I1(bytes_sent[29]),
        .I2(s2mm_fsm_state2[28]),
        .I3(bytes_sent[28]),
        .O(i__carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7
       (.I0(s2mm_fsm_state2[27]),
        .I1(bytes_sent[27]),
        .I2(s2mm_fsm_state2[26]),
        .I3(bytes_sent[26]),
        .O(i__carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8
       (.I0(s2mm_fsm_state2[25]),
        .I1(bytes_sent[25]),
        .I2(s2mm_fsm_state2[24]),
        .I3(bytes_sent[24]),
        .O(i__carry__1_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_1
       (.I0(bytes_sent[15]),
        .I1(s2mm_fsm_state2[15]),
        .I2(bytes_sent[14]),
        .I3(s2mm_fsm_state2[14]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_2
       (.I0(bytes_sent[13]),
        .I1(s2mm_fsm_state2[13]),
        .I2(bytes_sent[12]),
        .I3(s2mm_fsm_state2[12]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3
       (.I0(bytes_sent[11]),
        .I1(s2mm_fsm_state2[11]),
        .I2(bytes_sent[10]),
        .I3(s2mm_fsm_state2[10]),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_4
       (.I0(bytes_sent[9]),
        .I1(s2mm_fsm_state2[9]),
        .I2(bytes_sent[8]),
        .I3(s2mm_fsm_state2[8]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(s2mm_fsm_state2[15]),
        .I1(bytes_sent[15]),
        .I2(s2mm_fsm_state2[14]),
        .I3(bytes_sent[14]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(s2mm_fsm_state2[13]),
        .I1(bytes_sent[13]),
        .I2(s2mm_fsm_state2[12]),
        .I3(bytes_sent[12]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(s2mm_fsm_state2[11]),
        .I1(bytes_sent[11]),
        .I2(s2mm_fsm_state2[10]),
        .I3(bytes_sent[10]),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(s2mm_fsm_state2[9]),
        .I1(bytes_sent[9]),
        .I2(s2mm_fsm_state2[8]),
        .I3(bytes_sent[8]),
        .O(i__carry_i_8_n_0));
  CARRY4 m_axis_s2mm_cmd_tdata0_carry
       (.CI(1'b0),
        .CO({m_axis_s2mm_cmd_tdata0_carry_n_0,m_axis_s2mm_cmd_tdata0_carry_n_1,m_axis_s2mm_cmd_tdata0_carry_n_2,m_axis_s2mm_cmd_tdata0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(start_address[3:0]),
        .O({m_axis_s2mm_cmd_tdata[3:1],NLW_m_axis_s2mm_cmd_tdata0_carry_O_UNCONNECTED[0]}),
        .S({m_axis_s2mm_cmd_tdata0_carry_i_1_n_0,m_axis_s2mm_cmd_tdata0_carry_i_2_n_0,m_axis_s2mm_cmd_tdata0_carry_i_3_n_0,m_axis_s2mm_cmd_tdata0_carry_i_4_n_0}));
  CARRY4 m_axis_s2mm_cmd_tdata0_carry__0
       (.CI(m_axis_s2mm_cmd_tdata0_carry_n_0),
        .CO({m_axis_s2mm_cmd_tdata0_carry__0_n_0,m_axis_s2mm_cmd_tdata0_carry__0_n_1,m_axis_s2mm_cmd_tdata0_carry__0_n_2,m_axis_s2mm_cmd_tdata0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(start_address[7:4]),
        .O(m_axis_s2mm_cmd_tdata[7:4]),
        .S({m_axis_s2mm_cmd_tdata0_carry__0_i_1_n_0,m_axis_s2mm_cmd_tdata0_carry__0_i_2_n_0,m_axis_s2mm_cmd_tdata0_carry__0_i_3_n_0,m_axis_s2mm_cmd_tdata0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    m_axis_s2mm_cmd_tdata0_carry__0_i_1
       (.I0(start_address[7]),
        .I1(s2mm_addr[15]),
        .O(m_axis_s2mm_cmd_tdata0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    m_axis_s2mm_cmd_tdata0_carry__0_i_2
       (.I0(start_address[6]),
        .I1(s2mm_addr[14]),
        .O(m_axis_s2mm_cmd_tdata0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    m_axis_s2mm_cmd_tdata0_carry__0_i_3
       (.I0(start_address[5]),
        .I1(s2mm_addr[13]),
        .O(m_axis_s2mm_cmd_tdata0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    m_axis_s2mm_cmd_tdata0_carry__0_i_4
       (.I0(start_address[4]),
        .I1(s2mm_addr[12]),
        .O(m_axis_s2mm_cmd_tdata0_carry__0_i_4_n_0));
  CARRY4 m_axis_s2mm_cmd_tdata0_carry__1
       (.CI(m_axis_s2mm_cmd_tdata0_carry__0_n_0),
        .CO({m_axis_s2mm_cmd_tdata0_carry__1_n_0,m_axis_s2mm_cmd_tdata0_carry__1_n_1,m_axis_s2mm_cmd_tdata0_carry__1_n_2,m_axis_s2mm_cmd_tdata0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(start_address[11:8]),
        .O(m_axis_s2mm_cmd_tdata[11:8]),
        .S({m_axis_s2mm_cmd_tdata0_carry__1_i_1_n_0,m_axis_s2mm_cmd_tdata0_carry__1_i_2_n_0,m_axis_s2mm_cmd_tdata0_carry__1_i_3_n_0,m_axis_s2mm_cmd_tdata0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    m_axis_s2mm_cmd_tdata0_carry__1_i_1
       (.I0(start_address[11]),
        .I1(s2mm_addr[19]),
        .O(m_axis_s2mm_cmd_tdata0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    m_axis_s2mm_cmd_tdata0_carry__1_i_2
       (.I0(start_address[10]),
        .I1(s2mm_addr[18]),
        .O(m_axis_s2mm_cmd_tdata0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    m_axis_s2mm_cmd_tdata0_carry__1_i_3
       (.I0(start_address[9]),
        .I1(s2mm_addr[17]),
        .O(m_axis_s2mm_cmd_tdata0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    m_axis_s2mm_cmd_tdata0_carry__1_i_4
       (.I0(start_address[8]),
        .I1(s2mm_addr[16]),
        .O(m_axis_s2mm_cmd_tdata0_carry__1_i_4_n_0));
  CARRY4 m_axis_s2mm_cmd_tdata0_carry__2
       (.CI(m_axis_s2mm_cmd_tdata0_carry__1_n_0),
        .CO({m_axis_s2mm_cmd_tdata0_carry__2_n_0,m_axis_s2mm_cmd_tdata0_carry__2_n_1,m_axis_s2mm_cmd_tdata0_carry__2_n_2,m_axis_s2mm_cmd_tdata0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(start_address[15:12]),
        .O(m_axis_s2mm_cmd_tdata[15:12]),
        .S({m_axis_s2mm_cmd_tdata0_carry__2_i_1_n_0,m_axis_s2mm_cmd_tdata0_carry__2_i_2_n_0,m_axis_s2mm_cmd_tdata0_carry__2_i_3_n_0,m_axis_s2mm_cmd_tdata0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    m_axis_s2mm_cmd_tdata0_carry__2_i_1
       (.I0(start_address[15]),
        .I1(s2mm_addr[23]),
        .O(m_axis_s2mm_cmd_tdata0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    m_axis_s2mm_cmd_tdata0_carry__2_i_2
       (.I0(start_address[14]),
        .I1(s2mm_addr[22]),
        .O(m_axis_s2mm_cmd_tdata0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    m_axis_s2mm_cmd_tdata0_carry__2_i_3
       (.I0(start_address[13]),
        .I1(s2mm_addr[21]),
        .O(m_axis_s2mm_cmd_tdata0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    m_axis_s2mm_cmd_tdata0_carry__2_i_4
       (.I0(start_address[12]),
        .I1(s2mm_addr[20]),
        .O(m_axis_s2mm_cmd_tdata0_carry__2_i_4_n_0));
  CARRY4 m_axis_s2mm_cmd_tdata0_carry__3
       (.CI(m_axis_s2mm_cmd_tdata0_carry__2_n_0),
        .CO({m_axis_s2mm_cmd_tdata0_carry__3_n_0,m_axis_s2mm_cmd_tdata0_carry__3_n_1,m_axis_s2mm_cmd_tdata0_carry__3_n_2,m_axis_s2mm_cmd_tdata0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(start_address[19:16]),
        .O(m_axis_s2mm_cmd_tdata[19:16]),
        .S({m_axis_s2mm_cmd_tdata0_carry__3_i_1_n_0,m_axis_s2mm_cmd_tdata0_carry__3_i_2_n_0,m_axis_s2mm_cmd_tdata0_carry__3_i_3_n_0,m_axis_s2mm_cmd_tdata0_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    m_axis_s2mm_cmd_tdata0_carry__3_i_1
       (.I0(start_address[19]),
        .I1(s2mm_addr[27]),
        .O(m_axis_s2mm_cmd_tdata0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    m_axis_s2mm_cmd_tdata0_carry__3_i_2
       (.I0(start_address[18]),
        .I1(s2mm_addr[26]),
        .O(m_axis_s2mm_cmd_tdata0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    m_axis_s2mm_cmd_tdata0_carry__3_i_3
       (.I0(start_address[17]),
        .I1(s2mm_addr[25]),
        .O(m_axis_s2mm_cmd_tdata0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    m_axis_s2mm_cmd_tdata0_carry__3_i_4
       (.I0(start_address[16]),
        .I1(s2mm_addr[24]),
        .O(m_axis_s2mm_cmd_tdata0_carry__3_i_4_n_0));
  CARRY4 m_axis_s2mm_cmd_tdata0_carry__4
       (.CI(m_axis_s2mm_cmd_tdata0_carry__3_n_0),
        .CO({NLW_m_axis_s2mm_cmd_tdata0_carry__4_CO_UNCONNECTED[3],m_axis_s2mm_cmd_tdata0_carry__4_n_1,m_axis_s2mm_cmd_tdata0_carry__4_n_2,m_axis_s2mm_cmd_tdata0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,start_address[22:20]}),
        .O(m_axis_s2mm_cmd_tdata[23:20]),
        .S({m_axis_s2mm_cmd_tdata0_carry__4_i_1_n_0,m_axis_s2mm_cmd_tdata0_carry__4_i_2_n_0,m_axis_s2mm_cmd_tdata0_carry__4_i_3_n_0,m_axis_s2mm_cmd_tdata0_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    m_axis_s2mm_cmd_tdata0_carry__4_i_1
       (.I0(start_address[23]),
        .I1(s2mm_addr[31]),
        .O(m_axis_s2mm_cmd_tdata0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    m_axis_s2mm_cmd_tdata0_carry__4_i_2
       (.I0(start_address[22]),
        .I1(s2mm_addr[30]),
        .O(m_axis_s2mm_cmd_tdata0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    m_axis_s2mm_cmd_tdata0_carry__4_i_3
       (.I0(start_address[21]),
        .I1(s2mm_addr[29]),
        .O(m_axis_s2mm_cmd_tdata0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    m_axis_s2mm_cmd_tdata0_carry__4_i_4
       (.I0(start_address[20]),
        .I1(s2mm_addr[28]),
        .O(m_axis_s2mm_cmd_tdata0_carry__4_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    m_axis_s2mm_cmd_tdata0_carry_i_1
       (.I0(start_address[3]),
        .I1(s2mm_addr[11]),
        .O(m_axis_s2mm_cmd_tdata0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    m_axis_s2mm_cmd_tdata0_carry_i_2
       (.I0(start_address[2]),
        .I1(s2mm_addr[10]),
        .O(m_axis_s2mm_cmd_tdata0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    m_axis_s2mm_cmd_tdata0_carry_i_3
       (.I0(start_address[1]),
        .I1(s2mm_addr[9]),
        .O(m_axis_s2mm_cmd_tdata0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    m_axis_s2mm_cmd_tdata0_carry_i_4
       (.I0(start_address[0]),
        .I1(s2mm_addr[8]),
        .O(m_axis_s2mm_cmd_tdata0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_s2mm_cmd_tdata[40]_INST_0 
       (.I0(start_address[0]),
        .I1(s2mm_addr[8]),
        .O(m_axis_s2mm_cmd_tdata[0]));
  FDCE m_axis_s2mm_cmd_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_ACQ_i_2_n_0),
        .D(\FSM_onehot_s2mm_fsm_state_reg_n_0_[3] ),
        .Q(m_axis_s2mm_cmd_tvalid));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    reset_ACQ_i_1
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_s2mm_fsm_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_s2mm_fsm_state_reg_n_0_[4] ),
        .I3(data_tvalid_int),
        .I4(error_ACQ_int),
        .I5(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .O(reset_ACQ_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_ACQ_i_2
       (.I0(resetn),
        .O(reset_ACQ_i_2_n_0));
  FDCE reset_ACQ_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_ACQ_i_2_n_0),
        .D(reset_ACQ_i_1_n_0),
        .Q(reset_ACQ));
  LUT2 #(
    .INIT(4'h2)) 
    \reset_counter[0]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[1] ),
        .I1(\reset_counter_reg_n_0_[0] ),
        .O(\reset_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \reset_counter[1]_i_1 
       (.I0(\reset_counter_reg_n_0_[0] ),
        .I1(\FSM_onehot_s2mm_fsm_state_reg_n_0_[1] ),
        .I2(\reset_counter_reg_n_0_[1] ),
        .O(reset_counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \reset_counter[2]_i_1 
       (.I0(\reset_counter_reg_n_0_[0] ),
        .I1(\reset_counter_reg_n_0_[1] ),
        .I2(\FSM_onehot_s2mm_fsm_state_reg_n_0_[1] ),
        .I3(\reset_counter_reg_n_0_[2] ),
        .O(reset_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \reset_counter[3]_i_1 
       (.I0(\reset_counter_reg_n_0_[1] ),
        .I1(\reset_counter_reg_n_0_[0] ),
        .I2(\reset_counter_reg_n_0_[2] ),
        .I3(\FSM_onehot_s2mm_fsm_state_reg_n_0_[1] ),
        .I4(\reset_counter_reg_n_0_[3] ),
        .O(reset_counter[3]));
  FDCE \reset_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_ACQ_i_2_n_0),
        .D(\reset_counter[0]_i_1_n_0 ),
        .Q(\reset_counter_reg_n_0_[0] ));
  FDCE \reset_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_ACQ_i_2_n_0),
        .D(reset_counter[1]),
        .Q(\reset_counter_reg_n_0_[1] ));
  FDCE \reset_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_ACQ_i_2_n_0),
        .D(reset_counter[2]),
        .Q(\reset_counter_reg_n_0_[2] ));
  FDCE \reset_counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_ACQ_i_2_n_0),
        .D(reset_counter[3]),
        .Q(\reset_counter_reg_n_0_[3] ));
  CARRY4 s2mm_addr0_carry
       (.CI(1'b0),
        .CO({s2mm_addr0_carry_n_0,s2mm_addr0_carry_n_1,s2mm_addr0_carry_n_2,s2mm_addr0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s2mm_addr[9],1'b0}),
        .O(in9[11:8]),
        .S({s2mm_addr[11:10],s2mm_addr0_carry_i_1_n_0,s2mm_addr[8]}));
  CARRY4 s2mm_addr0_carry__0
       (.CI(s2mm_addr0_carry_n_0),
        .CO({s2mm_addr0_carry__0_n_0,s2mm_addr0_carry__0_n_1,s2mm_addr0_carry__0_n_2,s2mm_addr0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[15:12]),
        .S(s2mm_addr[15:12]));
  CARRY4 s2mm_addr0_carry__1
       (.CI(s2mm_addr0_carry__0_n_0),
        .CO({s2mm_addr0_carry__1_n_0,s2mm_addr0_carry__1_n_1,s2mm_addr0_carry__1_n_2,s2mm_addr0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[19:16]),
        .S(s2mm_addr[19:16]));
  CARRY4 s2mm_addr0_carry__2
       (.CI(s2mm_addr0_carry__1_n_0),
        .CO({s2mm_addr0_carry__2_n_0,s2mm_addr0_carry__2_n_1,s2mm_addr0_carry__2_n_2,s2mm_addr0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[23:20]),
        .S(s2mm_addr[23:20]));
  CARRY4 s2mm_addr0_carry__3
       (.CI(s2mm_addr0_carry__2_n_0),
        .CO({s2mm_addr0_carry__3_n_0,s2mm_addr0_carry__3_n_1,s2mm_addr0_carry__3_n_2,s2mm_addr0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[27:24]),
        .S(s2mm_addr[27:24]));
  CARRY4 s2mm_addr0_carry__4
       (.CI(s2mm_addr0_carry__3_n_0),
        .CO({NLW_s2mm_addr0_carry__4_CO_UNCONNECTED[3],s2mm_addr0_carry__4_n_1,s2mm_addr0_carry__4_n_2,s2mm_addr0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[31:28]),
        .S(s2mm_addr[31:28]));
  LUT1 #(
    .INIT(2'h1)) 
    s2mm_addr0_carry_i_1
       (.I0(s2mm_addr[9]),
        .O(s2mm_addr0_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s2mm_addr[10]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in9[10]),
        .O(s2mm_addr_1[10]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s2mm_addr[11]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in9[11]),
        .O(s2mm_addr_1[11]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s2mm_addr[12]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in9[12]),
        .O(s2mm_addr_1[12]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s2mm_addr[13]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in9[13]),
        .O(s2mm_addr_1[13]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s2mm_addr[14]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in9[14]),
        .O(s2mm_addr_1[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s2mm_addr[15]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in9[15]),
        .O(s2mm_addr_1[15]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s2mm_addr[16]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in9[16]),
        .O(s2mm_addr_1[16]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s2mm_addr[17]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in9[17]),
        .O(s2mm_addr_1[17]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s2mm_addr[18]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in9[18]),
        .O(s2mm_addr_1[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s2mm_addr[19]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in9[19]),
        .O(s2mm_addr_1[19]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s2mm_addr[20]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in9[20]),
        .O(s2mm_addr_1[20]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s2mm_addr[21]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in9[21]),
        .O(s2mm_addr_1[21]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s2mm_addr[22]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in9[22]),
        .O(s2mm_addr_1[22]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s2mm_addr[23]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in9[23]),
        .O(s2mm_addr_1[23]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s2mm_addr[24]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in9[24]),
        .O(s2mm_addr_1[24]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s2mm_addr[25]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in9[25]),
        .O(s2mm_addr_1[25]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s2mm_addr[26]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in9[26]),
        .O(s2mm_addr_1[26]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s2mm_addr[27]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in9[27]),
        .O(s2mm_addr_1[27]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s2mm_addr[28]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in9[28]),
        .O(s2mm_addr_1[28]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s2mm_addr[29]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in9[29]),
        .O(s2mm_addr_1[29]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s2mm_addr[30]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in9[30]),
        .O(s2mm_addr_1[30]));
  LUT3 #(
    .INIT(8'hFE)) 
    \s2mm_addr[31]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_s2mm_fsm_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_s2mm_fsm_state_reg_n_0_[0] ),
        .O(\s2mm_addr[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s2mm_addr[31]_i_2 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in9[31]),
        .O(s2mm_addr_1[31]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s2mm_addr[8]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in9[8]),
        .O(s2mm_addr_1[8]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s2mm_addr[9]_i_1 
       (.I0(\FSM_onehot_s2mm_fsm_state_reg_n_0_[5] ),
        .I1(in9[9]),
        .O(s2mm_addr_1[9]));
  FDCE \s2mm_addr_reg[10] 
       (.C(clk),
        .CE(\s2mm_addr[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(s2mm_addr_1[10]),
        .Q(s2mm_addr[10]));
  FDCE \s2mm_addr_reg[11] 
       (.C(clk),
        .CE(\s2mm_addr[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(s2mm_addr_1[11]),
        .Q(s2mm_addr[11]));
  FDCE \s2mm_addr_reg[12] 
       (.C(clk),
        .CE(\s2mm_addr[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(s2mm_addr_1[12]),
        .Q(s2mm_addr[12]));
  FDCE \s2mm_addr_reg[13] 
       (.C(clk),
        .CE(\s2mm_addr[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(s2mm_addr_1[13]),
        .Q(s2mm_addr[13]));
  FDCE \s2mm_addr_reg[14] 
       (.C(clk),
        .CE(\s2mm_addr[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(s2mm_addr_1[14]),
        .Q(s2mm_addr[14]));
  FDCE \s2mm_addr_reg[15] 
       (.C(clk),
        .CE(\s2mm_addr[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(s2mm_addr_1[15]),
        .Q(s2mm_addr[15]));
  FDCE \s2mm_addr_reg[16] 
       (.C(clk),
        .CE(\s2mm_addr[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(s2mm_addr_1[16]),
        .Q(s2mm_addr[16]));
  FDCE \s2mm_addr_reg[17] 
       (.C(clk),
        .CE(\s2mm_addr[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(s2mm_addr_1[17]),
        .Q(s2mm_addr[17]));
  FDCE \s2mm_addr_reg[18] 
       (.C(clk),
        .CE(\s2mm_addr[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(s2mm_addr_1[18]),
        .Q(s2mm_addr[18]));
  FDCE \s2mm_addr_reg[19] 
       (.C(clk),
        .CE(\s2mm_addr[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(s2mm_addr_1[19]),
        .Q(s2mm_addr[19]));
  FDCE \s2mm_addr_reg[20] 
       (.C(clk),
        .CE(\s2mm_addr[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(s2mm_addr_1[20]),
        .Q(s2mm_addr[20]));
  FDCE \s2mm_addr_reg[21] 
       (.C(clk),
        .CE(\s2mm_addr[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(s2mm_addr_1[21]),
        .Q(s2mm_addr[21]));
  FDCE \s2mm_addr_reg[22] 
       (.C(clk),
        .CE(\s2mm_addr[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(s2mm_addr_1[22]),
        .Q(s2mm_addr[22]));
  FDCE \s2mm_addr_reg[23] 
       (.C(clk),
        .CE(\s2mm_addr[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(s2mm_addr_1[23]),
        .Q(s2mm_addr[23]));
  FDCE \s2mm_addr_reg[24] 
       (.C(clk),
        .CE(\s2mm_addr[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(s2mm_addr_1[24]),
        .Q(s2mm_addr[24]));
  FDCE \s2mm_addr_reg[25] 
       (.C(clk),
        .CE(\s2mm_addr[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(s2mm_addr_1[25]),
        .Q(s2mm_addr[25]));
  FDCE \s2mm_addr_reg[26] 
       (.C(clk),
        .CE(\s2mm_addr[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(s2mm_addr_1[26]),
        .Q(s2mm_addr[26]));
  FDCE \s2mm_addr_reg[27] 
       (.C(clk),
        .CE(\s2mm_addr[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(s2mm_addr_1[27]),
        .Q(s2mm_addr[27]));
  FDCE \s2mm_addr_reg[28] 
       (.C(clk),
        .CE(\s2mm_addr[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(s2mm_addr_1[28]),
        .Q(s2mm_addr[28]));
  FDCE \s2mm_addr_reg[29] 
       (.C(clk),
        .CE(\s2mm_addr[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(s2mm_addr_1[29]),
        .Q(s2mm_addr[29]));
  FDCE \s2mm_addr_reg[30] 
       (.C(clk),
        .CE(\s2mm_addr[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(s2mm_addr_1[30]),
        .Q(s2mm_addr[30]));
  FDCE \s2mm_addr_reg[31] 
       (.C(clk),
        .CE(\s2mm_addr[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(s2mm_addr_1[31]),
        .Q(s2mm_addr[31]));
  FDCE \s2mm_addr_reg[8] 
       (.C(clk),
        .CE(\s2mm_addr[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(s2mm_addr_1[8]),
        .Q(s2mm_addr[8]));
  FDCE \s2mm_addr_reg[9] 
       (.C(clk),
        .CE(\s2mm_addr[31]_i_1_n_0 ),
        .CLR(reset_ACQ_i_2_n_0),
        .D(s2mm_addr_1[9]),
        .Q(s2mm_addr[9]));
  CARRY4 \s2mm_fsm_state1_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\s2mm_fsm_state1_inferred__1/i__carry_n_0 ,\s2mm_fsm_state1_inferred__1/i__carry_n_1 ,\s2mm_fsm_state1_inferred__1/i__carry_n_2 ,\s2mm_fsm_state1_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_s2mm_fsm_state1_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  CARRY4 \s2mm_fsm_state1_inferred__1/i__carry__0 
       (.CI(\s2mm_fsm_state1_inferred__1/i__carry_n_0 ),
        .CO({\s2mm_fsm_state1_inferred__1/i__carry__0_n_0 ,\s2mm_fsm_state1_inferred__1/i__carry__0_n_1 ,\s2mm_fsm_state1_inferred__1/i__carry__0_n_2 ,\s2mm_fsm_state1_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(\NLW_s2mm_fsm_state1_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  CARRY4 \s2mm_fsm_state1_inferred__1/i__carry__1 
       (.CI(\s2mm_fsm_state1_inferred__1/i__carry__0_n_0 ),
        .CO({in7,\s2mm_fsm_state1_inferred__1/i__carry__1_n_1 ,\s2mm_fsm_state1_inferred__1/i__carry__1_n_2 ,\s2mm_fsm_state1_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}),
        .O(\NLW_s2mm_fsm_state1_inferred__1/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0,i__carry__1_i_8_n_0}));
  CARRY4 s2mm_fsm_state2_carry
       (.CI(1'b0),
        .CO({s2mm_fsm_state2_carry_n_0,s2mm_fsm_state2_carry_n_1,s2mm_fsm_state2_carry_n_2,s2mm_fsm_state2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({number_bytes[3:1],1'b0}),
        .O(s2mm_fsm_state2[11:8]),
        .S({s2mm_fsm_state2_carry_i_1_n_0,s2mm_fsm_state2_carry_i_2_n_0,s2mm_fsm_state2_carry_i_3_n_0,number_bytes[0]}));
  CARRY4 s2mm_fsm_state2_carry__0
       (.CI(s2mm_fsm_state2_carry_n_0),
        .CO({s2mm_fsm_state2_carry__0_n_0,s2mm_fsm_state2_carry__0_n_1,s2mm_fsm_state2_carry__0_n_2,s2mm_fsm_state2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(number_bytes[7:4]),
        .O(s2mm_fsm_state2[15:12]),
        .S({s2mm_fsm_state2_carry__0_i_1_n_0,s2mm_fsm_state2_carry__0_i_2_n_0,s2mm_fsm_state2_carry__0_i_3_n_0,s2mm_fsm_state2_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    s2mm_fsm_state2_carry__0_i_1
       (.I0(number_bytes[7]),
        .O(s2mm_fsm_state2_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s2mm_fsm_state2_carry__0_i_2
       (.I0(number_bytes[6]),
        .O(s2mm_fsm_state2_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s2mm_fsm_state2_carry__0_i_3
       (.I0(number_bytes[5]),
        .O(s2mm_fsm_state2_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s2mm_fsm_state2_carry__0_i_4
       (.I0(number_bytes[4]),
        .O(s2mm_fsm_state2_carry__0_i_4_n_0));
  CARRY4 s2mm_fsm_state2_carry__1
       (.CI(s2mm_fsm_state2_carry__0_n_0),
        .CO({s2mm_fsm_state2_carry__1_n_0,s2mm_fsm_state2_carry__1_n_1,s2mm_fsm_state2_carry__1_n_2,s2mm_fsm_state2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(number_bytes[11:8]),
        .O(s2mm_fsm_state2[19:16]),
        .S({s2mm_fsm_state2_carry__1_i_1_n_0,s2mm_fsm_state2_carry__1_i_2_n_0,s2mm_fsm_state2_carry__1_i_3_n_0,s2mm_fsm_state2_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    s2mm_fsm_state2_carry__1_i_1
       (.I0(number_bytes[11]),
        .O(s2mm_fsm_state2_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s2mm_fsm_state2_carry__1_i_2
       (.I0(number_bytes[10]),
        .O(s2mm_fsm_state2_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s2mm_fsm_state2_carry__1_i_3
       (.I0(number_bytes[9]),
        .O(s2mm_fsm_state2_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s2mm_fsm_state2_carry__1_i_4
       (.I0(number_bytes[8]),
        .O(s2mm_fsm_state2_carry__1_i_4_n_0));
  CARRY4 s2mm_fsm_state2_carry__2
       (.CI(s2mm_fsm_state2_carry__1_n_0),
        .CO({s2mm_fsm_state2_carry__2_n_0,s2mm_fsm_state2_carry__2_n_1,s2mm_fsm_state2_carry__2_n_2,s2mm_fsm_state2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(number_bytes[15:12]),
        .O(s2mm_fsm_state2[23:20]),
        .S({s2mm_fsm_state2_carry__2_i_1_n_0,s2mm_fsm_state2_carry__2_i_2_n_0,s2mm_fsm_state2_carry__2_i_3_n_0,s2mm_fsm_state2_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    s2mm_fsm_state2_carry__2_i_1
       (.I0(number_bytes[15]),
        .O(s2mm_fsm_state2_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s2mm_fsm_state2_carry__2_i_2
       (.I0(number_bytes[14]),
        .O(s2mm_fsm_state2_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s2mm_fsm_state2_carry__2_i_3
       (.I0(number_bytes[13]),
        .O(s2mm_fsm_state2_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s2mm_fsm_state2_carry__2_i_4
       (.I0(number_bytes[12]),
        .O(s2mm_fsm_state2_carry__2_i_4_n_0));
  CARRY4 s2mm_fsm_state2_carry__3
       (.CI(s2mm_fsm_state2_carry__2_n_0),
        .CO({s2mm_fsm_state2_carry__3_n_0,s2mm_fsm_state2_carry__3_n_1,s2mm_fsm_state2_carry__3_n_2,s2mm_fsm_state2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(number_bytes[19:16]),
        .O(s2mm_fsm_state2[27:24]),
        .S({s2mm_fsm_state2_carry__3_i_1_n_0,s2mm_fsm_state2_carry__3_i_2_n_0,s2mm_fsm_state2_carry__3_i_3_n_0,s2mm_fsm_state2_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    s2mm_fsm_state2_carry__3_i_1
       (.I0(number_bytes[19]),
        .O(s2mm_fsm_state2_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s2mm_fsm_state2_carry__3_i_2
       (.I0(number_bytes[18]),
        .O(s2mm_fsm_state2_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s2mm_fsm_state2_carry__3_i_3
       (.I0(number_bytes[17]),
        .O(s2mm_fsm_state2_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s2mm_fsm_state2_carry__3_i_4
       (.I0(number_bytes[16]),
        .O(s2mm_fsm_state2_carry__3_i_4_n_0));
  CARRY4 s2mm_fsm_state2_carry__4
       (.CI(s2mm_fsm_state2_carry__3_n_0),
        .CO({NLW_s2mm_fsm_state2_carry__4_CO_UNCONNECTED[3],s2mm_fsm_state2_carry__4_n_1,s2mm_fsm_state2_carry__4_n_2,s2mm_fsm_state2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,number_bytes[22:20]}),
        .O(s2mm_fsm_state2[31:28]),
        .S({s2mm_fsm_state2_carry__4_i_1_n_0,s2mm_fsm_state2_carry__4_i_2_n_0,s2mm_fsm_state2_carry__4_i_3_n_0,s2mm_fsm_state2_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    s2mm_fsm_state2_carry__4_i_1
       (.I0(number_bytes[23]),
        .O(s2mm_fsm_state2_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s2mm_fsm_state2_carry__4_i_2
       (.I0(number_bytes[22]),
        .O(s2mm_fsm_state2_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s2mm_fsm_state2_carry__4_i_3
       (.I0(number_bytes[21]),
        .O(s2mm_fsm_state2_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s2mm_fsm_state2_carry__4_i_4
       (.I0(number_bytes[20]),
        .O(s2mm_fsm_state2_carry__4_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s2mm_fsm_state2_carry_i_1
       (.I0(number_bytes[3]),
        .O(s2mm_fsm_state2_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s2mm_fsm_state2_carry_i_2
       (.I0(number_bytes[2]),
        .O(s2mm_fsm_state2_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s2mm_fsm_state2_carry_i_3
       (.I0(number_bytes[1]),
        .O(s2mm_fsm_state2_carry_i_3_n_0));
  FDCE start_new_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_ACQ_i_2_n_0),
        .D(start_sig),
        .Q(start_new));
  FDCE start_old_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_ACQ_i_2_n_0),
        .D(start_new),
        .Q(start_old));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Acquisition_top
   (clk,
    resetn,
    start_sig,
    number_bytes,
    channel_sel,
    ADC1_data,
    ADC2_data,
    FIFO_S2MM_data_count,
    start_address,
    reset_ACQ,
    status_out,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_s2mm_cmd_tdata,
    m_axis_s2mm_cmd_tready,
    m_axis_s2mm_cmd_tvalid,
    s_axis_s2mm_sts_tdata,
    s_axis_s2mm_sts_tready,
    s_axis_s2mm_sts_tvalid);
  input clk;
  input resetn;
  input start_sig;
  input [31:0]number_bytes;
  input [1:0]channel_sel;
  input [15:0]ADC1_data;
  input [15:0]ADC2_data;
  input [31:0]FIFO_S2MM_data_count;
  input [31:0]start_address;
  output reset_ACQ;
  output [1:0]status_out;
  output m_axis_tvalid;
  input m_axis_tready;
  output [63:0]m_axis_tdata;
  output [71:0]m_axis_s2mm_cmd_tdata;
  input m_axis_s2mm_cmd_tready;
  output m_axis_s2mm_cmd_tvalid;
  input [7:0]s_axis_s2mm_sts_tdata;
  output s_axis_s2mm_sts_tready;
  input s_axis_s2mm_sts_tvalid;

  wire \<const0> ;
  wire \<const1> ;
  wire [15:0]ADC1_data;
  wire [15:0]ADC2_data;
  wire [31:0]FIFO_S2MM_data_count;
  wire [1:0]channel_sel;
  wire clk;
  wire [63:40]\^m_axis_s2mm_cmd_tdata ;
  wire m_axis_s2mm_cmd_tvalid;
  wire [63:0]m_axis_tdata;
  wire [63:0]m_axis_tdata_ADC1;
  wire [63:0]m_axis_tdata_ADC1_2;
  wire [63:0]m_axis_tdata_ADC2;
  wire m_axis_tvalid;
  wire m_axis_tvalid_ADC1;
  wire m_axis_tvalid_ADC1_2;
  wire m_axis_tvalid_ADC2;
  wire [31:0]number_bytes;
  wire reset_ACQ;
  wire resetn;
  wire [7:0]s_axis_s2mm_sts_tdata;
  wire s_axis_s2mm_sts_tvalid;
  wire s_axis_tvalid;
  wire [31:0]start_address;
  wire start_sig;
  wire [1:0]status_out;
  wire NLW_ADC1_2_converter_s_axis_tready_UNCONNECTED;
  wire NLW_ADC1_converter_s_axis_tready_UNCONNECTED;
  wire NLW_ADC2_converter_s_axis_tready_UNCONNECTED;

  assign m_axis_s2mm_cmd_tdata[71] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[70] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[69] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[68] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[67] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[66] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[65] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[64] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[63:40] = \^m_axis_s2mm_cmd_tdata [63:40];
  assign m_axis_s2mm_cmd_tdata[39:32] = start_address[7:0];
  assign m_axis_s2mm_cmd_tdata[31] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[30] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[29] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[28] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[27] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[26] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[25] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[24] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[23] = \<const1> ;
  assign m_axis_s2mm_cmd_tdata[22] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[21] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[20] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[19] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[18] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[17] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[16] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[15] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[14] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[13] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[12] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[11] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[10] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[9] = \<const1> ;
  assign m_axis_s2mm_cmd_tdata[8] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[7] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[6] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[5] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[4] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[3] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[2] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[1] = \<const0> ;
  assign m_axis_s2mm_cmd_tdata[0] = \<const0> ;
  assign s_axis_s2mm_sts_tready = \<const1> ;
  (* CHECK_LICENSE_TYPE = "axis_dwidth_converter_32to64,axis_dwidth_converter_v1_1_18_axis_dwidth_converter,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "axis_dwidth_converter_v1_1_18_axis_dwidth_converter,Vivado 2019.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_32to64 ADC1_2_converter
       (.aclk(clk),
        .aresetn(reset_ACQ),
        .m_axis_tdata(m_axis_tdata_ADC1_2),
        .m_axis_tready(1'b1),
        .m_axis_tvalid(m_axis_tvalid_ADC1_2),
        .s_axis_tdata({ADC1_data,ADC2_data}),
        .s_axis_tready(NLW_ADC1_2_converter_s_axis_tready_UNCONNECTED),
        .s_axis_tvalid(s_axis_tvalid));
  (* CHECK_LICENSE_TYPE = "axis_dwidth_converter_16to64,axis_dwidth_converter_v1_1_18_axis_dwidth_converter,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "axis_dwidth_converter_v1_1_18_axis_dwidth_converter,Vivado 2019.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_16to64__1 ADC1_converter
       (.aclk(clk),
        .aresetn(reset_ACQ),
        .m_axis_tdata(m_axis_tdata_ADC1),
        .m_axis_tready(1'b1),
        .m_axis_tvalid(m_axis_tvalid_ADC1),
        .s_axis_tdata(ADC1_data),
        .s_axis_tready(NLW_ADC1_converter_s_axis_tready_UNCONNECTED),
        .s_axis_tvalid(s_axis_tvalid));
  (* CHECK_LICENSE_TYPE = "axis_dwidth_converter_16to64,axis_dwidth_converter_v1_1_18_axis_dwidth_converter,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "axis_dwidth_converter_v1_1_18_axis_dwidth_converter,Vivado 2019.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_16to64 ADC2_converter
       (.aclk(clk),
        .aresetn(reset_ACQ),
        .m_axis_tdata(m_axis_tdata_ADC2),
        .m_axis_tready(1'b1),
        .m_axis_tvalid(m_axis_tvalid_ADC2),
        .s_axis_tdata(ADC2_data),
        .s_axis_tready(NLW_ADC2_converter_s_axis_tready_UNCONNECTED),
        .s_axis_tvalid(s_axis_tvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Acquisition_FSM_2 ADC_FSM
       (.FIFO_S2MM_data_count(FIFO_S2MM_data_count[31:2]),
        .clk(clk),
        .m_axis_s2mm_cmd_tdata(\^m_axis_s2mm_cmd_tdata ),
        .m_axis_s2mm_cmd_tvalid(m_axis_s2mm_cmd_tvalid),
        .number_bytes(number_bytes[31:8]),
        .reset_ACQ(reset_ACQ),
        .resetn(resetn),
        .s_axis_s2mm_sts_tdata(s_axis_s2mm_sts_tdata),
        .s_axis_s2mm_sts_tvalid(s_axis_s2mm_sts_tvalid),
        .s_axis_tvalid(s_axis_tvalid),
        .start_address(start_address[31:8]),
        .start_sig(start_sig),
        .status_out(status_out));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[0]),
        .I1(m_axis_tdata_ADC1[0]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[0]),
        .O(m_axis_tdata[0]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[10]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[10]),
        .I1(m_axis_tdata_ADC1[10]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[10]),
        .O(m_axis_tdata[10]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[11]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[11]),
        .I1(m_axis_tdata_ADC1[11]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[11]),
        .O(m_axis_tdata[11]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[12]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[12]),
        .I1(m_axis_tdata_ADC1[12]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[12]),
        .O(m_axis_tdata[12]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[13]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[13]),
        .I1(m_axis_tdata_ADC1[13]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[13]),
        .O(m_axis_tdata[13]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[14]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[14]),
        .I1(m_axis_tdata_ADC1[14]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[14]),
        .O(m_axis_tdata[14]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[15]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[15]),
        .I1(m_axis_tdata_ADC1[15]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[15]),
        .O(m_axis_tdata[15]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[16]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[16]),
        .I1(m_axis_tdata_ADC1[16]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[16]),
        .O(m_axis_tdata[16]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[17]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[17]),
        .I1(m_axis_tdata_ADC1[17]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[17]),
        .O(m_axis_tdata[17]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[18]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[18]),
        .I1(m_axis_tdata_ADC1[18]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[18]),
        .O(m_axis_tdata[18]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[19]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[19]),
        .I1(m_axis_tdata_ADC1[19]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[19]),
        .O(m_axis_tdata[19]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[1]),
        .I1(m_axis_tdata_ADC1[1]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[1]),
        .O(m_axis_tdata[1]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[20]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[20]),
        .I1(m_axis_tdata_ADC1[20]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[20]),
        .O(m_axis_tdata[20]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[21]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[21]),
        .I1(m_axis_tdata_ADC1[21]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[21]),
        .O(m_axis_tdata[21]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[22]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[22]),
        .I1(m_axis_tdata_ADC1[22]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[22]),
        .O(m_axis_tdata[22]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[23]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[23]),
        .I1(m_axis_tdata_ADC1[23]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[23]),
        .O(m_axis_tdata[23]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[24]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[24]),
        .I1(m_axis_tdata_ADC1[24]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[24]),
        .O(m_axis_tdata[24]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[25]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[25]),
        .I1(m_axis_tdata_ADC1[25]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[25]),
        .O(m_axis_tdata[25]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[26]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[26]),
        .I1(m_axis_tdata_ADC1[26]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[26]),
        .O(m_axis_tdata[26]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[27]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[27]),
        .I1(m_axis_tdata_ADC1[27]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[27]),
        .O(m_axis_tdata[27]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[28]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[28]),
        .I1(m_axis_tdata_ADC1[28]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[28]),
        .O(m_axis_tdata[28]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[29]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[29]),
        .I1(m_axis_tdata_ADC1[29]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[29]),
        .O(m_axis_tdata[29]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[2]),
        .I1(m_axis_tdata_ADC1[2]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[2]),
        .O(m_axis_tdata[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[30]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[30]),
        .I1(m_axis_tdata_ADC1[30]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[30]),
        .O(m_axis_tdata[30]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[31]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[31]),
        .I1(m_axis_tdata_ADC1[31]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[31]),
        .O(m_axis_tdata[31]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[32]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[32]),
        .I1(m_axis_tdata_ADC1[32]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[32]),
        .O(m_axis_tdata[32]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[33]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[33]),
        .I1(m_axis_tdata_ADC1[33]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[33]),
        .O(m_axis_tdata[33]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[34]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[34]),
        .I1(m_axis_tdata_ADC1[34]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[34]),
        .O(m_axis_tdata[34]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[35]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[35]),
        .I1(m_axis_tdata_ADC1[35]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[35]),
        .O(m_axis_tdata[35]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[36]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[36]),
        .I1(m_axis_tdata_ADC1[36]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[36]),
        .O(m_axis_tdata[36]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[37]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[37]),
        .I1(m_axis_tdata_ADC1[37]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[37]),
        .O(m_axis_tdata[37]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[38]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[38]),
        .I1(m_axis_tdata_ADC1[38]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[38]),
        .O(m_axis_tdata[38]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[39]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[39]),
        .I1(m_axis_tdata_ADC1[39]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[39]),
        .O(m_axis_tdata[39]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[3]),
        .I1(m_axis_tdata_ADC1[3]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[3]),
        .O(m_axis_tdata[3]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[40]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[40]),
        .I1(m_axis_tdata_ADC1[40]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[40]),
        .O(m_axis_tdata[40]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[41]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[41]),
        .I1(m_axis_tdata_ADC1[41]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[41]),
        .O(m_axis_tdata[41]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[42]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[42]),
        .I1(m_axis_tdata_ADC1[42]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[42]),
        .O(m_axis_tdata[42]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[43]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[43]),
        .I1(m_axis_tdata_ADC1[43]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[43]),
        .O(m_axis_tdata[43]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[44]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[44]),
        .I1(m_axis_tdata_ADC1[44]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[44]),
        .O(m_axis_tdata[44]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[45]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[45]),
        .I1(m_axis_tdata_ADC1[45]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[45]),
        .O(m_axis_tdata[45]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[46]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[46]),
        .I1(m_axis_tdata_ADC1[46]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[46]),
        .O(m_axis_tdata[46]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[47]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[47]),
        .I1(m_axis_tdata_ADC1[47]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[47]),
        .O(m_axis_tdata[47]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[48]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[48]),
        .I1(m_axis_tdata_ADC1[48]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[48]),
        .O(m_axis_tdata[48]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[49]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[49]),
        .I1(m_axis_tdata_ADC1[49]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[49]),
        .O(m_axis_tdata[49]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[4]),
        .I1(m_axis_tdata_ADC1[4]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[4]),
        .O(m_axis_tdata[4]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[50]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[50]),
        .I1(m_axis_tdata_ADC1[50]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[50]),
        .O(m_axis_tdata[50]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[51]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[51]),
        .I1(m_axis_tdata_ADC1[51]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[51]),
        .O(m_axis_tdata[51]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[52]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[52]),
        .I1(m_axis_tdata_ADC1[52]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[52]),
        .O(m_axis_tdata[52]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[53]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[53]),
        .I1(m_axis_tdata_ADC1[53]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[53]),
        .O(m_axis_tdata[53]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[54]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[54]),
        .I1(m_axis_tdata_ADC1[54]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[54]),
        .O(m_axis_tdata[54]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[55]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[55]),
        .I1(m_axis_tdata_ADC1[55]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[55]),
        .O(m_axis_tdata[55]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[56]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[56]),
        .I1(m_axis_tdata_ADC1[56]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[56]),
        .O(m_axis_tdata[56]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[57]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[57]),
        .I1(m_axis_tdata_ADC1[57]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[57]),
        .O(m_axis_tdata[57]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[58]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[58]),
        .I1(m_axis_tdata_ADC1[58]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[58]),
        .O(m_axis_tdata[58]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[59]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[59]),
        .I1(m_axis_tdata_ADC1[59]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[59]),
        .O(m_axis_tdata[59]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[5]),
        .I1(m_axis_tdata_ADC1[5]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[5]),
        .O(m_axis_tdata[5]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[60]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[60]),
        .I1(m_axis_tdata_ADC1[60]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[60]),
        .O(m_axis_tdata[60]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[61]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[61]),
        .I1(m_axis_tdata_ADC1[61]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[61]),
        .O(m_axis_tdata[61]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[62]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[62]),
        .I1(m_axis_tdata_ADC1[62]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[62]),
        .O(m_axis_tdata[62]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[63]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[63]),
        .I1(m_axis_tdata_ADC1[63]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[63]),
        .O(m_axis_tdata[63]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[6]),
        .I1(m_axis_tdata_ADC1[6]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[6]),
        .O(m_axis_tdata[6]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[7]),
        .I1(m_axis_tdata_ADC1[7]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[7]),
        .O(m_axis_tdata[7]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[8]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[8]),
        .I1(m_axis_tdata_ADC1[8]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[8]),
        .O(m_axis_tdata[8]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \m_axis_tdata[9]_INST_0 
       (.I0(m_axis_tdata_ADC1_2[9]),
        .I1(m_axis_tdata_ADC1[9]),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tdata_ADC2[9]),
        .O(m_axis_tdata[9]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    m_axis_tvalid_INST_0
       (.I0(m_axis_tvalid_ADC1_2),
        .I1(m_axis_tvalid_ADC1),
        .I2(channel_sel[0]),
        .I3(channel_sel[1]),
        .I4(m_axis_tvalid_ADC2),
        .O(m_axis_tvalid));
endmodule

(* CHECK_LICENSE_TYPE = "axis_dwidth_converter_16to64,axis_dwidth_converter_v1_1_18_axis_dwidth_converter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axis_dwidth_converter_v1_1_18_axis_dwidth_converter,Vivado 2019.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_16to64
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLKIF, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input [15:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output [63:0]m_axis_tdata;

  wire aclk;
  wire aresetn;
  wire [63:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [15:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_18_axis_dwidth_converter inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid),
        .\state_reg[0] (s_axis_tready),
        .\state_reg[1] (m_axis_tvalid));
endmodule

(* CHECK_LICENSE_TYPE = "axis_dwidth_converter_16to64,axis_dwidth_converter_v1_1_18_axis_dwidth_converter,{}" *) (* ORIG_REF_NAME = "axis_dwidth_converter_16to64" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "axis_dwidth_converter_v1_1_18_axis_dwidth_converter,Vivado 2019.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_16to64__1
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLKIF, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input [15:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output [63:0]m_axis_tdata;

  wire aclk;
  wire aresetn;
  wire [63:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [15:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_18_axis_dwidth_converter_0 inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid),
        .\state_reg[0] (s_axis_tready),
        .\state_reg[1] (m_axis_tvalid));
endmodule

(* CHECK_LICENSE_TYPE = "axis_dwidth_converter_32to64,axis_dwidth_converter_v1_1_18_axis_dwidth_converter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axis_dwidth_converter_v1_1_18_axis_dwidth_converter,Vivado 2019.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_32to64
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLKIF, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output [63:0]m_axis_tdata;

  wire aclk;
  wire aresetn;
  wire [63:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [31:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_18_axis_dwidth_converter__parameterized0 inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid),
        .\state_reg[0] (s_axis_tready),
        .\state_reg[1] (m_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_18_axis_dwidth_converter
   (\state_reg[0] ,
    \state_reg[1] ,
    m_axis_tdata,
    m_axis_tready,
    aclk,
    s_axis_tvalid,
    s_axis_tdata,
    aresetn);
  output \state_reg[0] ;
  output \state_reg[1] ;
  output [63:0]m_axis_tdata;
  input m_axis_tready;
  input aclk;
  input s_axis_tvalid;
  input [15:0]s_axis_tdata;
  input aresetn;

  wire aclk;
  wire areset_r;
  wire aresetn;
  wire [63:0]m_axis_tdata;
  wire m_axis_tready;
  wire p_0_in;
  wire [15:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire \state_reg[0] ;
  wire \state_reg[1] ;

  LUT1 #(
    .INIT(2'h1)) 
    areset_r_i_1
       (.I0(aresetn),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    areset_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(areset_r),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_18_axisc_upsizer \gen_upsizer_conversion.axisc_upsizer_0 
       (.E(\state_reg[0] ),
        .aclk(aclk),
        .areset_r(areset_r),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid),
        .\state_reg[1]_0 (\state_reg[1] ));
endmodule

(* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_18_axis_dwidth_converter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_18_axis_dwidth_converter_0
   (\state_reg[0] ,
    \state_reg[1] ,
    m_axis_tdata,
    m_axis_tready,
    aclk,
    s_axis_tvalid,
    s_axis_tdata,
    aresetn);
  output \state_reg[0] ;
  output \state_reg[1] ;
  output [63:0]m_axis_tdata;
  input m_axis_tready;
  input aclk;
  input s_axis_tvalid;
  input [15:0]s_axis_tdata;
  input aresetn;

  wire aclk;
  wire areset_r;
  wire aresetn;
  wire [63:0]m_axis_tdata;
  wire m_axis_tready;
  wire p_0_in;
  wire [15:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire \state_reg[0] ;
  wire \state_reg[1] ;

  LUT1 #(
    .INIT(2'h1)) 
    areset_r_i_1
       (.I0(aresetn),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    areset_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(areset_r),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_18_axisc_upsizer_1 \gen_upsizer_conversion.axisc_upsizer_0 
       (.E(\state_reg[0] ),
        .aclk(aclk),
        .areset_r(areset_r),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid),
        .\state_reg[1]_0 (\state_reg[1] ));
endmodule

(* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_18_axis_dwidth_converter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_18_axis_dwidth_converter__parameterized0
   (\state_reg[0] ,
    \state_reg[1] ,
    m_axis_tdata,
    m_axis_tready,
    aclk,
    s_axis_tvalid,
    s_axis_tdata,
    aresetn);
  output \state_reg[0] ;
  output \state_reg[1] ;
  output [63:0]m_axis_tdata;
  input m_axis_tready;
  input aclk;
  input s_axis_tvalid;
  input [31:0]s_axis_tdata;
  input aresetn;

  wire aclk;
  wire areset_r;
  wire aresetn;
  wire [63:0]m_axis_tdata;
  wire m_axis_tready;
  wire p_0_in;
  wire [31:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire \state_reg[0] ;
  wire \state_reg[1] ;

  LUT1 #(
    .INIT(2'h1)) 
    areset_r_i_1
       (.I0(aresetn),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    areset_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(areset_r),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_18_axisc_upsizer__parameterized0 \gen_upsizer_conversion.axisc_upsizer_0 
       (.E(\state_reg[0] ),
        .aclk(aclk),
        .areset_r(areset_r),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid),
        .\state_reg[1]_0 (\state_reg[1] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_18_axisc_upsizer
   (E,
    \state_reg[1]_0 ,
    m_axis_tdata,
    areset_r,
    m_axis_tready,
    aclk,
    s_axis_tvalid,
    s_axis_tdata);
  output [0:0]E;
  output \state_reg[1]_0 ;
  output [63:0]m_axis_tdata;
  input areset_r;
  input m_axis_tready;
  input aclk;
  input s_axis_tvalid;
  input [15:0]s_axis_tdata;

  wire [0:0]E;
  wire \acc_data[63]_i_1_n_0 ;
  wire aclk;
  wire areset_r;
  wire \gen_data_accumulator[1].acc_data[31]_i_1_n_0 ;
  wire \gen_data_accumulator[2].acc_data[47]_i_1_n_0 ;
  wire [63:0]m_axis_tdata;
  wire m_axis_tready;
  wire p_0_in;
  wire p_1_in2_in;
  wire [15:0]r0_data;
  wire \r0_reg_sel[0]_i_1_n_0 ;
  wire \r0_reg_sel[1]_i_1_n_0 ;
  wire \r0_reg_sel[2]_i_1_n_0 ;
  wire \r0_reg_sel[3]_i_1_n_0 ;
  wire \r0_reg_sel[3]_i_2_n_0 ;
  wire \r0_reg_sel_reg_n_0_[0] ;
  wire \r0_reg_sel_reg_n_0_[1] ;
  wire \r0_reg_sel_reg_n_0_[2] ;
  wire [15:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state_reg[1]_0 ;
  wire \state_reg_n_0_[2] ;

  LUT4 #(
    .INIT(16'h0800)) 
    \acc_data[15]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(E),
        .I2(\state_reg[1]_0 ),
        .I3(\r0_reg_sel_reg_n_0_[0] ),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_data[63]_i_1 
       (.I0(E),
        .I1(\state_reg[1]_0 ),
        .O(\acc_data[63]_i_1_n_0 ));
  FDRE \acc_data_reg[0] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[0]),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \acc_data_reg[10] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[10]),
        .Q(m_axis_tdata[10]),
        .R(1'b0));
  FDRE \acc_data_reg[11] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[11]),
        .Q(m_axis_tdata[11]),
        .R(1'b0));
  FDRE \acc_data_reg[12] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[12]),
        .Q(m_axis_tdata[12]),
        .R(1'b0));
  FDRE \acc_data_reg[13] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[13]),
        .Q(m_axis_tdata[13]),
        .R(1'b0));
  FDRE \acc_data_reg[14] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[14]),
        .Q(m_axis_tdata[14]),
        .R(1'b0));
  FDRE \acc_data_reg[15] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[15]),
        .Q(m_axis_tdata[15]),
        .R(1'b0));
  FDRE \acc_data_reg[1] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[1]),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE \acc_data_reg[2] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[2]),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE \acc_data_reg[3] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[3]),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE \acc_data_reg[48] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(m_axis_tdata[48]),
        .R(1'b0));
  FDRE \acc_data_reg[49] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(m_axis_tdata[49]),
        .R(1'b0));
  FDRE \acc_data_reg[4] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[4]),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE \acc_data_reg[50] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(m_axis_tdata[50]),
        .R(1'b0));
  FDRE \acc_data_reg[51] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(m_axis_tdata[51]),
        .R(1'b0));
  FDRE \acc_data_reg[52] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(m_axis_tdata[52]),
        .R(1'b0));
  FDRE \acc_data_reg[53] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(m_axis_tdata[53]),
        .R(1'b0));
  FDRE \acc_data_reg[54] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(m_axis_tdata[54]),
        .R(1'b0));
  FDRE \acc_data_reg[55] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(m_axis_tdata[55]),
        .R(1'b0));
  FDRE \acc_data_reg[56] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(m_axis_tdata[56]),
        .R(1'b0));
  FDRE \acc_data_reg[57] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(m_axis_tdata[57]),
        .R(1'b0));
  FDRE \acc_data_reg[58] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(m_axis_tdata[58]),
        .R(1'b0));
  FDRE \acc_data_reg[59] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(m_axis_tdata[59]),
        .R(1'b0));
  FDRE \acc_data_reg[5] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[5]),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE \acc_data_reg[60] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(m_axis_tdata[60]),
        .R(1'b0));
  FDRE \acc_data_reg[61] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(m_axis_tdata[61]),
        .R(1'b0));
  FDRE \acc_data_reg[62] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(m_axis_tdata[62]),
        .R(1'b0));
  FDRE \acc_data_reg[63] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(m_axis_tdata[63]),
        .R(1'b0));
  FDRE \acc_data_reg[6] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[6]),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE \acc_data_reg[7] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[7]),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  FDRE \acc_data_reg[8] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[8]),
        .Q(m_axis_tdata[8]),
        .R(1'b0));
  FDRE \acc_data_reg[9] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[9]),
        .Q(m_axis_tdata[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0800)) 
    \gen_data_accumulator[1].acc_data[31]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(E),
        .I2(\state_reg[1]_0 ),
        .I3(\r0_reg_sel_reg_n_0_[1] ),
        .O(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ));
  FDRE \gen_data_accumulator[1].acc_data_reg[16] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[0]),
        .Q(m_axis_tdata[16]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[17] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[1]),
        .Q(m_axis_tdata[17]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[18] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[2]),
        .Q(m_axis_tdata[18]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[19] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[3]),
        .Q(m_axis_tdata[19]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[20] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[4]),
        .Q(m_axis_tdata[20]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[21] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[5]),
        .Q(m_axis_tdata[21]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[22] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[6]),
        .Q(m_axis_tdata[22]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[23] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[7]),
        .Q(m_axis_tdata[23]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[24] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[8]),
        .Q(m_axis_tdata[24]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[25] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[9]),
        .Q(m_axis_tdata[25]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[26] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[10]),
        .Q(m_axis_tdata[26]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[27] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[11]),
        .Q(m_axis_tdata[27]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[28] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[12]),
        .Q(m_axis_tdata[28]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[29] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[13]),
        .Q(m_axis_tdata[29]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[30] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[14]),
        .Q(m_axis_tdata[30]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[31] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[15]),
        .Q(m_axis_tdata[31]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4000)) 
    \gen_data_accumulator[2].acc_data[47]_i_1 
       (.I0(\state_reg[1]_0 ),
        .I1(E),
        .I2(\state_reg_n_0_[2] ),
        .I3(\r0_reg_sel_reg_n_0_[2] ),
        .O(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ));
  FDRE \gen_data_accumulator[2].acc_data_reg[32] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[0]),
        .Q(m_axis_tdata[32]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[33] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[1]),
        .Q(m_axis_tdata[33]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[34] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[2]),
        .Q(m_axis_tdata[34]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[35] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[3]),
        .Q(m_axis_tdata[35]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[36] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[4]),
        .Q(m_axis_tdata[36]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[37] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[5]),
        .Q(m_axis_tdata[37]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[38] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[6]),
        .Q(m_axis_tdata[38]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[39] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[7]),
        .Q(m_axis_tdata[39]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[40] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[8]),
        .Q(m_axis_tdata[40]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[41] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[9]),
        .Q(m_axis_tdata[41]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[42] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[10]),
        .Q(m_axis_tdata[42]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[43] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[11]),
        .Q(m_axis_tdata[43]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[44] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[12]),
        .Q(m_axis_tdata[44]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[45] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[13]),
        .Q(m_axis_tdata[45]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[46] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[14]),
        .Q(m_axis_tdata[46]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[47] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[15]),
        .Q(m_axis_tdata[47]),
        .R(1'b0));
  FDRE \r0_data_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[0]),
        .Q(r0_data[0]),
        .R(1'b0));
  FDRE \r0_data_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[10]),
        .Q(r0_data[10]),
        .R(1'b0));
  FDRE \r0_data_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[11]),
        .Q(r0_data[11]),
        .R(1'b0));
  FDRE \r0_data_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[12]),
        .Q(r0_data[12]),
        .R(1'b0));
  FDRE \r0_data_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[13]),
        .Q(r0_data[13]),
        .R(1'b0));
  FDRE \r0_data_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[14]),
        .Q(r0_data[14]),
        .R(1'b0));
  FDRE \r0_data_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[15]),
        .Q(r0_data[15]),
        .R(1'b0));
  FDRE \r0_data_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[1]),
        .Q(r0_data[1]),
        .R(1'b0));
  FDRE \r0_data_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[2]),
        .Q(r0_data[2]),
        .R(1'b0));
  FDRE \r0_data_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[3]),
        .Q(r0_data[3]),
        .R(1'b0));
  FDRE \r0_data_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[4]),
        .Q(r0_data[4]),
        .R(1'b0));
  FDRE \r0_data_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[5]),
        .Q(r0_data[5]),
        .R(1'b0));
  FDRE \r0_data_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[6]),
        .Q(r0_data[6]),
        .R(1'b0));
  FDRE \r0_data_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[7]),
        .Q(r0_data[7]),
        .R(1'b0));
  FDRE \r0_data_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[8]),
        .Q(r0_data[8]),
        .R(1'b0));
  FDRE \r0_data_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[9]),
        .Q(r0_data[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFF70FFF0FF70)) 
    \r0_reg_sel[0]_i_1 
       (.I0(E),
        .I1(\state_reg_n_0_[2] ),
        .I2(\r0_reg_sel_reg_n_0_[0] ),
        .I3(areset_r),
        .I4(\state_reg[1]_0 ),
        .I5(m_axis_tready),
        .O(\r0_reg_sel[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000E200E200E2)) 
    \r0_reg_sel[1]_i_1 
       (.I0(\r0_reg_sel_reg_n_0_[1] ),
        .I1(\r0_reg_sel[3]_i_2_n_0 ),
        .I2(\r0_reg_sel_reg_n_0_[0] ),
        .I3(areset_r),
        .I4(\state_reg[1]_0 ),
        .I5(m_axis_tready),
        .O(\r0_reg_sel[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000E200E200E2)) 
    \r0_reg_sel[2]_i_1 
       (.I0(\r0_reg_sel_reg_n_0_[2] ),
        .I1(\r0_reg_sel[3]_i_2_n_0 ),
        .I2(\r0_reg_sel_reg_n_0_[1] ),
        .I3(areset_r),
        .I4(\state_reg[1]_0 ),
        .I5(m_axis_tready),
        .O(\r0_reg_sel[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000E200E200E2)) 
    \r0_reg_sel[3]_i_1 
       (.I0(p_1_in2_in),
        .I1(\r0_reg_sel[3]_i_2_n_0 ),
        .I2(\r0_reg_sel_reg_n_0_[2] ),
        .I3(areset_r),
        .I4(\state_reg[1]_0 ),
        .I5(m_axis_tready),
        .O(\r0_reg_sel[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \r0_reg_sel[3]_i_2 
       (.I0(\state_reg[1]_0 ),
        .I1(E),
        .I2(\state_reg_n_0_[2] ),
        .O(\r0_reg_sel[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \r0_reg_sel_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_reg_sel[0]_i_1_n_0 ),
        .Q(\r0_reg_sel_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r0_reg_sel_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_reg_sel[1]_i_1_n_0 ),
        .Q(\r0_reg_sel_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r0_reg_sel_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_reg_sel[2]_i_1_n_0 ),
        .Q(\r0_reg_sel_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r0_reg_sel_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_reg_sel[3]_i_1_n_0 ),
        .Q(p_1_in2_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FFFFFF4F)) 
    \state[0]_i_1 
       (.I0(s_axis_tvalid),
        .I1(E),
        .I2(\state_reg[1]_0 ),
        .I3(\state_reg_n_0_[2] ),
        .I4(m_axis_tready),
        .I5(areset_r),
        .O(\state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000FF02)) 
    \state[1]_i_1 
       (.I0(\state_reg[1]_0 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(m_axis_tready),
        .I3(\state[1]_i_2_n_0 ),
        .I4(areset_r),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0808080808000000)) 
    \state[1]_i_2 
       (.I0(s_axis_tvalid),
        .I1(E),
        .I2(\state_reg[1]_0 ),
        .I3(\r0_reg_sel_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(p_1_in2_in),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAAEA)) 
    \state[2]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(s_axis_tvalid),
        .I2(E),
        .I3(\state_reg[1]_0 ),
        .I4(\state[2]_i_3_n_0 ),
        .I5(areset_r),
        .O(\state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00008A00)) 
    \state[2]_i_2 
       (.I0(m_axis_tready),
        .I1(s_axis_tvalid),
        .I2(E),
        .I3(\state_reg[1]_0 ),
        .I4(\state_reg_n_0_[2] ),
        .O(\state[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \state[2]_i_3 
       (.I0(p_1_in2_in),
        .I1(\state_reg_n_0_[2] ),
        .I2(\r0_reg_sel_reg_n_0_[2] ),
        .O(\state[2]_i_3_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(E),
        .R(1'b0));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg[1]_0 ),
        .R(1'b0));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_18_axisc_upsizer" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_18_axisc_upsizer_1
   (E,
    \state_reg[1]_0 ,
    m_axis_tdata,
    areset_r,
    m_axis_tready,
    aclk,
    s_axis_tvalid,
    s_axis_tdata);
  output [0:0]E;
  output \state_reg[1]_0 ;
  output [63:0]m_axis_tdata;
  input areset_r;
  input m_axis_tready;
  input aclk;
  input s_axis_tvalid;
  input [15:0]s_axis_tdata;

  wire [0:0]E;
  wire \acc_data[63]_i_1_n_0 ;
  wire aclk;
  wire areset_r;
  wire \gen_data_accumulator[1].acc_data[31]_i_1_n_0 ;
  wire \gen_data_accumulator[2].acc_data[47]_i_1_n_0 ;
  wire [63:0]m_axis_tdata;
  wire m_axis_tready;
  wire p_0_in;
  wire p_1_in2_in;
  wire [15:0]r0_data;
  wire \r0_reg_sel[0]_i_1_n_0 ;
  wire \r0_reg_sel[1]_i_1_n_0 ;
  wire \r0_reg_sel[2]_i_1_n_0 ;
  wire \r0_reg_sel[3]_i_1_n_0 ;
  wire \r0_reg_sel[3]_i_2_n_0 ;
  wire \r0_reg_sel_reg_n_0_[0] ;
  wire \r0_reg_sel_reg_n_0_[1] ;
  wire \r0_reg_sel_reg_n_0_[2] ;
  wire [15:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state_reg[1]_0 ;
  wire \state_reg_n_0_[2] ;

  LUT4 #(
    .INIT(16'h0800)) 
    \acc_data[15]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(E),
        .I2(\state_reg[1]_0 ),
        .I3(\r0_reg_sel_reg_n_0_[0] ),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_data[63]_i_1 
       (.I0(E),
        .I1(\state_reg[1]_0 ),
        .O(\acc_data[63]_i_1_n_0 ));
  FDRE \acc_data_reg[0] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[0]),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \acc_data_reg[10] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[10]),
        .Q(m_axis_tdata[10]),
        .R(1'b0));
  FDRE \acc_data_reg[11] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[11]),
        .Q(m_axis_tdata[11]),
        .R(1'b0));
  FDRE \acc_data_reg[12] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[12]),
        .Q(m_axis_tdata[12]),
        .R(1'b0));
  FDRE \acc_data_reg[13] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[13]),
        .Q(m_axis_tdata[13]),
        .R(1'b0));
  FDRE \acc_data_reg[14] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[14]),
        .Q(m_axis_tdata[14]),
        .R(1'b0));
  FDRE \acc_data_reg[15] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[15]),
        .Q(m_axis_tdata[15]),
        .R(1'b0));
  FDRE \acc_data_reg[1] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[1]),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE \acc_data_reg[2] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[2]),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE \acc_data_reg[3] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[3]),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE \acc_data_reg[48] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(m_axis_tdata[48]),
        .R(1'b0));
  FDRE \acc_data_reg[49] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(m_axis_tdata[49]),
        .R(1'b0));
  FDRE \acc_data_reg[4] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[4]),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE \acc_data_reg[50] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(m_axis_tdata[50]),
        .R(1'b0));
  FDRE \acc_data_reg[51] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(m_axis_tdata[51]),
        .R(1'b0));
  FDRE \acc_data_reg[52] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(m_axis_tdata[52]),
        .R(1'b0));
  FDRE \acc_data_reg[53] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(m_axis_tdata[53]),
        .R(1'b0));
  FDRE \acc_data_reg[54] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(m_axis_tdata[54]),
        .R(1'b0));
  FDRE \acc_data_reg[55] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(m_axis_tdata[55]),
        .R(1'b0));
  FDRE \acc_data_reg[56] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(m_axis_tdata[56]),
        .R(1'b0));
  FDRE \acc_data_reg[57] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(m_axis_tdata[57]),
        .R(1'b0));
  FDRE \acc_data_reg[58] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(m_axis_tdata[58]),
        .R(1'b0));
  FDRE \acc_data_reg[59] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(m_axis_tdata[59]),
        .R(1'b0));
  FDRE \acc_data_reg[5] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[5]),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE \acc_data_reg[60] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(m_axis_tdata[60]),
        .R(1'b0));
  FDRE \acc_data_reg[61] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(m_axis_tdata[61]),
        .R(1'b0));
  FDRE \acc_data_reg[62] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(m_axis_tdata[62]),
        .R(1'b0));
  FDRE \acc_data_reg[63] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(m_axis_tdata[63]),
        .R(1'b0));
  FDRE \acc_data_reg[6] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[6]),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE \acc_data_reg[7] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[7]),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  FDRE \acc_data_reg[8] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[8]),
        .Q(m_axis_tdata[8]),
        .R(1'b0));
  FDRE \acc_data_reg[9] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[9]),
        .Q(m_axis_tdata[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0800)) 
    \gen_data_accumulator[1].acc_data[31]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(E),
        .I2(\state_reg[1]_0 ),
        .I3(\r0_reg_sel_reg_n_0_[1] ),
        .O(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ));
  FDRE \gen_data_accumulator[1].acc_data_reg[16] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[0]),
        .Q(m_axis_tdata[16]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[17] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[1]),
        .Q(m_axis_tdata[17]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[18] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[2]),
        .Q(m_axis_tdata[18]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[19] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[3]),
        .Q(m_axis_tdata[19]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[20] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[4]),
        .Q(m_axis_tdata[20]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[21] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[5]),
        .Q(m_axis_tdata[21]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[22] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[6]),
        .Q(m_axis_tdata[22]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[23] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[7]),
        .Q(m_axis_tdata[23]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[24] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[8]),
        .Q(m_axis_tdata[24]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[25] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[9]),
        .Q(m_axis_tdata[25]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[26] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[10]),
        .Q(m_axis_tdata[26]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[27] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[11]),
        .Q(m_axis_tdata[27]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[28] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[12]),
        .Q(m_axis_tdata[28]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[29] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[13]),
        .Q(m_axis_tdata[29]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[30] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[14]),
        .Q(m_axis_tdata[30]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[31] 
       (.C(aclk),
        .CE(\gen_data_accumulator[1].acc_data[31]_i_1_n_0 ),
        .D(r0_data[15]),
        .Q(m_axis_tdata[31]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4000)) 
    \gen_data_accumulator[2].acc_data[47]_i_1 
       (.I0(\state_reg[1]_0 ),
        .I1(E),
        .I2(\state_reg_n_0_[2] ),
        .I3(\r0_reg_sel_reg_n_0_[2] ),
        .O(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ));
  FDRE \gen_data_accumulator[2].acc_data_reg[32] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[0]),
        .Q(m_axis_tdata[32]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[33] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[1]),
        .Q(m_axis_tdata[33]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[34] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[2]),
        .Q(m_axis_tdata[34]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[35] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[3]),
        .Q(m_axis_tdata[35]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[36] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[4]),
        .Q(m_axis_tdata[36]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[37] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[5]),
        .Q(m_axis_tdata[37]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[38] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[6]),
        .Q(m_axis_tdata[38]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[39] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[7]),
        .Q(m_axis_tdata[39]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[40] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[8]),
        .Q(m_axis_tdata[40]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[41] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[9]),
        .Q(m_axis_tdata[41]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[42] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[10]),
        .Q(m_axis_tdata[42]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[43] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[11]),
        .Q(m_axis_tdata[43]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[44] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[12]),
        .Q(m_axis_tdata[44]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[45] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[13]),
        .Q(m_axis_tdata[45]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[46] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[14]),
        .Q(m_axis_tdata[46]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[47] 
       (.C(aclk),
        .CE(\gen_data_accumulator[2].acc_data[47]_i_1_n_0 ),
        .D(r0_data[15]),
        .Q(m_axis_tdata[47]),
        .R(1'b0));
  FDRE \r0_data_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[0]),
        .Q(r0_data[0]),
        .R(1'b0));
  FDRE \r0_data_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[10]),
        .Q(r0_data[10]),
        .R(1'b0));
  FDRE \r0_data_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[11]),
        .Q(r0_data[11]),
        .R(1'b0));
  FDRE \r0_data_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[12]),
        .Q(r0_data[12]),
        .R(1'b0));
  FDRE \r0_data_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[13]),
        .Q(r0_data[13]),
        .R(1'b0));
  FDRE \r0_data_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[14]),
        .Q(r0_data[14]),
        .R(1'b0));
  FDRE \r0_data_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[15]),
        .Q(r0_data[15]),
        .R(1'b0));
  FDRE \r0_data_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[1]),
        .Q(r0_data[1]),
        .R(1'b0));
  FDRE \r0_data_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[2]),
        .Q(r0_data[2]),
        .R(1'b0));
  FDRE \r0_data_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[3]),
        .Q(r0_data[3]),
        .R(1'b0));
  FDRE \r0_data_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[4]),
        .Q(r0_data[4]),
        .R(1'b0));
  FDRE \r0_data_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[5]),
        .Q(r0_data[5]),
        .R(1'b0));
  FDRE \r0_data_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[6]),
        .Q(r0_data[6]),
        .R(1'b0));
  FDRE \r0_data_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[7]),
        .Q(r0_data[7]),
        .R(1'b0));
  FDRE \r0_data_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[8]),
        .Q(r0_data[8]),
        .R(1'b0));
  FDRE \r0_data_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[9]),
        .Q(r0_data[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFF70FFF0FF70)) 
    \r0_reg_sel[0]_i_1 
       (.I0(E),
        .I1(\state_reg_n_0_[2] ),
        .I2(\r0_reg_sel_reg_n_0_[0] ),
        .I3(areset_r),
        .I4(\state_reg[1]_0 ),
        .I5(m_axis_tready),
        .O(\r0_reg_sel[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000E200E200E2)) 
    \r0_reg_sel[1]_i_1 
       (.I0(\r0_reg_sel_reg_n_0_[1] ),
        .I1(\r0_reg_sel[3]_i_2_n_0 ),
        .I2(\r0_reg_sel_reg_n_0_[0] ),
        .I3(areset_r),
        .I4(\state_reg[1]_0 ),
        .I5(m_axis_tready),
        .O(\r0_reg_sel[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000E200E200E2)) 
    \r0_reg_sel[2]_i_1 
       (.I0(\r0_reg_sel_reg_n_0_[2] ),
        .I1(\r0_reg_sel[3]_i_2_n_0 ),
        .I2(\r0_reg_sel_reg_n_0_[1] ),
        .I3(areset_r),
        .I4(\state_reg[1]_0 ),
        .I5(m_axis_tready),
        .O(\r0_reg_sel[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000E200E200E2)) 
    \r0_reg_sel[3]_i_1 
       (.I0(p_1_in2_in),
        .I1(\r0_reg_sel[3]_i_2_n_0 ),
        .I2(\r0_reg_sel_reg_n_0_[2] ),
        .I3(areset_r),
        .I4(\state_reg[1]_0 ),
        .I5(m_axis_tready),
        .O(\r0_reg_sel[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \r0_reg_sel[3]_i_2 
       (.I0(\state_reg[1]_0 ),
        .I1(E),
        .I2(\state_reg_n_0_[2] ),
        .O(\r0_reg_sel[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \r0_reg_sel_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_reg_sel[0]_i_1_n_0 ),
        .Q(\r0_reg_sel_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r0_reg_sel_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_reg_sel[1]_i_1_n_0 ),
        .Q(\r0_reg_sel_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r0_reg_sel_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_reg_sel[2]_i_1_n_0 ),
        .Q(\r0_reg_sel_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r0_reg_sel_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_reg_sel[3]_i_1_n_0 ),
        .Q(p_1_in2_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FFFFFF4F)) 
    \state[0]_i_1 
       (.I0(s_axis_tvalid),
        .I1(E),
        .I2(\state_reg[1]_0 ),
        .I3(\state_reg_n_0_[2] ),
        .I4(m_axis_tready),
        .I5(areset_r),
        .O(\state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000FF02)) 
    \state[1]_i_1 
       (.I0(\state_reg[1]_0 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(m_axis_tready),
        .I3(\state[1]_i_2_n_0 ),
        .I4(areset_r),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0808080808000000)) 
    \state[1]_i_2 
       (.I0(s_axis_tvalid),
        .I1(E),
        .I2(\state_reg[1]_0 ),
        .I3(\r0_reg_sel_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(p_1_in2_in),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAAEA)) 
    \state[2]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(s_axis_tvalid),
        .I2(E),
        .I3(\state_reg[1]_0 ),
        .I4(\state[2]_i_3_n_0 ),
        .I5(areset_r),
        .O(\state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00008A00)) 
    \state[2]_i_2 
       (.I0(m_axis_tready),
        .I1(s_axis_tvalid),
        .I2(E),
        .I3(\state_reg[1]_0 ),
        .I4(\state_reg_n_0_[2] ),
        .O(\state[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \state[2]_i_3 
       (.I0(p_1_in2_in),
        .I1(\state_reg_n_0_[2] ),
        .I2(\r0_reg_sel_reg_n_0_[2] ),
        .O(\state[2]_i_3_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(E),
        .R(1'b0));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg[1]_0 ),
        .R(1'b0));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_18_axisc_upsizer" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_18_axisc_upsizer__parameterized0
   (E,
    \state_reg[1]_0 ,
    m_axis_tdata,
    areset_r,
    m_axis_tready,
    aclk,
    s_axis_tvalid,
    s_axis_tdata);
  output [0:0]E;
  output \state_reg[1]_0 ;
  output [63:0]m_axis_tdata;
  input areset_r;
  input m_axis_tready;
  input aclk;
  input s_axis_tvalid;
  input [31:0]s_axis_tdata;

  wire [0:0]E;
  wire \acc_data[63]_i_1_n_0 ;
  wire aclk;
  wire areset_r;
  wire [63:0]m_axis_tdata;
  wire m_axis_tready;
  wire p_0_in;
  wire [31:0]r0_data;
  wire \r0_reg_sel[0]_i_1_n_0 ;
  wire \r0_reg_sel[1]_i_1_n_0 ;
  wire \r0_reg_sel[1]_i_2_n_0 ;
  wire \r0_reg_sel_reg_n_0_[0] ;
  wire \r0_reg_sel_reg_n_0_[1] ;
  wire [31:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state_reg[1]_0 ;
  wire \state_reg_n_0_[2] ;

  LUT4 #(
    .INIT(16'h4000)) 
    \acc_data[31]_i_1 
       (.I0(\state_reg[1]_0 ),
        .I1(E),
        .I2(\state_reg_n_0_[2] ),
        .I3(\r0_reg_sel_reg_n_0_[0] ),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_data[63]_i_1 
       (.I0(E),
        .I1(\state_reg[1]_0 ),
        .O(\acc_data[63]_i_1_n_0 ));
  FDRE \acc_data_reg[0] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[0]),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \acc_data_reg[10] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[10]),
        .Q(m_axis_tdata[10]),
        .R(1'b0));
  FDRE \acc_data_reg[11] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[11]),
        .Q(m_axis_tdata[11]),
        .R(1'b0));
  FDRE \acc_data_reg[12] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[12]),
        .Q(m_axis_tdata[12]),
        .R(1'b0));
  FDRE \acc_data_reg[13] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[13]),
        .Q(m_axis_tdata[13]),
        .R(1'b0));
  FDRE \acc_data_reg[14] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[14]),
        .Q(m_axis_tdata[14]),
        .R(1'b0));
  FDRE \acc_data_reg[15] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[15]),
        .Q(m_axis_tdata[15]),
        .R(1'b0));
  FDRE \acc_data_reg[16] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[16]),
        .Q(m_axis_tdata[16]),
        .R(1'b0));
  FDRE \acc_data_reg[17] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[17]),
        .Q(m_axis_tdata[17]),
        .R(1'b0));
  FDRE \acc_data_reg[18] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[18]),
        .Q(m_axis_tdata[18]),
        .R(1'b0));
  FDRE \acc_data_reg[19] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[19]),
        .Q(m_axis_tdata[19]),
        .R(1'b0));
  FDRE \acc_data_reg[1] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[1]),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE \acc_data_reg[20] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[20]),
        .Q(m_axis_tdata[20]),
        .R(1'b0));
  FDRE \acc_data_reg[21] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[21]),
        .Q(m_axis_tdata[21]),
        .R(1'b0));
  FDRE \acc_data_reg[22] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[22]),
        .Q(m_axis_tdata[22]),
        .R(1'b0));
  FDRE \acc_data_reg[23] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[23]),
        .Q(m_axis_tdata[23]),
        .R(1'b0));
  FDRE \acc_data_reg[24] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[24]),
        .Q(m_axis_tdata[24]),
        .R(1'b0));
  FDRE \acc_data_reg[25] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[25]),
        .Q(m_axis_tdata[25]),
        .R(1'b0));
  FDRE \acc_data_reg[26] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[26]),
        .Q(m_axis_tdata[26]),
        .R(1'b0));
  FDRE \acc_data_reg[27] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[27]),
        .Q(m_axis_tdata[27]),
        .R(1'b0));
  FDRE \acc_data_reg[28] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[28]),
        .Q(m_axis_tdata[28]),
        .R(1'b0));
  FDRE \acc_data_reg[29] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[29]),
        .Q(m_axis_tdata[29]),
        .R(1'b0));
  FDRE \acc_data_reg[2] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[2]),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE \acc_data_reg[30] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[30]),
        .Q(m_axis_tdata[30]),
        .R(1'b0));
  FDRE \acc_data_reg[31] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[31]),
        .Q(m_axis_tdata[31]),
        .R(1'b0));
  FDRE \acc_data_reg[32] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(m_axis_tdata[32]),
        .R(1'b0));
  FDRE \acc_data_reg[33] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(m_axis_tdata[33]),
        .R(1'b0));
  FDRE \acc_data_reg[34] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(m_axis_tdata[34]),
        .R(1'b0));
  FDRE \acc_data_reg[35] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(m_axis_tdata[35]),
        .R(1'b0));
  FDRE \acc_data_reg[36] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(m_axis_tdata[36]),
        .R(1'b0));
  FDRE \acc_data_reg[37] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(m_axis_tdata[37]),
        .R(1'b0));
  FDRE \acc_data_reg[38] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(m_axis_tdata[38]),
        .R(1'b0));
  FDRE \acc_data_reg[39] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(m_axis_tdata[39]),
        .R(1'b0));
  FDRE \acc_data_reg[3] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[3]),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE \acc_data_reg[40] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(m_axis_tdata[40]),
        .R(1'b0));
  FDRE \acc_data_reg[41] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(m_axis_tdata[41]),
        .R(1'b0));
  FDRE \acc_data_reg[42] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(m_axis_tdata[42]),
        .R(1'b0));
  FDRE \acc_data_reg[43] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(m_axis_tdata[43]),
        .R(1'b0));
  FDRE \acc_data_reg[44] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(m_axis_tdata[44]),
        .R(1'b0));
  FDRE \acc_data_reg[45] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(m_axis_tdata[45]),
        .R(1'b0));
  FDRE \acc_data_reg[46] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(m_axis_tdata[46]),
        .R(1'b0));
  FDRE \acc_data_reg[47] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(m_axis_tdata[47]),
        .R(1'b0));
  FDRE \acc_data_reg[48] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(m_axis_tdata[48]),
        .R(1'b0));
  FDRE \acc_data_reg[49] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(m_axis_tdata[49]),
        .R(1'b0));
  FDRE \acc_data_reg[4] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[4]),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE \acc_data_reg[50] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(m_axis_tdata[50]),
        .R(1'b0));
  FDRE \acc_data_reg[51] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(m_axis_tdata[51]),
        .R(1'b0));
  FDRE \acc_data_reg[52] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(m_axis_tdata[52]),
        .R(1'b0));
  FDRE \acc_data_reg[53] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(m_axis_tdata[53]),
        .R(1'b0));
  FDRE \acc_data_reg[54] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(m_axis_tdata[54]),
        .R(1'b0));
  FDRE \acc_data_reg[55] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(m_axis_tdata[55]),
        .R(1'b0));
  FDRE \acc_data_reg[56] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[24]),
        .Q(m_axis_tdata[56]),
        .R(1'b0));
  FDRE \acc_data_reg[57] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[25]),
        .Q(m_axis_tdata[57]),
        .R(1'b0));
  FDRE \acc_data_reg[58] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[26]),
        .Q(m_axis_tdata[58]),
        .R(1'b0));
  FDRE \acc_data_reg[59] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[27]),
        .Q(m_axis_tdata[59]),
        .R(1'b0));
  FDRE \acc_data_reg[5] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[5]),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE \acc_data_reg[60] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[28]),
        .Q(m_axis_tdata[60]),
        .R(1'b0));
  FDRE \acc_data_reg[61] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[29]),
        .Q(m_axis_tdata[61]),
        .R(1'b0));
  FDRE \acc_data_reg[62] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[30]),
        .Q(m_axis_tdata[62]),
        .R(1'b0));
  FDRE \acc_data_reg[63] 
       (.C(aclk),
        .CE(\acc_data[63]_i_1_n_0 ),
        .D(s_axis_tdata[31]),
        .Q(m_axis_tdata[63]),
        .R(1'b0));
  FDRE \acc_data_reg[6] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[6]),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE \acc_data_reg[7] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[7]),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  FDRE \acc_data_reg[8] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[8]),
        .Q(m_axis_tdata[8]),
        .R(1'b0));
  FDRE \acc_data_reg[9] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[9]),
        .Q(m_axis_tdata[9]),
        .R(1'b0));
  FDRE \r0_data_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[0]),
        .Q(r0_data[0]),
        .R(1'b0));
  FDRE \r0_data_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[10]),
        .Q(r0_data[10]),
        .R(1'b0));
  FDRE \r0_data_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[11]),
        .Q(r0_data[11]),
        .R(1'b0));
  FDRE \r0_data_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[12]),
        .Q(r0_data[12]),
        .R(1'b0));
  FDRE \r0_data_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[13]),
        .Q(r0_data[13]),
        .R(1'b0));
  FDRE \r0_data_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[14]),
        .Q(r0_data[14]),
        .R(1'b0));
  FDRE \r0_data_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[15]),
        .Q(r0_data[15]),
        .R(1'b0));
  FDRE \r0_data_reg[16] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[16]),
        .Q(r0_data[16]),
        .R(1'b0));
  FDRE \r0_data_reg[17] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[17]),
        .Q(r0_data[17]),
        .R(1'b0));
  FDRE \r0_data_reg[18] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[18]),
        .Q(r0_data[18]),
        .R(1'b0));
  FDRE \r0_data_reg[19] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[19]),
        .Q(r0_data[19]),
        .R(1'b0));
  FDRE \r0_data_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[1]),
        .Q(r0_data[1]),
        .R(1'b0));
  FDRE \r0_data_reg[20] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[20]),
        .Q(r0_data[20]),
        .R(1'b0));
  FDRE \r0_data_reg[21] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[21]),
        .Q(r0_data[21]),
        .R(1'b0));
  FDRE \r0_data_reg[22] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[22]),
        .Q(r0_data[22]),
        .R(1'b0));
  FDRE \r0_data_reg[23] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[23]),
        .Q(r0_data[23]),
        .R(1'b0));
  FDRE \r0_data_reg[24] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[24]),
        .Q(r0_data[24]),
        .R(1'b0));
  FDRE \r0_data_reg[25] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[25]),
        .Q(r0_data[25]),
        .R(1'b0));
  FDRE \r0_data_reg[26] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[26]),
        .Q(r0_data[26]),
        .R(1'b0));
  FDRE \r0_data_reg[27] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[27]),
        .Q(r0_data[27]),
        .R(1'b0));
  FDRE \r0_data_reg[28] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[28]),
        .Q(r0_data[28]),
        .R(1'b0));
  FDRE \r0_data_reg[29] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[29]),
        .Q(r0_data[29]),
        .R(1'b0));
  FDRE \r0_data_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[2]),
        .Q(r0_data[2]),
        .R(1'b0));
  FDRE \r0_data_reg[30] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[30]),
        .Q(r0_data[30]),
        .R(1'b0));
  FDRE \r0_data_reg[31] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[31]),
        .Q(r0_data[31]),
        .R(1'b0));
  FDRE \r0_data_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[3]),
        .Q(r0_data[3]),
        .R(1'b0));
  FDRE \r0_data_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[4]),
        .Q(r0_data[4]),
        .R(1'b0));
  FDRE \r0_data_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[5]),
        .Q(r0_data[5]),
        .R(1'b0));
  FDRE \r0_data_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[6]),
        .Q(r0_data[6]),
        .R(1'b0));
  FDRE \r0_data_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[7]),
        .Q(r0_data[7]),
        .R(1'b0));
  FDRE \r0_data_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[8]),
        .Q(r0_data[8]),
        .R(1'b0));
  FDRE \r0_data_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(s_axis_tdata[9]),
        .Q(r0_data[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFF2AFFAAFF2A)) 
    \r0_reg_sel[0]_i_1 
       (.I0(\r0_reg_sel_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(E),
        .I3(areset_r),
        .I4(\state_reg[1]_0 ),
        .I5(m_axis_tready),
        .O(\r0_reg_sel[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAEAAA2A)) 
    \r0_reg_sel[1]_i_1 
       (.I0(\r0_reg_sel_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(E),
        .I3(\state_reg[1]_0 ),
        .I4(\r0_reg_sel_reg_n_0_[0] ),
        .I5(\r0_reg_sel[1]_i_2_n_0 ),
        .O(\r0_reg_sel[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \r0_reg_sel[1]_i_2 
       (.I0(m_axis_tready),
        .I1(\state_reg[1]_0 ),
        .I2(areset_r),
        .O(\r0_reg_sel[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \r0_reg_sel_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_reg_sel[0]_i_1_n_0 ),
        .Q(\r0_reg_sel_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r0_reg_sel_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_reg_sel[1]_i_1_n_0 ),
        .Q(\r0_reg_sel_reg_n_0_[1] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FFFFFF4F)) 
    \state[0]_i_1 
       (.I0(s_axis_tvalid),
        .I1(E),
        .I2(\state_reg[1]_0 ),
        .I3(\state_reg_n_0_[2] ),
        .I4(m_axis_tready),
        .I5(areset_r),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0000FF02)) 
    \state[1]_i_1 
       (.I0(\state_reg[1]_0 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(m_axis_tready),
        .I3(\state[1]_i_2_n_0 ),
        .I4(areset_r),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0808080808000000)) 
    \state[1]_i_2 
       (.I0(s_axis_tvalid),
        .I1(E),
        .I2(\state_reg[1]_0 ),
        .I3(\r0_reg_sel_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\r0_reg_sel_reg_n_0_[1] ),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAAEA)) 
    \state[2]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(s_axis_tvalid),
        .I2(E),
        .I3(\state_reg[1]_0 ),
        .I4(\state[2]_i_3_n_0 ),
        .I5(areset_r),
        .O(\state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008A00)) 
    \state[2]_i_2 
       (.I0(m_axis_tready),
        .I1(s_axis_tvalid),
        .I2(E),
        .I3(\state_reg[1]_0 ),
        .I4(\state_reg_n_0_[2] ),
        .O(\state[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \state[2]_i_3 
       (.I0(\r0_reg_sel_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\r0_reg_sel_reg_n_0_[0] ),
        .O(\state[2]_i_3_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(E),
        .R(1'b0));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg[1]_0 ),
        .R(1'b0));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_Acquisition_top_0_0,Acquisition_top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Acquisition_top,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    resetn,
    start_sig,
    number_bytes,
    channel_sel,
    ADC1_data,
    ADC2_data,
    FIFO_S2MM_data_count,
    start_address,
    reset_ACQ,
    status_out,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_s2mm_cmd_tdata,
    m_axis_s2mm_cmd_tready,
    m_axis_s2mm_cmd_tvalid,
    s_axis_s2mm_sts_tdata,
    s_axis_s2mm_sts_tready,
    s_axis_s2mm_sts_tvalid);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:m_axis_s2mm_cmd:s_axis_s2mm_sts, ASSOCIATED_RESET resetn, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 resetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  input start_sig;
  input [31:0]number_bytes;
  input [1:0]channel_sel;
  input [15:0]ADC1_data;
  input [15:0]ADC2_data;
  input [31:0]FIFO_S2MM_data_count;
  input [31:0]start_address;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_ACQ RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_ACQ, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output reset_ACQ;
  output [1:0]status_out;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [63:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_s2mm_cmd TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis_s2mm_cmd, TDATA_NUM_BYTES 9, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [71:0]m_axis_s2mm_cmd_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_s2mm_cmd TREADY" *) input m_axis_s2mm_cmd_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_s2mm_cmd TVALID" *) output m_axis_s2mm_cmd_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis_s2mm_sts TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis_s2mm_sts, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [7:0]s_axis_s2mm_sts_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis_s2mm_sts TREADY" *) output s_axis_s2mm_sts_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis_s2mm_sts TVALID" *) input s_axis_s2mm_sts_tvalid;

  wire [15:0]ADC1_data;
  wire [15:0]ADC2_data;
  wire [31:0]FIFO_S2MM_data_count;
  wire [1:0]channel_sel;
  wire clk;
  wire [71:0]m_axis_s2mm_cmd_tdata;
  wire m_axis_s2mm_cmd_tready;
  wire m_axis_s2mm_cmd_tvalid;
  wire [63:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [31:0]number_bytes;
  wire reset_ACQ;
  wire resetn;
  wire [7:0]s_axis_s2mm_sts_tdata;
  wire s_axis_s2mm_sts_tready;
  wire s_axis_s2mm_sts_tvalid;
  wire [31:0]start_address;
  wire start_sig;
  wire [1:0]status_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Acquisition_top U0
       (.ADC1_data(ADC1_data),
        .ADC2_data(ADC2_data),
        .FIFO_S2MM_data_count(FIFO_S2MM_data_count),
        .channel_sel(channel_sel),
        .clk(clk),
        .m_axis_s2mm_cmd_tdata(m_axis_s2mm_cmd_tdata),
        .m_axis_s2mm_cmd_tready(m_axis_s2mm_cmd_tready),
        .m_axis_s2mm_cmd_tvalid(m_axis_s2mm_cmd_tvalid),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .number_bytes(number_bytes),
        .reset_ACQ(reset_ACQ),
        .resetn(resetn),
        .s_axis_s2mm_sts_tdata(s_axis_s2mm_sts_tdata),
        .s_axis_s2mm_sts_tready(s_axis_s2mm_sts_tready),
        .s_axis_s2mm_sts_tvalid(s_axis_s2mm_sts_tvalid),
        .start_address(start_address),
        .start_sig(start_sig),
        .status_out(status_out));
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
