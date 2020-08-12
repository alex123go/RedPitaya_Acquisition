----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/12/2020 08:57:37 AM
-- Design Name: 
-- Module Name: multiplexer_2to1 - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity multiplexer_2to1 is
    Generic ( DATA_WIDTH : integer := 16);
    Port ( clk : in STD_LOGIC;
           resetn : in STD_LOGIC;
           sel : in STD_LOGIC;
           data_in_1 : in STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0);
           data_in_2 : in STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0);
           data_out : out STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0));
end multiplexer_2to1;

architecture Behavioral of multiplexer_2to1 is

begin

process(resetn,clk)
begin
if resetn = '0' then
    data_out <= (others => '0');
elsif rising_edge(clk) then
    if sel = '0' then
        data_out <= data_in_1;
    elsif sel = '1' then
        data_out <= data_in_2;
    else
        data_out <= (others => '0');
    end if;
end if;
end process;


end Behavioral;
