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

-- IP VLNV: xilinx.com:module_ref:ADCs_wrapper:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_ADCs_wrapper_0_0 IS
  PORT (
    adc_clk : IN STD_LOGIC;
    adc_dat_a_i : IN STD_LOGIC_VECTOR(15 DOWNTO 2);
    adc_dat_b_i : IN STD_LOGIC_VECTOR(15 DOWNTO 2);
    adc_a : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    adc_b : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    adc_cdcs_o : OUT STD_LOGIC
  );
END design_1_ADCs_wrapper_0_0;

ARCHITECTURE design_1_ADCs_wrapper_0_0_arch OF design_1_ADCs_wrapper_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_ADCs_wrapper_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT ADCs_wrapper IS
    PORT (
      adc_clk : IN STD_LOGIC;
      adc_dat_a_i : IN STD_LOGIC_VECTOR(15 DOWNTO 2);
      adc_dat_b_i : IN STD_LOGIC_VECTOR(15 DOWNTO 2);
      adc_a : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      adc_b : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      adc_cdcs_o : OUT STD_LOGIC
    );
  END COMPONENT ADCs_wrapper;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_ADCs_wrapper_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF adc_clk: SIGNAL IS "XIL_INTERFACENAME adc_clk, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF adc_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 adc_clk CLK";
BEGIN
  U0 : ADCs_wrapper
    PORT MAP (
      adc_clk => adc_clk,
      adc_dat_a_i => adc_dat_a_i,
      adc_dat_b_i => adc_dat_b_i,
      adc_a => adc_a,
      adc_b => adc_b,
      adc_cdcs_o => adc_cdcs_o
    );
END design_1_ADCs_wrapper_0_0_arch;
