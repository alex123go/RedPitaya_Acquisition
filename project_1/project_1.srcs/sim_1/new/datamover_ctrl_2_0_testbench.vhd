----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/16/2020 11:08:48 AM
-- Design Name: 
-- Module Name: datamover_ctrl_testbench - Behavioral
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

entity datamover_ctrl_2_0_testbench is
--  Port ( );
end datamover_ctrl_2_0_testbench;

architecture Behavioral of datamover_ctrl_2_0_testbench is


component datamover_ctrl_2_0 is
    Port ( clk : in STD_LOGIC;
           resetn : in STD_LOGIC;

           start_sig : in STD_LOGIC;
           
           n_avg : in STD_LOGIC_VECTOR(16-1 downto 0);
           n_pts : in STD_LOGIC_VECTOR(20-1 downto 0);
           
           --n_bytes : in STD_LOGIC_VECTOR(23-1 downto 0);

           -- last_addr where we can write
           last_addr : in STD_LOGIC_VECTOR(32-1 downto 0);

           -- S2MM Stream Data
          FIFO_tvalid : out STD_LOGIC;

          -- Data count FIFO_in
          FIFO_S2MM_data_count : in STD_LOGIC_VECTOR(31 downto 0);
          COMP_S2MM_data_count : in STD_LOGIC_VECTOR(8-1 downto 0);

          -- Data count FIFO_out
          FIFO_MM2S_data_count : in STD_LOGIC_VECTOR(9-1 downto 0);
          COMP_MM2S_data_count : in STD_LOGIC_VECTOR(9-1 downto 0);

          -- Number of S2MM before starting MM2S
          count_S2MM_pointer : in STD_LOGIC_VECTOR(8-1 downto 0);

           -- S2MM CMD Data
           s_axis_s2mm_cmd_tdata : out STD_LOGIC_VECTOR(72-1 downto 0);
           s_axis_s2mm_cmd_tready : in STD_LOGIC;
           s_axis_s2mm_cmd_tvalid : out STD_LOGIC;

           -- MM2S CMD Data
           s_axis_mm2s_cmd_tdata : out STD_LOGIC_VECTOR(72-1 downto 0);
           s_axis_mm2s_cmd_tready : in STD_LOGIC;
           s_axis_mm2s_cmd_tvalid : out STD_LOGIC;

           -- S2MM STS Data
           s_axis_s2mm_sts_tdata : in std_logic_vector(8-1 downto 0);
           s_axis_s2mm_sts_tkeep : in std_logic_vector(0 downto 0);
           s_axis_s2mm_sts_tlast: in std_logic;
           s_axis_s2mm_sts_tready: out std_logic;
           s_axis_s2mm_sts_tvalid: in std_logic;

           -- MM2S STS Data
           s_axis_mm2s_sts_tdata : in std_logic_vector(8-1 downto 0);
           s_axis_mm2s_sts_tkeep : in std_logic_vector(0 downto 0);
           s_axis_mm2s_sts_tlast: in std_logic;
           s_axis_mm2s_sts_tready: out std_logic;
           s_axis_mm2s_sts_tvalid: in std_logic;



           state_debug : out STD_LOGIC_VECTOR(5-1 downto 0);
           addr_diff_unwrap_out :  out STD_LOGIC_VECTOR(32-1 downto 0)
           );
       end component;

constant clk_period : time := 8 ns;

signal clk : STD_LOGIC;
signal resetn : STD_LOGIC;
signal start_sig : STD_LOGIC;

signal n_avg : STD_LOGIC_VECTOR(16-1 downto 0);
signal n_pts : STD_LOGIC_VECTOR(20-1 downto 0);

signal n_bytes : STD_LOGIC_VECTOR(23-1 downto 0);

signal last_addr : STD_LOGIC_VECTOR(32-1 downto 0);


signal FIFO_tvalid : STD_LOGIC;


signal FIFO_S2MM_data_count : STD_LOGIC_VECTOR(31 downto 0);
signal COMP_S2MM_data_count : STD_LOGIC_VECTOR(8-1 downto 0);

-- Data count FIFO_out
signal FIFO_MM2S_data_count : STD_LOGIC_VECTOR(9-1 downto 0);
signal COMP_MM2S_data_count : STD_LOGIC_VECTOR(9-1 downto 0);

-- Number of S2MM before starting MM2S
signal count_S2MM_pointer : STD_LOGIC_VECTOR(8-1 downto 0);

-- S2MM CMD Data
signal s_axis_s2mm_cmd_tdata : STD_LOGIC_VECTOR(72-1 downto 0);
signal s_axis_s2mm_cmd_tready : STD_LOGIC;
signal s_axis_s2mm_cmd_tvalid : STD_LOGIC;

-- MM2S CMD Data
signal s_axis_mm2s_cmd_tdata : STD_LOGIC_VECTOR(72-1 downto 0);
signal s_axis_mm2s_cmd_tready : STD_LOGIC;
signal s_axis_mm2s_cmd_tvalid : STD_LOGIC;

-- S2MM STS Data
signal s_axis_s2mm_sts_tdata : std_logic_vector(8-1 downto 0);
signal s_axis_s2mm_sts_tkeep : std_logic_vector(0 downto 0);
signal s_axis_s2mm_sts_tlast: std_logic;
signal s_axis_s2mm_sts_tready: std_logic;
signal s_axis_s2mm_sts_tvalid: std_logic;

-- MM2S STS Data
signal s_axis_mm2s_sts_tdata : std_logic_vector(8-1 downto 0);
signal s_axis_mm2s_sts_tkeep : std_logic_vector(0 downto 0);
signal s_axis_mm2s_sts_tlast: std_logic;
signal s_axis_mm2s_sts_tready: std_logic;
signal s_axis_mm2s_sts_tvalid: std_logic;

signal state_debug : STD_LOGIC_VECTOR(5-1 downto 0);
signal addr_diff_unwrap_out :  STD_LOGIC_VECTOR(32-1 downto 0);

begin


uut : datamover_ctrl_2_0 port map( clk  => clk,
                                   resetn  => resetn,
                                   start_sig  => start_sig,
                                   n_avg  => n_avg,
                                   n_pts  => n_pts,
                                   -- last_addr where we can write
                                   last_addr  => last_addr,
                                   -- S2MM Stream Data
                                  FIFO_tvalid  => FIFO_tvalid,
                                  -- Data count FIFO_in
                                  FIFO_S2MM_data_count  => FIFO_S2MM_data_count,
                                  COMP_S2MM_data_count  => COMP_S2MM_data_count,
                                  -- Data count FIFO_out
                                  FIFO_MM2S_data_count  => FIFO_MM2S_data_count,
                                  COMP_MM2S_data_count  => COMP_MM2S_data_count,
                                  -- Number of S2MM before starting MM2S
                                  count_S2MM_pointer  => count_S2MM_pointer,
                                   -- S2MM CMD Data
                                   s_axis_s2mm_cmd_tdata  => s_axis_s2mm_cmd_tdata,
                                   s_axis_s2mm_cmd_tready  => s_axis_s2mm_cmd_tready,
                                   s_axis_s2mm_cmd_tvalid  => s_axis_s2mm_cmd_tvalid,
                                   -- MM2S CMD Data
                                   s_axis_mm2s_cmd_tdata  => s_axis_mm2s_cmd_tdata,
                                   s_axis_mm2s_cmd_tready  => s_axis_mm2s_cmd_tready,
                                   s_axis_mm2s_cmd_tvalid  => s_axis_mm2s_cmd_tvalid,
                                   -- S2MM STS Data
                                   s_axis_s2mm_sts_tdata  => s_axis_s2mm_sts_tdata,
                                   s_axis_s2mm_sts_tkeep  => s_axis_s2mm_sts_tkeep,
                                   s_axis_s2mm_sts_tlast => s_axis_s2mm_sts_tlast,
                                   s_axis_s2mm_sts_tready => s_axis_s2mm_sts_tready,
                                   s_axis_s2mm_sts_tvalid => s_axis_s2mm_sts_tvalid,
                                   -- MM2S STS Data
                                   s_axis_mm2s_sts_tdata  => s_axis_mm2s_sts_tdata,
                                   s_axis_mm2s_sts_tkeep  => s_axis_mm2s_sts_tkeep,
                                   s_axis_mm2s_sts_tlast => s_axis_mm2s_sts_tlast,
                                   s_axis_mm2s_sts_tready => s_axis_mm2s_sts_tready,
                                   s_axis_mm2s_sts_tvalid => s_axis_mm2s_sts_tvalid,

                                   state_debug  => state_debug,
                                   addr_diff_unwrap_out  => addr_diff_unwrap_out);


stimuli : process
begin
resetn <= '0';
start_sig <= '0';

n_avg <= std_logic_vector(to_unsigned(2, n_avg'length));
n_pts <= std_logic_vector(to_unsigned(256, n_pts'length));
last_addr  <= x"0000_0400";
FIFO_S2MM_data_count  <= std_logic_vector(to_unsigned(22, FIFO_S2MM_data_count'length));
COMP_S2MM_data_count  <= std_logic_vector(to_unsigned(20, COMP_S2MM_data_count'length));
FIFO_MM2S_data_count  <= std_logic_vector(to_unsigned(18, FIFO_MM2S_data_count'length));
COMP_MM2S_data_count  <= std_logic_vector(to_unsigned(20, COMP_MM2S_data_count'length));
count_S2MM_pointer  <= std_logic_vector(to_unsigned(5, count_S2MM_pointer'length));
s_axis_s2mm_sts_tdata  <= x"80";
s_axis_s2mm_sts_tvalid  <= '1';
s_axis_mm2s_sts_tdata  <= x"80";
s_axis_mm2s_sts_tvalid  <= '1';


wait for clk_period*10;
resetn <= '1';
wait for clk_period*10;
start_sig <= '1';
wait for clk_period*500;

wait;
end process;

clk_process : process
begin
  clk <= '1';
  wait for clk_period/2;
  clk <= '0';
  wait for clk_period/2;
end process;

end Behavioral;
