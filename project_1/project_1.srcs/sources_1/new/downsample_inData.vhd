----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/15/2021 10:28:22 AM
-- Design Name: 
-- Module Name: downsample_inData - Behavioral
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

entity downsample_inData is
    Port ( clk : in STD_LOGIC;
           resetn : in STD_LOGIC;
           downsample_value_minus_one : in STD_LOGIC_VECTOR (31 downto 0);
           data_tvalid : out STD_LOGIC);
end downsample_inData;

architecture Behavioral of downsample_inData is

signal data_tvalid_int : std_logic;
signal counter : std_logic_vector(32-1 downto 0);

begin


process(clk,resetn)
begin
if resetn = '0' then
    counter <= (others => '0');
    data_tvalid_int <= '0';
elsif rising_edge(clk) then
    if unsigned(counter) = unsigned(downsample_value_minus_one) then
        counter <= (others => '0');
        data_tvalid_int <= '1'; 
    else
        counter <= std_logic_vector(unsigned(counter) + 1);
        data_tvalid_int <= '0';
    end if; 

end if;
end process;




data_tvalid <= data_tvalid_int;

end Behavioral;
