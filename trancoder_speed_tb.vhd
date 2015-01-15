--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:00:16 12/15/2014
-- Design Name:   
-- Module Name:   /share/users/alperen.aydin/home/TPElec/ELN1/SysMeteo/trancoder_speed_tb.vhd
-- Project Name:  SysMeteo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: transcoder_speed
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY trancoder_speed_tb IS
END trancoder_speed_tb;
 
ARCHITECTURE behavior OF trancoder_speed_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT transcoder_speed
    PORT(
         speed_code : IN  std_logic_vector(4 downto 0);
         wind_speed : OUT  std_logic_vector(19 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal speed_code : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal wind_speed : std_logic_vector(19 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: transcoder_speed PORT MAP (
          speed_code => speed_code,
          wind_speed => wind_speed
        );

 
 speed_code <= 	"00000",
						"00001" after 10 ns,
						"00010" after 20 ns,
						"00011" after 30 ns,
						"00100" after 40 ns,
						"00101" after 50 ns,
						"00110" after 60 ns,
					   "00111" after 70 ns,
					   "01000" after 80 ns,
					   "01001" after 90 ns,
						"01010" after 100 ns,
						"01011" after 110 ns,
						"01100" after 120 ns,
					   "01101" after 130 ns,
					   "01110" after 140 ns,
					   "01111" after 150 ns,
						"10000" after 160 ns,
					   "10001" after 170 ns,
					   "10010" after 180 ns,
					   "10011" after 190 ns,
						"10100" after 200 ns; 
END;
