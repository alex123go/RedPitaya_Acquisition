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

entity datamover_ctrl_testbench is
--  Port ( );
end datamover_ctrl_testbench;

architecture Behavioral of datamover_ctrl_testbench is


component datamover_ctrl is
    Port ( clk : in STD_LOGIC;
           resetn : in STD_LOGIC;
           start_sig : in STD_LOGIC;
           
           n_count : in STD_LOGIC_VECTOR(8-1 downto 0);
           
           n_bytes : in STD_LOGIC_VECTOR(23-1 downto 0);
           
           count_fifo_to_write : in STD_LOGIC_VECTOR(8-1 downto 0);
           delay_read : in STD_LOGIC_VECTOR(8-1 downto 0);
           delay_write : in STD_LOGIC_VECTOR(8-1 downto 0);
           
           FIFO_tvalid : out STD_LOGIC;
           
           FIFO_data_count : in STD_LOGIC_VECTOR(31 downto 0);
           
           s2mm_cmd    : out STD_LOGIC_VECTOR(72-1 downto 0); 
           s2mm_tvalid : out STD_LOGIC;
           mm2s_cmd    : out STD_LOGIC_VECTOR(72-1 downto 0);
           mm2s_tvalid : out STD_LOGIC;
           
           state_debug : out STD_LOGIC_VECTOR(5-1 downto 0));
end component;

constant clk_period : time := 8 ns;

signal clk : STD_LOGIC;
signal resetn : STD_LOGIC;
signal start_sig : STD_LOGIC;
signal n_count : STD_LOGIC_VECTOR(8-1 downto 0);
signal n_bytes : STD_LOGIC_VECTOR(23-1 downto 0);
signal count_fifo_to_write : STD_LOGIC_VECTOR(8-1 downto 0);
signal delay_read : STD_LOGIC_VECTOR(8-1 downto 0);
signal delay_write : STD_LOGIC_VECTOR(8-1 downto 0);
signal FIFO_tvalid : STD_LOGIC;
signal FIFO_data_count : STD_LOGIC_VECTOR(31 downto 0);
signal s2mm_cmd    : STD_LOGIC_VECTOR(72-1 downto 0); 
signal s2mm_tvalid : STD_LOGIC;
signal mm2s_cmd    : STD_LOGIC_VECTOR(72-1 downto 0);
signal mm2s_tvalid : STD_LOGIC;
signal state_debug : STD_LOGIC_VECTOR(5-1 downto 0);

begin


uut : datamover_ctrl port map(     clk => clk,
                                   resetn => resetn,
                                   start_sig => start_sig,
                                   n_count => n_count,
                                   n_bytes => n_bytes,
                                   count_fifo_to_write => count_fifo_to_write,
                                   delay_read => delay_read,
                                   delay_write => delay_write,
                                   FIFO_tvalid => FIFO_tvalid,
                                   FIFO_data_count => FIFO_data_count,
                                   s2mm_cmd    => s2mm_cmd   ,
                                   s2mm_tvalid => s2mm_tvalid,
                                   mm2s_cmd    => mm2s_cmd   ,
                                   mm2s_tvalid => mm2s_tvalid,
                                   state_debug => state_debug);


stimuli : process
begin
resetn <= '0';
start_sig <= '0';

n_count <= std_logic_vector(to_unsigned(3, n_count'length));
n_bytes <= "000" & x"00100";
count_fifo_to_write <= std_logic_vector(to_unsigned(36, count_fifo_to_write'length));
delay_read <= std_logic_vector(to_unsigned(10, delay_read'length));
delay_write <= std_logic_vector(to_unsigned(15, delay_write'length));
FIFO_data_count <= std_logic_vector(to_unsigned(22, FIFO_data_count'length));
wait for clk_period*10;
resetn <= '1';
wait for clk_period*10;
start_sig <= '1';
wait for clk_period*10;
FIFO_data_count <= std_logic_vector(to_unsigned(40, FIFO_data_count'length));
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
