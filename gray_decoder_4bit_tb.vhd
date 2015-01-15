--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:44:32 12/15/2014
-- Design Name:   
-- Module Name:   /share/users/alperen.aydin/home/TPElec/ELN1/SysMeteo/gray_decoder_4bit_tb.vhd
-- Project Name:  SysMeteo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: gray_decoder_4bit
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
 
ENTITY gray_decoder_4bit_tb IS
END gray_decoder_4bit_tb;
 
ARCHITECTURE behavior OF gray_decoder_4bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT gray_decoder_4bit
    PORT(
         weathercock : IN  std_logic_vector(3 downto 0);
         wind_dir : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal weathercock : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal wind_dir : std_logic_vector(15 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: gray_decoder_4bit PORT MAP (
          weathercock => weathercock,
          wind_dir => wind_dir
        );
	
	weathercock <= "1111",
						"1110" after 10 ns,
						"1100" after 20 ns,
						"1101" after 30 ns,
						"1001" after 40 ns,
						"1000" after 50 ns,
						"1010" after 60 ns,
						"1011" after 70 ns,
						"0011" after 80 ns,
						"0010" after 90 ns,
						"0000" after 100 ns,
						"0001" after 110 ns,
						"0101" after 120 ns,
						"0100" after 130 ns,
						"0110" after 140 ns,
						"0111" after 150 ns;
	
	

END;
