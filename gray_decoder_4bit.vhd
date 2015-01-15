
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:08:45 12/15/2014 
-- Design Name: 
-- Module Name:    gray_decoder_4bits - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity gray_decoder_4bit is
    Port ( weathercock : in   STD_LOGIC_VECTOR (3 downto 0);
           wind_dir    : out  STD_LOGIC_VECTOR (15 downto 0));
end gray_decoder_4bit;

architecture Behavioral of gray_decoder_4bit is

begin
with weathercock select
	wind_dir <= "0111111111111111" when "1111",
					"1011111111111111" when "1110",
					"1101111111111111" when "1100",
					"1110111111111111" when "1101",
					"1111011111111111" when "1001",
					"1111101111111111" when "1000",
					"1111110111111111" when "1010",
					"1111111011111111" when "1011",
					"1111111101111111" when "0011",
					"1111111110111111" when "0010",
					"1111111111011111" when "0000",
					"1111111111101111" when "0001",
					"1111111111110111" when "0101",
					"1111111111111011" when "0100",
					"1111111111111101" when "0110",
					"1111111111111110" when "0111",
					"0000000000000000" when others;

end Behavioral;
