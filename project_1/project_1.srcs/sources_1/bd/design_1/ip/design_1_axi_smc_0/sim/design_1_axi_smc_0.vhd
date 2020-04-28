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

-- IP VLNV: xilinx.com:ip:smartconnect:1.0
-- IP Revision: 11

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_axi_smc_0 IS
  PORT (
    aclk : IN STD_LOGIC;
    aresetn : IN STD_LOGIC;
    S00_AXI_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    S00_AXI_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    S00_AXI_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S00_AXI_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    S00_AXI_awlock : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    S00_AXI_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S00_AXI_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S00_AXI_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S00_AXI_awuser : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S00_AXI_awvalid : IN STD_LOGIC;
    S00_AXI_awready : OUT STD_LOGIC;
    S00_AXI_wdata : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    S00_AXI_wstrb : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    S00_AXI_wlast : IN STD_LOGIC;
    S00_AXI_wvalid : IN STD_LOGIC;
    S00_AXI_wready : OUT STD_LOGIC;
    S00_AXI_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S00_AXI_bvalid : OUT STD_LOGIC;
    S00_AXI_bready : IN STD_LOGIC;
    M00_AXI_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    M00_AXI_awlen : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M00_AXI_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M00_AXI_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M00_AXI_awlock : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M00_AXI_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M00_AXI_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M00_AXI_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M00_AXI_awuser : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M00_AXI_awvalid : OUT STD_LOGIC;
    M00_AXI_awready : IN STD_LOGIC;
    M00_AXI_wdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    M00_AXI_wstrb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    M00_AXI_wlast : OUT STD_LOGIC;
    M00_AXI_wvalid : OUT STD_LOGIC;
    M00_AXI_wready : IN STD_LOGIC;
    M00_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    M00_AXI_bvalid : IN STD_LOGIC;
    M00_AXI_bready : OUT STD_LOGIC
  );
END design_1_axi_smc_0;

ARCHITECTURE design_1_axi_smc_0_arch OF design_1_axi_smc_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_axi_smc_0_arch: ARCHITECTURE IS "yes";
  COMPONENT bd_afc3 IS
    PORT (
      aclk : IN STD_LOGIC;
      aresetn : IN STD_LOGIC;
      S00_AXI_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      S00_AXI_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      S00_AXI_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      S00_AXI_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      S00_AXI_awlock : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      S00_AXI_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S00_AXI_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      S00_AXI_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S00_AXI_awuser : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S00_AXI_awvalid : IN STD_LOGIC;
      S00_AXI_awready : OUT STD_LOGIC;
      S00_AXI_wdata : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      S00_AXI_wstrb : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      S00_AXI_wlast : IN STD_LOGIC;
      S00_AXI_wvalid : IN STD_LOGIC;
      S00_AXI_wready : OUT STD_LOGIC;
      S00_AXI_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      S00_AXI_bvalid : OUT STD_LOGIC;
      S00_AXI_bready : IN STD_LOGIC;
      M00_AXI_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      M00_AXI_awlen : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M00_AXI_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M00_AXI_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      M00_AXI_awlock : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      M00_AXI_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M00_AXI_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M00_AXI_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M00_AXI_awuser : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M00_AXI_awvalid : OUT STD_LOGIC;
      M00_AXI_awready : IN STD_LOGIC;
      M00_AXI_wdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      M00_AXI_wstrb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M00_AXI_wlast : OUT STD_LOGIC;
      M00_AXI_wvalid : OUT STD_LOGIC;
      M00_AXI_wready : IN STD_LOGIC;
      M00_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      M00_AXI_bvalid : IN STD_LOGIC;
      M00_AXI_bready : OUT STD_LOGIC
    );
  END COMPONENT bd_afc3;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWUSER";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_PARAMETER OF M00_AXI_awaddr: SIGNAL IS "XIL_INTERFACENAME M00_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 4, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_" & 
"THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWUSER";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_PARAMETER OF S00_AXI_awaddr: SIGNAL IS "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 4, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE" & 
"_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aresetn: SIGNAL IS "XIL_INTERFACENAME RST.aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.aresetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aclk: SIGNAL IS "XIL_INTERFACENAME CLK.aclk, FREQ_HZ 250000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, ASSOCIATED_BUSIF M00_AXI:S00_AXI, INSERT_VIP 0, ASSOCIATED_CLKEN s_sc_aclken";
  ATTRIBUTE X_INTERFACE_INFO OF aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.aclk CLK";
BEGIN
  U0 : bd_afc3
    PORT MAP (
      aclk => aclk,
      aresetn => aresetn,
      S00_AXI_awaddr => S00_AXI_awaddr,
      S00_AXI_awlen => S00_AXI_awlen,
      S00_AXI_awsize => S00_AXI_awsize,
      S00_AXI_awburst => S00_AXI_awburst,
      S00_AXI_awlock => S00_AXI_awlock,
      S00_AXI_awcache => S00_AXI_awcache,
      S00_AXI_awprot => S00_AXI_awprot,
      S00_AXI_awqos => S00_AXI_awqos,
      S00_AXI_awuser => S00_AXI_awuser,
      S00_AXI_awvalid => S00_AXI_awvalid,
      S00_AXI_awready => S00_AXI_awready,
      S00_AXI_wdata => S00_AXI_wdata,
      S00_AXI_wstrb => S00_AXI_wstrb,
      S00_AXI_wlast => S00_AXI_wlast,
      S00_AXI_wvalid => S00_AXI_wvalid,
      S00_AXI_wready => S00_AXI_wready,
      S00_AXI_bresp => S00_AXI_bresp,
      S00_AXI_bvalid => S00_AXI_bvalid,
      S00_AXI_bready => S00_AXI_bready,
      M00_AXI_awaddr => M00_AXI_awaddr,
      M00_AXI_awlen => M00_AXI_awlen,
      M00_AXI_awsize => M00_AXI_awsize,
      M00_AXI_awburst => M00_AXI_awburst,
      M00_AXI_awlock => M00_AXI_awlock,
      M00_AXI_awcache => M00_AXI_awcache,
      M00_AXI_awprot => M00_AXI_awprot,
      M00_AXI_awqos => M00_AXI_awqos,
      M00_AXI_awuser => M00_AXI_awuser,
      M00_AXI_awvalid => M00_AXI_awvalid,
      M00_AXI_awready => M00_AXI_awready,
      M00_AXI_wdata => M00_AXI_wdata,
      M00_AXI_wstrb => M00_AXI_wstrb,
      M00_AXI_wlast => M00_AXI_wlast,
      M00_AXI_wvalid => M00_AXI_wvalid,
      M00_AXI_wready => M00_AXI_wready,
      M00_AXI_bresp => M00_AXI_bresp,
      M00_AXI_bvalid => M00_AXI_bvalid,
      M00_AXI_bready => M00_AXI_bready
    );
END design_1_axi_smc_0_arch;
