----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:31:13 12/15/2014 
-- Design Name: 
-- Module Name:    decoder - Behavioral 
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

entity decoder is
    Port ( weathercock   : in   STD_LOGIC_VECTOR (3 downto 0);
           code_select   : in   STD_LOGIC;
           code_display  : out  STD_LOGIC_VECTOR (3 downto 0);
           wind_dir      : out  STD_LOGIC_VECTOR (15 downto 0)
			  );
end decoder;

architecture Behavioral of decoder is

-- Declaration of components we will used in this description
COMPONENT gray_bin_4bit
	PORT(
			weathercock : in  STD_LOGIC_VECTOR (3 downto 0);
			binary_code : out STD_LOGIC_VECTOR (3 downto 0)
		);
END COMPONENT;


COMPONENT gray_decoder_4bit
	PORT(
		weathercock : in  STD_LOGIC_VECTOR (3 downto 0);
		wind_dir    : out STD_LOGIC_VECTOR (15 downto 0)
);
END COMPONENT;


COMPONENT mux_2x1x4bit
	PORT(
		code_select   : in   STD_LOGIC;
		weathercock   : in   STD_LOGIC_VECTOR (3 downto 0);
		binary_code   : in   STD_LOGIC_VECTOR (3 downto 0);
		code_display  : out  STD_LOGIC_VECTOR (3 downto 0)
			
	);
END COMPONENT;

	-- Declaration of internal Signals of the Architecture
	signal binary_code : STD_LOGIC_VECTOR (3 downto 0);

begin -- Start of instructions

U0: gray_bin_4bit PORT MAP
		(
			weathercock => weathercock,
			binary_code => binary_code

		);
		
U1: gray_decoder_4bit PORT MAP
		(
			weathercock => weathercock,
			wind_dir   => wind_dir

		);
	
U2: mux_2x1x4bit PORT MAP
		(
			weathercock  => weathercock,
			binary_code  => binary_code,
			code_select  => code_select,
			code_display => code_display


		);	
		


end Behavioral;

