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

-- IP VLNV: xilinx.com:module_ref:DACs_wrapper:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_DACs_wrapper_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    dac_clk : IN STD_LOGIC;
    pll_locked : IN STD_LOGIC;
    dac_a : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    dac_a_tvalid : IN STD_LOGIC;
    dac_b : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    dac_b_tvalid : IN STD_LOGIC;
    dac_dat_o : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    dac_wrt_o : OUT STD_LOGIC;
    dac_sel_o : OUT STD_LOGIC;
    dac_clk_o : OUT STD_LOGIC;
    dac_rst_o : OUT STD_LOGIC
  );
END design_1_DACs_wrapper_0_0;

ARCHITECTURE design_1_DACs_wrapper_0_0_arch OF design_1_DACs_wrapper_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_DACs_wrapper_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT DACs_wrapper IS
    PORT (
      clk : IN STD_LOGIC;
      dac_clk : IN STD_LOGIC;
      pll_locked : IN STD_LOGIC;
      dac_a : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
      dac_a_tvalid : IN STD_LOGIC;
      dac_b : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
      dac_b_tvalid : IN STD_LOGIC;
      dac_dat_o : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
      dac_wrt_o : OUT STD_LOGIC;
      dac_sel_o : OUT STD_LOGIC;
      dac_clk_o : OUT STD_LOGIC;
      dac_rst_o : OUT STD_LOGIC
    );
  END COMPONENT DACs_wrapper;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_DACs_wrapper_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF dac_clk: SIGNAL IS "XIL_INTERFACENAME dac_clk, FREQ_HZ 250000000, PHASE 90.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF dac_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 dac_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : DACs_wrapper
    PORT MAP (
      clk => clk,
      dac_clk => dac_clk,
      pll_locked => pll_locked,
      dac_a => dac_a,
      dac_a_tvalid => dac_a_tvalid,
      dac_b => dac_b,
      dac_b_tvalid => dac_b_tvalid,
      dac_dat_o => dac_dat_o,
      dac_wrt_o => dac_wrt_o,
      dac_sel_o => dac_sel_o,
      dac_clk_o => dac_clk_o,
      dac_rst_o => dac_rst_o
    );
END design_1_DACs_wrapper_0_0_arch;
