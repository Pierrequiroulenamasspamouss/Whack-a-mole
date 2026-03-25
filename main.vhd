library ieee ;
use ieee.std_logic_1164.all ; --Import the standart libraries

entity Whackamole is --determine the inputs and outputs
  port
	(-- Input ports
	 slowclk	  : in  std_logic ;
    fastclk   : in  std_logic ;
    button    : in  std_logic_vector(8 downto 0); --vector of the buttons
    addscore  : in  std_logic ;
	 
	 
	 -- Output ports
	 leds   : out std_logic_vector(8 downto 0) ) ; --vector of the leds
end entity Whackamole ;

architecture Whackamole_arch of Whackamole is
  signal cnt       : integer range 0 to 8 := 0 ;
  signal current_value : integer range 0 to 8 := 0 ;
  signal old_button_press : std_logic := '0' ;
begin

  main : process(fastclk)
  begin
    if rising_edge(fastclk) then

      for i in 0 to 8 loop
        if button(i) = '0' then -- bouton appuyé (pull-down inversé)
          leds(i) <= '1';
        else
          leds(i) <= '0';
        end if;
      end loop;

    end if;
  end process main;

end architecture Whackamole_arch;