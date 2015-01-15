----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:05:27 10/18/2013 
-- Design Name: 
-- Module Name:    speed_counter - Behavioral 
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

entity speed_counter is
    Port ( anemometer : in  STD_LOGIC;
           code_select : in  STD_LOGIC; 
           clock : in  STD_LOGIC;
           wind_speed : out  STD_LOGIC_VECTOR (19 downto 0));
end speed_counter;

architecture Behavioral of speed_counter is

	component transcoder_speed
    Port ( speed_code : in  STD_LOGIC_VECTOR (4 downto 0);
           wind_speed : out  STD_LOGIC_VECTOR (19 downto 0));
	end component transcoder_speed;
	
	component counter_5bit
    Port ( counter_ena : in  STD_LOGIC;
           counter_rst : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           speed_code : out  STD_LOGIC_VECTOR (4 downto 0));
end component counter_5bit;
	
	
	component risingedge_detector 
    Port ( anemometer : in  STD_LOGIC;
           code_select : in  STD_LOGIC; 
           clock : in  STD_LOGIC;
           counter_ena : out  STD_LOGIC);
end component risingedge_detector;
	
	component freq_divider 
    Port ( clock : in  STD_LOGIC;
           counter_rst : out  STD_LOGIC);
end component freq_divider;
	
	
	signal speed_code :  STD_LOGIC_VECTOR (4 downto 0);
	signal counter_ena :  STD_LOGIC;
   signal counter_rst :   STD_LOGIC;
	  
	  
begin


	U_risingedge_detector : risingedge_detector 
		 Port map( anemometer => anemometer,
						code_select => code_select,
				  clock => clock,
				  counter_ena => counter_ena);



	U_freq_divider : freq_divider
		 Port map( clock => clock,
				  counter_rst => counter_rst );
				  
				  
	U_counter_5bit : counter_5bit
		 Port map( counter_ena => counter_ena,
				  counter_rst => counter_rst,
				  clock  => clock,
				  speed_code  =>speed_code);
				  
				  
	u_transcoder_speed : transcoder_speed
		 Port map( speed_code  => speed_code,
				  wind_speed  => wind_speed);

end Behavioral;

