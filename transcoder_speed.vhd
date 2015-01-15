----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:53:14 12/15/2014 
-- Design Name: 
-- Module Name:    transcoder_speed - Behavioral 
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

entity transcoder_speed is
    Port ( speed_code : in  STD_LOGIC_VECTOR (4 downto 0);
           wind_speed : out  STD_LOGIC_VECTOR (19 downto 0));
end transcoder_speed;

architecture Behavioral of transcoder_speed is

begin

with speed_code select
	wind_speed <= "11111111111111111111" when "00000",
					  "01111111111111111111" when "00001",
					  "00111111111111111111" when "00010",
					  "00011111111111111111" when "00011",
					  "00001111111111111111" when "00100",
					  "00000111111111111111" when "00101",
					  "00000011111111111111" when "00110",
					  "00000001111111111111" when "00111",
					  "00000000111111111111" when "01000",
					  "00000000011111111111" when "01001",
					  "00000000001111111111" when "01010",
					  "00000000000111111111" when "01011",
					  "00000000000011111111" when "01100",
					  "00000000000001111111" when "01101",
					  "00000000000000111111" when "01110",
					  "00000000000000011111" when "01111",
					  "00000000000000001111" when "10000",
					  "00000000000000000111" when "10001",
					  "00000000000000000011" when "10010",
					  "00000000000000000001" when "10011",
					  "00000000000000000000" when others;
					  

end Behavioral;

