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

-- IP VLNV: xilinx.com:module_ref:multiplexer_2to1:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_multiplexer_2to1_0_1 IS
  PORT (
    clk : IN STD_LOGIC;
    resetn : IN STD_LOGIC;
    sel : IN STD_LOGIC;
    data_in_1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    data_in_2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    data_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END design_1_multiplexer_2to1_0_1;

ARCHITECTURE design_1_multiplexer_2to1_0_1_arch OF design_1_multiplexer_2to1_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_multiplexer_2to1_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT multiplexer_2to1 IS
    GENERIC (
      DATA_WIDTH : INTEGER
    );
    PORT (
      clk : IN STD_LOGIC;
      resetn : IN STD_LOGIC;
      sel : IN STD_LOGIC;
      data_in_1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      data_in_2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      data_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
  END COMPONENT multiplexer_2to1;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_multiplexer_2to1_0_1_arch: ARCHITECTURE IS "multiplexer_2to1,Vivado 2019.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_multiplexer_2to1_0_1_arch : ARCHITECTURE IS "design_1_multiplexer_2to1_0_1,multiplexer_2to1,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF design_1_multiplexer_2to1_0_1_arch: ARCHITECTURE IS "design_1_multiplexer_2to1_0_1,multiplexer_2to1,{x_ipProduct=Vivado 2019.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=multiplexer_2to1,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,DATA_WIDTH=16}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_multiplexer_2to1_0_1_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF resetn: SIGNAL IS "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF resetn: SIGNAL IS "xilinx.com:signal:reset:1.0 resetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : multiplexer_2to1
    GENERIC MAP (
      DATA_WIDTH => 16
    )
    PORT MAP (
      clk => clk,
      resetn => resetn,
      sel => sel,
      data_in_1 => data_in_1,
      data_in_2 => data_in_2,
      data_out => data_out
    );
END design_1_multiplexer_2to1_0_1_arch;
