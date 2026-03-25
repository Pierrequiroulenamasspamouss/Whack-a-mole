library ieee ;
use ieee.std_logic_1164.all ; --Import the standart libraries

entity random_led is --determine the inputs and outputs
  port
	(-- Input ports
    clk       : in  std_logic ;
    button    : in  std_logic ;
    -- Output ports
	 leds   : out std_logic_vector(8 downto 0) ) ; --vector of the leds
end entity random_led ;

architecture random_led_arch of random_led is
  signal cnt       : integer range 0 to 8 := 0 ;
  signal current_value : integer range 0 to 8 := 0 ;
  signal old_button_press : std_logic := '0' ;
begin

	main : process( clk )
	begin
		if( rising_edge( clk ) ) then
			if (cnt = 8) then --reset cnt if to high
				cnt <= 0 ;
			else
				cnt <= cnt + 1 ; --increment cnt
			end if;
			
			if( button = '1' and old_button_press = '0') then
				leds(current_value) <= '0' ;--deactivate previous led
				leds(cnt) <= '1' ;-- activate new led
				current_value <= cnt; --note the random value
				old_button_press <= '1' ; --remeber that the button is pressed
			end if;
			
			if(button = '0') then --if button not pressed remember that
				old_button_press <= '0';
			end if;
			
		end if; 

		
	end process main ;

end architecture random_led_arch ;
