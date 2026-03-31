
library ieee ;
use ieee.std_logic_1164.all ; --Import the standart libraries


entity Whackamole is --determine the inputs and outputs
  port
	(
	-- Input ports
    clk       : in  std_logic ;
    button : in std_logic_vector(8 downto 0); -- vector of buttons
	 startButton : in std_logic;
	 
    -- Output ports
	 leds   : out std_logic_vector(8 downto 0); --vector of the leds
	 score_high : out std_logic;
	 score_low : out std_logic );
end entity Whackamole ;


architecture Whackamole_arch of Whackamole is
  signal cnt            : integer range 0 to 8 := 0; --Possible d'implémenter plusieurs mole si on créer un décalage
																	  --entre différent compteur
  signal current_mole   : integer range 0 to 8 := 0;
  signal mole_active    : std_logic := '0';
  
  signal score_timer    : integer range 0 to 80 := 0;
  signal error_timer    : integer range 0 to 80 := 0;
  signal mole_duration  : integer range 0 to 480 := 0; 
  signal spawn_delay    : integer range 0 to 320 := 0;  -- les timer sont calculer pour une fréquence de 320Hz
  
  signal start_pressed : std_logic := '0';
  signal button_pressed : std_logic_vector(8 downto 0);
begin

    main : process(clk)
    begin
        if rising_edge(clk) then
		  
            if cnt = 8 then 
					cnt <= 0; 
				else 
					cnt <= cnt + 1; 
				end if;

            if score_timer > 0 then
                score_high <= '1';
                score_timer <= score_timer - 1;
            else
                score_high <= '0';
            end if;
				
				if error_timer > 0 then
                score_low <= '1';
                error_timer <= error_timer - 1;
            else
                score_low <= '0';
            end if;

				
				

            if mole_active = '1' then
                leds(current_mole) <= '1'; -- Allume la taupe
                
                if button(current_mole) = '1' and button_pressed(current_mole) = '0' then
                    score_timer <= 80; --timer pour que le signal soit assez long pour être interpreter
                    mole_active <= '0';
                    spawn_delay <= 320; -- la mole n'apparaît pas directement après la suivante, 1s d'attente
						  
						  current_mole <= cnt; -- détermine la prochaine mole
						  
                elsif mole_duration > 0 then           --la mole est up pour un certain temps
                    mole_duration <= mole_duration - 1;	  
                else
                    mole_active <= '0';
                    spawn_delay <= 320;
                end if;
                
                for i in 0 to 8 loop
                    if i /= current_mole and button(i) = '1' and button_pressed(i) = '0' then
                        error_timer <= 80;  -- si le mauvais boutton est pressé alors envoie un signal
                    end if;
                end loop;

            else                                                    -- au départ aucune mole sur le terrain
					
                if spawn_delay > 0 then
                    spawn_delay <= spawn_delay - 1;             
                elsif (startButton = '1' and start_pressed = '0') or spawn_delay = 0 then -- start une partie ou auto-spawn si la mole n'a pas 
																														-- était frapper a temps, pas vrmt aléatoire...
						  start_pressed <= '1';
                    current_mole <= cnt;
                    mole_duration <= 480;
                    mole_active <= '1';
                end if;
					 
            end if;
				start_pressed <= startButton; 
				button_pressed <= button; 			
				
        end if;
		  
    end process;
end architecture;


