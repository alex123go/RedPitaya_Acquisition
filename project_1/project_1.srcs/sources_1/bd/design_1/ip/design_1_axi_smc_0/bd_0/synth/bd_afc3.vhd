--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_afc3.bd
--Design : bd_afc3
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_map_imp_5Y9LOC is
  port (
    M00_ACLK : out STD_LOGIC;
    M00_ARESETN : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_ACLK : out STD_LOGIC;
    S00_ARESETN : out STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aresetn_out : out STD_LOGIC;
    swbd_aclk : out STD_LOGIC;
    swbd_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end clk_map_imp_5Y9LOC;

architecture STRUCTURE of clk_map_imp_5Y9LOC is
  component bd_afc3_one_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component bd_afc3_one_0;
  component bd_afc3_psr_aclk_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component bd_afc3_psr_aclk_0;
  signal clk_map_aclk_net : STD_LOGIC;
  signal clk_map_aresetn_net : STD_LOGIC;
  signal one_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal psr_aclk_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psr_aclk_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_psr_aclk_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psr_aclk_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psr_aclk_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M00_ACLK <= clk_map_aclk_net;
  M00_ARESETN(0) <= psr_aclk_interconnect_aresetn(0);
  S00_ACLK <= clk_map_aclk_net;
  S00_ARESETN(0) <= psr_aclk_interconnect_aresetn(0);
  clk_map_aclk_net <= aclk;
  clk_map_aresetn_net <= aresetn;
  swbd_aclk <= clk_map_aclk_net;
  swbd_aresetn(0) <= psr_aclk_interconnect_aresetn(0);
  aresetn_out <= 'Z';
one: component bd_afc3_one_0
     port map (
      dout(0) => one_dout(0)
    );
psr_aclk: component bd_afc3_psr_aclk_0
     port map (
      aux_reset_in => clk_map_aresetn_net,
      bus_struct_reset(0) => NLW_psr_aclk_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => one_dout(0),
      interconnect_aresetn(0) => psr_aclk_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_psr_aclk_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_psr_aclk_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => NLW_psr_aclk_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_map_aclk_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_exit_pipeline_imp_1TZX5BB is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awready : in STD_LOGIC;
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_awuser : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wuser : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_wvalid : in STD_LOGIC
  );
end m00_exit_pipeline_imp_1TZX5BB;

architecture STRUCTURE of m00_exit_pipeline_imp_1TZX5BB is
  component bd_afc3_m00e_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC
  );
  end component bd_afc3_m00e_0;
  signal aclk_1 : STD_LOGIC;
  signal aresetn_1 : STD_LOGIC;
  signal m00_exit_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_exit_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_exit_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_exit_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_exit_M_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_exit_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_exit_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_exit_M_AXI_AWREADY : STD_LOGIC;
  signal m00_exit_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_exit_M_AXI_AWUSER : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_exit_M_AXI_AWVALID : STD_LOGIC;
  signal m00_exit_M_AXI_BREADY : STD_LOGIC;
  signal m00_exit_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_exit_M_AXI_BVALID : STD_LOGIC;
  signal m00_exit_M_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_exit_M_AXI_WLAST : STD_LOGIC;
  signal m00_exit_M_AXI_WREADY : STD_LOGIC;
  signal m00_exit_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_exit_M_AXI_WVALID : STD_LOGIC;
  signal s_axi_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_axi_1_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_axi_1_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_axi_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_axi_1_AWREADY : STD_LOGIC;
  signal s_axi_1_AWUSER : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal s_axi_1_AWVALID : STD_LOGIC;
  signal s_axi_1_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_1_BREADY : STD_LOGIC;
  signal s_axi_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_1_BUSER : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal s_axi_1_BVALID : STD_LOGIC;
  signal s_axi_1_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s_axi_1_WLAST : STD_LOGIC;
  signal s_axi_1_WREADY : STD_LOGIC;
  signal s_axi_1_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_axi_1_WUSER : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal s_axi_1_WVALID : STD_LOGIC;
begin
  aclk_1 <= aclk;
  aresetn_1 <= aresetn;
  m00_exit_M_AXI_AWREADY <= m_axi_awready;
  m00_exit_M_AXI_BRESP(1 downto 0) <= m_axi_bresp(1 downto 0);
  m00_exit_M_AXI_BVALID <= m_axi_bvalid;
  m00_exit_M_AXI_WREADY <= m_axi_wready;
  m_axi_awaddr(31 downto 0) <= m00_exit_M_AXI_AWADDR(31 downto 0);
  m_axi_awburst(1 downto 0) <= m00_exit_M_AXI_AWBURST(1 downto 0);
  m_axi_awcache(3 downto 0) <= m00_exit_M_AXI_AWCACHE(3 downto 0);
  m_axi_awlen(3 downto 0) <= m00_exit_M_AXI_AWLEN(3 downto 0);
  m_axi_awlock(1 downto 0) <= m00_exit_M_AXI_AWLOCK(1 downto 0);
  m_axi_awprot(2 downto 0) <= m00_exit_M_AXI_AWPROT(2 downto 0);
  m_axi_awqos(3 downto 0) <= m00_exit_M_AXI_AWQOS(3 downto 0);
  m_axi_awsize(2 downto 0) <= m00_exit_M_AXI_AWSIZE(2 downto 0);
  m_axi_awuser(3 downto 0) <= m00_exit_M_AXI_AWUSER(3 downto 0);
  m_axi_awvalid <= m00_exit_M_AXI_AWVALID;
  m_axi_bready <= m00_exit_M_AXI_BREADY;
  m_axi_wdata(63 downto 0) <= m00_exit_M_AXI_WDATA(63 downto 0);
  m_axi_wlast <= m00_exit_M_AXI_WLAST;
  m_axi_wstrb(7 downto 0) <= m00_exit_M_AXI_WSTRB(7 downto 0);
  m_axi_wvalid <= m00_exit_M_AXI_WVALID;
  s_axi_1_AWADDR(31 downto 0) <= s_axi_awaddr(31 downto 0);
  s_axi_1_AWCACHE(3 downto 0) <= s_axi_awcache(3 downto 0);
  s_axi_1_AWID(0) <= s_axi_awid(0);
  s_axi_1_AWLEN(7 downto 0) <= s_axi_awlen(7 downto 0);
  s_axi_1_AWLOCK(0) <= s_axi_awlock(0);
  s_axi_1_AWPROT(2 downto 0) <= s_axi_awprot(2 downto 0);
  s_axi_1_AWQOS(3 downto 0) <= s_axi_awqos(3 downto 0);
  s_axi_1_AWUSER(1023 downto 0) <= s_axi_awuser(1023 downto 0);
  s_axi_1_AWVALID <= s_axi_awvalid;
  s_axi_1_BREADY <= s_axi_bready;
  s_axi_1_WDATA(63 downto 0) <= s_axi_wdata(63 downto 0);
  s_axi_1_WLAST <= s_axi_wlast;
  s_axi_1_WSTRB(7 downto 0) <= s_axi_wstrb(7 downto 0);
  s_axi_1_WUSER(1023 downto 0) <= s_axi_wuser(1023 downto 0);
  s_axi_1_WVALID <= s_axi_wvalid;
  s_axi_awready <= s_axi_1_AWREADY;
  s_axi_bid(0) <= s_axi_1_BID(0);
  s_axi_bresp(1 downto 0) <= s_axi_1_BRESP(1 downto 0);
  s_axi_buser(1023 downto 0) <= s_axi_1_BUSER(1023 downto 0);
  s_axi_bvalid <= s_axi_1_BVALID;
  s_axi_wready <= s_axi_1_WREADY;
m00_exit: component bd_afc3_m00e_0
     port map (
      aclk => aclk_1,
      aresetn => aresetn_1,
      m_axi_awaddr(31 downto 0) => m00_exit_M_AXI_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => m00_exit_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => m00_exit_M_AXI_AWCACHE(3 downto 0),
      m_axi_awlen(3 downto 0) => m00_exit_M_AXI_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => m00_exit_M_AXI_AWLOCK(1 downto 0),
      m_axi_awprot(2 downto 0) => m00_exit_M_AXI_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => m00_exit_M_AXI_AWQOS(3 downto 0),
      m_axi_awready => m00_exit_M_AXI_AWREADY,
      m_axi_awsize(2 downto 0) => m00_exit_M_AXI_AWSIZE(2 downto 0),
      m_axi_awuser(3 downto 0) => m00_exit_M_AXI_AWUSER(3 downto 0),
      m_axi_awvalid => m00_exit_M_AXI_AWVALID,
      m_axi_bready => m00_exit_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => m00_exit_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => m00_exit_M_AXI_BVALID,
      m_axi_wdata(63 downto 0) => m00_exit_M_AXI_WDATA(63 downto 0),
      m_axi_wlast => m00_exit_M_AXI_WLAST,
      m_axi_wready => m00_exit_M_AXI_WREADY,
      m_axi_wstrb(7 downto 0) => m00_exit_M_AXI_WSTRB(7 downto 0),
      m_axi_wvalid => m00_exit_M_AXI_WVALID,
      s_axi_awaddr(31 downto 0) => s_axi_1_AWADDR(31 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_1_AWCACHE(3 downto 0),
      s_axi_awid(0) => s_axi_1_AWID(0),
      s_axi_awlen(7 downto 0) => s_axi_1_AWLEN(7 downto 0),
      s_axi_awlock(0) => s_axi_1_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s_axi_1_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s_axi_1_AWQOS(3 downto 0),
      s_axi_awready => s_axi_1_AWREADY,
      s_axi_awuser(1023 downto 0) => s_axi_1_AWUSER(1023 downto 0),
      s_axi_awvalid => s_axi_1_AWVALID,
      s_axi_bid(0) => s_axi_1_BID(0),
      s_axi_bready => s_axi_1_BREADY,
      s_axi_bresp(1 downto 0) => s_axi_1_BRESP(1 downto 0),
      s_axi_buser(1023 downto 0) => s_axi_1_BUSER(1023 downto 0),
      s_axi_bvalid => s_axi_1_BVALID,
      s_axi_wdata(63 downto 0) => s_axi_1_WDATA(63 downto 0),
      s_axi_wlast => s_axi_1_WLAST,
      s_axi_wready => s_axi_1_WREADY,
      s_axi_wstrb(7 downto 0) => s_axi_1_WSTRB(7 downto 0),
      s_axi_wuser(1023 downto 0) => s_axi_1_WUSER(1023 downto 0),
      s_axi_wvalid => s_axi_1_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_entry_pipeline_imp_USCCV8 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awready : in STD_LOGIC;
    m_axi_awuser : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wuser : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wvalid : in STD_LOGIC
  );
end s00_entry_pipeline_imp_USCCV8;

architecture STRUCTURE of s00_entry_pipeline_imp_USCCV8 is
  component bd_afc3_s00mmu_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC
  );
  end component bd_afc3_s00mmu_0;
  component bd_afc3_s00tr_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC
  );
  end component bd_afc3_s00tr_0;
  component bd_afc3_s00sic_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC
  );
  end component bd_afc3_s00sic_0;
  signal aclk_1 : STD_LOGIC;
  signal aresetn_1 : STD_LOGIC;
  signal s00_mmu_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_mmu_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_mmu_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_mmu_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_mmu_M_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_mmu_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_mmu_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_mmu_M_AXI_AWREADY : STD_LOGIC;
  signal s00_mmu_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_mmu_M_AXI_AWUSER : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal s00_mmu_M_AXI_AWVALID : STD_LOGIC;
  signal s00_mmu_M_AXI_BREADY : STD_LOGIC;
  signal s00_mmu_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_mmu_M_AXI_BUSER : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal s00_mmu_M_AXI_BVALID : STD_LOGIC;
  signal s00_mmu_M_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_mmu_M_AXI_WLAST : STD_LOGIC;
  signal s00_mmu_M_AXI_WREADY : STD_LOGIC;
  signal s00_mmu_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_mmu_M_AXI_WUSER : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal s00_mmu_M_AXI_WVALID : STD_LOGIC;
  signal s00_si_converter_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_si_converter_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_si_converter_M_AXI_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_si_converter_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_si_converter_M_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_si_converter_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_si_converter_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_si_converter_M_AXI_AWREADY : STD_LOGIC;
  signal s00_si_converter_M_AXI_AWUSER : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal s00_si_converter_M_AXI_AWVALID : STD_LOGIC;
  signal s00_si_converter_M_AXI_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_si_converter_M_AXI_BREADY : STD_LOGIC;
  signal s00_si_converter_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_si_converter_M_AXI_BUSER : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal s00_si_converter_M_AXI_BVALID : STD_LOGIC;
  signal s00_si_converter_M_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_si_converter_M_AXI_WLAST : STD_LOGIC;
  signal s00_si_converter_M_AXI_WREADY : STD_LOGIC;
  signal s00_si_converter_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_si_converter_M_AXI_WUSER : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal s00_si_converter_M_AXI_WVALID : STD_LOGIC;
  signal s00_transaction_regulator_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_transaction_regulator_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_transaction_regulator_M_AXI_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_transaction_regulator_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_transaction_regulator_M_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_transaction_regulator_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_transaction_regulator_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_transaction_regulator_M_AXI_AWREADY : STD_LOGIC;
  signal s00_transaction_regulator_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_transaction_regulator_M_AXI_AWUSER : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal s00_transaction_regulator_M_AXI_AWVALID : STD_LOGIC;
  signal s00_transaction_regulator_M_AXI_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_transaction_regulator_M_AXI_BREADY : STD_LOGIC;
  signal s00_transaction_regulator_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_transaction_regulator_M_AXI_BUSER : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal s00_transaction_regulator_M_AXI_BVALID : STD_LOGIC;
  signal s00_transaction_regulator_M_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_transaction_regulator_M_AXI_WLAST : STD_LOGIC;
  signal s00_transaction_regulator_M_AXI_WREADY : STD_LOGIC;
  signal s00_transaction_regulator_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_transaction_regulator_M_AXI_WUSER : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal s00_transaction_regulator_M_AXI_WVALID : STD_LOGIC;
  signal s_axi_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_axi_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_axi_1_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_axi_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_axi_1_AWREADY : STD_LOGIC;
  signal s_axi_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_axi_1_AWUSER : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_axi_1_AWVALID : STD_LOGIC;
  signal s_axi_1_BREADY : STD_LOGIC;
  signal s_axi_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_1_BVALID : STD_LOGIC;
  signal s_axi_1_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s_axi_1_WLAST : STD_LOGIC;
  signal s_axi_1_WREADY : STD_LOGIC;
  signal s_axi_1_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_axi_1_WVALID : STD_LOGIC;
  signal NLW_s00_transaction_regulator_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  aclk_1 <= aclk;
  aresetn_1 <= aresetn;
  m_axi_awaddr(31 downto 0) <= s00_si_converter_M_AXI_AWADDR(31 downto 0);
  m_axi_awcache(3 downto 0) <= s00_si_converter_M_AXI_AWCACHE(3 downto 0);
  m_axi_awid(0) <= s00_si_converter_M_AXI_AWID(0);
  m_axi_awlen(7 downto 0) <= s00_si_converter_M_AXI_AWLEN(7 downto 0);
  m_axi_awlock(0) <= s00_si_converter_M_AXI_AWLOCK(0);
  m_axi_awprot(2 downto 0) <= s00_si_converter_M_AXI_AWPROT(2 downto 0);
  m_axi_awqos(3 downto 0) <= s00_si_converter_M_AXI_AWQOS(3 downto 0);
  m_axi_awuser(1023 downto 0) <= s00_si_converter_M_AXI_AWUSER(1023 downto 0);
  m_axi_awvalid <= s00_si_converter_M_AXI_AWVALID;
  m_axi_bready <= s00_si_converter_M_AXI_BREADY;
  m_axi_wdata(63 downto 0) <= s00_si_converter_M_AXI_WDATA(63 downto 0);
  m_axi_wlast <= s00_si_converter_M_AXI_WLAST;
  m_axi_wstrb(7 downto 0) <= s00_si_converter_M_AXI_WSTRB(7 downto 0);
  m_axi_wuser(1023 downto 0) <= s00_si_converter_M_AXI_WUSER(1023 downto 0);
  m_axi_wvalid <= s00_si_converter_M_AXI_WVALID;
  s00_si_converter_M_AXI_AWREADY <= m_axi_awready;
  s00_si_converter_M_AXI_BID(0) <= m_axi_bid(0);
  s00_si_converter_M_AXI_BRESP(1 downto 0) <= m_axi_bresp(1 downto 0);
  s00_si_converter_M_AXI_BUSER(1023 downto 0) <= m_axi_buser(1023 downto 0);
  s00_si_converter_M_AXI_BVALID <= m_axi_bvalid;
  s00_si_converter_M_AXI_WREADY <= m_axi_wready;
  s_axi_1_AWADDR(31 downto 0) <= s_axi_awaddr(31 downto 0);
  s_axi_1_AWBURST(1 downto 0) <= s_axi_awburst(1 downto 0);
  s_axi_1_AWCACHE(3 downto 0) <= s_axi_awcache(3 downto 0);
  s_axi_1_AWLEN(7 downto 0) <= s_axi_awlen(7 downto 0);
  s_axi_1_AWLOCK(0) <= s_axi_awlock(0);
  s_axi_1_AWPROT(2 downto 0) <= s_axi_awprot(2 downto 0);
  s_axi_1_AWQOS(3 downto 0) <= s_axi_awqos(3 downto 0);
  s_axi_1_AWSIZE(2 downto 0) <= s_axi_awsize(2 downto 0);
  s_axi_1_AWUSER(3 downto 0) <= s_axi_awuser(3 downto 0);
  s_axi_1_AWVALID <= s_axi_awvalid;
  s_axi_1_BREADY <= s_axi_bready;
  s_axi_1_WDATA(63 downto 0) <= s_axi_wdata(63 downto 0);
  s_axi_1_WLAST <= s_axi_wlast;
  s_axi_1_WSTRB(7 downto 0) <= s_axi_wstrb(7 downto 0);
  s_axi_1_WVALID <= s_axi_wvalid;
  s_axi_awready <= s_axi_1_AWREADY;
  s_axi_bresp(1 downto 0) <= s_axi_1_BRESP(1 downto 0);
  s_axi_bvalid <= s_axi_1_BVALID;
  s_axi_wready <= s_axi_1_WREADY;
s00_mmu: component bd_afc3_s00mmu_0
     port map (
      aclk => aclk_1,
      aresetn => aresetn_1,
      m_axi_awaddr(31 downto 0) => s00_mmu_M_AXI_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => s00_mmu_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s00_mmu_M_AXI_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => s00_mmu_M_AXI_AWLEN(7 downto 0),
      m_axi_awlock(0) => s00_mmu_M_AXI_AWLOCK(0),
      m_axi_awprot(2 downto 0) => s00_mmu_M_AXI_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s00_mmu_M_AXI_AWQOS(3 downto 0),
      m_axi_awready => s00_mmu_M_AXI_AWREADY,
      m_axi_awsize(2 downto 0) => s00_mmu_M_AXI_AWSIZE(2 downto 0),
      m_axi_awuser(1023 downto 0) => s00_mmu_M_AXI_AWUSER(1023 downto 0),
      m_axi_awvalid => s00_mmu_M_AXI_AWVALID,
      m_axi_bready => s00_mmu_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => s00_mmu_M_AXI_BRESP(1 downto 0),
      m_axi_buser(1023 downto 0) => s00_mmu_M_AXI_BUSER(1023 downto 0),
      m_axi_bvalid => s00_mmu_M_AXI_BVALID,
      m_axi_wdata(63 downto 0) => s00_mmu_M_AXI_WDATA(63 downto 0),
      m_axi_wlast => s00_mmu_M_AXI_WLAST,
      m_axi_wready => s00_mmu_M_AXI_WREADY,
      m_axi_wstrb(7 downto 0) => s00_mmu_M_AXI_WSTRB(7 downto 0),
      m_axi_wuser(1023 downto 0) => s00_mmu_M_AXI_WUSER(1023 downto 0),
      m_axi_wvalid => s00_mmu_M_AXI_WVALID,
      s_axi_awaddr(31 downto 0) => s_axi_1_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_1_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_1_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_1_AWLEN(7 downto 0),
      s_axi_awlock(0) => s_axi_1_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s_axi_1_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s_axi_1_AWQOS(3 downto 0),
      s_axi_awready => s_axi_1_AWREADY,
      s_axi_awsize(2 downto 0) => s_axi_1_AWSIZE(2 downto 0),
      s_axi_awuser(3 downto 0) => s_axi_1_AWUSER(3 downto 0),
      s_axi_awvalid => s_axi_1_AWVALID,
      s_axi_bready => s_axi_1_BREADY,
      s_axi_bresp(1 downto 0) => s_axi_1_BRESP(1 downto 0),
      s_axi_bvalid => s_axi_1_BVALID,
      s_axi_wdata(63 downto 0) => s_axi_1_WDATA(63 downto 0),
      s_axi_wlast => s_axi_1_WLAST,
      s_axi_wready => s_axi_1_WREADY,
      s_axi_wstrb(7 downto 0) => s_axi_1_WSTRB(7 downto 0),
      s_axi_wvalid => s_axi_1_WVALID
    );
s00_si_converter: component bd_afc3_s00sic_0
     port map (
      aclk => aclk_1,
      aresetn => aresetn_1,
      m_axi_awaddr(31 downto 0) => s00_si_converter_M_AXI_AWADDR(31 downto 0),
      m_axi_awcache(3 downto 0) => s00_si_converter_M_AXI_AWCACHE(3 downto 0),
      m_axi_awid(0) => s00_si_converter_M_AXI_AWID(0),
      m_axi_awlen(7 downto 0) => s00_si_converter_M_AXI_AWLEN(7 downto 0),
      m_axi_awlock(0) => s00_si_converter_M_AXI_AWLOCK(0),
      m_axi_awprot(2 downto 0) => s00_si_converter_M_AXI_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s00_si_converter_M_AXI_AWQOS(3 downto 0),
      m_axi_awready => s00_si_converter_M_AXI_AWREADY,
      m_axi_awuser(1023 downto 0) => s00_si_converter_M_AXI_AWUSER(1023 downto 0),
      m_axi_awvalid => s00_si_converter_M_AXI_AWVALID,
      m_axi_bid(0) => s00_si_converter_M_AXI_BID(0),
      m_axi_bready => s00_si_converter_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => s00_si_converter_M_AXI_BRESP(1 downto 0),
      m_axi_buser(1023 downto 0) => s00_si_converter_M_AXI_BUSER(1023 downto 0),
      m_axi_bvalid => s00_si_converter_M_AXI_BVALID,
      m_axi_wdata(63 downto 0) => s00_si_converter_M_AXI_WDATA(63 downto 0),
      m_axi_wlast => s00_si_converter_M_AXI_WLAST,
      m_axi_wready => s00_si_converter_M_AXI_WREADY,
      m_axi_wstrb(7 downto 0) => s00_si_converter_M_AXI_WSTRB(7 downto 0),
      m_axi_wuser(1023 downto 0) => s00_si_converter_M_AXI_WUSER(1023 downto 0),
      m_axi_wvalid => s00_si_converter_M_AXI_WVALID,
      s_axi_awaddr(31 downto 0) => s00_transaction_regulator_M_AXI_AWADDR(31 downto 0),
      s_axi_awcache(3 downto 0) => s00_transaction_regulator_M_AXI_AWCACHE(3 downto 0),
      s_axi_awid(0) => s00_transaction_regulator_M_AXI_AWID(0),
      s_axi_awlen(7 downto 0) => s00_transaction_regulator_M_AXI_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_transaction_regulator_M_AXI_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s00_transaction_regulator_M_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_transaction_regulator_M_AXI_AWQOS(3 downto 0),
      s_axi_awready => s00_transaction_regulator_M_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => s00_transaction_regulator_M_AXI_AWSIZE(2 downto 0),
      s_axi_awuser(1023 downto 0) => s00_transaction_regulator_M_AXI_AWUSER(1023 downto 0),
      s_axi_awvalid => s00_transaction_regulator_M_AXI_AWVALID,
      s_axi_bid(0) => s00_transaction_regulator_M_AXI_BID(0),
      s_axi_bready => s00_transaction_regulator_M_AXI_BREADY,
      s_axi_bresp(1 downto 0) => s00_transaction_regulator_M_AXI_BRESP(1 downto 0),
      s_axi_buser(1023 downto 0) => s00_transaction_regulator_M_AXI_BUSER(1023 downto 0),
      s_axi_bvalid => s00_transaction_regulator_M_AXI_BVALID,
      s_axi_wdata(63 downto 0) => s00_transaction_regulator_M_AXI_WDATA(63 downto 0),
      s_axi_wlast => s00_transaction_regulator_M_AXI_WLAST,
      s_axi_wready => s00_transaction_regulator_M_AXI_WREADY,
      s_axi_wstrb(7 downto 0) => s00_transaction_regulator_M_AXI_WSTRB(7 downto 0),
      s_axi_wuser(1023 downto 0) => s00_transaction_regulator_M_AXI_WUSER(1023 downto 0),
      s_axi_wvalid => s00_transaction_regulator_M_AXI_WVALID
    );
s00_transaction_regulator: component bd_afc3_s00tr_0
     port map (
      aclk => aclk_1,
      aresetn => aresetn_1,
      m_axi_awaddr(31 downto 0) => s00_transaction_regulator_M_AXI_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_s00_transaction_regulator_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => s00_transaction_regulator_M_AXI_AWCACHE(3 downto 0),
      m_axi_awid(0) => s00_transaction_regulator_M_AXI_AWID(0),
      m_axi_awlen(7 downto 0) => s00_transaction_regulator_M_AXI_AWLEN(7 downto 0),
      m_axi_awlock(0) => s00_transaction_regulator_M_AXI_AWLOCK(0),
      m_axi_awprot(2 downto 0) => s00_transaction_regulator_M_AXI_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s00_transaction_regulator_M_AXI_AWQOS(3 downto 0),
      m_axi_awready => s00_transaction_regulator_M_AXI_AWREADY,
      m_axi_awsize(2 downto 0) => s00_transaction_regulator_M_AXI_AWSIZE(2 downto 0),
      m_axi_awuser(1023 downto 0) => s00_transaction_regulator_M_AXI_AWUSER(1023 downto 0),
      m_axi_awvalid => s00_transaction_regulator_M_AXI_AWVALID,
      m_axi_bid(0) => s00_transaction_regulator_M_AXI_BID(0),
      m_axi_bready => s00_transaction_regulator_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => s00_transaction_regulator_M_AXI_BRESP(1 downto 0),
      m_axi_buser(1023 downto 0) => s00_transaction_regulator_M_AXI_BUSER(1023 downto 0),
      m_axi_bvalid => s00_transaction_regulator_M_AXI_BVALID,
      m_axi_wdata(63 downto 0) => s00_transaction_regulator_M_AXI_WDATA(63 downto 0),
      m_axi_wlast => s00_transaction_regulator_M_AXI_WLAST,
      m_axi_wready => s00_transaction_regulator_M_AXI_WREADY,
      m_axi_wstrb(7 downto 0) => s00_transaction_regulator_M_AXI_WSTRB(7 downto 0),
      m_axi_wuser(1023 downto 0) => s00_transaction_regulator_M_AXI_WUSER(1023 downto 0),
      m_axi_wvalid => s00_transaction_regulator_M_AXI_WVALID,
      s_axi_awaddr(31 downto 0) => s00_mmu_M_AXI_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_mmu_M_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_mmu_M_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s00_mmu_M_AXI_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_mmu_M_AXI_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s00_mmu_M_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_mmu_M_AXI_AWQOS(3 downto 0),
      s_axi_awready => s00_mmu_M_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => s00_mmu_M_AXI_AWSIZE(2 downto 0),
      s_axi_awuser(1023 downto 0) => s00_mmu_M_AXI_AWUSER(1023 downto 0),
      s_axi_awvalid => s00_mmu_M_AXI_AWVALID,
      s_axi_bready => s00_mmu_M_AXI_BREADY,
      s_axi_bresp(1 downto 0) => s00_mmu_M_AXI_BRESP(1 downto 0),
      s_axi_buser(1023 downto 0) => s00_mmu_M_AXI_BUSER(1023 downto 0),
      s_axi_bvalid => s00_mmu_M_AXI_BVALID,
      s_axi_wdata(63 downto 0) => s00_mmu_M_AXI_WDATA(63 downto 0),
      s_axi_wlast => s00_mmu_M_AXI_WLAST,
      s_axi_wready => s00_mmu_M_AXI_WREADY,
      s_axi_wstrb(7 downto 0) => s00_mmu_M_AXI_WSTRB(7 downto 0),
      s_axi_wuser(1023 downto 0) => s00_mmu_M_AXI_WUSER(1023 downto 0),
      s_axi_wvalid => s00_mmu_M_AXI_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_nodes_imp_Y7M43I is
  port (
    M_SC_AW_info : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_SC_AW_payld : out STD_LOGIC_VECTOR ( 140 downto 0 );
    M_SC_AW_recv : in STD_LOGIC;
    M_SC_AW_req : out STD_LOGIC;
    M_SC_AW_send : out STD_LOGIC;
    M_SC_B_info : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_SC_B_payld : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M_SC_B_recv : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_SC_B_req : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_SC_B_send : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_SC_W_info : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_SC_W_payld : out STD_LOGIC_VECTOR ( 87 downto 0 );
    M_SC_W_recv : in STD_LOGIC;
    M_SC_W_req : out STD_LOGIC;
    M_SC_W_send : out STD_LOGIC;
    S_SC_AW_info : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_SC_AW_payld : in STD_LOGIC_VECTOR ( 140 downto 0 );
    S_SC_AW_recv : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_SC_AW_req : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_SC_AW_send : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_SC_B_info : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_SC_B_payld : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_SC_B_recv : out STD_LOGIC;
    S_SC_B_req : in STD_LOGIC;
    S_SC_B_send : in STD_LOGIC;
    S_SC_W_info : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_SC_W_payld : in STD_LOGIC_VECTOR ( 87 downto 0 );
    S_SC_W_recv : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_SC_W_req : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_SC_W_send : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_sc_clk : in STD_LOGIC;
    m_sc_resetn : in STD_LOGIC;
    s_sc_clk : in STD_LOGIC;
    s_sc_resetn : in STD_LOGIC
  );
end s00_nodes_imp_Y7M43I;

architecture STRUCTURE of s00_nodes_imp_Y7M43I is
  component bd_afc3_sawn_0 is
  port (
    s_sc_aclk : in STD_LOGIC;
    s_sc_aresetn : in STD_LOGIC;
    s_sc_req : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_sc_info : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_sc_send : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_sc_recv : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sc_payld : in STD_LOGIC_VECTOR ( 140 downto 0 );
    m_sc_aclk : in STD_LOGIC;
    m_sc_aresetn : in STD_LOGIC;
    m_sc_recv : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_sc_send : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_sc_req : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_sc_info : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_sc_payld : out STD_LOGIC_VECTOR ( 140 downto 0 )
  );
  end component bd_afc3_sawn_0;
  component bd_afc3_swn_0 is
  port (
    s_sc_aclk : in STD_LOGIC;
    s_sc_aresetn : in STD_LOGIC;
    s_sc_req : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_sc_info : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_sc_send : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_sc_recv : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sc_payld : in STD_LOGIC_VECTOR ( 87 downto 0 );
    m_sc_aclk : in STD_LOGIC;
    m_sc_aresetn : in STD_LOGIC;
    m_sc_recv : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_sc_send : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_sc_req : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_sc_info : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_sc_payld : out STD_LOGIC_VECTOR ( 87 downto 0 )
  );
  end component bd_afc3_swn_0;
  component bd_afc3_sbn_0 is
  port (
    s_sc_aclk : in STD_LOGIC;
    s_sc_aresetn : in STD_LOGIC;
    s_sc_req : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_sc_info : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_sc_send : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_sc_recv : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_sc_payld : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_sc_aclk : in STD_LOGIC;
    m_sc_aresetn : in STD_LOGIC;
    m_sc_recv : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_sc_send : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_sc_req : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_sc_info : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_sc_payld : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component bd_afc3_sbn_0;
  signal S_SC_AW_1_INFO : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_SC_AW_1_PAYLD : STD_LOGIC_VECTOR ( 140 downto 0 );
  signal S_SC_AW_1_RECV : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_SC_AW_1_REQ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_SC_AW_1_SEND : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_SC_B_1_INFO : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_SC_B_1_PAYLD : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal S_SC_B_1_RECV : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_SC_B_1_REQ : STD_LOGIC;
  signal S_SC_B_1_SEND : STD_LOGIC;
  signal S_SC_W_1_INFO : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_SC_W_1_PAYLD : STD_LOGIC_VECTOR ( 87 downto 0 );
  signal S_SC_W_1_RECV : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_SC_W_1_REQ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_SC_W_1_SEND : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m_sc_clk_1 : STD_LOGIC;
  signal m_sc_resetn_1 : STD_LOGIC;
  signal s00_aw_node_M_SC_INFO : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_aw_node_M_SC_PAYLD : STD_LOGIC_VECTOR ( 140 downto 0 );
  signal s00_aw_node_M_SC_RECV : STD_LOGIC;
  signal s00_aw_node_M_SC_REQ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_aw_node_M_SC_SEND : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_b_node_M_SC_INFO : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_b_node_M_SC_PAYLD : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal s00_b_node_M_SC_RECV : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_b_node_M_SC_REQ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_b_node_M_SC_SEND : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_w_node_M_SC_INFO : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_w_node_M_SC_PAYLD : STD_LOGIC_VECTOR ( 87 downto 0 );
  signal s00_w_node_M_SC_RECV : STD_LOGIC;
  signal s00_w_node_M_SC_REQ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_w_node_M_SC_SEND : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_sc_clk_1 : STD_LOGIC;
  signal s_sc_resetn_1 : STD_LOGIC;
begin
  M_SC_AW_info(0) <= s00_aw_node_M_SC_INFO(0);
  M_SC_AW_payld(140 downto 0) <= s00_aw_node_M_SC_PAYLD(140 downto 0);
  M_SC_AW_req <= s00_aw_node_M_SC_REQ(0);
  M_SC_AW_send <= s00_aw_node_M_SC_SEND(0);
  M_SC_B_info(0) <= s00_b_node_M_SC_INFO(0);
  M_SC_B_payld(4 downto 0) <= s00_b_node_M_SC_PAYLD(4 downto 0);
  M_SC_B_req(0) <= s00_b_node_M_SC_REQ(0);
  M_SC_B_send(0) <= s00_b_node_M_SC_SEND(0);
  M_SC_W_info(0) <= s00_w_node_M_SC_INFO(0);
  M_SC_W_payld(87 downto 0) <= s00_w_node_M_SC_PAYLD(87 downto 0);
  M_SC_W_req <= s00_w_node_M_SC_REQ(0);
  M_SC_W_send <= s00_w_node_M_SC_SEND(0);
  S_SC_AW_1_INFO(0) <= S_SC_AW_info(0);
  S_SC_AW_1_PAYLD(140 downto 0) <= S_SC_AW_payld(140 downto 0);
  S_SC_AW_1_REQ(0) <= S_SC_AW_req(0);
  S_SC_AW_1_SEND(0) <= S_SC_AW_send(0);
  S_SC_AW_recv(0) <= S_SC_AW_1_RECV(0);
  S_SC_B_1_INFO(0) <= S_SC_B_info(0);
  S_SC_B_1_PAYLD(4 downto 0) <= S_SC_B_payld(4 downto 0);
  S_SC_B_1_REQ <= S_SC_B_req;
  S_SC_B_1_SEND <= S_SC_B_send;
  S_SC_B_recv <= S_SC_B_1_RECV(0);
  S_SC_W_1_INFO(0) <= S_SC_W_info(0);
  S_SC_W_1_PAYLD(87 downto 0) <= S_SC_W_payld(87 downto 0);
  S_SC_W_1_REQ(0) <= S_SC_W_req(0);
  S_SC_W_1_SEND(0) <= S_SC_W_send(0);
  S_SC_W_recv(0) <= S_SC_W_1_RECV(0);
  m_sc_clk_1 <= m_sc_clk;
  m_sc_resetn_1 <= m_sc_resetn;
  s00_aw_node_M_SC_RECV <= M_SC_AW_recv;
  s00_b_node_M_SC_RECV(0) <= M_SC_B_recv(0);
  s00_w_node_M_SC_RECV <= M_SC_W_recv;
  s_sc_clk_1 <= s_sc_clk;
  s_sc_resetn_1 <= s_sc_resetn;
s00_aw_node: component bd_afc3_sawn_0
     port map (
      m_sc_aclk => m_sc_clk_1,
      m_sc_aresetn => m_sc_resetn_1,
      m_sc_info(0) => s00_aw_node_M_SC_INFO(0),
      m_sc_payld(140 downto 0) => s00_aw_node_M_SC_PAYLD(140 downto 0),
      m_sc_recv(0) => s00_aw_node_M_SC_RECV,
      m_sc_req(0) => s00_aw_node_M_SC_REQ(0),
      m_sc_send(0) => s00_aw_node_M_SC_SEND(0),
      s_sc_aclk => s_sc_clk_1,
      s_sc_aresetn => s_sc_resetn_1,
      s_sc_info(0) => S_SC_AW_1_INFO(0),
      s_sc_payld(140 downto 0) => S_SC_AW_1_PAYLD(140 downto 0),
      s_sc_recv(0) => S_SC_AW_1_RECV(0),
      s_sc_req(0) => S_SC_AW_1_REQ(0),
      s_sc_send(0) => S_SC_AW_1_SEND(0)
    );
s00_b_node: component bd_afc3_sbn_0
     port map (
      m_sc_aclk => s_sc_clk_1,
      m_sc_aresetn => s_sc_resetn_1,
      m_sc_info(0) => s00_b_node_M_SC_INFO(0),
      m_sc_payld(4 downto 0) => s00_b_node_M_SC_PAYLD(4 downto 0),
      m_sc_recv(0) => s00_b_node_M_SC_RECV(0),
      m_sc_req(0) => s00_b_node_M_SC_REQ(0),
      m_sc_send(0) => s00_b_node_M_SC_SEND(0),
      s_sc_aclk => m_sc_clk_1,
      s_sc_aresetn => m_sc_resetn_1,
      s_sc_info(0) => S_SC_B_1_INFO(0),
      s_sc_payld(4 downto 0) => S_SC_B_1_PAYLD(4 downto 0),
      s_sc_recv(0) => S_SC_B_1_RECV(0),
      s_sc_req(0) => S_SC_B_1_REQ,
      s_sc_send(0) => S_SC_B_1_SEND
    );
s00_w_node: component bd_afc3_swn_0
     port map (
      m_sc_aclk => m_sc_clk_1,
      m_sc_aresetn => m_sc_resetn_1,
      m_sc_info(0) => s00_w_node_M_SC_INFO(0),
      m_sc_payld(87 downto 0) => s00_w_node_M_SC_PAYLD(87 downto 0),
      m_sc_recv(0) => s00_w_node_M_SC_RECV,
      m_sc_req(0) => s00_w_node_M_SC_REQ(0),
      m_sc_send(0) => s00_w_node_M_SC_SEND(0),
      s_sc_aclk => s_sc_clk_1,
      s_sc_aresetn => s_sc_resetn_1,
      s_sc_info(0) => S_SC_W_1_INFO(0),
      s_sc_payld(87 downto 0) => S_SC_W_1_PAYLD(87 downto 0),
      s_sc_recv(0) => S_SC_W_1_RECV(0),
      s_sc_req(0) => S_SC_W_1_REQ(0),
      s_sc_send(0) => S_SC_W_1_SEND(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_afc3 is
  port (
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_afc3 : entity is "bd_afc3,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_afc3,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=15,numReposBlks=11,numNonXlnxBlks=0,numHierBlks=4,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_afc3 : entity is "design_1_axi_smc_0.hwdef";
end bd_afc3;

architecture STRUCTURE of bd_afc3 is
  component bd_afc3_s00a2s_0 is
  port (
    aclk : in STD_LOGIC;
    s_sc_b_req : in STD_LOGIC;
    s_sc_b_info : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_sc_b_send : in STD_LOGIC;
    s_sc_b_recv : out STD_LOGIC;
    s_sc_b_payld : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_sc_aw_req : out STD_LOGIC;
    m_sc_aw_info : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_sc_aw_send : out STD_LOGIC;
    m_sc_aw_recv : in STD_LOGIC;
    m_sc_aw_payld : out STD_LOGIC_VECTOR ( 140 downto 0 );
    m_sc_w_req : out STD_LOGIC;
    m_sc_w_info : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_sc_w_send : out STD_LOGIC;
    m_sc_w_recv : in STD_LOGIC;
    m_sc_w_payld : out STD_LOGIC_VECTOR ( 87 downto 0 );
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC
  );
  end component bd_afc3_s00a2s_0;
  component bd_afc3_m00s2a_0 is
  port (
    aclk : in STD_LOGIC;
    m_sc_b_req : out STD_LOGIC;
    m_sc_b_info : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_sc_b_send : out STD_LOGIC;
    m_sc_b_recv : in STD_LOGIC;
    m_sc_b_payld : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_sc_aw_req : in STD_LOGIC;
    s_sc_aw_info : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_sc_aw_send : in STD_LOGIC;
    s_sc_aw_recv : out STD_LOGIC;
    s_sc_aw_payld : in STD_LOGIC_VECTOR ( 140 downto 0 );
    s_sc_w_req : in STD_LOGIC;
    s_sc_w_info : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_sc_w_send : in STD_LOGIC;
    s_sc_w_recv : out STD_LOGIC;
    s_sc_w_payld : in STD_LOGIC_VECTOR ( 87 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC
  );
  end component bd_afc3_m00s2a_0;
  signal S00_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S00_AXI_1_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_AWREADY : STD_LOGIC;
  signal S00_AXI_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_AWUSER : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_AWVALID : STD_LOGIC;
  signal S00_AXI_1_BREADY : STD_LOGIC;
  signal S00_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_BVALID : STD_LOGIC;
  signal S00_AXI_1_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal S00_AXI_1_WLAST : STD_LOGIC;
  signal S00_AXI_1_WREADY : STD_LOGIC;
  signal S00_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S00_AXI_1_WVALID : STD_LOGIC;
  signal S_SC_AW_1_INFO : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_SC_AW_1_PAYLD : STD_LOGIC_VECTOR ( 140 downto 0 );
  signal S_SC_AW_1_RECV : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_SC_AW_1_REQ : STD_LOGIC;
  signal S_SC_AW_1_SEND : STD_LOGIC;
  signal S_SC_B_1_INFO : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_SC_B_1_PAYLD : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal S_SC_B_1_RECV : STD_LOGIC;
  signal S_SC_B_1_REQ : STD_LOGIC;
  signal S_SC_B_1_SEND : STD_LOGIC;
  signal S_SC_W_1_INFO : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_SC_W_1_PAYLD : STD_LOGIC_VECTOR ( 87 downto 0 );
  signal S_SC_W_1_RECV : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_SC_W_1_REQ : STD_LOGIC;
  signal S_SC_W_1_SEND : STD_LOGIC;
  signal aclk_1 : STD_LOGIC;
  signal aclk_net : STD_LOGIC;
  signal aresetn_1 : STD_LOGIC;
  signal aresetn_2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aresetn_net : STD_LOGIC;
  signal m00_exit_pipeline_m_axi_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_exit_pipeline_m_axi_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_exit_pipeline_m_axi_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_exit_pipeline_m_axi_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_exit_pipeline_m_axi_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_exit_pipeline_m_axi_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_exit_pipeline_m_axi_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_exit_pipeline_m_axi_AWREADY : STD_LOGIC;
  signal m00_exit_pipeline_m_axi_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_exit_pipeline_m_axi_AWUSER : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_exit_pipeline_m_axi_AWVALID : STD_LOGIC;
  signal m00_exit_pipeline_m_axi_BREADY : STD_LOGIC;
  signal m00_exit_pipeline_m_axi_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_exit_pipeline_m_axi_BVALID : STD_LOGIC;
  signal m00_exit_pipeline_m_axi_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_exit_pipeline_m_axi_WLAST : STD_LOGIC;
  signal m00_exit_pipeline_m_axi_WREADY : STD_LOGIC;
  signal m00_exit_pipeline_m_axi_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_exit_pipeline_m_axi_WVALID : STD_LOGIC;
  signal m00_sc2axi_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_sc2axi_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_sc2axi_M_AXI_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_sc2axi_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_sc2axi_M_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_sc2axi_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_sc2axi_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_sc2axi_M_AXI_AWREADY : STD_LOGIC;
  signal m00_sc2axi_M_AXI_AWUSER : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal m00_sc2axi_M_AXI_AWVALID : STD_LOGIC;
  signal m00_sc2axi_M_AXI_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_sc2axi_M_AXI_BREADY : STD_LOGIC;
  signal m00_sc2axi_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_sc2axi_M_AXI_BUSER : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal m00_sc2axi_M_AXI_BVALID : STD_LOGIC;
  signal m00_sc2axi_M_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_sc2axi_M_AXI_WLAST : STD_LOGIC;
  signal m00_sc2axi_M_AXI_WREADY : STD_LOGIC;
  signal m00_sc2axi_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_sc2axi_M_AXI_WUSER : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal m00_sc2axi_M_AXI_WVALID : STD_LOGIC;
  signal m_sc_clk_1 : STD_LOGIC;
  signal m_sc_resetn_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_entry_pipeline_m_axi_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_entry_pipeline_m_axi_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_entry_pipeline_m_axi_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_entry_pipeline_m_axi_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_entry_pipeline_m_axi_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_entry_pipeline_m_axi_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_entry_pipeline_m_axi_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_entry_pipeline_m_axi_AWREADY : STD_LOGIC;
  signal s00_entry_pipeline_m_axi_AWUSER : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal s00_entry_pipeline_m_axi_AWVALID : STD_LOGIC;
  signal s00_entry_pipeline_m_axi_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_entry_pipeline_m_axi_BREADY : STD_LOGIC;
  signal s00_entry_pipeline_m_axi_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_entry_pipeline_m_axi_BUSER : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal s00_entry_pipeline_m_axi_BVALID : STD_LOGIC;
  signal s00_entry_pipeline_m_axi_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_entry_pipeline_m_axi_WLAST : STD_LOGIC;
  signal s00_entry_pipeline_m_axi_WREADY : STD_LOGIC;
  signal s00_entry_pipeline_m_axi_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_entry_pipeline_m_axi_WUSER : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal s00_entry_pipeline_m_axi_WVALID : STD_LOGIC;
  signal s00_nodes_M_SC_AW_INFO : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_nodes_M_SC_AW_PAYLD : STD_LOGIC_VECTOR ( 140 downto 0 );
  signal s00_nodes_M_SC_AW_RECV : STD_LOGIC;
  signal s00_nodes_M_SC_AW_REQ : STD_LOGIC;
  signal s00_nodes_M_SC_AW_SEND : STD_LOGIC;
  signal s00_nodes_M_SC_B_INFO : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_nodes_M_SC_B_PAYLD : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal s00_nodes_M_SC_B_RECV : STD_LOGIC;
  signal s00_nodes_M_SC_B_REQ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_nodes_M_SC_B_SEND : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_nodes_M_SC_W_INFO : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_nodes_M_SC_W_PAYLD : STD_LOGIC_VECTOR ( 87 downto 0 );
  signal s00_nodes_M_SC_W_RECV : STD_LOGIC;
  signal s00_nodes_M_SC_W_REQ : STD_LOGIC;
  signal s00_nodes_M_SC_W_SEND : STD_LOGIC;
  signal swbd_aclk_net : STD_LOGIC;
  signal swbd_aresetn_net : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of M00_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY";
  attribute X_INTERFACE_INFO of M00_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID";
  attribute X_INTERFACE_INFO of M00_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BREADY";
  attribute X_INTERFACE_INFO of M00_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BVALID";
  attribute X_INTERFACE_INFO of M00_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WLAST";
  attribute X_INTERFACE_INFO of M00_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WREADY";
  attribute X_INTERFACE_INFO of M00_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WVALID";
  attribute X_INTERFACE_INFO of S00_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of S00_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of S00_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of S00_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of S00_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WLAST";
  attribute X_INTERFACE_INFO of S00_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of S00_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_BUSIF M00_AXI:S00_AXI, ASSOCIATED_CLKEN s_sc_aclken, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, FREQ_HZ 200000000, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of M00_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_PARAMETER of M00_AXI_awaddr : signal is "XIL_INTERFACENAME M00_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 4, BUSER_WIDTH 0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, DATA_WIDTH 64, FREQ_HZ 200000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 0, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 16, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI3, READ_WRITE_MODE WRITE_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of M00_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST";
  attribute X_INTERFACE_INFO of M00_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE";
  attribute X_INTERFACE_INFO of M00_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN";
  attribute X_INTERFACE_INFO of M00_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK";
  attribute X_INTERFACE_INFO of M00_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT";
  attribute X_INTERFACE_INFO of M00_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS";
  attribute X_INTERFACE_INFO of M00_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE";
  attribute X_INTERFACE_INFO of M00_AXI_awuser : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWUSER";
  attribute X_INTERFACE_INFO of M00_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BRESP";
  attribute X_INTERFACE_INFO of M00_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of M00_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB";
  attribute X_INTERFACE_INFO of S00_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_PARAMETER of S00_AXI_awaddr : signal is "XIL_INTERFACENAME S00_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 4, BUSER_WIDTH 0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, DATA_WIDTH 64, FREQ_HZ 200000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 0, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S00_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST";
  attribute X_INTERFACE_INFO of S00_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE";
  attribute X_INTERFACE_INFO of S00_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN";
  attribute X_INTERFACE_INFO of S00_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK";
  attribute X_INTERFACE_INFO of S00_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of S00_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS";
  attribute X_INTERFACE_INFO of S00_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE";
  attribute X_INTERFACE_INFO of S00_AXI_awuser : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWUSER";
  attribute X_INTERFACE_INFO of S00_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of S00_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of S00_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  M00_AXI_awaddr(31 downto 0) <= m00_exit_pipeline_m_axi_AWADDR(31 downto 0);
  M00_AXI_awburst(1 downto 0) <= m00_exit_pipeline_m_axi_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= m00_exit_pipeline_m_axi_AWCACHE(3 downto 0);
  M00_AXI_awlen(3 downto 0) <= m00_exit_pipeline_m_axi_AWLEN(3 downto 0);
  M00_AXI_awlock(1 downto 0) <= m00_exit_pipeline_m_axi_AWLOCK(1 downto 0);
  M00_AXI_awprot(2 downto 0) <= m00_exit_pipeline_m_axi_AWPROT(2 downto 0);
  M00_AXI_awqos(3 downto 0) <= m00_exit_pipeline_m_axi_AWQOS(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= m00_exit_pipeline_m_axi_AWSIZE(2 downto 0);
  M00_AXI_awuser(3 downto 0) <= m00_exit_pipeline_m_axi_AWUSER(3 downto 0);
  M00_AXI_awvalid <= m00_exit_pipeline_m_axi_AWVALID;
  M00_AXI_bready <= m00_exit_pipeline_m_axi_BREADY;
  M00_AXI_wdata(63 downto 0) <= m00_exit_pipeline_m_axi_WDATA(63 downto 0);
  M00_AXI_wlast <= m00_exit_pipeline_m_axi_WLAST;
  M00_AXI_wstrb(7 downto 0) <= m00_exit_pipeline_m_axi_WSTRB(7 downto 0);
  M00_AXI_wvalid <= m00_exit_pipeline_m_axi_WVALID;
  S00_AXI_1_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  S00_AXI_1_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  S00_AXI_1_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  S00_AXI_1_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  S00_AXI_1_AWLOCK(0) <= S00_AXI_awlock(0);
  S00_AXI_1_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  S00_AXI_1_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  S00_AXI_1_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  S00_AXI_1_AWUSER(3 downto 0) <= S00_AXI_awuser(3 downto 0);
  S00_AXI_1_AWVALID <= S00_AXI_awvalid;
  S00_AXI_1_BREADY <= S00_AXI_bready;
  S00_AXI_1_WDATA(63 downto 0) <= S00_AXI_wdata(63 downto 0);
  S00_AXI_1_WLAST <= S00_AXI_wlast;
  S00_AXI_1_WSTRB(7 downto 0) <= S00_AXI_wstrb(7 downto 0);
  S00_AXI_1_WVALID <= S00_AXI_wvalid;
  S00_AXI_awready <= S00_AXI_1_AWREADY;
  S00_AXI_bresp(1 downto 0) <= S00_AXI_1_BRESP(1 downto 0);
  S00_AXI_bvalid <= S00_AXI_1_BVALID;
  S00_AXI_wready <= S00_AXI_1_WREADY;
  aclk_net <= aclk;
  aresetn_1 <= aresetn;
  m00_exit_pipeline_m_axi_AWREADY <= M00_AXI_awready;
  m00_exit_pipeline_m_axi_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_exit_pipeline_m_axi_BVALID <= M00_AXI_bvalid;
  m00_exit_pipeline_m_axi_WREADY <= M00_AXI_wready;
clk_map: entity work.clk_map_imp_5Y9LOC
     port map (
      M00_ACLK => m_sc_clk_1,
      M00_ARESETN(0) => m_sc_resetn_1(0),
      S00_ACLK => aclk_1,
      S00_ARESETN(0) => aresetn_2(0),
      aclk => aclk_net,
      aresetn => aresetn_1,
      aresetn_out => aresetn_net,
      swbd_aclk => swbd_aclk_net,
      swbd_aresetn(0) => swbd_aresetn_net(0)
    );
m00_exit_pipeline: entity work.m00_exit_pipeline_imp_1TZX5BB
     port map (
      aclk => m_sc_clk_1,
      aresetn => m_sc_resetn_1(0),
      m_axi_awaddr(31 downto 0) => m00_exit_pipeline_m_axi_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => m00_exit_pipeline_m_axi_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => m00_exit_pipeline_m_axi_AWCACHE(3 downto 0),
      m_axi_awlen(3 downto 0) => m00_exit_pipeline_m_axi_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => m00_exit_pipeline_m_axi_AWLOCK(1 downto 0),
      m_axi_awprot(2 downto 0) => m00_exit_pipeline_m_axi_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => m00_exit_pipeline_m_axi_AWQOS(3 downto 0),
      m_axi_awready => m00_exit_pipeline_m_axi_AWREADY,
      m_axi_awsize(2 downto 0) => m00_exit_pipeline_m_axi_AWSIZE(2 downto 0),
      m_axi_awuser(3 downto 0) => m00_exit_pipeline_m_axi_AWUSER(3 downto 0),
      m_axi_awvalid => m00_exit_pipeline_m_axi_AWVALID,
      m_axi_bready => m00_exit_pipeline_m_axi_BREADY,
      m_axi_bresp(1 downto 0) => m00_exit_pipeline_m_axi_BRESP(1 downto 0),
      m_axi_bvalid => m00_exit_pipeline_m_axi_BVALID,
      m_axi_wdata(63 downto 0) => m00_exit_pipeline_m_axi_WDATA(63 downto 0),
      m_axi_wlast => m00_exit_pipeline_m_axi_WLAST,
      m_axi_wready => m00_exit_pipeline_m_axi_WREADY,
      m_axi_wstrb(7 downto 0) => m00_exit_pipeline_m_axi_WSTRB(7 downto 0),
      m_axi_wvalid => m00_exit_pipeline_m_axi_WVALID,
      s_axi_awaddr(31 downto 0) => m00_sc2axi_M_AXI_AWADDR(31 downto 0),
      s_axi_awcache(3 downto 0) => m00_sc2axi_M_AXI_AWCACHE(3 downto 0),
      s_axi_awid(0) => m00_sc2axi_M_AXI_AWID(0),
      s_axi_awlen(7 downto 0) => m00_sc2axi_M_AXI_AWLEN(7 downto 0),
      s_axi_awlock(0) => m00_sc2axi_M_AXI_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m00_sc2axi_M_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m00_sc2axi_M_AXI_AWQOS(3 downto 0),
      s_axi_awready => m00_sc2axi_M_AXI_AWREADY,
      s_axi_awuser(1023 downto 0) => m00_sc2axi_M_AXI_AWUSER(1023 downto 0),
      s_axi_awvalid => m00_sc2axi_M_AXI_AWVALID,
      s_axi_bid(0) => m00_sc2axi_M_AXI_BID(0),
      s_axi_bready => m00_sc2axi_M_AXI_BREADY,
      s_axi_bresp(1 downto 0) => m00_sc2axi_M_AXI_BRESP(1 downto 0),
      s_axi_buser(1023 downto 0) => m00_sc2axi_M_AXI_BUSER(1023 downto 0),
      s_axi_bvalid => m00_sc2axi_M_AXI_BVALID,
      s_axi_wdata(63 downto 0) => m00_sc2axi_M_AXI_WDATA(63 downto 0),
      s_axi_wlast => m00_sc2axi_M_AXI_WLAST,
      s_axi_wready => m00_sc2axi_M_AXI_WREADY,
      s_axi_wstrb(7 downto 0) => m00_sc2axi_M_AXI_WSTRB(7 downto 0),
      s_axi_wuser(1023 downto 0) => m00_sc2axi_M_AXI_WUSER(1023 downto 0),
      s_axi_wvalid => m00_sc2axi_M_AXI_WVALID
    );
m00_sc2axi: component bd_afc3_m00s2a_0
     port map (
      aclk => m_sc_clk_1,
      m_axi_awaddr(31 downto 0) => m00_sc2axi_M_AXI_AWADDR(31 downto 0),
      m_axi_awcache(3 downto 0) => m00_sc2axi_M_AXI_AWCACHE(3 downto 0),
      m_axi_awid(0) => m00_sc2axi_M_AXI_AWID(0),
      m_axi_awlen(7 downto 0) => m00_sc2axi_M_AXI_AWLEN(7 downto 0),
      m_axi_awlock(0) => m00_sc2axi_M_AXI_AWLOCK(0),
      m_axi_awprot(2 downto 0) => m00_sc2axi_M_AXI_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => m00_sc2axi_M_AXI_AWQOS(3 downto 0),
      m_axi_awready => m00_sc2axi_M_AXI_AWREADY,
      m_axi_awuser(1023 downto 0) => m00_sc2axi_M_AXI_AWUSER(1023 downto 0),
      m_axi_awvalid => m00_sc2axi_M_AXI_AWVALID,
      m_axi_bid(0) => m00_sc2axi_M_AXI_BID(0),
      m_axi_bready => m00_sc2axi_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => m00_sc2axi_M_AXI_BRESP(1 downto 0),
      m_axi_buser(1023 downto 0) => m00_sc2axi_M_AXI_BUSER(1023 downto 0),
      m_axi_bvalid => m00_sc2axi_M_AXI_BVALID,
      m_axi_wdata(63 downto 0) => m00_sc2axi_M_AXI_WDATA(63 downto 0),
      m_axi_wlast => m00_sc2axi_M_AXI_WLAST,
      m_axi_wready => m00_sc2axi_M_AXI_WREADY,
      m_axi_wstrb(7 downto 0) => m00_sc2axi_M_AXI_WSTRB(7 downto 0),
      m_axi_wuser(1023 downto 0) => m00_sc2axi_M_AXI_WUSER(1023 downto 0),
      m_axi_wvalid => m00_sc2axi_M_AXI_WVALID,
      m_sc_b_info(0) => S_SC_B_1_INFO(0),
      m_sc_b_payld(4 downto 0) => S_SC_B_1_PAYLD(4 downto 0),
      m_sc_b_recv => S_SC_B_1_RECV,
      m_sc_b_req => S_SC_B_1_REQ,
      m_sc_b_send => S_SC_B_1_SEND,
      s_sc_aw_info(0) => s00_nodes_M_SC_AW_INFO(0),
      s_sc_aw_payld(140 downto 0) => s00_nodes_M_SC_AW_PAYLD(140 downto 0),
      s_sc_aw_recv => s00_nodes_M_SC_AW_RECV,
      s_sc_aw_req => s00_nodes_M_SC_AW_REQ,
      s_sc_aw_send => s00_nodes_M_SC_AW_SEND,
      s_sc_w_info(0) => s00_nodes_M_SC_W_INFO(0),
      s_sc_w_payld(87 downto 0) => s00_nodes_M_SC_W_PAYLD(87 downto 0),
      s_sc_w_recv => s00_nodes_M_SC_W_RECV,
      s_sc_w_req => s00_nodes_M_SC_W_REQ,
      s_sc_w_send => s00_nodes_M_SC_W_SEND
    );
s00_axi2sc: component bd_afc3_s00a2s_0
     port map (
      aclk => aclk_1,
      m_sc_aw_info(0) => S_SC_AW_1_INFO(0),
      m_sc_aw_payld(140 downto 0) => S_SC_AW_1_PAYLD(140 downto 0),
      m_sc_aw_recv => S_SC_AW_1_RECV(0),
      m_sc_aw_req => S_SC_AW_1_REQ,
      m_sc_aw_send => S_SC_AW_1_SEND,
      m_sc_w_info(0) => S_SC_W_1_INFO(0),
      m_sc_w_payld(87 downto 0) => S_SC_W_1_PAYLD(87 downto 0),
      m_sc_w_recv => S_SC_W_1_RECV(0),
      m_sc_w_req => S_SC_W_1_REQ,
      m_sc_w_send => S_SC_W_1_SEND,
      s_axi_awaddr(31 downto 0) => s00_entry_pipeline_m_axi_AWADDR(31 downto 0),
      s_axi_awcache(3 downto 0) => s00_entry_pipeline_m_axi_AWCACHE(3 downto 0),
      s_axi_awid(0) => s00_entry_pipeline_m_axi_AWID(0),
      s_axi_awlen(7 downto 0) => s00_entry_pipeline_m_axi_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_entry_pipeline_m_axi_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s00_entry_pipeline_m_axi_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_entry_pipeline_m_axi_AWQOS(3 downto 0),
      s_axi_awready => s00_entry_pipeline_m_axi_AWREADY,
      s_axi_awuser(1023 downto 0) => s00_entry_pipeline_m_axi_AWUSER(1023 downto 0),
      s_axi_awvalid => s00_entry_pipeline_m_axi_AWVALID,
      s_axi_bid(0) => s00_entry_pipeline_m_axi_BID(0),
      s_axi_bready => s00_entry_pipeline_m_axi_BREADY,
      s_axi_bresp(1 downto 0) => s00_entry_pipeline_m_axi_BRESP(1 downto 0),
      s_axi_buser(1023 downto 0) => s00_entry_pipeline_m_axi_BUSER(1023 downto 0),
      s_axi_bvalid => s00_entry_pipeline_m_axi_BVALID,
      s_axi_wdata(63 downto 0) => s00_entry_pipeline_m_axi_WDATA(63 downto 0),
      s_axi_wlast => s00_entry_pipeline_m_axi_WLAST,
      s_axi_wready => s00_entry_pipeline_m_axi_WREADY,
      s_axi_wstrb(7 downto 0) => s00_entry_pipeline_m_axi_WSTRB(7 downto 0),
      s_axi_wuser(1023 downto 0) => s00_entry_pipeline_m_axi_WUSER(1023 downto 0),
      s_axi_wvalid => s00_entry_pipeline_m_axi_WVALID,
      s_sc_b_info(0) => s00_nodes_M_SC_B_INFO(0),
      s_sc_b_payld(4 downto 0) => s00_nodes_M_SC_B_PAYLD(4 downto 0),
      s_sc_b_recv => s00_nodes_M_SC_B_RECV,
      s_sc_b_req => s00_nodes_M_SC_B_REQ(0),
      s_sc_b_send => s00_nodes_M_SC_B_SEND(0)
    );
s00_entry_pipeline: entity work.s00_entry_pipeline_imp_USCCV8
     port map (
      aclk => aclk_1,
      aresetn => aresetn_2(0),
      m_axi_awaddr(31 downto 0) => s00_entry_pipeline_m_axi_AWADDR(31 downto 0),
      m_axi_awcache(3 downto 0) => s00_entry_pipeline_m_axi_AWCACHE(3 downto 0),
      m_axi_awid(0) => s00_entry_pipeline_m_axi_AWID(0),
      m_axi_awlen(7 downto 0) => s00_entry_pipeline_m_axi_AWLEN(7 downto 0),
      m_axi_awlock(0) => s00_entry_pipeline_m_axi_AWLOCK(0),
      m_axi_awprot(2 downto 0) => s00_entry_pipeline_m_axi_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s00_entry_pipeline_m_axi_AWQOS(3 downto 0),
      m_axi_awready => s00_entry_pipeline_m_axi_AWREADY,
      m_axi_awuser(1023 downto 0) => s00_entry_pipeline_m_axi_AWUSER(1023 downto 0),
      m_axi_awvalid => s00_entry_pipeline_m_axi_AWVALID,
      m_axi_bid(0) => s00_entry_pipeline_m_axi_BID(0),
      m_axi_bready => s00_entry_pipeline_m_axi_BREADY,
      m_axi_bresp(1 downto 0) => s00_entry_pipeline_m_axi_BRESP(1 downto 0),
      m_axi_buser(1023 downto 0) => s00_entry_pipeline_m_axi_BUSER(1023 downto 0),
      m_axi_bvalid => s00_entry_pipeline_m_axi_BVALID,
      m_axi_wdata(63 downto 0) => s00_entry_pipeline_m_axi_WDATA(63 downto 0),
      m_axi_wlast => s00_entry_pipeline_m_axi_WLAST,
      m_axi_wready => s00_entry_pipeline_m_axi_WREADY,
      m_axi_wstrb(7 downto 0) => s00_entry_pipeline_m_axi_WSTRB(7 downto 0),
      m_axi_wuser(1023 downto 0) => s00_entry_pipeline_m_axi_WUSER(1023 downto 0),
      m_axi_wvalid => s00_entry_pipeline_m_axi_WVALID,
      s_axi_awaddr(31 downto 0) => S00_AXI_1_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => S00_AXI_1_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => S00_AXI_1_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => S00_AXI_1_AWLEN(7 downto 0),
      s_axi_awlock(0) => S00_AXI_1_AWLOCK(0),
      s_axi_awprot(2 downto 0) => S00_AXI_1_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => S00_AXI_1_AWQOS(3 downto 0),
      s_axi_awready => S00_AXI_1_AWREADY,
      s_axi_awsize(2 downto 0) => S00_AXI_1_AWSIZE(2 downto 0),
      s_axi_awuser(3 downto 0) => S00_AXI_1_AWUSER(3 downto 0),
      s_axi_awvalid => S00_AXI_1_AWVALID,
      s_axi_bready => S00_AXI_1_BREADY,
      s_axi_bresp(1 downto 0) => S00_AXI_1_BRESP(1 downto 0),
      s_axi_bvalid => S00_AXI_1_BVALID,
      s_axi_wdata(63 downto 0) => S00_AXI_1_WDATA(63 downto 0),
      s_axi_wlast => S00_AXI_1_WLAST,
      s_axi_wready => S00_AXI_1_WREADY,
      s_axi_wstrb(7 downto 0) => S00_AXI_1_WSTRB(7 downto 0),
      s_axi_wvalid => S00_AXI_1_WVALID
    );
s00_nodes: entity work.s00_nodes_imp_Y7M43I
     port map (
      M_SC_AW_info(0) => s00_nodes_M_SC_AW_INFO(0),
      M_SC_AW_payld(140 downto 0) => s00_nodes_M_SC_AW_PAYLD(140 downto 0),
      M_SC_AW_recv => s00_nodes_M_SC_AW_RECV,
      M_SC_AW_req => s00_nodes_M_SC_AW_REQ,
      M_SC_AW_send => s00_nodes_M_SC_AW_SEND,
      M_SC_B_info(0) => s00_nodes_M_SC_B_INFO(0),
      M_SC_B_payld(4 downto 0) => s00_nodes_M_SC_B_PAYLD(4 downto 0),
      M_SC_B_recv(0) => s00_nodes_M_SC_B_RECV,
      M_SC_B_req(0) => s00_nodes_M_SC_B_REQ(0),
      M_SC_B_send(0) => s00_nodes_M_SC_B_SEND(0),
      M_SC_W_info(0) => s00_nodes_M_SC_W_INFO(0),
      M_SC_W_payld(87 downto 0) => s00_nodes_M_SC_W_PAYLD(87 downto 0),
      M_SC_W_recv => s00_nodes_M_SC_W_RECV,
      M_SC_W_req => s00_nodes_M_SC_W_REQ,
      M_SC_W_send => s00_nodes_M_SC_W_SEND,
      S_SC_AW_info(0) => S_SC_AW_1_INFO(0),
      S_SC_AW_payld(140 downto 0) => S_SC_AW_1_PAYLD(140 downto 0),
      S_SC_AW_recv(0) => S_SC_AW_1_RECV(0),
      S_SC_AW_req(0) => S_SC_AW_1_REQ,
      S_SC_AW_send(0) => S_SC_AW_1_SEND,
      S_SC_B_info(0) => S_SC_B_1_INFO(0),
      S_SC_B_payld(4 downto 0) => S_SC_B_1_PAYLD(4 downto 0),
      S_SC_B_recv => S_SC_B_1_RECV,
      S_SC_B_req => S_SC_B_1_REQ,
      S_SC_B_send => S_SC_B_1_SEND,
      S_SC_W_info(0) => S_SC_W_1_INFO(0),
      S_SC_W_payld(87 downto 0) => S_SC_W_1_PAYLD(87 downto 0),
      S_SC_W_recv(0) => S_SC_W_1_RECV(0),
      S_SC_W_req(0) => S_SC_W_1_REQ,
      S_SC_W_send(0) => S_SC_W_1_SEND,
      m_sc_clk => m_sc_clk_1,
      m_sc_resetn => m_sc_resetn_1(0),
      s_sc_clk => aclk_1,
      s_sc_resetn => aresetn_2(0)
    );
end STRUCTURE;
