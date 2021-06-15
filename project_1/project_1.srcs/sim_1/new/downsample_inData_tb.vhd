----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/15/2021 10:56:40 AM
-- Design Name: 
-- Module Name: downsample_inData_tb - Behavioral
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

entity downsample_inData_tb is
--  Port ( );
end downsample_inData_tb;

architecture Behavioral of downsample_inData_tb is

component downsample_inData is
    Port ( clk : in STD_LOGIC;
           resetn : in STD_LOGIC;
           downsample_value_minus_one : in STD_LOGIC_VECTOR (31 downto 0);
           data_tvalid : out STD_LOGIC);
end component;

signal clk : STD_LOGIC := '0';
signal resetn : STD_LOGIC;
signal downsample_value_minus_one : STD_LOGIC_VECTOR (31 downto 0);
signal data_tvalid : STD_LOGIC;


constant clk_period : time := 8ns;

begin

uut: downsample_inData 
    Port map (  clk => clk,
                resetn => resetn,
                downsample_value_minus_one => downsample_value_minus_one,
                data_tvalid => data_tvalid
                );

process_clk : process
begin
clk <= not(clk);
wait for clk_period/2;
end process;


stimuli_process : process
begin
resetn <= '0';
downsample_value_minus_one <= std_logic_vector(to_unsigned(0, downsample_value_minus_one'length));
wait for clk_period * 5;

resetn <= '1';
downsample_value_minus_one <= std_logic_vector(to_unsigned(0, downsample_value_minus_one'length));
wait for clk_period * 20;

resetn <= '1';
downsample_value_minus_one <= std_logic_vector(to_unsigned(1, downsample_value_minus_one'length));
wait for clk_period * 20;

resetn <= '1';
downsample_value_minus_one <= std_logic_vector(to_unsigned(10, downsample_value_minus_one'length));
wait for clk_period * 200;

resetn <= '1';
downsample_value_minus_one <= std_logic_vector(to_unsigned(100, downsample_value_minus_one'length));
wait for clk_period * 1000;

wait;
end process;
end Behavioral;
