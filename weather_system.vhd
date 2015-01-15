----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:55:55 12/15/2014 
-- Design Name: 
-- Module Name:    weather_system - Behavioral 
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

entity weather_system is
    Port ( weathercock     : in   STD_LOGIC_VECTOR (3 downto 0);
           anemometer      : in   STD_LOGIC;
           code_select     : in   STD_LOGIC;
           mode_select     : in   STD_LOGIC;
           clock           : in   STD_LOGIC;
			  
           code_wind_speed : out  STD_LOGIC_VECTOR (3 downto 0);
           wind_dir_speed  : out  STD_LOGIC_VECTOR (15 downto 0));
end weather_system;

architecture Behavioral of weather_system is
-- Declaration of components we will used in this description

	COMPONENT decoder
	PORT(	
		weathercock     : in   STD_LOGIC_VECTOR (3 downto 0);
		code_select     : in   STD_LOGIC;
		code_display    : out  STD_LOGIC_VECTOR (3 downto 0);
		wind_dir			 : out  STD_LOGIC_VECTOR (15 downto 0)
		);
		END COMPONENT;

	COMPONENT speed_counter
	PORT(	
		anemometer      : in   STD_LOGIC;
		code_select     : in   STD_LOGIC;
		clock           : in   STD_LOGIC;
		wind_speed		 : out  STD_LOGIC_VECTOR (19 downto 0)
		);
		END COMPONENT;

	COMPONENT mux_2x1x20bit
	PORT(	
		code_display    : in   STD_LOGIC_VECTOR (3 downto 0);
		wind_dir			 : in   STD_LOGIC_VECTOR (15 downto 0);
		wind_speed		 : in   STD_LOGIC_VECTOR (19 downto 0);
		mode_select     : in   STD_LOGIC;
		code_wind_speed : out  STD_LOGIC_VECTOR (3 downto 0);
		wind_dir_speed  : out  STD_LOGIC_VECTOR (15 downto 0)
		);
		END COMPONENT;
	-- Declaration of internal Signals of the Architecture
	signal code_display : STD_LOGIC_VECTOR (3 downto 0);
	signal wind_dir     : STD_LOGIC_VECTOR (15 downto 0);
	signal wind_speed   : STD_LOGIC_VECTOR (19 downto 0);
	
begin -- Start of instructions

 U0: decoder PORT MAP(
	weathercock		=> 	weathercock,
	code_select		=>		code_select,
	code_display	=>		code_display,
	wind_dir			=>		wind_dir
	);

 U1: speed_counter PORT MAP(
	anemometer	=>		anemometer,
	code_select	=>		code_select,
	clock			=>		clock,
	wind_speed  =>		wind_speed
	);

 
 U2: mux_2x1x20bit PORT MAP(
	code_display		=>		code_display,
	wind_dir				=>		wind_dir,
	wind_speed			=>		wind_speed,
	mode_select       =>    mode_select,
	code_wind_speed	=>		code_wind_speed,
	wind_dir_speed		=>		wind_dir_speed
	);

end Behavioral;

