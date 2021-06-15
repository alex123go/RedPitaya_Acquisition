-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Mon Jun 14 15:02:25 2021
-- Host        : DESKTOP-AUBSA4O running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/Users/Alex/Documents/GitHub/RedPitaya_Acquisition/RedPitaya_Acquisition/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_Acquisition_top_0_0/design_1_Acquisition_top_0_0_sim_netlist.vhdl
-- Design      : design_1_Acquisition_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Acquisition_top_0_0_Acquisition_FSM_2 is
  port (
    reset_ACQ : out STD_LOGIC;
    acquisition_in_progress_out : out STD_LOGIC;
    m_axis_s2mm_cmd_tvalid : out STD_LOGIC;
    status_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tvalid : out STD_LOGIC;
    m_axis_s2mm_cmd_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    start_sig : in STD_LOGIC;
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    number_bytes : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_s2mm_sts_tvalid : in STD_LOGIC;
    s_axis_s2mm_sts_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    FIFO_S2MM_data_count : in STD_LOGIC_VECTOR ( 25 downto 0 );
    start_address : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Acquisition_top_0_0_Acquisition_FSM_2 : entity is "Acquisition_FSM_2";
end design_1_Acquisition_top_0_0_Acquisition_FSM_2;

architecture STRUCTURE of design_1_Acquisition_top_0_0_Acquisition_FSM_2 is
  signal \FSM_onehot_s2mm_fsm_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s2mm_fsm_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s2mm_fsm_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s2mm_fsm_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s2mm_fsm_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s2mm_fsm_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s2mm_fsm_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s2mm_fsm_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s2mm_fsm_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s2mm_fsm_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s2mm_fsm_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s2mm_fsm_state[3]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s2mm_fsm_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s2mm_fsm_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s2mm_fsm_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s2mm_fsm_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s2mm_fsm_state[7]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s2mm_fsm_state[7]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_s2mm_fsm_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_s2mm_fsm_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_s2mm_fsm_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_s2mm_fsm_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_s2mm_fsm_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\ : STD_LOGIC;
  signal acquisition_in_progress : STD_LOGIC;
  signal acquisition_in_progress_i_2_n_0 : STD_LOGIC;
  signal bytes_sent : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \bytes_sent0_carry__0_n_0\ : STD_LOGIC;
  signal \bytes_sent0_carry__0_n_1\ : STD_LOGIC;
  signal \bytes_sent0_carry__0_n_2\ : STD_LOGIC;
  signal \bytes_sent0_carry__0_n_3\ : STD_LOGIC;
  signal \bytes_sent0_carry__1_n_0\ : STD_LOGIC;
  signal \bytes_sent0_carry__1_n_1\ : STD_LOGIC;
  signal \bytes_sent0_carry__1_n_2\ : STD_LOGIC;
  signal \bytes_sent0_carry__1_n_3\ : STD_LOGIC;
  signal \bytes_sent0_carry__2_n_0\ : STD_LOGIC;
  signal \bytes_sent0_carry__2_n_1\ : STD_LOGIC;
  signal \bytes_sent0_carry__2_n_2\ : STD_LOGIC;
  signal \bytes_sent0_carry__2_n_3\ : STD_LOGIC;
  signal \bytes_sent0_carry__3_n_0\ : STD_LOGIC;
  signal \bytes_sent0_carry__3_n_1\ : STD_LOGIC;
  signal \bytes_sent0_carry__3_n_2\ : STD_LOGIC;
  signal \bytes_sent0_carry__3_n_3\ : STD_LOGIC;
  signal \bytes_sent0_carry__4_n_1\ : STD_LOGIC;
  signal \bytes_sent0_carry__4_n_2\ : STD_LOGIC;
  signal \bytes_sent0_carry__4_n_3\ : STD_LOGIC;
  signal bytes_sent0_carry_i_1_n_0 : STD_LOGIC;
  signal bytes_sent0_carry_n_0 : STD_LOGIC;
  signal bytes_sent0_carry_n_1 : STD_LOGIC;
  signal bytes_sent0_carry_n_2 : STD_LOGIC;
  signal bytes_sent0_carry_n_3 : STD_LOGIC;
  signal \bytes_sent[31]_i_1_n_0\ : STD_LOGIC;
  signal bytes_sent_0 : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal data_tvalid_int : STD_LOGIC;
  signal data_tvalid_int_i_1_n_0 : STD_LOGIC;
  signal error_ACQ_int : STD_LOGIC;
  signal error_ACQ_int_i_1_n_0 : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal in7 : STD_LOGIC;
  signal in8 : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal in9 : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \m_axis_s2mm_cmd_tdata0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__0_n_0\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__0_n_1\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__0_n_2\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__0_n_3\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__1_n_0\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__1_n_1\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__1_n_2\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__1_n_3\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__2_n_0\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__2_n_1\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__2_n_2\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__2_n_3\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__3_n_0\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__3_n_1\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__3_n_2\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__3_n_3\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__4_n_1\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__4_n_2\ : STD_LOGIC;
  signal \m_axis_s2mm_cmd_tdata0_carry__4_n_3\ : STD_LOGIC;
  signal m_axis_s2mm_cmd_tdata0_carry_i_1_n_0 : STD_LOGIC;
  signal m_axis_s2mm_cmd_tdata0_carry_i_2_n_0 : STD_LOGIC;
  signal m_axis_s2mm_cmd_tdata0_carry_i_3_n_0 : STD_LOGIC;
  signal m_axis_s2mm_cmd_tdata0_carry_i_4_n_0 : STD_LOGIC;
  signal m_axis_s2mm_cmd_tdata0_carry_n_0 : STD_LOGIC;
  signal m_axis_s2mm_cmd_tdata0_carry_n_1 : STD_LOGIC;
  signal m_axis_s2mm_cmd_tdata0_carry_n_2 : STD_LOGIC;
  signal m_axis_s2mm_cmd_tdata0_carry_n_3 : STD_LOGIC;
  signal reset_ACQ_i_1_n_0 : STD_LOGIC;
  signal reset_counter : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \reset_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \reset_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \reset_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \reset_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \reset_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal s2mm_addr : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \s2mm_addr0_carry__0_n_0\ : STD_LOGIC;
  signal \s2mm_addr0_carry__0_n_1\ : STD_LOGIC;
  signal \s2mm_addr0_carry__0_n_2\ : STD_LOGIC;
  signal \s2mm_addr0_carry__0_n_3\ : STD_LOGIC;
  signal \s2mm_addr0_carry__1_n_0\ : STD_LOGIC;
  signal \s2mm_addr0_carry__1_n_1\ : STD_LOGIC;
  signal \s2mm_addr0_carry__1_n_2\ : STD_LOGIC;
  signal \s2mm_addr0_carry__1_n_3\ : STD_LOGIC;
  signal \s2mm_addr0_carry__2_n_0\ : STD_LOGIC;
  signal \s2mm_addr0_carry__2_n_1\ : STD_LOGIC;
  signal \s2mm_addr0_carry__2_n_2\ : STD_LOGIC;
  signal \s2mm_addr0_carry__2_n_3\ : STD_LOGIC;
  signal \s2mm_addr0_carry__3_n_0\ : STD_LOGIC;
  signal \s2mm_addr0_carry__3_n_1\ : STD_LOGIC;
  signal \s2mm_addr0_carry__3_n_2\ : STD_LOGIC;
  signal \s2mm_addr0_carry__3_n_3\ : STD_LOGIC;
  signal \s2mm_addr0_carry__4_n_1\ : STD_LOGIC;
  signal \s2mm_addr0_carry__4_n_2\ : STD_LOGIC;
  signal \s2mm_addr0_carry__4_n_3\ : STD_LOGIC;
  signal s2mm_addr0_carry_i_1_n_0 : STD_LOGIC;
  signal s2mm_addr0_carry_n_0 : STD_LOGIC;
  signal s2mm_addr0_carry_n_1 : STD_LOGIC;
  signal s2mm_addr0_carry_n_2 : STD_LOGIC;
  signal s2mm_addr0_carry_n_3 : STD_LOGIC;
  signal \s2mm_addr[31]_i_1_n_0\ : STD_LOGIC;
  signal s2mm_addr_1 : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \s2mm_fsm_state1_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \s2mm_fsm_state1_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \s2mm_fsm_state1_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \s2mm_fsm_state1_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \s2mm_fsm_state1_inferred__1/i__carry__1_n_1\ : STD_LOGIC;
  signal \s2mm_fsm_state1_inferred__1/i__carry__1_n_2\ : STD_LOGIC;
  signal \s2mm_fsm_state1_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \s2mm_fsm_state1_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \s2mm_fsm_state1_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \s2mm_fsm_state1_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \s2mm_fsm_state1_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal s2mm_fsm_state2 : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \s2mm_fsm_state2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__0_n_0\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__0_n_1\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__0_n_2\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__0_n_3\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__1_n_0\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__1_n_1\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__1_n_2\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__1_n_3\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__2_n_0\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__2_n_1\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__2_n_2\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__2_n_3\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__3_n_0\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__3_n_1\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__3_n_2\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__3_n_3\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__4_n_1\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__4_n_2\ : STD_LOGIC;
  signal \s2mm_fsm_state2_carry__4_n_3\ : STD_LOGIC;
  signal s2mm_fsm_state2_carry_i_1_n_0 : STD_LOGIC;
  signal s2mm_fsm_state2_carry_i_2_n_0 : STD_LOGIC;
  signal s2mm_fsm_state2_carry_i_3_n_0 : STD_LOGIC;
  signal s2mm_fsm_state2_carry_n_0 : STD_LOGIC;
  signal s2mm_fsm_state2_carry_n_1 : STD_LOGIC;
  signal s2mm_fsm_state2_carry_n_2 : STD_LOGIC;
  signal s2mm_fsm_state2_carry_n_3 : STD_LOGIC;
  signal start_new : STD_LOGIC;
  signal start_old : STD_LOGIC;
  signal \^status_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_bytes_sent0_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_m_axis_s2mm_cmd_tdata0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_m_axis_s2mm_cmd_tdata0_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_s2mm_addr0_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_s2mm_fsm_state1_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_s2mm_fsm_state1_inferred__1/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_s2mm_fsm_state1_inferred__1/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_s2mm_fsm_state2_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ADC1_converter_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_s2mm_fsm_state[2]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_s2mm_fsm_state[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_s2mm_fsm_state[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_s2mm_fsm_state[7]_i_1\ : label is "soft_lutpair7";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_s2mm_fsm_state_reg[0]\ : label is "idle:00000001,reset_fifo:00000010,write_s2mm:00001000,wait_s2mm_valid:00010000,error_s2mm:10000000,prep_next_s2mm:00100000,fifo_fill:00000100,finish_s2mm:01000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_s2mm_fsm_state_reg[1]\ : label is "idle:00000001,reset_fifo:00000010,write_s2mm:00001000,wait_s2mm_valid:00010000,error_s2mm:10000000,prep_next_s2mm:00100000,fifo_fill:00000100,finish_s2mm:01000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_s2mm_fsm_state_reg[2]\ : label is "idle:00000001,reset_fifo:00000010,write_s2mm:00001000,wait_s2mm_valid:00010000,error_s2mm:10000000,prep_next_s2mm:00100000,fifo_fill:00000100,finish_s2mm:01000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_s2mm_fsm_state_reg[3]\ : label is "idle:00000001,reset_fifo:00000010,write_s2mm:00001000,wait_s2mm_valid:00010000,error_s2mm:10000000,prep_next_s2mm:00100000,fifo_fill:00000100,finish_s2mm:01000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_s2mm_fsm_state_reg[4]\ : label is "idle:00000001,reset_fifo:00000010,write_s2mm:00001000,wait_s2mm_valid:00010000,error_s2mm:10000000,prep_next_s2mm:00100000,fifo_fill:00000100,finish_s2mm:01000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_s2mm_fsm_state_reg[5]\ : label is "idle:00000001,reset_fifo:00000010,write_s2mm:00001000,wait_s2mm_valid:00010000,error_s2mm:10000000,prep_next_s2mm:00100000,fifo_fill:00000100,finish_s2mm:01000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_s2mm_fsm_state_reg[6]\ : label is "idle:00000001,reset_fifo:00000010,write_s2mm:00001000,wait_s2mm_valid:00010000,error_s2mm:10000000,prep_next_s2mm:00100000,fifo_fill:00000100,finish_s2mm:01000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_s2mm_fsm_state_reg[7]\ : label is "idle:00000001,reset_fifo:00000010,write_s2mm:00001000,wait_s2mm_valid:00010000,error_s2mm:10000000,prep_next_s2mm:00100000,fifo_fill:00000100,finish_s2mm:01000000";
  attribute SOFT_HLUTNM of acquisition_in_progress_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bytes_sent[10]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \bytes_sent[11]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \bytes_sent[12]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \bytes_sent[13]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \bytes_sent[14]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \bytes_sent[15]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \bytes_sent[16]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \bytes_sent[17]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bytes_sent[18]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \bytes_sent[19]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \bytes_sent[20]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bytes_sent[21]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \bytes_sent[22]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \bytes_sent[23]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \bytes_sent[24]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \bytes_sent[25]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \bytes_sent[26]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \bytes_sent[27]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \bytes_sent[28]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bytes_sent[29]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bytes_sent[30]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \bytes_sent[31]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \bytes_sent[8]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \bytes_sent[9]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of data_tvalid_int_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \reset_counter[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \reset_counter[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \reset_counter[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s2mm_addr[10]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s2mm_addr[11]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s2mm_addr[12]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s2mm_addr[13]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s2mm_addr[14]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s2mm_addr[15]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s2mm_addr[16]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s2mm_addr[17]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s2mm_addr[18]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s2mm_addr[19]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s2mm_addr[20]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s2mm_addr[21]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s2mm_addr[22]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s2mm_addr[23]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s2mm_addr[24]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s2mm_addr[25]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s2mm_addr[26]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s2mm_addr[27]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s2mm_addr[28]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s2mm_addr[29]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s2mm_addr[30]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s2mm_addr[31]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s2mm_addr[8]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s2mm_addr[9]_i_1\ : label is "soft_lutpair30";
begin
  status_out(1 downto 0) <= \^status_out\(1 downto 0);
ADC1_converter_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^status_out\(0),
      O => s_axis_tvalid
    );
\FSM_onehot_s2mm_fsm_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF8A"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[0]\,
      I1 => start_old,
      I2 => start_new,
      I3 => error_ACQ_int,
      I4 => data_tvalid_int,
      O => \FSM_onehot_s2mm_fsm_state[0]_i_1_n_0\
    );
\FSM_onehot_s2mm_fsm_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F444444"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[1]\,
      I2 => start_old,
      I3 => start_new,
      I4 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[0]\,
      O => \FSM_onehot_s2mm_fsm_state[1]_i_1_n_0\
    );
\FSM_onehot_s2mm_fsm_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F222FFFFF222F222"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in7,
      I2 => \FSM_onehot_s2mm_fsm_state[2]_i_2_n_0\,
      I3 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[1]\,
      I4 => \FSM_onehot_s2mm_fsm_state[3]_i_2_n_0\,
      I5 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[2]\,
      O => \FSM_onehot_s2mm_fsm_state[2]_i_1_n_0\
    );
\FSM_onehot_s2mm_fsm_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => \reset_counter_reg_n_0_[3]\,
      I1 => \reset_counter_reg_n_0_[2]\,
      I2 => \reset_counter_reg_n_0_[1]\,
      I3 => \reset_counter_reg_n_0_[0]\,
      O => \FSM_onehot_s2mm_fsm_state[2]_i_2_n_0\
    );
\FSM_onehot_s2mm_fsm_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state[3]_i_2_n_0\,
      I1 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[2]\,
      O => \FSM_onehot_s2mm_fsm_state[3]_i_1_n_0\
    );
\FSM_onehot_s2mm_fsm_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state[3]_i_3_n_0\,
      I1 => \FSM_onehot_s2mm_fsm_state[3]_i_4_n_0\,
      I2 => \FSM_onehot_s2mm_fsm_state[3]_i_5_n_0\,
      I3 => \FSM_onehot_s2mm_fsm_state[3]_i_6_n_0\,
      I4 => \FSM_onehot_s2mm_fsm_state[3]_i_7_n_0\,
      I5 => \FSM_onehot_s2mm_fsm_state[3]_i_8_n_0\,
      O => \FSM_onehot_s2mm_fsm_state[3]_i_2_n_0\
    );
\FSM_onehot_s2mm_fsm_state[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => FIFO_S2MM_data_count(15),
      I1 => FIFO_S2MM_data_count(14),
      I2 => FIFO_S2MM_data_count(17),
      I3 => FIFO_S2MM_data_count(16),
      O => \FSM_onehot_s2mm_fsm_state[3]_i_3_n_0\
    );
\FSM_onehot_s2mm_fsm_state[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => FIFO_S2MM_data_count(19),
      I1 => FIFO_S2MM_data_count(18),
      I2 => FIFO_S2MM_data_count(21),
      I3 => FIFO_S2MM_data_count(20),
      O => \FSM_onehot_s2mm_fsm_state[3]_i_4_n_0\
    );
\FSM_onehot_s2mm_fsm_state[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => FIFO_S2MM_data_count(7),
      I1 => FIFO_S2MM_data_count(6),
      I2 => FIFO_S2MM_data_count(9),
      I3 => FIFO_S2MM_data_count(8),
      O => \FSM_onehot_s2mm_fsm_state[3]_i_5_n_0\
    );
\FSM_onehot_s2mm_fsm_state[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => FIFO_S2MM_data_count(11),
      I1 => FIFO_S2MM_data_count(10),
      I2 => FIFO_S2MM_data_count(13),
      I3 => FIFO_S2MM_data_count(12),
      O => \FSM_onehot_s2mm_fsm_state[3]_i_6_n_0\
    );
\FSM_onehot_s2mm_fsm_state[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => FIFO_S2MM_data_count(3),
      I1 => FIFO_S2MM_data_count(2),
      I2 => FIFO_S2MM_data_count(5),
      I3 => FIFO_S2MM_data_count(4),
      O => \FSM_onehot_s2mm_fsm_state[3]_i_7_n_0\
    );
\FSM_onehot_s2mm_fsm_state[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => FIFO_S2MM_data_count(24),
      I1 => FIFO_S2MM_data_count(25),
      I2 => FIFO_S2MM_data_count(22),
      I3 => FIFO_S2MM_data_count(23),
      I4 => FIFO_S2MM_data_count(1),
      I5 => FIFO_S2MM_data_count(0),
      O => \FSM_onehot_s2mm_fsm_state[3]_i_8_n_0\
    );
\FSM_onehot_s2mm_fsm_state[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => s_axis_s2mm_sts_tvalid,
      I1 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[3]\,
      O => \FSM_onehot_s2mm_fsm_state[4]_i_1_n_0\
    );
\FSM_onehot_s2mm_fsm_state[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[4]\,
      I1 => s_axis_s2mm_sts_tvalid,
      I2 => \FSM_onehot_s2mm_fsm_state[7]_i_2_n_0\,
      O => \FSM_onehot_s2mm_fsm_state[5]_i_1_n_0\
    );
\FSM_onehot_s2mm_fsm_state[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in7,
      O => \FSM_onehot_s2mm_fsm_state[6]_i_1_n_0\
    );
\FSM_onehot_s2mm_fsm_state[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state[7]_i_2_n_0\,
      I1 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[4]\,
      I2 => s_axis_s2mm_sts_tvalid,
      O => \FSM_onehot_s2mm_fsm_state[7]_i_1_n_0\
    );
\FSM_onehot_s2mm_fsm_state[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => s_axis_s2mm_sts_tdata(2),
      I1 => s_axis_s2mm_sts_tdata(3),
      I2 => s_axis_s2mm_sts_tdata(0),
      I3 => s_axis_s2mm_sts_tdata(1),
      I4 => \FSM_onehot_s2mm_fsm_state[7]_i_3_n_0\,
      O => \FSM_onehot_s2mm_fsm_state[7]_i_2_n_0\
    );
\FSM_onehot_s2mm_fsm_state[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => s_axis_s2mm_sts_tdata(5),
      I1 => s_axis_s2mm_sts_tdata(4),
      I2 => s_axis_s2mm_sts_tdata(7),
      I3 => s_axis_s2mm_sts_tdata(6),
      O => \FSM_onehot_s2mm_fsm_state[7]_i_3_n_0\
    );
\FSM_onehot_s2mm_fsm_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_s2mm_fsm_state[0]_i_1_n_0\,
      PRE => acquisition_in_progress_i_2_n_0,
      Q => \FSM_onehot_s2mm_fsm_state_reg_n_0_[0]\
    );
\FSM_onehot_s2mm_fsm_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => acquisition_in_progress_i_2_n_0,
      D => \FSM_onehot_s2mm_fsm_state[1]_i_1_n_0\,
      Q => \FSM_onehot_s2mm_fsm_state_reg_n_0_[1]\
    );
\FSM_onehot_s2mm_fsm_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => acquisition_in_progress_i_2_n_0,
      D => \FSM_onehot_s2mm_fsm_state[2]_i_1_n_0\,
      Q => \FSM_onehot_s2mm_fsm_state_reg_n_0_[2]\
    );
\FSM_onehot_s2mm_fsm_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => acquisition_in_progress_i_2_n_0,
      D => \FSM_onehot_s2mm_fsm_state[3]_i_1_n_0\,
      Q => \FSM_onehot_s2mm_fsm_state_reg_n_0_[3]\
    );
\FSM_onehot_s2mm_fsm_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => acquisition_in_progress_i_2_n_0,
      D => \FSM_onehot_s2mm_fsm_state[4]_i_1_n_0\,
      Q => \FSM_onehot_s2mm_fsm_state_reg_n_0_[4]\
    );
\FSM_onehot_s2mm_fsm_state_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => acquisition_in_progress_i_2_n_0,
      D => \FSM_onehot_s2mm_fsm_state[5]_i_1_n_0\,
      Q => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\
    );
\FSM_onehot_s2mm_fsm_state_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => acquisition_in_progress_i_2_n_0,
      D => \FSM_onehot_s2mm_fsm_state[6]_i_1_n_0\,
      Q => data_tvalid_int
    );
\FSM_onehot_s2mm_fsm_state_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => acquisition_in_progress_i_2_n_0,
      D => \FSM_onehot_s2mm_fsm_state[7]_i_1_n_0\,
      Q => error_ACQ_int
    );
acquisition_in_progress_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I3 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[4]\,
      O => acquisition_in_progress
    );
acquisition_in_progress_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => acquisition_in_progress_i_2_n_0
    );
acquisition_in_progress_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => acquisition_in_progress_i_2_n_0,
      D => acquisition_in_progress,
      Q => acquisition_in_progress_out
    );
bytes_sent0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => bytes_sent0_carry_n_0,
      CO(2) => bytes_sent0_carry_n_1,
      CO(1) => bytes_sent0_carry_n_2,
      CO(0) => bytes_sent0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => bytes_sent(9),
      DI(0) => '0',
      O(3 downto 0) => in8(11 downto 8),
      S(3 downto 2) => bytes_sent(11 downto 10),
      S(1) => bytes_sent0_carry_i_1_n_0,
      S(0) => bytes_sent(8)
    );
\bytes_sent0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => bytes_sent0_carry_n_0,
      CO(3) => \bytes_sent0_carry__0_n_0\,
      CO(2) => \bytes_sent0_carry__0_n_1\,
      CO(1) => \bytes_sent0_carry__0_n_2\,
      CO(0) => \bytes_sent0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(15 downto 12),
      S(3 downto 0) => bytes_sent(15 downto 12)
    );
\bytes_sent0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bytes_sent0_carry__0_n_0\,
      CO(3) => \bytes_sent0_carry__1_n_0\,
      CO(2) => \bytes_sent0_carry__1_n_1\,
      CO(1) => \bytes_sent0_carry__1_n_2\,
      CO(0) => \bytes_sent0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(19 downto 16),
      S(3 downto 0) => bytes_sent(19 downto 16)
    );
\bytes_sent0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \bytes_sent0_carry__1_n_0\,
      CO(3) => \bytes_sent0_carry__2_n_0\,
      CO(2) => \bytes_sent0_carry__2_n_1\,
      CO(1) => \bytes_sent0_carry__2_n_2\,
      CO(0) => \bytes_sent0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(23 downto 20),
      S(3 downto 0) => bytes_sent(23 downto 20)
    );
\bytes_sent0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \bytes_sent0_carry__2_n_0\,
      CO(3) => \bytes_sent0_carry__3_n_0\,
      CO(2) => \bytes_sent0_carry__3_n_1\,
      CO(1) => \bytes_sent0_carry__3_n_2\,
      CO(0) => \bytes_sent0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(27 downto 24),
      S(3 downto 0) => bytes_sent(27 downto 24)
    );
\bytes_sent0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \bytes_sent0_carry__3_n_0\,
      CO(3) => \NLW_bytes_sent0_carry__4_CO_UNCONNECTED\(3),
      CO(2) => \bytes_sent0_carry__4_n_1\,
      CO(1) => \bytes_sent0_carry__4_n_2\,
      CO(0) => \bytes_sent0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(31 downto 28),
      S(3 downto 0) => bytes_sent(31 downto 28)
    );
bytes_sent0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bytes_sent(9),
      O => bytes_sent0_carry_i_1_n_0
    );
\bytes_sent[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in8(10),
      O => bytes_sent_0(10)
    );
\bytes_sent[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in8(11),
      O => bytes_sent_0(11)
    );
\bytes_sent[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in8(12),
      O => bytes_sent_0(12)
    );
\bytes_sent[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in8(13),
      O => bytes_sent_0(13)
    );
\bytes_sent[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in8(14),
      O => bytes_sent_0(14)
    );
\bytes_sent[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in8(15),
      O => bytes_sent_0(15)
    );
\bytes_sent[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in8(16),
      O => bytes_sent_0(16)
    );
\bytes_sent[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in8(17),
      O => bytes_sent_0(17)
    );
\bytes_sent[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in8(18),
      O => bytes_sent_0(18)
    );
\bytes_sent[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in8(19),
      O => bytes_sent_0(19)
    );
\bytes_sent[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in8(20),
      O => bytes_sent_0(20)
    );
\bytes_sent[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in8(21),
      O => bytes_sent_0(21)
    );
\bytes_sent[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in8(22),
      O => bytes_sent_0(22)
    );
\bytes_sent[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in8(23),
      O => bytes_sent_0(23)
    );
\bytes_sent[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in8(24),
      O => bytes_sent_0(24)
    );
\bytes_sent[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in8(25),
      O => bytes_sent_0(25)
    );
\bytes_sent[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in8(26),
      O => bytes_sent_0(26)
    );
\bytes_sent[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in8(27),
      O => bytes_sent_0(27)
    );
\bytes_sent[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in8(28),
      O => bytes_sent_0(28)
    );
\bytes_sent[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in8(29),
      O => bytes_sent_0(29)
    );
\bytes_sent[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in8(30),
      O => bytes_sent_0(30)
    );
\bytes_sent[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      O => \bytes_sent[31]_i_1_n_0\
    );
\bytes_sent[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in8(31),
      O => bytes_sent_0(31)
    );
\bytes_sent[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in8(8),
      O => bytes_sent_0(8)
    );
\bytes_sent[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in8(9),
      O => bytes_sent_0(9)
    );
\bytes_sent_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bytes_sent[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => bytes_sent_0(10),
      Q => bytes_sent(10)
    );
\bytes_sent_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bytes_sent[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => bytes_sent_0(11),
      Q => bytes_sent(11)
    );
\bytes_sent_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bytes_sent[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => bytes_sent_0(12),
      Q => bytes_sent(12)
    );
\bytes_sent_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bytes_sent[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => bytes_sent_0(13),
      Q => bytes_sent(13)
    );
\bytes_sent_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bytes_sent[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => bytes_sent_0(14),
      Q => bytes_sent(14)
    );
\bytes_sent_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bytes_sent[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => bytes_sent_0(15),
      Q => bytes_sent(15)
    );
\bytes_sent_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bytes_sent[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => bytes_sent_0(16),
      Q => bytes_sent(16)
    );
\bytes_sent_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bytes_sent[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => bytes_sent_0(17),
      Q => bytes_sent(17)
    );
\bytes_sent_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bytes_sent[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => bytes_sent_0(18),
      Q => bytes_sent(18)
    );
\bytes_sent_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bytes_sent[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => bytes_sent_0(19),
      Q => bytes_sent(19)
    );
\bytes_sent_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bytes_sent[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => bytes_sent_0(20),
      Q => bytes_sent(20)
    );
\bytes_sent_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bytes_sent[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => bytes_sent_0(21),
      Q => bytes_sent(21)
    );
\bytes_sent_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bytes_sent[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => bytes_sent_0(22),
      Q => bytes_sent(22)
    );
\bytes_sent_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bytes_sent[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => bytes_sent_0(23),
      Q => bytes_sent(23)
    );
\bytes_sent_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bytes_sent[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => bytes_sent_0(24),
      Q => bytes_sent(24)
    );
\bytes_sent_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bytes_sent[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => bytes_sent_0(25),
      Q => bytes_sent(25)
    );
\bytes_sent_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bytes_sent[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => bytes_sent_0(26),
      Q => bytes_sent(26)
    );
\bytes_sent_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bytes_sent[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => bytes_sent_0(27),
      Q => bytes_sent(27)
    );
\bytes_sent_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bytes_sent[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => bytes_sent_0(28),
      Q => bytes_sent(28)
    );
\bytes_sent_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bytes_sent[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => bytes_sent_0(29),
      Q => bytes_sent(29)
    );
\bytes_sent_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bytes_sent[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => bytes_sent_0(30),
      Q => bytes_sent(30)
    );
\bytes_sent_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bytes_sent[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => bytes_sent_0(31),
      Q => bytes_sent(31)
    );
\bytes_sent_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bytes_sent[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => bytes_sent_0(8),
      Q => bytes_sent(8)
    );
\bytes_sent_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bytes_sent[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => bytes_sent_0(9),
      Q => bytes_sent(9)
    );
data_tvalid_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAAA"
    )
        port map (
      I0 => data_tvalid_int,
      I1 => error_ACQ_int,
      I2 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[1]\,
      I3 => acquisition_in_progress,
      I4 => \^status_out\(0),
      O => data_tvalid_int_i_1_n_0
    );
data_tvalid_int_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => acquisition_in_progress_i_2_n_0,
      D => data_tvalid_int_i_1_n_0,
      Q => \^status_out\(0)
    );
error_ACQ_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCDCCCC"
    )
        port map (
      I0 => data_tvalid_int,
      I1 => error_ACQ_int,
      I2 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[1]\,
      I3 => acquisition_in_progress,
      I4 => \^status_out\(1),
      O => error_ACQ_int_i_1_n_0
    );
error_ACQ_int_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => acquisition_in_progress_i_2_n_0,
      D => error_ACQ_int_i_1_n_0,
      Q => \^status_out\(1)
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => bytes_sent(23),
      I1 => s2mm_fsm_state2(23),
      I2 => bytes_sent(22),
      I3 => s2mm_fsm_state2(22),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => bytes_sent(21),
      I1 => s2mm_fsm_state2(21),
      I2 => bytes_sent(20),
      I3 => s2mm_fsm_state2(20),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => bytes_sent(19),
      I1 => s2mm_fsm_state2(19),
      I2 => bytes_sent(18),
      I3 => s2mm_fsm_state2(18),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => bytes_sent(17),
      I1 => s2mm_fsm_state2(17),
      I2 => bytes_sent(16),
      I3 => s2mm_fsm_state2(16),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s2mm_fsm_state2(23),
      I1 => bytes_sent(23),
      I2 => s2mm_fsm_state2(22),
      I3 => bytes_sent(22),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s2mm_fsm_state2(21),
      I1 => bytes_sent(21),
      I2 => s2mm_fsm_state2(20),
      I3 => bytes_sent(20),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s2mm_fsm_state2(19),
      I1 => bytes_sent(19),
      I2 => s2mm_fsm_state2(18),
      I3 => bytes_sent(18),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s2mm_fsm_state2(17),
      I1 => bytes_sent(17),
      I2 => s2mm_fsm_state2(16),
      I3 => bytes_sent(16),
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => bytes_sent(31),
      I1 => s2mm_fsm_state2(31),
      I2 => bytes_sent(30),
      I3 => s2mm_fsm_state2(30),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => bytes_sent(29),
      I1 => s2mm_fsm_state2(29),
      I2 => bytes_sent(28),
      I3 => s2mm_fsm_state2(28),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => bytes_sent(27),
      I1 => s2mm_fsm_state2(27),
      I2 => bytes_sent(26),
      I3 => s2mm_fsm_state2(26),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => bytes_sent(25),
      I1 => s2mm_fsm_state2(25),
      I2 => bytes_sent(24),
      I3 => s2mm_fsm_state2(24),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s2mm_fsm_state2(31),
      I1 => bytes_sent(31),
      I2 => s2mm_fsm_state2(30),
      I3 => bytes_sent(30),
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s2mm_fsm_state2(29),
      I1 => bytes_sent(29),
      I2 => s2mm_fsm_state2(28),
      I3 => bytes_sent(28),
      O => \i__carry__1_i_6_n_0\
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s2mm_fsm_state2(27),
      I1 => bytes_sent(27),
      I2 => s2mm_fsm_state2(26),
      I3 => bytes_sent(26),
      O => \i__carry__1_i_7_n_0\
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s2mm_fsm_state2(25),
      I1 => bytes_sent(25),
      I2 => s2mm_fsm_state2(24),
      I3 => bytes_sent(24),
      O => \i__carry__1_i_8_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => bytes_sent(15),
      I1 => s2mm_fsm_state2(15),
      I2 => bytes_sent(14),
      I3 => s2mm_fsm_state2(14),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => bytes_sent(13),
      I1 => s2mm_fsm_state2(13),
      I2 => bytes_sent(12),
      I3 => s2mm_fsm_state2(12),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => bytes_sent(11),
      I1 => s2mm_fsm_state2(11),
      I2 => bytes_sent(10),
      I3 => s2mm_fsm_state2(10),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => bytes_sent(9),
      I1 => s2mm_fsm_state2(9),
      I2 => bytes_sent(8),
      I3 => s2mm_fsm_state2(8),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s2mm_fsm_state2(15),
      I1 => bytes_sent(15),
      I2 => s2mm_fsm_state2(14),
      I3 => bytes_sent(14),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s2mm_fsm_state2(13),
      I1 => bytes_sent(13),
      I2 => s2mm_fsm_state2(12),
      I3 => bytes_sent(12),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s2mm_fsm_state2(11),
      I1 => bytes_sent(11),
      I2 => s2mm_fsm_state2(10),
      I3 => bytes_sent(10),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s2mm_fsm_state2(9),
      I1 => bytes_sent(9),
      I2 => s2mm_fsm_state2(8),
      I3 => bytes_sent(8),
      O => \i__carry_i_8_n_0\
    );
m_axis_s2mm_cmd_tdata0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => m_axis_s2mm_cmd_tdata0_carry_n_0,
      CO(2) => m_axis_s2mm_cmd_tdata0_carry_n_1,
      CO(1) => m_axis_s2mm_cmd_tdata0_carry_n_2,
      CO(0) => m_axis_s2mm_cmd_tdata0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => start_address(3 downto 0),
      O(3 downto 1) => m_axis_s2mm_cmd_tdata(3 downto 1),
      O(0) => NLW_m_axis_s2mm_cmd_tdata0_carry_O_UNCONNECTED(0),
      S(3) => m_axis_s2mm_cmd_tdata0_carry_i_1_n_0,
      S(2) => m_axis_s2mm_cmd_tdata0_carry_i_2_n_0,
      S(1) => m_axis_s2mm_cmd_tdata0_carry_i_3_n_0,
      S(0) => m_axis_s2mm_cmd_tdata0_carry_i_4_n_0
    );
\m_axis_s2mm_cmd_tdata0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => m_axis_s2mm_cmd_tdata0_carry_n_0,
      CO(3) => \m_axis_s2mm_cmd_tdata0_carry__0_n_0\,
      CO(2) => \m_axis_s2mm_cmd_tdata0_carry__0_n_1\,
      CO(1) => \m_axis_s2mm_cmd_tdata0_carry__0_n_2\,
      CO(0) => \m_axis_s2mm_cmd_tdata0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => start_address(7 downto 4),
      O(3 downto 0) => m_axis_s2mm_cmd_tdata(7 downto 4),
      S(3) => \m_axis_s2mm_cmd_tdata0_carry__0_i_1_n_0\,
      S(2) => \m_axis_s2mm_cmd_tdata0_carry__0_i_2_n_0\,
      S(1) => \m_axis_s2mm_cmd_tdata0_carry__0_i_3_n_0\,
      S(0) => \m_axis_s2mm_cmd_tdata0_carry__0_i_4_n_0\
    );
\m_axis_s2mm_cmd_tdata0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => start_address(7),
      I1 => s2mm_addr(15),
      O => \m_axis_s2mm_cmd_tdata0_carry__0_i_1_n_0\
    );
\m_axis_s2mm_cmd_tdata0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => start_address(6),
      I1 => s2mm_addr(14),
      O => \m_axis_s2mm_cmd_tdata0_carry__0_i_2_n_0\
    );
\m_axis_s2mm_cmd_tdata0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => start_address(5),
      I1 => s2mm_addr(13),
      O => \m_axis_s2mm_cmd_tdata0_carry__0_i_3_n_0\
    );
\m_axis_s2mm_cmd_tdata0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => start_address(4),
      I1 => s2mm_addr(12),
      O => \m_axis_s2mm_cmd_tdata0_carry__0_i_4_n_0\
    );
\m_axis_s2mm_cmd_tdata0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \m_axis_s2mm_cmd_tdata0_carry__0_n_0\,
      CO(3) => \m_axis_s2mm_cmd_tdata0_carry__1_n_0\,
      CO(2) => \m_axis_s2mm_cmd_tdata0_carry__1_n_1\,
      CO(1) => \m_axis_s2mm_cmd_tdata0_carry__1_n_2\,
      CO(0) => \m_axis_s2mm_cmd_tdata0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => start_address(11 downto 8),
      O(3 downto 0) => m_axis_s2mm_cmd_tdata(11 downto 8),
      S(3) => \m_axis_s2mm_cmd_tdata0_carry__1_i_1_n_0\,
      S(2) => \m_axis_s2mm_cmd_tdata0_carry__1_i_2_n_0\,
      S(1) => \m_axis_s2mm_cmd_tdata0_carry__1_i_3_n_0\,
      S(0) => \m_axis_s2mm_cmd_tdata0_carry__1_i_4_n_0\
    );
\m_axis_s2mm_cmd_tdata0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => start_address(11),
      I1 => s2mm_addr(19),
      O => \m_axis_s2mm_cmd_tdata0_carry__1_i_1_n_0\
    );
\m_axis_s2mm_cmd_tdata0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => start_address(10),
      I1 => s2mm_addr(18),
      O => \m_axis_s2mm_cmd_tdata0_carry__1_i_2_n_0\
    );
\m_axis_s2mm_cmd_tdata0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => start_address(9),
      I1 => s2mm_addr(17),
      O => \m_axis_s2mm_cmd_tdata0_carry__1_i_3_n_0\
    );
\m_axis_s2mm_cmd_tdata0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => start_address(8),
      I1 => s2mm_addr(16),
      O => \m_axis_s2mm_cmd_tdata0_carry__1_i_4_n_0\
    );
\m_axis_s2mm_cmd_tdata0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \m_axis_s2mm_cmd_tdata0_carry__1_n_0\,
      CO(3) => \m_axis_s2mm_cmd_tdata0_carry__2_n_0\,
      CO(2) => \m_axis_s2mm_cmd_tdata0_carry__2_n_1\,
      CO(1) => \m_axis_s2mm_cmd_tdata0_carry__2_n_2\,
      CO(0) => \m_axis_s2mm_cmd_tdata0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => start_address(15 downto 12),
      O(3 downto 0) => m_axis_s2mm_cmd_tdata(15 downto 12),
      S(3) => \m_axis_s2mm_cmd_tdata0_carry__2_i_1_n_0\,
      S(2) => \m_axis_s2mm_cmd_tdata0_carry__2_i_2_n_0\,
      S(1) => \m_axis_s2mm_cmd_tdata0_carry__2_i_3_n_0\,
      S(0) => \m_axis_s2mm_cmd_tdata0_carry__2_i_4_n_0\
    );
\m_axis_s2mm_cmd_tdata0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => start_address(15),
      I1 => s2mm_addr(23),
      O => \m_axis_s2mm_cmd_tdata0_carry__2_i_1_n_0\
    );
\m_axis_s2mm_cmd_tdata0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => start_address(14),
      I1 => s2mm_addr(22),
      O => \m_axis_s2mm_cmd_tdata0_carry__2_i_2_n_0\
    );
\m_axis_s2mm_cmd_tdata0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => start_address(13),
      I1 => s2mm_addr(21),
      O => \m_axis_s2mm_cmd_tdata0_carry__2_i_3_n_0\
    );
\m_axis_s2mm_cmd_tdata0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => start_address(12),
      I1 => s2mm_addr(20),
      O => \m_axis_s2mm_cmd_tdata0_carry__2_i_4_n_0\
    );
\m_axis_s2mm_cmd_tdata0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \m_axis_s2mm_cmd_tdata0_carry__2_n_0\,
      CO(3) => \m_axis_s2mm_cmd_tdata0_carry__3_n_0\,
      CO(2) => \m_axis_s2mm_cmd_tdata0_carry__3_n_1\,
      CO(1) => \m_axis_s2mm_cmd_tdata0_carry__3_n_2\,
      CO(0) => \m_axis_s2mm_cmd_tdata0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => start_address(19 downto 16),
      O(3 downto 0) => m_axis_s2mm_cmd_tdata(19 downto 16),
      S(3) => \m_axis_s2mm_cmd_tdata0_carry__3_i_1_n_0\,
      S(2) => \m_axis_s2mm_cmd_tdata0_carry__3_i_2_n_0\,
      S(1) => \m_axis_s2mm_cmd_tdata0_carry__3_i_3_n_0\,
      S(0) => \m_axis_s2mm_cmd_tdata0_carry__3_i_4_n_0\
    );
\m_axis_s2mm_cmd_tdata0_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => start_address(19),
      I1 => s2mm_addr(27),
      O => \m_axis_s2mm_cmd_tdata0_carry__3_i_1_n_0\
    );
\m_axis_s2mm_cmd_tdata0_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => start_address(18),
      I1 => s2mm_addr(26),
      O => \m_axis_s2mm_cmd_tdata0_carry__3_i_2_n_0\
    );
\m_axis_s2mm_cmd_tdata0_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => start_address(17),
      I1 => s2mm_addr(25),
      O => \m_axis_s2mm_cmd_tdata0_carry__3_i_3_n_0\
    );
\m_axis_s2mm_cmd_tdata0_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => start_address(16),
      I1 => s2mm_addr(24),
      O => \m_axis_s2mm_cmd_tdata0_carry__3_i_4_n_0\
    );
\m_axis_s2mm_cmd_tdata0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \m_axis_s2mm_cmd_tdata0_carry__3_n_0\,
      CO(3) => \NLW_m_axis_s2mm_cmd_tdata0_carry__4_CO_UNCONNECTED\(3),
      CO(2) => \m_axis_s2mm_cmd_tdata0_carry__4_n_1\,
      CO(1) => \m_axis_s2mm_cmd_tdata0_carry__4_n_2\,
      CO(0) => \m_axis_s2mm_cmd_tdata0_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => start_address(22 downto 20),
      O(3 downto 0) => m_axis_s2mm_cmd_tdata(23 downto 20),
      S(3) => \m_axis_s2mm_cmd_tdata0_carry__4_i_1_n_0\,
      S(2) => \m_axis_s2mm_cmd_tdata0_carry__4_i_2_n_0\,
      S(1) => \m_axis_s2mm_cmd_tdata0_carry__4_i_3_n_0\,
      S(0) => \m_axis_s2mm_cmd_tdata0_carry__4_i_4_n_0\
    );
\m_axis_s2mm_cmd_tdata0_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => start_address(23),
      I1 => s2mm_addr(31),
      O => \m_axis_s2mm_cmd_tdata0_carry__4_i_1_n_0\
    );
\m_axis_s2mm_cmd_tdata0_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => start_address(22),
      I1 => s2mm_addr(30),
      O => \m_axis_s2mm_cmd_tdata0_carry__4_i_2_n_0\
    );
\m_axis_s2mm_cmd_tdata0_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => start_address(21),
      I1 => s2mm_addr(29),
      O => \m_axis_s2mm_cmd_tdata0_carry__4_i_3_n_0\
    );
\m_axis_s2mm_cmd_tdata0_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => start_address(20),
      I1 => s2mm_addr(28),
      O => \m_axis_s2mm_cmd_tdata0_carry__4_i_4_n_0\
    );
m_axis_s2mm_cmd_tdata0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => start_address(3),
      I1 => s2mm_addr(11),
      O => m_axis_s2mm_cmd_tdata0_carry_i_1_n_0
    );
m_axis_s2mm_cmd_tdata0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => start_address(2),
      I1 => s2mm_addr(10),
      O => m_axis_s2mm_cmd_tdata0_carry_i_2_n_0
    );
m_axis_s2mm_cmd_tdata0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => start_address(1),
      I1 => s2mm_addr(9),
      O => m_axis_s2mm_cmd_tdata0_carry_i_3_n_0
    );
m_axis_s2mm_cmd_tdata0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => start_address(0),
      I1 => s2mm_addr(8),
      O => m_axis_s2mm_cmd_tdata0_carry_i_4_n_0
    );
\m_axis_s2mm_cmd_tdata[40]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => start_address(0),
      I1 => s2mm_addr(8),
      O => m_axis_s2mm_cmd_tdata(0)
    );
m_axis_s2mm_cmd_tvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => acquisition_in_progress_i_2_n_0,
      D => \FSM_onehot_s2mm_fsm_state_reg_n_0_[3]\,
      Q => m_axis_s2mm_cmd_tvalid
    );
reset_ACQ_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I2 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[3]\,
      I4 => error_ACQ_int,
      I5 => data_tvalid_int,
      O => reset_ACQ_i_1_n_0
    );
reset_ACQ_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => acquisition_in_progress_i_2_n_0,
      D => reset_ACQ_i_1_n_0,
      Q => reset_ACQ
    );
\reset_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[1]\,
      I1 => \reset_counter_reg_n_0_[0]\,
      O => \reset_counter[0]_i_1_n_0\
    );
\reset_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \reset_counter_reg_n_0_[0]\,
      I1 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[1]\,
      I2 => \reset_counter_reg_n_0_[1]\,
      O => reset_counter(1)
    );
\reset_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \reset_counter_reg_n_0_[0]\,
      I1 => \reset_counter_reg_n_0_[1]\,
      I2 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[1]\,
      I3 => \reset_counter_reg_n_0_[2]\,
      O => reset_counter(2)
    );
\reset_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \reset_counter_reg_n_0_[1]\,
      I1 => \reset_counter_reg_n_0_[0]\,
      I2 => \reset_counter_reg_n_0_[2]\,
      I3 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[1]\,
      I4 => \reset_counter_reg_n_0_[3]\,
      O => reset_counter(3)
    );
\reset_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => acquisition_in_progress_i_2_n_0,
      D => \reset_counter[0]_i_1_n_0\,
      Q => \reset_counter_reg_n_0_[0]\
    );
\reset_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => acquisition_in_progress_i_2_n_0,
      D => reset_counter(1),
      Q => \reset_counter_reg_n_0_[1]\
    );
\reset_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => acquisition_in_progress_i_2_n_0,
      D => reset_counter(2),
      Q => \reset_counter_reg_n_0_[2]\
    );
\reset_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => acquisition_in_progress_i_2_n_0,
      D => reset_counter(3),
      Q => \reset_counter_reg_n_0_[3]\
    );
s2mm_addr0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => s2mm_addr0_carry_n_0,
      CO(2) => s2mm_addr0_carry_n_1,
      CO(1) => s2mm_addr0_carry_n_2,
      CO(0) => s2mm_addr0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => s2mm_addr(9),
      DI(0) => '0',
      O(3 downto 0) => in9(11 downto 8),
      S(3 downto 2) => s2mm_addr(11 downto 10),
      S(1) => s2mm_addr0_carry_i_1_n_0,
      S(0) => s2mm_addr(8)
    );
\s2mm_addr0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => s2mm_addr0_carry_n_0,
      CO(3) => \s2mm_addr0_carry__0_n_0\,
      CO(2) => \s2mm_addr0_carry__0_n_1\,
      CO(1) => \s2mm_addr0_carry__0_n_2\,
      CO(0) => \s2mm_addr0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(15 downto 12),
      S(3 downto 0) => s2mm_addr(15 downto 12)
    );
\s2mm_addr0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s2mm_addr0_carry__0_n_0\,
      CO(3) => \s2mm_addr0_carry__1_n_0\,
      CO(2) => \s2mm_addr0_carry__1_n_1\,
      CO(1) => \s2mm_addr0_carry__1_n_2\,
      CO(0) => \s2mm_addr0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(19 downto 16),
      S(3 downto 0) => s2mm_addr(19 downto 16)
    );
\s2mm_addr0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s2mm_addr0_carry__1_n_0\,
      CO(3) => \s2mm_addr0_carry__2_n_0\,
      CO(2) => \s2mm_addr0_carry__2_n_1\,
      CO(1) => \s2mm_addr0_carry__2_n_2\,
      CO(0) => \s2mm_addr0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(23 downto 20),
      S(3 downto 0) => s2mm_addr(23 downto 20)
    );
\s2mm_addr0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \s2mm_addr0_carry__2_n_0\,
      CO(3) => \s2mm_addr0_carry__3_n_0\,
      CO(2) => \s2mm_addr0_carry__3_n_1\,
      CO(1) => \s2mm_addr0_carry__3_n_2\,
      CO(0) => \s2mm_addr0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(27 downto 24),
      S(3 downto 0) => s2mm_addr(27 downto 24)
    );
\s2mm_addr0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \s2mm_addr0_carry__3_n_0\,
      CO(3) => \NLW_s2mm_addr0_carry__4_CO_UNCONNECTED\(3),
      CO(2) => \s2mm_addr0_carry__4_n_1\,
      CO(1) => \s2mm_addr0_carry__4_n_2\,
      CO(0) => \s2mm_addr0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(31 downto 28),
      S(3 downto 0) => s2mm_addr(31 downto 28)
    );
s2mm_addr0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s2mm_addr(9),
      O => s2mm_addr0_carry_i_1_n_0
    );
\s2mm_addr[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in9(10),
      O => s2mm_addr_1(10)
    );
\s2mm_addr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in9(11),
      O => s2mm_addr_1(11)
    );
\s2mm_addr[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in9(12),
      O => s2mm_addr_1(12)
    );
\s2mm_addr[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in9(13),
      O => s2mm_addr_1(13)
    );
\s2mm_addr[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in9(14),
      O => s2mm_addr_1(14)
    );
\s2mm_addr[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in9(15),
      O => s2mm_addr_1(15)
    );
\s2mm_addr[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in9(16),
      O => s2mm_addr_1(16)
    );
\s2mm_addr[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in9(17),
      O => s2mm_addr_1(17)
    );
\s2mm_addr[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in9(18),
      O => s2mm_addr_1(18)
    );
\s2mm_addr[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in9(19),
      O => s2mm_addr_1(19)
    );
\s2mm_addr[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in9(20),
      O => s2mm_addr_1(20)
    );
\s2mm_addr[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in9(21),
      O => s2mm_addr_1(21)
    );
\s2mm_addr[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in9(22),
      O => s2mm_addr_1(22)
    );
\s2mm_addr[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in9(23),
      O => s2mm_addr_1(23)
    );
\s2mm_addr[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in9(24),
      O => s2mm_addr_1(24)
    );
\s2mm_addr[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in9(25),
      O => s2mm_addr_1(25)
    );
\s2mm_addr[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in9(26),
      O => s2mm_addr_1(26)
    );
\s2mm_addr[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in9(27),
      O => s2mm_addr_1(27)
    );
\s2mm_addr[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in9(28),
      O => s2mm_addr_1(28)
    );
\s2mm_addr[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in9(29),
      O => s2mm_addr_1(29)
    );
\s2mm_addr[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in9(30),
      O => s2mm_addr_1(30)
    );
\s2mm_addr[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[0]\,
      O => \s2mm_addr[31]_i_1_n_0\
    );
\s2mm_addr[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in9(31),
      O => s2mm_addr_1(31)
    );
\s2mm_addr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in9(8),
      O => s2mm_addr_1(8)
    );
\s2mm_addr[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_s2mm_fsm_state_reg_n_0_[5]\,
      I1 => in9(9),
      O => s2mm_addr_1(9)
    );
\s2mm_addr_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s2mm_addr[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => s2mm_addr_1(10),
      Q => s2mm_addr(10)
    );
\s2mm_addr_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s2mm_addr[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => s2mm_addr_1(11),
      Q => s2mm_addr(11)
    );
\s2mm_addr_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s2mm_addr[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => s2mm_addr_1(12),
      Q => s2mm_addr(12)
    );
\s2mm_addr_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s2mm_addr[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => s2mm_addr_1(13),
      Q => s2mm_addr(13)
    );
\s2mm_addr_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s2mm_addr[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => s2mm_addr_1(14),
      Q => s2mm_addr(14)
    );
\s2mm_addr_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s2mm_addr[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => s2mm_addr_1(15),
      Q => s2mm_addr(15)
    );
\s2mm_addr_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s2mm_addr[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => s2mm_addr_1(16),
      Q => s2mm_addr(16)
    );
\s2mm_addr_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s2mm_addr[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => s2mm_addr_1(17),
      Q => s2mm_addr(17)
    );
\s2mm_addr_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s2mm_addr[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => s2mm_addr_1(18),
      Q => s2mm_addr(18)
    );
\s2mm_addr_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s2mm_addr[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => s2mm_addr_1(19),
      Q => s2mm_addr(19)
    );
\s2mm_addr_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s2mm_addr[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => s2mm_addr_1(20),
      Q => s2mm_addr(20)
    );
\s2mm_addr_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s2mm_addr[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => s2mm_addr_1(21),
      Q => s2mm_addr(21)
    );
\s2mm_addr_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s2mm_addr[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => s2mm_addr_1(22),
      Q => s2mm_addr(22)
    );
\s2mm_addr_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s2mm_addr[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => s2mm_addr_1(23),
      Q => s2mm_addr(23)
    );
\s2mm_addr_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s2mm_addr[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => s2mm_addr_1(24),
      Q => s2mm_addr(24)
    );
\s2mm_addr_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s2mm_addr[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => s2mm_addr_1(25),
      Q => s2mm_addr(25)
    );
\s2mm_addr_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s2mm_addr[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => s2mm_addr_1(26),
      Q => s2mm_addr(26)
    );
\s2mm_addr_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s2mm_addr[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => s2mm_addr_1(27),
      Q => s2mm_addr(27)
    );
\s2mm_addr_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s2mm_addr[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => s2mm_addr_1(28),
      Q => s2mm_addr(28)
    );
\s2mm_addr_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s2mm_addr[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => s2mm_addr_1(29),
      Q => s2mm_addr(29)
    );
\s2mm_addr_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s2mm_addr[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => s2mm_addr_1(30),
      Q => s2mm_addr(30)
    );
\s2mm_addr_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s2mm_addr[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => s2mm_addr_1(31),
      Q => s2mm_addr(31)
    );
\s2mm_addr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s2mm_addr[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => s2mm_addr_1(8),
      Q => s2mm_addr(8)
    );
\s2mm_addr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \s2mm_addr[31]_i_1_n_0\,
      CLR => acquisition_in_progress_i_2_n_0,
      D => s2mm_addr_1(9),
      Q => s2mm_addr(9)
    );
\s2mm_fsm_state1_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s2mm_fsm_state1_inferred__1/i__carry_n_0\,
      CO(2) => \s2mm_fsm_state1_inferred__1/i__carry_n_1\,
      CO(1) => \s2mm_fsm_state1_inferred__1/i__carry_n_2\,
      CO(0) => \s2mm_fsm_state1_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_s2mm_fsm_state1_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\s2mm_fsm_state1_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \s2mm_fsm_state1_inferred__1/i__carry_n_0\,
      CO(3) => \s2mm_fsm_state1_inferred__1/i__carry__0_n_0\,
      CO(2) => \s2mm_fsm_state1_inferred__1/i__carry__0_n_1\,
      CO(1) => \s2mm_fsm_state1_inferred__1/i__carry__0_n_2\,
      CO(0) => \s2mm_fsm_state1_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1_n_0\,
      DI(2) => \i__carry__0_i_2_n_0\,
      DI(1) => \i__carry__0_i_3_n_0\,
      DI(0) => \i__carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_s2mm_fsm_state1_inferred__1/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\s2mm_fsm_state1_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s2mm_fsm_state1_inferred__1/i__carry__0_n_0\,
      CO(3) => in7,
      CO(2) => \s2mm_fsm_state1_inferred__1/i__carry__1_n_1\,
      CO(1) => \s2mm_fsm_state1_inferred__1/i__carry__1_n_2\,
      CO(0) => \s2mm_fsm_state1_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__1_i_1_n_0\,
      DI(2) => \i__carry__1_i_2_n_0\,
      DI(1) => \i__carry__1_i_3_n_0\,
      DI(0) => \i__carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_s2mm_fsm_state1_inferred__1/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_5_n_0\,
      S(2) => \i__carry__1_i_6_n_0\,
      S(1) => \i__carry__1_i_7_n_0\,
      S(0) => \i__carry__1_i_8_n_0\
    );
s2mm_fsm_state2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => s2mm_fsm_state2_carry_n_0,
      CO(2) => s2mm_fsm_state2_carry_n_1,
      CO(1) => s2mm_fsm_state2_carry_n_2,
      CO(0) => s2mm_fsm_state2_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => number_bytes(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => s2mm_fsm_state2(11 downto 8),
      S(3) => s2mm_fsm_state2_carry_i_1_n_0,
      S(2) => s2mm_fsm_state2_carry_i_2_n_0,
      S(1) => s2mm_fsm_state2_carry_i_3_n_0,
      S(0) => number_bytes(0)
    );
\s2mm_fsm_state2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => s2mm_fsm_state2_carry_n_0,
      CO(3) => \s2mm_fsm_state2_carry__0_n_0\,
      CO(2) => \s2mm_fsm_state2_carry__0_n_1\,
      CO(1) => \s2mm_fsm_state2_carry__0_n_2\,
      CO(0) => \s2mm_fsm_state2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => number_bytes(7 downto 4),
      O(3 downto 0) => s2mm_fsm_state2(15 downto 12),
      S(3) => \s2mm_fsm_state2_carry__0_i_1_n_0\,
      S(2) => \s2mm_fsm_state2_carry__0_i_2_n_0\,
      S(1) => \s2mm_fsm_state2_carry__0_i_3_n_0\,
      S(0) => \s2mm_fsm_state2_carry__0_i_4_n_0\
    );
\s2mm_fsm_state2_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => number_bytes(7),
      O => \s2mm_fsm_state2_carry__0_i_1_n_0\
    );
\s2mm_fsm_state2_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => number_bytes(6),
      O => \s2mm_fsm_state2_carry__0_i_2_n_0\
    );
\s2mm_fsm_state2_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => number_bytes(5),
      O => \s2mm_fsm_state2_carry__0_i_3_n_0\
    );
\s2mm_fsm_state2_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => number_bytes(4),
      O => \s2mm_fsm_state2_carry__0_i_4_n_0\
    );
\s2mm_fsm_state2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s2mm_fsm_state2_carry__0_n_0\,
      CO(3) => \s2mm_fsm_state2_carry__1_n_0\,
      CO(2) => \s2mm_fsm_state2_carry__1_n_1\,
      CO(1) => \s2mm_fsm_state2_carry__1_n_2\,
      CO(0) => \s2mm_fsm_state2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => number_bytes(11 downto 8),
      O(3 downto 0) => s2mm_fsm_state2(19 downto 16),
      S(3) => \s2mm_fsm_state2_carry__1_i_1_n_0\,
      S(2) => \s2mm_fsm_state2_carry__1_i_2_n_0\,
      S(1) => \s2mm_fsm_state2_carry__1_i_3_n_0\,
      S(0) => \s2mm_fsm_state2_carry__1_i_4_n_0\
    );
\s2mm_fsm_state2_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => number_bytes(11),
      O => \s2mm_fsm_state2_carry__1_i_1_n_0\
    );
\s2mm_fsm_state2_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => number_bytes(10),
      O => \s2mm_fsm_state2_carry__1_i_2_n_0\
    );
\s2mm_fsm_state2_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => number_bytes(9),
      O => \s2mm_fsm_state2_carry__1_i_3_n_0\
    );
\s2mm_fsm_state2_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => number_bytes(8),
      O => \s2mm_fsm_state2_carry__1_i_4_n_0\
    );
\s2mm_fsm_state2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s2mm_fsm_state2_carry__1_n_0\,
      CO(3) => \s2mm_fsm_state2_carry__2_n_0\,
      CO(2) => \s2mm_fsm_state2_carry__2_n_1\,
      CO(1) => \s2mm_fsm_state2_carry__2_n_2\,
      CO(0) => \s2mm_fsm_state2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => number_bytes(15 downto 12),
      O(3 downto 0) => s2mm_fsm_state2(23 downto 20),
      S(3) => \s2mm_fsm_state2_carry__2_i_1_n_0\,
      S(2) => \s2mm_fsm_state2_carry__2_i_2_n_0\,
      S(1) => \s2mm_fsm_state2_carry__2_i_3_n_0\,
      S(0) => \s2mm_fsm_state2_carry__2_i_4_n_0\
    );
\s2mm_fsm_state2_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => number_bytes(15),
      O => \s2mm_fsm_state2_carry__2_i_1_n_0\
    );
\s2mm_fsm_state2_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => number_bytes(14),
      O => \s2mm_fsm_state2_carry__2_i_2_n_0\
    );
\s2mm_fsm_state2_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => number_bytes(13),
      O => \s2mm_fsm_state2_carry__2_i_3_n_0\
    );
\s2mm_fsm_state2_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => number_bytes(12),
      O => \s2mm_fsm_state2_carry__2_i_4_n_0\
    );
\s2mm_fsm_state2_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \s2mm_fsm_state2_carry__2_n_0\,
      CO(3) => \s2mm_fsm_state2_carry__3_n_0\,
      CO(2) => \s2mm_fsm_state2_carry__3_n_1\,
      CO(1) => \s2mm_fsm_state2_carry__3_n_2\,
      CO(0) => \s2mm_fsm_state2_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => number_bytes(19 downto 16),
      O(3 downto 0) => s2mm_fsm_state2(27 downto 24),
      S(3) => \s2mm_fsm_state2_carry__3_i_1_n_0\,
      S(2) => \s2mm_fsm_state2_carry__3_i_2_n_0\,
      S(1) => \s2mm_fsm_state2_carry__3_i_3_n_0\,
      S(0) => \s2mm_fsm_state2_carry__3_i_4_n_0\
    );
\s2mm_fsm_state2_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => number_bytes(19),
      O => \s2mm_fsm_state2_carry__3_i_1_n_0\
    );
\s2mm_fsm_state2_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => number_bytes(18),
      O => \s2mm_fsm_state2_carry__3_i_2_n_0\
    );
\s2mm_fsm_state2_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => number_bytes(17),
      O => \s2mm_fsm_state2_carry__3_i_3_n_0\
    );
\s2mm_fsm_state2_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => number_bytes(16),
      O => \s2mm_fsm_state2_carry__3_i_4_n_0\
    );
\s2mm_fsm_state2_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \s2mm_fsm_state2_carry__3_n_0\,
      CO(3) => \NLW_s2mm_fsm_state2_carry__4_CO_UNCONNECTED\(3),
      CO(2) => \s2mm_fsm_state2_carry__4_n_1\,
      CO(1) => \s2mm_fsm_state2_carry__4_n_2\,
      CO(0) => \s2mm_fsm_state2_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => number_bytes(22 downto 20),
      O(3 downto 0) => s2mm_fsm_state2(31 downto 28),
      S(3) => \s2mm_fsm_state2_carry__4_i_1_n_0\,
      S(2) => \s2mm_fsm_state2_carry__4_i_2_n_0\,
      S(1) => \s2mm_fsm_state2_carry__4_i_3_n_0\,
      S(0) => \s2mm_fsm_state2_carry__4_i_4_n_0\
    );
\s2mm_fsm_state2_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => number_bytes(23),
      O => \s2mm_fsm_state2_carry__4_i_1_n_0\
    );
\s2mm_fsm_state2_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => number_bytes(22),
      O => \s2mm_fsm_state2_carry__4_i_2_n_0\
    );
\s2mm_fsm_state2_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => number_bytes(21),
      O => \s2mm_fsm_state2_carry__4_i_3_n_0\
    );
\s2mm_fsm_state2_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => number_bytes(20),
      O => \s2mm_fsm_state2_carry__4_i_4_n_0\
    );
s2mm_fsm_state2_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => number_bytes(3),
      O => s2mm_fsm_state2_carry_i_1_n_0
    );
s2mm_fsm_state2_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => number_bytes(2),
      O => s2mm_fsm_state2_carry_i_2_n_0
    );
s2mm_fsm_state2_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => number_bytes(1),
      O => s2mm_fsm_state2_carry_i_3_n_0
    );
start_new_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => acquisition_in_progress_i_2_n_0,
      D => start_sig,
      Q => start_new
    );
start_old_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => acquisition_in_progress_i_2_n_0,
      D => start_new,
      Q => start_old
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Acquisition_top_0_0_axis_dwidth_converter_v1_1_18_axisc_upsizer is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[1]_0\ : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    areset_r : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Acquisition_top_0_0_axis_dwidth_converter_v1_1_18_axisc_upsizer : entity is "axis_dwidth_converter_v1_1_18_axisc_upsizer";
end design_1_Acquisition_top_0_0_axis_dwidth_converter_v1_1_18_axisc_upsizer;

architecture STRUCTURE of design_1_Acquisition_top_0_0_axis_dwidth_converter_v1_1_18_axisc_upsizer is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \acc_data[63]_i_1_n_0\ : STD_LOGIC;
  signal \gen_data_accumulator[1].acc_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \gen_data_accumulator[2].acc_data[47]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in2_in : STD_LOGIC;
  signal r0_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \r0_reg_sel[0]_i_1_n_0\ : STD_LOGIC;
  signal \r0_reg_sel[1]_i_1_n_0\ : STD_LOGIC;
  signal \r0_reg_sel[2]_i_1_n_0\ : STD_LOGIC;
  signal \r0_reg_sel[3]_i_1_n_0\ : STD_LOGIC;
  signal \r0_reg_sel[3]_i_2_n_0\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[0]\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[1]\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[2]\ : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_3_n_0\ : STD_LOGIC;
  signal \^state_reg[1]_0\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r0_reg_sel[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \state[2]_i_2\ : label is "soft_lutpair1";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[2]\ : label is "none";
begin
  E(0) <= \^e\(0);
  \state_reg[1]_0\ <= \^state_reg[1]_0\;
\acc_data[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \^e\(0),
      I2 => \^state_reg[1]_0\,
      I3 => \r0_reg_sel_reg_n_0_[0]\,
      O => p_0_in
    );
\acc_data[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^e\(0),
      I1 => \^state_reg[1]_0\,
      O => \acc_data[63]_i_1_n_0\
    );
\acc_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(0),
      Q => m_axis_tdata(0),
      R => '0'
    );
\acc_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(10),
      Q => m_axis_tdata(10),
      R => '0'
    );
\acc_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(11),
      Q => m_axis_tdata(11),
      R => '0'
    );
\acc_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(12),
      Q => m_axis_tdata(12),
      R => '0'
    );
\acc_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(13),
      Q => m_axis_tdata(13),
      R => '0'
    );
\acc_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(14),
      Q => m_axis_tdata(14),
      R => '0'
    );
\acc_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(15),
      Q => m_axis_tdata(15),
      R => '0'
    );
\acc_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(1),
      Q => m_axis_tdata(1),
      R => '0'
    );
\acc_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(2),
      Q => m_axis_tdata(2),
      R => '0'
    );
\acc_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(3),
      Q => m_axis_tdata(3),
      R => '0'
    );
\acc_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(0),
      Q => m_axis_tdata(48),
      R => '0'
    );
\acc_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(1),
      Q => m_axis_tdata(49),
      R => '0'
    );
\acc_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(4),
      Q => m_axis_tdata(4),
      R => '0'
    );
\acc_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(2),
      Q => m_axis_tdata(50),
      R => '0'
    );
\acc_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(3),
      Q => m_axis_tdata(51),
      R => '0'
    );
\acc_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(4),
      Q => m_axis_tdata(52),
      R => '0'
    );
\acc_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(5),
      Q => m_axis_tdata(53),
      R => '0'
    );
\acc_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(6),
      Q => m_axis_tdata(54),
      R => '0'
    );
\acc_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(7),
      Q => m_axis_tdata(55),
      R => '0'
    );
\acc_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(8),
      Q => m_axis_tdata(56),
      R => '0'
    );
\acc_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(9),
      Q => m_axis_tdata(57),
      R => '0'
    );
\acc_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(10),
      Q => m_axis_tdata(58),
      R => '0'
    );
\acc_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(11),
      Q => m_axis_tdata(59),
      R => '0'
    );
\acc_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(5),
      Q => m_axis_tdata(5),
      R => '0'
    );
\acc_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(12),
      Q => m_axis_tdata(60),
      R => '0'
    );
\acc_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(13),
      Q => m_axis_tdata(61),
      R => '0'
    );
\acc_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(14),
      Q => m_axis_tdata(62),
      R => '0'
    );
\acc_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(15),
      Q => m_axis_tdata(63),
      R => '0'
    );
\acc_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(6),
      Q => m_axis_tdata(6),
      R => '0'
    );
\acc_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(7),
      Q => m_axis_tdata(7),
      R => '0'
    );
\acc_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(8),
      Q => m_axis_tdata(8),
      R => '0'
    );
\acc_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(9),
      Q => m_axis_tdata(9),
      R => '0'
    );
\gen_data_accumulator[1].acc_data[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \^e\(0),
      I2 => \^state_reg[1]_0\,
      I3 => \r0_reg_sel_reg_n_0_[1]\,
      O => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\
    );
\gen_data_accumulator[1].acc_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(0),
      Q => m_axis_tdata(16),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(1),
      Q => m_axis_tdata(17),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(2),
      Q => m_axis_tdata(18),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(3),
      Q => m_axis_tdata(19),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(4),
      Q => m_axis_tdata(20),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(5),
      Q => m_axis_tdata(21),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(6),
      Q => m_axis_tdata(22),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(7),
      Q => m_axis_tdata(23),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(8),
      Q => m_axis_tdata(24),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(9),
      Q => m_axis_tdata(25),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(10),
      Q => m_axis_tdata(26),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(11),
      Q => m_axis_tdata(27),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(12),
      Q => m_axis_tdata(28),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(13),
      Q => m_axis_tdata(29),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(14),
      Q => m_axis_tdata(30),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(15),
      Q => m_axis_tdata(31),
      R => '0'
    );
\gen_data_accumulator[2].acc_data[47]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^state_reg[1]_0\,
      I1 => \^e\(0),
      I2 => \state_reg_n_0_[2]\,
      I3 => \r0_reg_sel_reg_n_0_[2]\,
      O => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\
    );
\gen_data_accumulator[2].acc_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(0),
      Q => m_axis_tdata(32),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(1),
      Q => m_axis_tdata(33),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(2),
      Q => m_axis_tdata(34),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(3),
      Q => m_axis_tdata(35),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(4),
      Q => m_axis_tdata(36),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(5),
      Q => m_axis_tdata(37),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(6),
      Q => m_axis_tdata(38),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(7),
      Q => m_axis_tdata(39),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(8),
      Q => m_axis_tdata(40),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(9),
      Q => m_axis_tdata(41),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(10),
      Q => m_axis_tdata(42),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(11),
      Q => m_axis_tdata(43),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(12),
      Q => m_axis_tdata(44),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(13),
      Q => m_axis_tdata(45),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(14),
      Q => m_axis_tdata(46),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(15),
      Q => m_axis_tdata(47),
      R => '0'
    );
\r0_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(0),
      Q => r0_data(0),
      R => '0'
    );
\r0_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(10),
      Q => r0_data(10),
      R => '0'
    );
\r0_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(11),
      Q => r0_data(11),
      R => '0'
    );
\r0_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(12),
      Q => r0_data(12),
      R => '0'
    );
\r0_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(13),
      Q => r0_data(13),
      R => '0'
    );
\r0_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(14),
      Q => r0_data(14),
      R => '0'
    );
\r0_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(15),
      Q => r0_data(15),
      R => '0'
    );
\r0_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(1),
      Q => r0_data(1),
      R => '0'
    );
\r0_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(2),
      Q => r0_data(2),
      R => '0'
    );
\r0_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(3),
      Q => r0_data(3),
      R => '0'
    );
\r0_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(4),
      Q => r0_data(4),
      R => '0'
    );
\r0_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(5),
      Q => r0_data(5),
      R => '0'
    );
\r0_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(6),
      Q => r0_data(6),
      R => '0'
    );
\r0_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(7),
      Q => r0_data(7),
      R => '0'
    );
\r0_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(8),
      Q => r0_data(8),
      R => '0'
    );
\r0_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(9),
      Q => r0_data(9),
      R => '0'
    );
\r0_reg_sel[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF70FFF0FF70"
    )
        port map (
      I0 => \^e\(0),
      I1 => \state_reg_n_0_[2]\,
      I2 => \r0_reg_sel_reg_n_0_[0]\,
      I3 => areset_r,
      I4 => \^state_reg[1]_0\,
      I5 => m_axis_tready,
      O => \r0_reg_sel[0]_i_1_n_0\
    );
\r0_reg_sel[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E200E200E2"
    )
        port map (
      I0 => \r0_reg_sel_reg_n_0_[1]\,
      I1 => \r0_reg_sel[3]_i_2_n_0\,
      I2 => \r0_reg_sel_reg_n_0_[0]\,
      I3 => areset_r,
      I4 => \^state_reg[1]_0\,
      I5 => m_axis_tready,
      O => \r0_reg_sel[1]_i_1_n_0\
    );
\r0_reg_sel[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E200E200E2"
    )
        port map (
      I0 => \r0_reg_sel_reg_n_0_[2]\,
      I1 => \r0_reg_sel[3]_i_2_n_0\,
      I2 => \r0_reg_sel_reg_n_0_[1]\,
      I3 => areset_r,
      I4 => \^state_reg[1]_0\,
      I5 => m_axis_tready,
      O => \r0_reg_sel[2]_i_1_n_0\
    );
\r0_reg_sel[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E200E200E2"
    )
        port map (
      I0 => p_1_in2_in,
      I1 => \r0_reg_sel[3]_i_2_n_0\,
      I2 => \r0_reg_sel_reg_n_0_[2]\,
      I3 => areset_r,
      I4 => \^state_reg[1]_0\,
      I5 => m_axis_tready,
      O => \r0_reg_sel[3]_i_1_n_0\
    );
\r0_reg_sel[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^state_reg[1]_0\,
      I1 => \^e\(0),
      I2 => \state_reg_n_0_[2]\,
      O => \r0_reg_sel[3]_i_2_n_0\
    );
\r0_reg_sel_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \r0_reg_sel[0]_i_1_n_0\,
      Q => \r0_reg_sel_reg_n_0_[0]\,
      R => '0'
    );
\r0_reg_sel_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \r0_reg_sel[1]_i_1_n_0\,
      Q => \r0_reg_sel_reg_n_0_[1]\,
      R => '0'
    );
\r0_reg_sel_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \r0_reg_sel[2]_i_1_n_0\,
      Q => \r0_reg_sel_reg_n_0_[2]\,
      R => '0'
    );
\r0_reg_sel_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \r0_reg_sel[3]_i_1_n_0\,
      Q => p_1_in2_in,
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFF4F"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \^e\(0),
      I2 => \^state_reg[1]_0\,
      I3 => \state_reg_n_0_[2]\,
      I4 => m_axis_tready,
      I5 => areset_r,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF02"
    )
        port map (
      I0 => \^state_reg[1]_0\,
      I1 => \state_reg_n_0_[2]\,
      I2 => m_axis_tready,
      I3 => \state[1]_i_2_n_0\,
      I4 => areset_r,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080808000000"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \^e\(0),
      I2 => \^state_reg[1]_0\,
      I3 => \r0_reg_sel_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[2]\,
      I5 => p_1_in2_in,
      O => \state[1]_i_2_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAEA"
    )
        port map (
      I0 => \state[2]_i_2_n_0\,
      I1 => s_axis_tvalid,
      I2 => \^e\(0),
      I3 => \^state_reg[1]_0\,
      I4 => \state[2]_i_3_n_0\,
      I5 => areset_r,
      O => \state[2]_i_1_n_0\
    );
\state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A00"
    )
        port map (
      I0 => m_axis_tready,
      I1 => s_axis_tvalid,
      I2 => \^e\(0),
      I3 => \^state_reg[1]_0\,
      I4 => \state_reg_n_0_[2]\,
      O => \state[2]_i_2_n_0\
    );
\state[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => p_1_in2_in,
      I1 => \state_reg_n_0_[2]\,
      I2 => \r0_reg_sel_reg_n_0_[2]\,
      O => \state[2]_i_3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \^e\(0),
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \^state_reg[1]_0\,
      R => '0'
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \state[2]_i_1_n_0\,
      Q => \state_reg_n_0_[2]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Acquisition_top_0_0_axis_dwidth_converter_v1_1_18_axisc_upsizer_1 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[1]_0\ : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    areset_r : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Acquisition_top_0_0_axis_dwidth_converter_v1_1_18_axisc_upsizer_1 : entity is "axis_dwidth_converter_v1_1_18_axisc_upsizer";
end design_1_Acquisition_top_0_0_axis_dwidth_converter_v1_1_18_axisc_upsizer_1;

architecture STRUCTURE of design_1_Acquisition_top_0_0_axis_dwidth_converter_v1_1_18_axisc_upsizer_1 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \acc_data[63]_i_1_n_0\ : STD_LOGIC;
  signal \gen_data_accumulator[1].acc_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \gen_data_accumulator[2].acc_data[47]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in2_in : STD_LOGIC;
  signal r0_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \r0_reg_sel[0]_i_1_n_0\ : STD_LOGIC;
  signal \r0_reg_sel[1]_i_1_n_0\ : STD_LOGIC;
  signal \r0_reg_sel[2]_i_1_n_0\ : STD_LOGIC;
  signal \r0_reg_sel[3]_i_1_n_0\ : STD_LOGIC;
  signal \r0_reg_sel[3]_i_2_n_0\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[0]\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[1]\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[2]\ : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_3_n_0\ : STD_LOGIC;
  signal \^state_reg[1]_0\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r0_reg_sel[3]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \state[2]_i_2\ : label is "soft_lutpair0";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[2]\ : label is "none";
begin
  E(0) <= \^e\(0);
  \state_reg[1]_0\ <= \^state_reg[1]_0\;
\acc_data[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \^e\(0),
      I2 => \^state_reg[1]_0\,
      I3 => \r0_reg_sel_reg_n_0_[0]\,
      O => p_0_in
    );
\acc_data[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^e\(0),
      I1 => \^state_reg[1]_0\,
      O => \acc_data[63]_i_1_n_0\
    );
\acc_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(0),
      Q => m_axis_tdata(0),
      R => '0'
    );
\acc_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(10),
      Q => m_axis_tdata(10),
      R => '0'
    );
\acc_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(11),
      Q => m_axis_tdata(11),
      R => '0'
    );
\acc_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(12),
      Q => m_axis_tdata(12),
      R => '0'
    );
\acc_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(13),
      Q => m_axis_tdata(13),
      R => '0'
    );
\acc_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(14),
      Q => m_axis_tdata(14),
      R => '0'
    );
\acc_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(15),
      Q => m_axis_tdata(15),
      R => '0'
    );
\acc_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(1),
      Q => m_axis_tdata(1),
      R => '0'
    );
\acc_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(2),
      Q => m_axis_tdata(2),
      R => '0'
    );
\acc_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(3),
      Q => m_axis_tdata(3),
      R => '0'
    );
\acc_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(0),
      Q => m_axis_tdata(48),
      R => '0'
    );
\acc_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(1),
      Q => m_axis_tdata(49),
      R => '0'
    );
\acc_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(4),
      Q => m_axis_tdata(4),
      R => '0'
    );
\acc_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(2),
      Q => m_axis_tdata(50),
      R => '0'
    );
\acc_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(3),
      Q => m_axis_tdata(51),
      R => '0'
    );
\acc_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(4),
      Q => m_axis_tdata(52),
      R => '0'
    );
\acc_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(5),
      Q => m_axis_tdata(53),
      R => '0'
    );
\acc_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(6),
      Q => m_axis_tdata(54),
      R => '0'
    );
\acc_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(7),
      Q => m_axis_tdata(55),
      R => '0'
    );
\acc_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(8),
      Q => m_axis_tdata(56),
      R => '0'
    );
\acc_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(9),
      Q => m_axis_tdata(57),
      R => '0'
    );
\acc_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(10),
      Q => m_axis_tdata(58),
      R => '0'
    );
\acc_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(11),
      Q => m_axis_tdata(59),
      R => '0'
    );
\acc_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(5),
      Q => m_axis_tdata(5),
      R => '0'
    );
\acc_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(12),
      Q => m_axis_tdata(60),
      R => '0'
    );
\acc_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(13),
      Q => m_axis_tdata(61),
      R => '0'
    );
\acc_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(14),
      Q => m_axis_tdata(62),
      R => '0'
    );
\acc_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(15),
      Q => m_axis_tdata(63),
      R => '0'
    );
\acc_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(6),
      Q => m_axis_tdata(6),
      R => '0'
    );
\acc_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(7),
      Q => m_axis_tdata(7),
      R => '0'
    );
\acc_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(8),
      Q => m_axis_tdata(8),
      R => '0'
    );
\acc_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(9),
      Q => m_axis_tdata(9),
      R => '0'
    );
\gen_data_accumulator[1].acc_data[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \^e\(0),
      I2 => \^state_reg[1]_0\,
      I3 => \r0_reg_sel_reg_n_0_[1]\,
      O => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\
    );
\gen_data_accumulator[1].acc_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(0),
      Q => m_axis_tdata(16),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(1),
      Q => m_axis_tdata(17),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(2),
      Q => m_axis_tdata(18),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(3),
      Q => m_axis_tdata(19),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(4),
      Q => m_axis_tdata(20),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(5),
      Q => m_axis_tdata(21),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(6),
      Q => m_axis_tdata(22),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(7),
      Q => m_axis_tdata(23),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(8),
      Q => m_axis_tdata(24),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(9),
      Q => m_axis_tdata(25),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(10),
      Q => m_axis_tdata(26),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(11),
      Q => m_axis_tdata(27),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(12),
      Q => m_axis_tdata(28),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(13),
      Q => m_axis_tdata(29),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(14),
      Q => m_axis_tdata(30),
      R => '0'
    );
\gen_data_accumulator[1].acc_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[1].acc_data[31]_i_1_n_0\,
      D => r0_data(15),
      Q => m_axis_tdata(31),
      R => '0'
    );
\gen_data_accumulator[2].acc_data[47]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^state_reg[1]_0\,
      I1 => \^e\(0),
      I2 => \state_reg_n_0_[2]\,
      I3 => \r0_reg_sel_reg_n_0_[2]\,
      O => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\
    );
\gen_data_accumulator[2].acc_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(0),
      Q => m_axis_tdata(32),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(1),
      Q => m_axis_tdata(33),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(2),
      Q => m_axis_tdata(34),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(3),
      Q => m_axis_tdata(35),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(4),
      Q => m_axis_tdata(36),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(5),
      Q => m_axis_tdata(37),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(6),
      Q => m_axis_tdata(38),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(7),
      Q => m_axis_tdata(39),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(8),
      Q => m_axis_tdata(40),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(9),
      Q => m_axis_tdata(41),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(10),
      Q => m_axis_tdata(42),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(11),
      Q => m_axis_tdata(43),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(12),
      Q => m_axis_tdata(44),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(13),
      Q => m_axis_tdata(45),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(14),
      Q => m_axis_tdata(46),
      R => '0'
    );
\gen_data_accumulator[2].acc_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_data_accumulator[2].acc_data[47]_i_1_n_0\,
      D => r0_data(15),
      Q => m_axis_tdata(47),
      R => '0'
    );
\r0_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(0),
      Q => r0_data(0),
      R => '0'
    );
\r0_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(10),
      Q => r0_data(10),
      R => '0'
    );
\r0_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(11),
      Q => r0_data(11),
      R => '0'
    );
\r0_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(12),
      Q => r0_data(12),
      R => '0'
    );
\r0_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(13),
      Q => r0_data(13),
      R => '0'
    );
\r0_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(14),
      Q => r0_data(14),
      R => '0'
    );
\r0_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(15),
      Q => r0_data(15),
      R => '0'
    );
\r0_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(1),
      Q => r0_data(1),
      R => '0'
    );
\r0_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(2),
      Q => r0_data(2),
      R => '0'
    );
\r0_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(3),
      Q => r0_data(3),
      R => '0'
    );
\r0_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(4),
      Q => r0_data(4),
      R => '0'
    );
\r0_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(5),
      Q => r0_data(5),
      R => '0'
    );
\r0_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(6),
      Q => r0_data(6),
      R => '0'
    );
\r0_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(7),
      Q => r0_data(7),
      R => '0'
    );
\r0_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(8),
      Q => r0_data(8),
      R => '0'
    );
\r0_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(9),
      Q => r0_data(9),
      R => '0'
    );
\r0_reg_sel[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF70FFF0FF70"
    )
        port map (
      I0 => \^e\(0),
      I1 => \state_reg_n_0_[2]\,
      I2 => \r0_reg_sel_reg_n_0_[0]\,
      I3 => areset_r,
      I4 => \^state_reg[1]_0\,
      I5 => m_axis_tready,
      O => \r0_reg_sel[0]_i_1_n_0\
    );
\r0_reg_sel[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E200E200E2"
    )
        port map (
      I0 => \r0_reg_sel_reg_n_0_[1]\,
      I1 => \r0_reg_sel[3]_i_2_n_0\,
      I2 => \r0_reg_sel_reg_n_0_[0]\,
      I3 => areset_r,
      I4 => \^state_reg[1]_0\,
      I5 => m_axis_tready,
      O => \r0_reg_sel[1]_i_1_n_0\
    );
\r0_reg_sel[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E200E200E2"
    )
        port map (
      I0 => \r0_reg_sel_reg_n_0_[2]\,
      I1 => \r0_reg_sel[3]_i_2_n_0\,
      I2 => \r0_reg_sel_reg_n_0_[1]\,
      I3 => areset_r,
      I4 => \^state_reg[1]_0\,
      I5 => m_axis_tready,
      O => \r0_reg_sel[2]_i_1_n_0\
    );
\r0_reg_sel[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E200E200E2"
    )
        port map (
      I0 => p_1_in2_in,
      I1 => \r0_reg_sel[3]_i_2_n_0\,
      I2 => \r0_reg_sel_reg_n_0_[2]\,
      I3 => areset_r,
      I4 => \^state_reg[1]_0\,
      I5 => m_axis_tready,
      O => \r0_reg_sel[3]_i_1_n_0\
    );
\r0_reg_sel[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^state_reg[1]_0\,
      I1 => \^e\(0),
      I2 => \state_reg_n_0_[2]\,
      O => \r0_reg_sel[3]_i_2_n_0\
    );
\r0_reg_sel_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \r0_reg_sel[0]_i_1_n_0\,
      Q => \r0_reg_sel_reg_n_0_[0]\,
      R => '0'
    );
\r0_reg_sel_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \r0_reg_sel[1]_i_1_n_0\,
      Q => \r0_reg_sel_reg_n_0_[1]\,
      R => '0'
    );
\r0_reg_sel_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \r0_reg_sel[2]_i_1_n_0\,
      Q => \r0_reg_sel_reg_n_0_[2]\,
      R => '0'
    );
\r0_reg_sel_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \r0_reg_sel[3]_i_1_n_0\,
      Q => p_1_in2_in,
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFF4F"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \^e\(0),
      I2 => \^state_reg[1]_0\,
      I3 => \state_reg_n_0_[2]\,
      I4 => m_axis_tready,
      I5 => areset_r,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF02"
    )
        port map (
      I0 => \^state_reg[1]_0\,
      I1 => \state_reg_n_0_[2]\,
      I2 => m_axis_tready,
      I3 => \state[1]_i_2_n_0\,
      I4 => areset_r,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080808000000"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \^e\(0),
      I2 => \^state_reg[1]_0\,
      I3 => \r0_reg_sel_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[2]\,
      I5 => p_1_in2_in,
      O => \state[1]_i_2_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAEA"
    )
        port map (
      I0 => \state[2]_i_2_n_0\,
      I1 => s_axis_tvalid,
      I2 => \^e\(0),
      I3 => \^state_reg[1]_0\,
      I4 => \state[2]_i_3_n_0\,
      I5 => areset_r,
      O => \state[2]_i_1_n_0\
    );
\state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A00"
    )
        port map (
      I0 => m_axis_tready,
      I1 => s_axis_tvalid,
      I2 => \^e\(0),
      I3 => \^state_reg[1]_0\,
      I4 => \state_reg_n_0_[2]\,
      O => \state[2]_i_2_n_0\
    );
\state[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => p_1_in2_in,
      I1 => \state_reg_n_0_[2]\,
      I2 => \r0_reg_sel_reg_n_0_[2]\,
      O => \state[2]_i_3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \^e\(0),
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \^state_reg[1]_0\,
      R => '0'
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \state[2]_i_1_n_0\,
      Q => \state_reg_n_0_[2]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_Acquisition_top_0_0_axis_dwidth_converter_v1_1_18_axisc_upsizer__parameterized0\ is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[1]_0\ : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    areset_r : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_Acquisition_top_0_0_axis_dwidth_converter_v1_1_18_axisc_upsizer__parameterized0\ : entity is "axis_dwidth_converter_v1_1_18_axisc_upsizer";
end \design_1_Acquisition_top_0_0_axis_dwidth_converter_v1_1_18_axisc_upsizer__parameterized0\;

architecture STRUCTURE of \design_1_Acquisition_top_0_0_axis_dwidth_converter_v1_1_18_axisc_upsizer__parameterized0\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \acc_data[63]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal r0_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \r0_reg_sel[0]_i_1_n_0\ : STD_LOGIC;
  signal \r0_reg_sel[1]_i_1_n_0\ : STD_LOGIC;
  signal \r0_reg_sel[1]_i_2_n_0\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[0]\ : STD_LOGIC;
  signal \r0_reg_sel_reg_n_0_[1]\ : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_3_n_0\ : STD_LOGIC;
  signal \^state_reg[1]_0\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r0_reg_sel[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair2";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[2]\ : label is "none";
begin
  E(0) <= \^e\(0);
  \state_reg[1]_0\ <= \^state_reg[1]_0\;
\acc_data[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^state_reg[1]_0\,
      I1 => \^e\(0),
      I2 => \state_reg_n_0_[2]\,
      I3 => \r0_reg_sel_reg_n_0_[0]\,
      O => p_0_in
    );
\acc_data[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^e\(0),
      I1 => \^state_reg[1]_0\,
      O => \acc_data[63]_i_1_n_0\
    );
\acc_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(0),
      Q => m_axis_tdata(0),
      R => '0'
    );
\acc_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(10),
      Q => m_axis_tdata(10),
      R => '0'
    );
\acc_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(11),
      Q => m_axis_tdata(11),
      R => '0'
    );
\acc_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(12),
      Q => m_axis_tdata(12),
      R => '0'
    );
\acc_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(13),
      Q => m_axis_tdata(13),
      R => '0'
    );
\acc_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(14),
      Q => m_axis_tdata(14),
      R => '0'
    );
\acc_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(15),
      Q => m_axis_tdata(15),
      R => '0'
    );
\acc_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(16),
      Q => m_axis_tdata(16),
      R => '0'
    );
\acc_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(17),
      Q => m_axis_tdata(17),
      R => '0'
    );
\acc_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(18),
      Q => m_axis_tdata(18),
      R => '0'
    );
\acc_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(19),
      Q => m_axis_tdata(19),
      R => '0'
    );
\acc_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(1),
      Q => m_axis_tdata(1),
      R => '0'
    );
\acc_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(20),
      Q => m_axis_tdata(20),
      R => '0'
    );
\acc_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(21),
      Q => m_axis_tdata(21),
      R => '0'
    );
\acc_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(22),
      Q => m_axis_tdata(22),
      R => '0'
    );
\acc_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(23),
      Q => m_axis_tdata(23),
      R => '0'
    );
\acc_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(24),
      Q => m_axis_tdata(24),
      R => '0'
    );
\acc_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(25),
      Q => m_axis_tdata(25),
      R => '0'
    );
\acc_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(26),
      Q => m_axis_tdata(26),
      R => '0'
    );
\acc_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(27),
      Q => m_axis_tdata(27),
      R => '0'
    );
\acc_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(28),
      Q => m_axis_tdata(28),
      R => '0'
    );
\acc_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(29),
      Q => m_axis_tdata(29),
      R => '0'
    );
\acc_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(2),
      Q => m_axis_tdata(2),
      R => '0'
    );
\acc_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(30),
      Q => m_axis_tdata(30),
      R => '0'
    );
\acc_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(31),
      Q => m_axis_tdata(31),
      R => '0'
    );
\acc_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(0),
      Q => m_axis_tdata(32),
      R => '0'
    );
\acc_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(1),
      Q => m_axis_tdata(33),
      R => '0'
    );
\acc_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(2),
      Q => m_axis_tdata(34),
      R => '0'
    );
\acc_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(3),
      Q => m_axis_tdata(35),
      R => '0'
    );
\acc_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(4),
      Q => m_axis_tdata(36),
      R => '0'
    );
\acc_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(5),
      Q => m_axis_tdata(37),
      R => '0'
    );
\acc_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(6),
      Q => m_axis_tdata(38),
      R => '0'
    );
\acc_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(7),
      Q => m_axis_tdata(39),
      R => '0'
    );
\acc_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(3),
      Q => m_axis_tdata(3),
      R => '0'
    );
\acc_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(8),
      Q => m_axis_tdata(40),
      R => '0'
    );
\acc_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(9),
      Q => m_axis_tdata(41),
      R => '0'
    );
\acc_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(10),
      Q => m_axis_tdata(42),
      R => '0'
    );
\acc_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(11),
      Q => m_axis_tdata(43),
      R => '0'
    );
\acc_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(12),
      Q => m_axis_tdata(44),
      R => '0'
    );
\acc_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(13),
      Q => m_axis_tdata(45),
      R => '0'
    );
\acc_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(14),
      Q => m_axis_tdata(46),
      R => '0'
    );
\acc_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(15),
      Q => m_axis_tdata(47),
      R => '0'
    );
\acc_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(16),
      Q => m_axis_tdata(48),
      R => '0'
    );
\acc_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(17),
      Q => m_axis_tdata(49),
      R => '0'
    );
\acc_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(4),
      Q => m_axis_tdata(4),
      R => '0'
    );
\acc_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(18),
      Q => m_axis_tdata(50),
      R => '0'
    );
\acc_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(19),
      Q => m_axis_tdata(51),
      R => '0'
    );
\acc_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(20),
      Q => m_axis_tdata(52),
      R => '0'
    );
\acc_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(21),
      Q => m_axis_tdata(53),
      R => '0'
    );
\acc_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(22),
      Q => m_axis_tdata(54),
      R => '0'
    );
\acc_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(23),
      Q => m_axis_tdata(55),
      R => '0'
    );
\acc_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(24),
      Q => m_axis_tdata(56),
      R => '0'
    );
\acc_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(25),
      Q => m_axis_tdata(57),
      R => '0'
    );
\acc_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(26),
      Q => m_axis_tdata(58),
      R => '0'
    );
\acc_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(27),
      Q => m_axis_tdata(59),
      R => '0'
    );
\acc_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(5),
      Q => m_axis_tdata(5),
      R => '0'
    );
\acc_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(28),
      Q => m_axis_tdata(60),
      R => '0'
    );
\acc_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(29),
      Q => m_axis_tdata(61),
      R => '0'
    );
\acc_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(30),
      Q => m_axis_tdata(62),
      R => '0'
    );
\acc_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \acc_data[63]_i_1_n_0\,
      D => s_axis_tdata(31),
      Q => m_axis_tdata(63),
      R => '0'
    );
\acc_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(6),
      Q => m_axis_tdata(6),
      R => '0'
    );
\acc_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(7),
      Q => m_axis_tdata(7),
      R => '0'
    );
\acc_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(8),
      Q => m_axis_tdata(8),
      R => '0'
    );
\acc_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => r0_data(9),
      Q => m_axis_tdata(9),
      R => '0'
    );
\r0_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(0),
      Q => r0_data(0),
      R => '0'
    );
\r0_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(10),
      Q => r0_data(10),
      R => '0'
    );
\r0_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(11),
      Q => r0_data(11),
      R => '0'
    );
\r0_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(12),
      Q => r0_data(12),
      R => '0'
    );
\r0_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(13),
      Q => r0_data(13),
      R => '0'
    );
\r0_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(14),
      Q => r0_data(14),
      R => '0'
    );
\r0_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(15),
      Q => r0_data(15),
      R => '0'
    );
\r0_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(16),
      Q => r0_data(16),
      R => '0'
    );
\r0_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(17),
      Q => r0_data(17),
      R => '0'
    );
\r0_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(18),
      Q => r0_data(18),
      R => '0'
    );
\r0_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(19),
      Q => r0_data(19),
      R => '0'
    );
\r0_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(1),
      Q => r0_data(1),
      R => '0'
    );
\r0_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(20),
      Q => r0_data(20),
      R => '0'
    );
\r0_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(21),
      Q => r0_data(21),
      R => '0'
    );
\r0_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(22),
      Q => r0_data(22),
      R => '0'
    );
\r0_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(23),
      Q => r0_data(23),
      R => '0'
    );
\r0_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(24),
      Q => r0_data(24),
      R => '0'
    );
\r0_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(25),
      Q => r0_data(25),
      R => '0'
    );
\r0_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(26),
      Q => r0_data(26),
      R => '0'
    );
\r0_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(27),
      Q => r0_data(27),
      R => '0'
    );
\r0_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(28),
      Q => r0_data(28),
      R => '0'
    );
\r0_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(29),
      Q => r0_data(29),
      R => '0'
    );
\r0_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(2),
      Q => r0_data(2),
      R => '0'
    );
\r0_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(30),
      Q => r0_data(30),
      R => '0'
    );
\r0_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(31),
      Q => r0_data(31),
      R => '0'
    );
\r0_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(3),
      Q => r0_data(3),
      R => '0'
    );
\r0_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(4),
      Q => r0_data(4),
      R => '0'
    );
\r0_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(5),
      Q => r0_data(5),
      R => '0'
    );
\r0_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(6),
      Q => r0_data(6),
      R => '0'
    );
\r0_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(7),
      Q => r0_data(7),
      R => '0'
    );
\r0_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(8),
      Q => r0_data(8),
      R => '0'
    );
\r0_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axis_tdata(9),
      Q => r0_data(9),
      R => '0'
    );
\r0_reg_sel[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF2AFFAAFF2A"
    )
        port map (
      I0 => \r0_reg_sel_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \^e\(0),
      I3 => areset_r,
      I4 => \^state_reg[1]_0\,
      I5 => m_axis_tready,
      O => \r0_reg_sel[0]_i_1_n_0\
    );
\r0_reg_sel[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAEAAA2A"
    )
        port map (
      I0 => \r0_reg_sel_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \^e\(0),
      I3 => \^state_reg[1]_0\,
      I4 => \r0_reg_sel_reg_n_0_[0]\,
      I5 => \r0_reg_sel[1]_i_2_n_0\,
      O => \r0_reg_sel[1]_i_1_n_0\
    );
\r0_reg_sel[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^state_reg[1]_0\,
      I2 => areset_r,
      O => \r0_reg_sel[1]_i_2_n_0\
    );
\r0_reg_sel_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \r0_reg_sel[0]_i_1_n_0\,
      Q => \r0_reg_sel_reg_n_0_[0]\,
      R => '0'
    );
\r0_reg_sel_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \r0_reg_sel[1]_i_1_n_0\,
      Q => \r0_reg_sel_reg_n_0_[1]\,
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFF4F"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \^e\(0),
      I2 => \^state_reg[1]_0\,
      I3 => \state_reg_n_0_[2]\,
      I4 => m_axis_tready,
      I5 => areset_r,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF02"
    )
        port map (
      I0 => \^state_reg[1]_0\,
      I1 => \state_reg_n_0_[2]\,
      I2 => m_axis_tready,
      I3 => \state[1]_i_2_n_0\,
      I4 => areset_r,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080808000000"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \^e\(0),
      I2 => \^state_reg[1]_0\,
      I3 => \r0_reg_sel_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[2]\,
      I5 => \r0_reg_sel_reg_n_0_[1]\,
      O => \state[1]_i_2_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAEA"
    )
        port map (
      I0 => \state[2]_i_2_n_0\,
      I1 => s_axis_tvalid,
      I2 => \^e\(0),
      I3 => \^state_reg[1]_0\,
      I4 => \state[2]_i_3_n_0\,
      I5 => areset_r,
      O => \state[2]_i_1_n_0\
    );
\state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A00"
    )
        port map (
      I0 => m_axis_tready,
      I1 => s_axis_tvalid,
      I2 => \^e\(0),
      I3 => \^state_reg[1]_0\,
      I4 => \state_reg_n_0_[2]\,
      O => \state[2]_i_2_n_0\
    );
\state[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \r0_reg_sel_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \r0_reg_sel_reg_n_0_[0]\,
      O => \state[2]_i_3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \^e\(0),
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \^state_reg[1]_0\,
      R => '0'
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \state[2]_i_1_n_0\,
      Q => \state_reg_n_0_[2]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Acquisition_top_0_0_axis_dwidth_converter_v1_1_18_axis_dwidth_converter is
  port (
    \state_reg[0]\ : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tready : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Acquisition_top_0_0_axis_dwidth_converter_v1_1_18_axis_dwidth_converter : entity is "axis_dwidth_converter_v1_1_18_axis_dwidth_converter";
end design_1_Acquisition_top_0_0_axis_dwidth_converter_v1_1_18_axis_dwidth_converter;

architecture STRUCTURE of design_1_Acquisition_top_0_0_axis_dwidth_converter_v1_1_18_axis_dwidth_converter is
  signal areset_r : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
areset_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => p_0_in
    );
areset_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_0_in,
      Q => areset_r,
      R => '0'
    );
\gen_upsizer_conversion.axisc_upsizer_0\: entity work.design_1_Acquisition_top_0_0_axis_dwidth_converter_v1_1_18_axisc_upsizer
     port map (
      E(0) => \state_reg[0]\,
      aclk => aclk,
      areset_r => areset_r,
      m_axis_tdata(63 downto 0) => m_axis_tdata(63 downto 0),
      m_axis_tready => m_axis_tready,
      s_axis_tdata(15 downto 0) => s_axis_tdata(15 downto 0),
      s_axis_tvalid => s_axis_tvalid,
      \state_reg[1]_0\ => \state_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Acquisition_top_0_0_axis_dwidth_converter_v1_1_18_axis_dwidth_converter_0 is
  port (
    \state_reg[0]\ : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tready : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Acquisition_top_0_0_axis_dwidth_converter_v1_1_18_axis_dwidth_converter_0 : entity is "axis_dwidth_converter_v1_1_18_axis_dwidth_converter";
end design_1_Acquisition_top_0_0_axis_dwidth_converter_v1_1_18_axis_dwidth_converter_0;

architecture STRUCTURE of design_1_Acquisition_top_0_0_axis_dwidth_converter_v1_1_18_axis_dwidth_converter_0 is
  signal areset_r : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
areset_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => p_0_in
    );
areset_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_0_in,
      Q => areset_r,
      R => '0'
    );
\gen_upsizer_conversion.axisc_upsizer_0\: entity work.design_1_Acquisition_top_0_0_axis_dwidth_converter_v1_1_18_axisc_upsizer_1
     port map (
      E(0) => \state_reg[0]\,
      aclk => aclk,
      areset_r => areset_r,
      m_axis_tdata(63 downto 0) => m_axis_tdata(63 downto 0),
      m_axis_tready => m_axis_tready,
      s_axis_tdata(15 downto 0) => s_axis_tdata(15 downto 0),
      s_axis_tvalid => s_axis_tvalid,
      \state_reg[1]_0\ => \state_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_Acquisition_top_0_0_axis_dwidth_converter_v1_1_18_axis_dwidth_converter__parameterized0\ is
  port (
    \state_reg[0]\ : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tready : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_Acquisition_top_0_0_axis_dwidth_converter_v1_1_18_axis_dwidth_converter__parameterized0\ : entity is "axis_dwidth_converter_v1_1_18_axis_dwidth_converter";
end \design_1_Acquisition_top_0_0_axis_dwidth_converter_v1_1_18_axis_dwidth_converter__parameterized0\;

architecture STRUCTURE of \design_1_Acquisition_top_0_0_axis_dwidth_converter_v1_1_18_axis_dwidth_converter__parameterized0\ is
  signal areset_r : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
areset_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => p_0_in
    );
areset_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_0_in,
      Q => areset_r,
      R => '0'
    );
\gen_upsizer_conversion.axisc_upsizer_0\: entity work.\design_1_Acquisition_top_0_0_axis_dwidth_converter_v1_1_18_axisc_upsizer__parameterized0\
     port map (
      E(0) => \state_reg[0]\,
      aclk => aclk,
      areset_r => areset_r,
      m_axis_tdata(63 downto 0) => m_axis_tdata(63 downto 0),
      m_axis_tready => m_axis_tready,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tvalid => s_axis_tvalid,
      \state_reg[1]_0\ => \state_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Acquisition_top_0_0_axis_dwidth_converter_16to64 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Acquisition_top_0_0_axis_dwidth_converter_16to64 : entity is "axis_dwidth_converter_16to64,axis_dwidth_converter_v1_1_18_axis_dwidth_converter,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Acquisition_top_0_0_axis_dwidth_converter_16to64 : entity is "axis_dwidth_converter_16to64";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_Acquisition_top_0_0_axis_dwidth_converter_16to64 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_Acquisition_top_0_0_axis_dwidth_converter_16to64 : entity is "axis_dwidth_converter_v1_1_18_axis_dwidth_converter,Vivado 2019.1";
end design_1_Acquisition_top_0_0_axis_dwidth_converter_16to64;

architecture STRUCTURE of design_1_Acquisition_top_0_0_axis_dwidth_converter_16to64 is
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 CLKIF CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME CLKIF, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 RSTIF RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute x_interface_parameter of m_axis_tdata : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute x_interface_parameter of s_axis_tdata : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
begin
inst: entity work.design_1_Acquisition_top_0_0_axis_dwidth_converter_v1_1_18_axis_dwidth_converter
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axis_tdata(63 downto 0) => m_axis_tdata(63 downto 0),
      m_axis_tready => m_axis_tready,
      s_axis_tdata(15 downto 0) => s_axis_tdata(15 downto 0),
      s_axis_tvalid => s_axis_tvalid,
      \state_reg[0]\ => s_axis_tready,
      \state_reg[1]\ => m_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_Acquisition_top_0_0_axis_dwidth_converter_16to64__1\ is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \design_1_Acquisition_top_0_0_axis_dwidth_converter_16to64__1\ : entity is "axis_dwidth_converter_16to64,axis_dwidth_converter_v1_1_18_axis_dwidth_converter,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_Acquisition_top_0_0_axis_dwidth_converter_16to64__1\ : entity is "axis_dwidth_converter_16to64";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of \design_1_Acquisition_top_0_0_axis_dwidth_converter_16to64__1\ : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of \design_1_Acquisition_top_0_0_axis_dwidth_converter_16to64__1\ : entity is "axis_dwidth_converter_v1_1_18_axis_dwidth_converter,Vivado 2019.1";
end \design_1_Acquisition_top_0_0_axis_dwidth_converter_16to64__1\;

architecture STRUCTURE of \design_1_Acquisition_top_0_0_axis_dwidth_converter_16to64__1\ is
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 CLKIF CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME CLKIF, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 RSTIF RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute x_interface_parameter of m_axis_tdata : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute x_interface_parameter of s_axis_tdata : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
begin
inst: entity work.design_1_Acquisition_top_0_0_axis_dwidth_converter_v1_1_18_axis_dwidth_converter_0
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axis_tdata(63 downto 0) => m_axis_tdata(63 downto 0),
      m_axis_tready => m_axis_tready,
      s_axis_tdata(15 downto 0) => s_axis_tdata(15 downto 0),
      s_axis_tvalid => s_axis_tvalid,
      \state_reg[0]\ => s_axis_tready,
      \state_reg[1]\ => m_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Acquisition_top_0_0_axis_dwidth_converter_32to64 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Acquisition_top_0_0_axis_dwidth_converter_32to64 : entity is "axis_dwidth_converter_32to64,axis_dwidth_converter_v1_1_18_axis_dwidth_converter,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Acquisition_top_0_0_axis_dwidth_converter_32to64 : entity is "axis_dwidth_converter_32to64";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_Acquisition_top_0_0_axis_dwidth_converter_32to64 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_Acquisition_top_0_0_axis_dwidth_converter_32to64 : entity is "axis_dwidth_converter_v1_1_18_axis_dwidth_converter,Vivado 2019.1";
end design_1_Acquisition_top_0_0_axis_dwidth_converter_32to64;

architecture STRUCTURE of design_1_Acquisition_top_0_0_axis_dwidth_converter_32to64 is
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 CLKIF CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME CLKIF, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 RSTIF RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute x_interface_parameter of m_axis_tdata : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute x_interface_parameter of s_axis_tdata : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
begin
inst: entity work.\design_1_Acquisition_top_0_0_axis_dwidth_converter_v1_1_18_axis_dwidth_converter__parameterized0\
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axis_tdata(63 downto 0) => m_axis_tdata(63 downto 0),
      m_axis_tready => m_axis_tready,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tvalid => s_axis_tvalid,
      \state_reg[0]\ => s_axis_tready,
      \state_reg[1]\ => m_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Acquisition_top_0_0_Acquisition_top is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    start_sig : in STD_LOGIC;
    number_bytes : in STD_LOGIC_VECTOR ( 31 downto 0 );
    channel_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ADC1_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ADC2_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    FIFO_S2MM_data_count : in STD_LOGIC_VECTOR ( 31 downto 0 );
    start_address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    acquisition_in_progress_out : out STD_LOGIC;
    reset_ACQ : out STD_LOGIC;
    status_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_s2mm_cmd_tdata : out STD_LOGIC_VECTOR ( 71 downto 0 );
    m_axis_s2mm_cmd_tready : in STD_LOGIC;
    m_axis_s2mm_cmd_tvalid : out STD_LOGIC;
    s_axis_s2mm_sts_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_s2mm_sts_tready : out STD_LOGIC;
    s_axis_s2mm_sts_tvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Acquisition_top_0_0_Acquisition_top : entity is "Acquisition_top";
end design_1_Acquisition_top_0_0_Acquisition_top;

architecture STRUCTURE of design_1_Acquisition_top_0_0_Acquisition_top is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axis_s2mm_cmd_tdata\ : STD_LOGIC_VECTOR ( 63 downto 40 );
  signal m_axis_tdata_ADC1 : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m_axis_tdata_ADC1_2 : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m_axis_tdata_ADC2 : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m_axis_tvalid_ADC1 : STD_LOGIC;
  signal m_axis_tvalid_ADC1_2 : STD_LOGIC;
  signal m_axis_tvalid_ADC2 : STD_LOGIC;
  signal \^reset_acq\ : STD_LOGIC;
  signal s_axis_tvalid : STD_LOGIC;
  signal \^start_address\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_ADC1_2_converter_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_ADC1_converter_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_ADC2_converter_s_axis_tready_UNCONNECTED : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ADC1_2_converter : label is "axis_dwidth_converter_32to64,axis_dwidth_converter_v1_1_18_axis_dwidth_converter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ADC1_2_converter : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ADC1_2_converter : label is "axis_dwidth_converter_v1_1_18_axis_dwidth_converter,Vivado 2019.1";
  attribute CHECK_LICENSE_TYPE of ADC1_converter : label is "axis_dwidth_converter_16to64,axis_dwidth_converter_v1_1_18_axis_dwidth_converter,{}";
  attribute DowngradeIPIdentifiedWarnings of ADC1_converter : label is "yes";
  attribute X_CORE_INFO of ADC1_converter : label is "axis_dwidth_converter_v1_1_18_axis_dwidth_converter,Vivado 2019.1";
  attribute CHECK_LICENSE_TYPE of ADC2_converter : label is "axis_dwidth_converter_16to64,axis_dwidth_converter_v1_1_18_axis_dwidth_converter,{}";
  attribute DowngradeIPIdentifiedWarnings of ADC2_converter : label is "yes";
  attribute X_CORE_INFO of ADC2_converter : label is "axis_dwidth_converter_v1_1_18_axis_dwidth_converter,Vivado 2019.1";
begin
  \^start_address\(31 downto 0) <= start_address(31 downto 0);
  m_axis_s2mm_cmd_tdata(71) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(70) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(69) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(68) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(67) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(66) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(65) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(64) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(63 downto 40) <= \^m_axis_s2mm_cmd_tdata\(63 downto 40);
  m_axis_s2mm_cmd_tdata(39 downto 32) <= \^start_address\(7 downto 0);
  m_axis_s2mm_cmd_tdata(31) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(30) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(29) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(28) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(27) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(26) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(25) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(24) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(23) <= \<const1>\;
  m_axis_s2mm_cmd_tdata(22) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(21) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(20) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(19) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(18) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(17) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(16) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(15) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(14) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(13) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(12) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(11) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(10) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(9) <= \<const1>\;
  m_axis_s2mm_cmd_tdata(8) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(7) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(6) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(5) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(4) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(3) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(2) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(1) <= \<const0>\;
  m_axis_s2mm_cmd_tdata(0) <= \<const0>\;
  reset_ACQ <= \^reset_acq\;
  s_axis_s2mm_sts_tready <= \<const1>\;
ADC1_2_converter: entity work.design_1_Acquisition_top_0_0_axis_dwidth_converter_32to64
     port map (
      aclk => clk,
      aresetn => \^reset_acq\,
      m_axis_tdata(63 downto 0) => m_axis_tdata_ADC1_2(63 downto 0),
      m_axis_tready => '1',
      m_axis_tvalid => m_axis_tvalid_ADC1_2,
      s_axis_tdata(31 downto 16) => ADC1_data(15 downto 0),
      s_axis_tdata(15 downto 0) => ADC2_data(15 downto 0),
      s_axis_tready => NLW_ADC1_2_converter_s_axis_tready_UNCONNECTED,
      s_axis_tvalid => s_axis_tvalid
    );
ADC1_converter: entity work.\design_1_Acquisition_top_0_0_axis_dwidth_converter_16to64__1\
     port map (
      aclk => clk,
      aresetn => \^reset_acq\,
      m_axis_tdata(63 downto 0) => m_axis_tdata_ADC1(63 downto 0),
      m_axis_tready => '1',
      m_axis_tvalid => m_axis_tvalid_ADC1,
      s_axis_tdata(15 downto 0) => ADC1_data(15 downto 0),
      s_axis_tready => NLW_ADC1_converter_s_axis_tready_UNCONNECTED,
      s_axis_tvalid => s_axis_tvalid
    );
ADC2_converter: entity work.design_1_Acquisition_top_0_0_axis_dwidth_converter_16to64
     port map (
      aclk => clk,
      aresetn => \^reset_acq\,
      m_axis_tdata(63 downto 0) => m_axis_tdata_ADC2(63 downto 0),
      m_axis_tready => '1',
      m_axis_tvalid => m_axis_tvalid_ADC2,
      s_axis_tdata(15 downto 0) => ADC2_data(15 downto 0),
      s_axis_tready => NLW_ADC2_converter_s_axis_tready_UNCONNECTED,
      s_axis_tvalid => s_axis_tvalid
    );
ADC_FSM: entity work.design_1_Acquisition_top_0_0_Acquisition_FSM_2
     port map (
      FIFO_S2MM_data_count(25 downto 0) => FIFO_S2MM_data_count(31 downto 6),
      acquisition_in_progress_out => acquisition_in_progress_out,
      clk => clk,
      m_axis_s2mm_cmd_tdata(23 downto 0) => \^m_axis_s2mm_cmd_tdata\(63 downto 40),
      m_axis_s2mm_cmd_tvalid => m_axis_s2mm_cmd_tvalid,
      number_bytes(23 downto 0) => number_bytes(31 downto 8),
      reset_ACQ => \^reset_acq\,
      resetn => resetn,
      s_axis_s2mm_sts_tdata(7 downto 0) => s_axis_s2mm_sts_tdata(7 downto 0),
      s_axis_s2mm_sts_tvalid => s_axis_s2mm_sts_tvalid,
      s_axis_tvalid => s_axis_tvalid,
      start_address(23 downto 0) => \^start_address\(31 downto 8),
      start_sig => start_sig,
      status_out(1 downto 0) => status_out(1 downto 0)
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
\m_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(0),
      I1 => m_axis_tdata_ADC1(0),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(0),
      O => m_axis_tdata(0)
    );
\m_axis_tdata[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(10),
      I1 => m_axis_tdata_ADC1(10),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(10),
      O => m_axis_tdata(10)
    );
\m_axis_tdata[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(11),
      I1 => m_axis_tdata_ADC1(11),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(11),
      O => m_axis_tdata(11)
    );
\m_axis_tdata[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(12),
      I1 => m_axis_tdata_ADC1(12),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(12),
      O => m_axis_tdata(12)
    );
\m_axis_tdata[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(13),
      I1 => m_axis_tdata_ADC1(13),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(13),
      O => m_axis_tdata(13)
    );
\m_axis_tdata[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(14),
      I1 => m_axis_tdata_ADC1(14),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(14),
      O => m_axis_tdata(14)
    );
\m_axis_tdata[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(15),
      I1 => m_axis_tdata_ADC1(15),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(15),
      O => m_axis_tdata(15)
    );
\m_axis_tdata[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(16),
      I1 => m_axis_tdata_ADC1(16),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(16),
      O => m_axis_tdata(16)
    );
\m_axis_tdata[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(17),
      I1 => m_axis_tdata_ADC1(17),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(17),
      O => m_axis_tdata(17)
    );
\m_axis_tdata[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(18),
      I1 => m_axis_tdata_ADC1(18),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(18),
      O => m_axis_tdata(18)
    );
\m_axis_tdata[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(19),
      I1 => m_axis_tdata_ADC1(19),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(19),
      O => m_axis_tdata(19)
    );
\m_axis_tdata[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(1),
      I1 => m_axis_tdata_ADC1(1),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(1),
      O => m_axis_tdata(1)
    );
\m_axis_tdata[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(20),
      I1 => m_axis_tdata_ADC1(20),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(20),
      O => m_axis_tdata(20)
    );
\m_axis_tdata[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(21),
      I1 => m_axis_tdata_ADC1(21),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(21),
      O => m_axis_tdata(21)
    );
\m_axis_tdata[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(22),
      I1 => m_axis_tdata_ADC1(22),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(22),
      O => m_axis_tdata(22)
    );
\m_axis_tdata[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(23),
      I1 => m_axis_tdata_ADC1(23),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(23),
      O => m_axis_tdata(23)
    );
\m_axis_tdata[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(24),
      I1 => m_axis_tdata_ADC1(24),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(24),
      O => m_axis_tdata(24)
    );
\m_axis_tdata[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(25),
      I1 => m_axis_tdata_ADC1(25),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(25),
      O => m_axis_tdata(25)
    );
\m_axis_tdata[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(26),
      I1 => m_axis_tdata_ADC1(26),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(26),
      O => m_axis_tdata(26)
    );
\m_axis_tdata[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(27),
      I1 => m_axis_tdata_ADC1(27),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(27),
      O => m_axis_tdata(27)
    );
\m_axis_tdata[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(28),
      I1 => m_axis_tdata_ADC1(28),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(28),
      O => m_axis_tdata(28)
    );
\m_axis_tdata[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(29),
      I1 => m_axis_tdata_ADC1(29),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(29),
      O => m_axis_tdata(29)
    );
\m_axis_tdata[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(2),
      I1 => m_axis_tdata_ADC1(2),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(2),
      O => m_axis_tdata(2)
    );
\m_axis_tdata[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(30),
      I1 => m_axis_tdata_ADC1(30),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(30),
      O => m_axis_tdata(30)
    );
\m_axis_tdata[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(31),
      I1 => m_axis_tdata_ADC1(31),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(31),
      O => m_axis_tdata(31)
    );
\m_axis_tdata[32]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(32),
      I1 => m_axis_tdata_ADC1(32),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(32),
      O => m_axis_tdata(32)
    );
\m_axis_tdata[33]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(33),
      I1 => m_axis_tdata_ADC1(33),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(33),
      O => m_axis_tdata(33)
    );
\m_axis_tdata[34]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(34),
      I1 => m_axis_tdata_ADC1(34),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(34),
      O => m_axis_tdata(34)
    );
\m_axis_tdata[35]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(35),
      I1 => m_axis_tdata_ADC1(35),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(35),
      O => m_axis_tdata(35)
    );
\m_axis_tdata[36]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(36),
      I1 => m_axis_tdata_ADC1(36),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(36),
      O => m_axis_tdata(36)
    );
\m_axis_tdata[37]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(37),
      I1 => m_axis_tdata_ADC1(37),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(37),
      O => m_axis_tdata(37)
    );
\m_axis_tdata[38]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(38),
      I1 => m_axis_tdata_ADC1(38),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(38),
      O => m_axis_tdata(38)
    );
\m_axis_tdata[39]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(39),
      I1 => m_axis_tdata_ADC1(39),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(39),
      O => m_axis_tdata(39)
    );
\m_axis_tdata[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(3),
      I1 => m_axis_tdata_ADC1(3),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(3),
      O => m_axis_tdata(3)
    );
\m_axis_tdata[40]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(40),
      I1 => m_axis_tdata_ADC1(40),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(40),
      O => m_axis_tdata(40)
    );
\m_axis_tdata[41]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(41),
      I1 => m_axis_tdata_ADC1(41),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(41),
      O => m_axis_tdata(41)
    );
\m_axis_tdata[42]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(42),
      I1 => m_axis_tdata_ADC1(42),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(42),
      O => m_axis_tdata(42)
    );
\m_axis_tdata[43]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(43),
      I1 => m_axis_tdata_ADC1(43),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(43),
      O => m_axis_tdata(43)
    );
\m_axis_tdata[44]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(44),
      I1 => m_axis_tdata_ADC1(44),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(44),
      O => m_axis_tdata(44)
    );
\m_axis_tdata[45]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(45),
      I1 => m_axis_tdata_ADC1(45),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(45),
      O => m_axis_tdata(45)
    );
\m_axis_tdata[46]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(46),
      I1 => m_axis_tdata_ADC1(46),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(46),
      O => m_axis_tdata(46)
    );
\m_axis_tdata[47]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(47),
      I1 => m_axis_tdata_ADC1(47),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(47),
      O => m_axis_tdata(47)
    );
\m_axis_tdata[48]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(48),
      I1 => m_axis_tdata_ADC1(48),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(48),
      O => m_axis_tdata(48)
    );
\m_axis_tdata[49]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(49),
      I1 => m_axis_tdata_ADC1(49),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(49),
      O => m_axis_tdata(49)
    );
\m_axis_tdata[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(4),
      I1 => m_axis_tdata_ADC1(4),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(4),
      O => m_axis_tdata(4)
    );
\m_axis_tdata[50]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(50),
      I1 => m_axis_tdata_ADC1(50),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(50),
      O => m_axis_tdata(50)
    );
\m_axis_tdata[51]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(51),
      I1 => m_axis_tdata_ADC1(51),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(51),
      O => m_axis_tdata(51)
    );
\m_axis_tdata[52]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(52),
      I1 => m_axis_tdata_ADC1(52),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(52),
      O => m_axis_tdata(52)
    );
\m_axis_tdata[53]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(53),
      I1 => m_axis_tdata_ADC1(53),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(53),
      O => m_axis_tdata(53)
    );
\m_axis_tdata[54]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(54),
      I1 => m_axis_tdata_ADC1(54),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(54),
      O => m_axis_tdata(54)
    );
\m_axis_tdata[55]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(55),
      I1 => m_axis_tdata_ADC1(55),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(55),
      O => m_axis_tdata(55)
    );
\m_axis_tdata[56]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(56),
      I1 => m_axis_tdata_ADC1(56),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(56),
      O => m_axis_tdata(56)
    );
\m_axis_tdata[57]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(57),
      I1 => m_axis_tdata_ADC1(57),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(57),
      O => m_axis_tdata(57)
    );
\m_axis_tdata[58]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(58),
      I1 => m_axis_tdata_ADC1(58),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(58),
      O => m_axis_tdata(58)
    );
\m_axis_tdata[59]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(59),
      I1 => m_axis_tdata_ADC1(59),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(59),
      O => m_axis_tdata(59)
    );
\m_axis_tdata[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(5),
      I1 => m_axis_tdata_ADC1(5),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(5),
      O => m_axis_tdata(5)
    );
\m_axis_tdata[60]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(60),
      I1 => m_axis_tdata_ADC1(60),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(60),
      O => m_axis_tdata(60)
    );
\m_axis_tdata[61]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(61),
      I1 => m_axis_tdata_ADC1(61),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(61),
      O => m_axis_tdata(61)
    );
\m_axis_tdata[62]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(62),
      I1 => m_axis_tdata_ADC1(62),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(62),
      O => m_axis_tdata(62)
    );
\m_axis_tdata[63]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(63),
      I1 => m_axis_tdata_ADC1(63),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(63),
      O => m_axis_tdata(63)
    );
\m_axis_tdata[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(6),
      I1 => m_axis_tdata_ADC1(6),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(6),
      O => m_axis_tdata(6)
    );
\m_axis_tdata[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(7),
      I1 => m_axis_tdata_ADC1(7),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(7),
      O => m_axis_tdata(7)
    );
\m_axis_tdata[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(8),
      I1 => m_axis_tdata_ADC1(8),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(8),
      O => m_axis_tdata(8)
    );
\m_axis_tdata[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tdata_ADC1_2(9),
      I1 => m_axis_tdata_ADC1(9),
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tdata_ADC2(9),
      O => m_axis_tdata(9)
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => m_axis_tvalid_ADC1_2,
      I1 => m_axis_tvalid_ADC1,
      I2 => channel_sel(0),
      I3 => channel_sel(1),
      I4 => m_axis_tvalid_ADC2,
      O => m_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Acquisition_top_0_0 is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    start_sig : in STD_LOGIC;
    number_bytes : in STD_LOGIC_VECTOR ( 31 downto 0 );
    channel_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ADC1_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ADC2_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    FIFO_S2MM_data_count : in STD_LOGIC_VECTOR ( 31 downto 0 );
    start_address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    acquisition_in_progress_out : out STD_LOGIC;
    reset_ACQ : out STD_LOGIC;
    status_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_s2mm_cmd_tdata : out STD_LOGIC_VECTOR ( 71 downto 0 );
    m_axis_s2mm_cmd_tready : in STD_LOGIC;
    m_axis_s2mm_cmd_tvalid : out STD_LOGIC;
    s_axis_s2mm_sts_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_s2mm_sts_tready : out STD_LOGIC;
    s_axis_s2mm_sts_tvalid : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_Acquisition_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Acquisition_top_0_0 : entity is "design_1_Acquisition_top_0_0,Acquisition_top,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_Acquisition_top_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_Acquisition_top_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_Acquisition_top_0_0 : entity is "Acquisition_top,Vivado 2019.1";
end design_1_Acquisition_top_0_0;

architecture STRUCTURE of design_1_Acquisition_top_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:m_axis_s2mm_cmd:s_axis_s2mm_sts, ASSOCIATED_RESET resetn, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of m_axis_s2mm_cmd_tready : signal is "xilinx.com:interface:axis:1.0 m_axis_s2mm_cmd TREADY";
  attribute x_interface_info of m_axis_s2mm_cmd_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis_s2mm_cmd TVALID";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_parameter of m_axis_tvalid : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of reset_ACQ : signal is "xilinx.com:signal:reset:1.0 reset_ACQ RST";
  attribute x_interface_parameter of reset_ACQ : signal is "XIL_INTERFACENAME reset_ACQ, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute x_interface_parameter of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axis_s2mm_sts_tready : signal is "xilinx.com:interface:axis:1.0 s_axis_s2mm_sts TREADY";
  attribute x_interface_info of s_axis_s2mm_sts_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_s2mm_sts TVALID";
  attribute x_interface_info of m_axis_s2mm_cmd_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis_s2mm_cmd TDATA";
  attribute x_interface_parameter of m_axis_s2mm_cmd_tdata : signal is "XIL_INTERFACENAME m_axis_s2mm_cmd, TDATA_NUM_BYTES 9, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_info of s_axis_s2mm_sts_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_s2mm_sts TDATA";
  attribute x_interface_parameter of s_axis_s2mm_sts_tdata : signal is "XIL_INTERFACENAME s_axis_s2mm_sts, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
begin
U0: entity work.design_1_Acquisition_top_0_0_Acquisition_top
     port map (
      ADC1_data(15 downto 0) => ADC1_data(15 downto 0),
      ADC2_data(15 downto 0) => ADC2_data(15 downto 0),
      FIFO_S2MM_data_count(31 downto 0) => FIFO_S2MM_data_count(31 downto 0),
      acquisition_in_progress_out => acquisition_in_progress_out,
      channel_sel(1 downto 0) => channel_sel(1 downto 0),
      clk => clk,
      m_axis_s2mm_cmd_tdata(71 downto 0) => m_axis_s2mm_cmd_tdata(71 downto 0),
      m_axis_s2mm_cmd_tready => m_axis_s2mm_cmd_tready,
      m_axis_s2mm_cmd_tvalid => m_axis_s2mm_cmd_tvalid,
      m_axis_tdata(63 downto 0) => m_axis_tdata(63 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      number_bytes(31 downto 0) => number_bytes(31 downto 0),
      reset_ACQ => reset_ACQ,
      resetn => resetn,
      s_axis_s2mm_sts_tdata(7 downto 0) => s_axis_s2mm_sts_tdata(7 downto 0),
      s_axis_s2mm_sts_tready => s_axis_s2mm_sts_tready,
      s_axis_s2mm_sts_tvalid => s_axis_s2mm_sts_tvalid,
      start_address(31 downto 0) => start_address(31 downto 0),
      start_sig => start_sig,
      status_out(1 downto 0) => status_out(1 downto 0)
    );
end STRUCTURE;
