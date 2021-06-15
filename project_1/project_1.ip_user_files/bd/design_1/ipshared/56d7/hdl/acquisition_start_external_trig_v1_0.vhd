library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity acquisition_start_external_trig_v1_0 is
	generic (
		-- Users to add parameters here
        ext_trig_value : std_logic := '0'; --trig is active high or active low
        -- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 4
	);
	port (
		-- Users to add ports here
        ext_trig        : in std_logic;
        start_sig       : out std_logic;
        acquisition_status    : in std_logic_vector(1 downto 0);
        trig_value : out std_logic;
        state_out : out std_logic_vector(1 downto 0);
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXI
		s00_axi_aclk	: in std_logic;
		s00_axi_aresetn	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb	: in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic
	);
end acquisition_start_external_trig_v1_0;

architecture arch_imp of acquisition_start_external_trig_v1_0 is

	-- component declaration
	component acquisition_start_external_trig_v1_0_S00_AXI is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 4
		);
		port (
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic;
		bSoftware_start : out std_logic;
		bSoftware_waitForTrig : out std_logic;
        acquisition_status    : in std_logic_vector(1 downto 0)
		);
	end component acquisition_start_external_trig_v1_0_S00_AXI;
	
	
signal bSoftware_start : std_logic;
signal bSoftware_waitForTrig, bSoftware_waitForTrig_old : std_logic;
signal ext_trig_buffered : std_logic;

type trig_FSM_type is (IDLE, WAIT_TRIG, OUTPUT_START);
signal state : trig_FSM_type;
signal bTrig_start : std_logic;
    
    
begin

-- Instantiation of Axi Bus Interface S00_AXI
acquisition_start_external_trig_v1_0_S00_AXI_inst : acquisition_start_external_trig_v1_0_S00_AXI
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH
	)
	port map (
		S_AXI_ACLK	=> s00_axi_aclk,
		S_AXI_ARESETN	=> s00_axi_aresetn,
		S_AXI_AWADDR	=> s00_axi_awaddr,
		S_AXI_AWPROT	=> s00_axi_awprot,
		S_AXI_AWVALID	=> s00_axi_awvalid,
		S_AXI_AWREADY	=> s00_axi_awready,
		S_AXI_WDATA	=> s00_axi_wdata,
		S_AXI_WSTRB	=> s00_axi_wstrb,
		S_AXI_WVALID	=> s00_axi_wvalid,
		S_AXI_WREADY	=> s00_axi_wready,
		S_AXI_BRESP	=> s00_axi_bresp,
		S_AXI_BVALID	=> s00_axi_bvalid,
		S_AXI_BREADY	=> s00_axi_bready,
		S_AXI_ARADDR	=> s00_axi_araddr,
		S_AXI_ARPROT	=> s00_axi_arprot,
		S_AXI_ARVALID	=> s00_axi_arvalid,
		S_AXI_ARREADY	=> s00_axi_arready,
		S_AXI_RDATA	=> s00_axi_rdata,
		S_AXI_RRESP	=> s00_axi_rresp,
		S_AXI_RVALID	=> s00_axi_rvalid,
		S_AXI_RREADY	=> s00_axi_rready,
		bSoftware_start => bSoftware_start,
		bSoftware_waitForTrig => bSoftware_waitForTrig,
		acquisition_status => acquisition_status
		
	);

	-- Add user logic here
process(s00_axi_aclk, s00_axi_aresetn)
begin
    if s00_axi_aresetn = '0' then
        bSoftware_waitForTrig_old <= '0';
    elsif rising_edge(s00_axi_aclk) then
        bSoftware_waitForTrig_old <= bSoftware_waitForTrig;
    end if;
end process;

process(s00_axi_aclk, s00_axi_aresetn)
begin
    if s00_axi_aresetn = '0' then
        ext_trig_buffered <= '0';
    elsif rising_edge(s00_axi_aclk) then
        ext_trig_buffered <= ext_trig;
    end if;
end process;


process(s00_axi_aclk, s00_axi_aresetn)
begin
    if s00_axi_aresetn = '0' then
        state <= IDLE;
        bTrig_start <= '0';
    elsif rising_edge(s00_axi_aclk) then
        case state is
            when IDLE =>
                bTrig_start <= '0';
                if bSoftware_waitForTrig_old = '0' and bSoftware_waitForTrig = '1' then
                    state <= WAIT_TRIG;
                end if;
                
            when WAIT_TRIG =>
                bTrig_start <= '0';
                if ext_trig_buffered = ext_trig_value then
                    state <= OUTPUT_START;
                    end if;
                    
            when OUTPUT_START =>
                bTrig_start <= '1';
                state <= IDLE;
                
            when OTHERS =>
                bTrig_start <= '0';
                state <= IDLE;
        end case;
    end if;        
end process;
    
with state select
    state_out <=    "11" when IDLE,
                    "10" when WAIT_TRIG,
                    "01" when OUTPUT_START,
                    "00" when others;  
    
    
    -- flop output signal
    process(s00_axi_aclk, s00_axi_aresetn)
    begin
        if s00_axi_aresetn = '0' then
            start_sig <= '0';
        elsif rising_edge(s00_axi_aclk) then
            start_sig <= bSoftware_start or bTrig_start;
        end if;
    end process;


trig_value <= '1' when ext_trig = ext_trig_value else '0';

	-- User logic ends

end arch_imp;
