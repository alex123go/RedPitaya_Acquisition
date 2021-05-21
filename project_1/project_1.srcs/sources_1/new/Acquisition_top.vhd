----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/15/2020 11:50:15 AM
-- Design Name: 
-- Module Name: Acquisition_top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Acquisition_top is
    Port ( clk : in STD_LOGIC;
           resetn : in STD_LOGIC;
           start_sig : in STD_LOGIC;
           number_bytes : in STD_LOGIC_VECTOR(32-1 downto 0);
           channel_sel : in STD_LOGIC_VECTOR(2-1 downto 0);
           ADC1_data : in STD_LOGIC_VECTOR(16-1 downto 0);
           ADC2_data : in STD_LOGIC_VECTOR(16-1 downto 0);
                      
           FIFO_S2MM_data_count : in STD_LOGIC_VECTOR(32-1 downto 0);
           
           start_address : in unsigned(32-1 downto 0);

           acquisition_in_progress_out : OUT STD_LOGIC;
           reset_ACQ : OUT STD_LOGIC;
           status_out : OUT STD_LOGIC_VECTOR(2-1 downto 0);

           -- Data OUT (connect to a FIFO, then to DataMover Xilinx IP)
           m_axis_tvalid : OUT STD_LOGIC;
           m_axis_tready : IN STD_LOGIC;
           m_axis_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
           
           -- CMD OUT
           m_axis_s2mm_cmd_tdata : out STD_LOGIC_VECTOR(72-1 downto 0);
           m_axis_s2mm_cmd_tready : in STD_LOGIC;
           m_axis_s2mm_cmd_tvalid : out STD_LOGIC;
           
          -- STS_IN
           s_axis_s2mm_sts_tdata : in STD_LOGIC_VECTOR(8-1 downto 0);
           s_axis_s2mm_sts_tready : out STD_LOGIC;
           s_axis_s2mm_sts_tvalid : in STD_LOGIC
           );
end Acquisition_top;

architecture Behavioral of Acquisition_top is

COMPONENT axis_dwidth_converter_16to64
  PORT (
    aclk : IN STD_LOGIC;
    aresetn : IN STD_LOGIC;
    s_axis_tvalid : IN STD_LOGIC;
    s_axis_tready : OUT STD_LOGIC;
    s_axis_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axis_tvalid : OUT STD_LOGIC;
    m_axis_tready : IN STD_LOGIC;
    m_axis_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
  );
END COMPONENT;

COMPONENT axis_dwidth_converter_32to64
  PORT (
    aclk : IN STD_LOGIC;
    aresetn : IN STD_LOGIC;
    s_axis_tvalid : IN STD_LOGIC;
    s_axis_tready : OUT STD_LOGIC;
    s_axis_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axis_tvalid : OUT STD_LOGIC;
    m_axis_tready : IN STD_LOGIC;
    m_axis_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
  );
END COMPONENT;

component Acquisition_FSM_2 is
    Generic( bytes_per_tx : unsigned(23-1 downto 0) := "000" & x"0_0200";
             FIFO_THRESHOLD : integer := 64);
    
    Port ( clk : in STD_LOGIC;
           resetn : in STD_LOGIC;
           start_sig : in STD_LOGIC;
           bytes_to_tx : in STD_LOGIC_VECTOR(32-1 downto 0);
           
           data_tvalid : out STD_LOGIC;
           error_ACQ : out STD_LOGIC;
           reset_ACQ : out STD_LOGIC;
           acquisition_in_progress_out : OUT STD_LOGIC;

           FIFO_S2MM_data_count : in STD_LOGIC_VECTOR(32-1 downto 0);
           
           start_address : in unsigned(32-1 downto 0);
           
           m_axis_s2mm_cmd_tdata : out STD_LOGIC_VECTOR(72-1 downto 0);
           m_axis_s2mm_cmd_tvalid : out STD_LOGIC;
           
           s_axis_s2mm_sts_tdata : in STD_LOGIC_VECTOR(8-1 downto 0);
           s_axis_s2mm_sts_tready : out STD_LOGIC;
           s_axis_s2mm_sts_tvalid : in STD_LOGIC );
end component;

signal reset_ACQ_int, data_tvalid_int, error_ACQ : std_logic;

signal s_axis_tvalid : STD_LOGIC;

signal m_axis_tvalid_ADC1, m_axis_tvalid_ADC2, m_axis_tvalid_ADC1_2 : STD_LOGIC;
signal m_axis_tready_ADC1, m_axis_tready_ADC2, m_axis_tready_ADC1_2 : STD_LOGIC;
signal m_axis_tdata_ADC1, m_axis_tdata_ADC2, m_axis_tdata_ADC1_2  : STD_LOGIC_VECTOR(63 DOWNTO 0);

begin

ADC_FSM : Acquisition_FSM_2
    Generic map(  bytes_per_tx => "000" & x"0_0200",
                  FIFO_THRESHOLD => 64
                )
    Port map(   clk => clk,
                resetn => resetn,
	            start_sig => start_sig,
	            bytes_to_tx => number_bytes,
	           
	            data_tvalid => data_tvalid_int,
	            error_ACQ => error_ACQ,
	            reset_ACQ => reset_ACQ_int,
	            acquisition_in_progress_out => acquisition_in_progress_out,
              
	            FIFO_S2MM_data_count => FIFO_S2MM_data_count,
	            
	            start_address => start_address,
	           
	            m_axis_s2mm_cmd_tdata =>  m_axis_s2mm_cmd_tdata,
	            m_axis_s2mm_cmd_tvalid => m_axis_s2mm_cmd_tvalid,
	           
	            s_axis_s2mm_sts_tdata => s_axis_s2mm_sts_tdata,
	            s_axis_s2mm_sts_tready => s_axis_s2mm_sts_tready,
	            s_axis_s2mm_sts_tvalid => s_axis_s2mm_sts_tvalid
            );

reset_ACQ <= reset_ACQ_int;
status_out <= error_ACQ & data_tvalid_int;
s_axis_tvalid <= not(data_tvalid_int);

ADC1_converter : axis_dwidth_converter_16to64
  PORT MAP (
    aclk => clk,
    aresetn => reset_ACQ_int,
    s_axis_tvalid => s_axis_tvalid,
    s_axis_tready => open,
    s_axis_tdata => ADC1_data,
    m_axis_tvalid => m_axis_tvalid_ADC1,
    m_axis_tready => '1', -- Always '1', otherwise it keeps old data
    m_axis_tdata => m_axis_tdata_ADC1
  );
  
ADC2_converter : axis_dwidth_converter_16to64
  PORT MAP (
    aclk => clk,
    aresetn => reset_ACQ_int,
    s_axis_tvalid => s_axis_tvalid,
    s_axis_tready => open,
    s_axis_tdata => ADC2_data,
    m_axis_tvalid => m_axis_tvalid_ADC2,
    m_axis_tready => '1', -- Always '1', otherwise it keeps old data
    m_axis_tdata => m_axis_tdata_ADC2
  );
  
ADC1_2_converter : axis_dwidth_converter_32to64
  PORT MAP (
    aclk => clk,
    aresetn => reset_ACQ_int,
    s_axis_tvalid => s_axis_tvalid,
    s_axis_tready => open,
    s_axis_tdata(32-1 downto 16) => ADC1_data,
    s_axis_tdata(16-1 downto 0) => ADC2_data,
    m_axis_tvalid => m_axis_tvalid_ADC1_2,
    m_axis_tready => '1', -- Always '1', otherwise it keeps old data
    m_axis_tdata => m_axis_tdata_ADC1_2
  );
  
  
with channel_sel select m_axis_tvalid <=
  m_axis_tvalid_ADC1 when "01",
  m_axis_tvalid_ADC2 when "10",
  m_axis_tvalid_ADC1_2 when "11",
  '0' when OTHERS;
  
with channel_sel select m_axis_tdata <=
  m_axis_tdata_ADC1 when "01",
  m_axis_tdata_ADC2 when "10",
  m_axis_tdata_ADC1_2 when "11",
  (others => '0') when OTHERS;

end Behavioral;
