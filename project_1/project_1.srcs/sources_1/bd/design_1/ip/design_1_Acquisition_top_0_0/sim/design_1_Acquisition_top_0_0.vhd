-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:Acquisition_top:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_Acquisition_top_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    resetn : IN STD_LOGIC;
    start_sig : IN STD_LOGIC;
    number_bytes : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    channel_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    ADC1_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    ADC2_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    FIFO_S2MM_data_count : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reset_ACQ : OUT STD_LOGIC;
    status_out : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axis_tvalid : OUT STD_LOGIC;
    m_axis_tready : IN STD_LOGIC;
    m_axis_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axis_s2mm_cmd_tdata : OUT STD_LOGIC_VECTOR(71 DOWNTO 0);
    m_axis_s2mm_cmd_tready : IN STD_LOGIC;
    m_axis_s2mm_cmd_tvalid : OUT STD_LOGIC;
    s_axis_s2mm_sts_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axis_s2mm_sts_tready : OUT STD_LOGIC;
    s_axis_s2mm_sts_tvalid : IN STD_LOGIC
  );
END design_1_Acquisition_top_0_0;

ARCHITECTURE design_1_Acquisition_top_0_0_arch OF design_1_Acquisition_top_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_Acquisition_top_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT Acquisition_top IS
    GENERIC (
      start_address : UNSIGNED((32 - 1) DOWNTO 0)
    );
    PORT (
      clk : IN STD_LOGIC;
      resetn : IN STD_LOGIC;
      start_sig : IN STD_LOGIC;
      number_bytes : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      channel_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      ADC1_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      ADC2_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      FIFO_S2MM_data_count : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      reset_ACQ : OUT STD_LOGIC;
      status_out : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axis_tvalid : OUT STD_LOGIC;
      m_axis_tready : IN STD_LOGIC;
      m_axis_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      m_axis_s2mm_cmd_tdata : OUT STD_LOGIC_VECTOR(71 DOWNTO 0);
      m_axis_s2mm_cmd_tready : IN STD_LOGIC;
      m_axis_s2mm_cmd_tvalid : OUT STD_LOGIC;
      s_axis_s2mm_sts_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axis_s2mm_sts_tready : OUT STD_LOGIC;
      s_axis_s2mm_sts_tvalid : IN STD_LOGIC
    );
  END COMPONENT Acquisition_top;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_Acquisition_top_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_s2mm_sts_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_s2mm_sts TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_s2mm_sts_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_s2mm_sts TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_s2mm_sts_tdata: SIGNAL IS "XIL_INTERFACENAME s_axis_s2mm_sts, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_s2mm_sts_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_s2mm_sts TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_s2mm_cmd_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_s2mm_cmd TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_s2mm_cmd_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_s2mm_cmd TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axis_s2mm_cmd_tdata: SIGNAL IS "XIL_INTERFACENAME m_axis_s2mm_cmd, TDATA_NUM_BYTES 9, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_s2mm_cmd_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_s2mm_cmd TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axis_tvalid: SIGNAL IS "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset_ACQ: SIGNAL IS "XIL_INTERFACENAME reset_ACQ, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset_ACQ: SIGNAL IS "xilinx.com:signal:reset:1.0 reset_ACQ RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF resetn: SIGNAL IS "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF resetn: SIGNAL IS "xilinx.com:signal:reset:1.0 resetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:m_axis_s2mm_cmd:s_axis_s2mm_sts, ASSOCIATED_RESET resetn, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : Acquisition_top
    GENERIC MAP (
      start_address => X"1E000000"
    )
    PORT MAP (
      clk => clk,
      resetn => resetn,
      start_sig => start_sig,
      number_bytes => number_bytes,
      channel_sel => channel_sel,
      ADC1_data => ADC1_data,
      ADC2_data => ADC2_data,
      FIFO_S2MM_data_count => FIFO_S2MM_data_count,
      reset_ACQ => reset_ACQ,
      status_out => status_out,
      m_axis_tvalid => m_axis_tvalid,
      m_axis_tready => m_axis_tready,
      m_axis_tdata => m_axis_tdata,
      m_axis_s2mm_cmd_tdata => m_axis_s2mm_cmd_tdata,
      m_axis_s2mm_cmd_tready => m_axis_s2mm_cmd_tready,
      m_axis_s2mm_cmd_tvalid => m_axis_s2mm_cmd_tvalid,
      s_axis_s2mm_sts_tdata => s_axis_s2mm_sts_tdata,
      s_axis_s2mm_sts_tready => s_axis_s2mm_sts_tready,
      s_axis_s2mm_sts_tvalid => s_axis_s2mm_sts_tvalid
    );
END design_1_Acquisition_top_0_0_arch;
