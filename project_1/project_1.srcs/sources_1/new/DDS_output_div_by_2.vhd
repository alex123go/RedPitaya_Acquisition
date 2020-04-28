----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/23/2020 05:22:50 PM
-- Design Name: 
-- Module Name: DDS_output_div_by_2 - Behavioral
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

entity DDS_output_div_by_2 is
    Port ( data_in : in STD_LOGIC_VECTOR (16-1 downto 0);
           data_out : out STD_LOGIC_VECTOR (14-1 downto 0));
end DDS_output_div_by_2;

architecture Behavioral of DDS_output_div_by_2 is

begin

data_out <= std_logic_vector(signed(data_in(14-1 downto 0)) / 2);

end Behavioral;
