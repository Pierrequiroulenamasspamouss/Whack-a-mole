library ieee ;
use ieee.std_logic_1164.all ; --Import the standart libraries
use ieee.numeric_std.all;    --Import numeric std for unsigned

entity Whackamole is --determine the inputs and outputs
  port
	(
	-- Input ports
    fastclock       : in  std_logic ; -- fastclock (59Hz - 320Hz)
    slowclock : in  std_logic ; -- timer clock (0.7Hz - 48Hz)
    button    : in  std_logic_vector(8 downto 0); -- vector of buttons
	 startButton : in std_logic;
	 
    -- Output ports
	 leds   : out std_logic_vector(8 downto 0); --vector of the leds
	 score_reset : out std_logic;
	 score_high : out std_logic;
	 score_low : out std_logic 
  );
end entity Whackamole ;

architecture Whackamole_arch of Whackamole is
  type state_type is (IDLE, PLAY);
  signal state : state_type := IDLE;
  
  -- LFSR de 5 bits pour la génération aléatoire
  signal lfsr           : std_logic_vector(4 downto 0) := "10000"; 
  
  signal score_timer    : integer range 0 to 3 := 0;
  signal error_timer    : integer range 0 to 3 := 0;
  
  -- utiliser des ticks globaux au lieu de un compteur par taupe
  signal global_tick    : integer range 0 to 63 := 0;
  
  signal start_pressed : std_logic := '0';
  signal button_pressed : std_logic_vector(8 downto 0) := (others => '0');

  signal mole_duration  : std_logic_vector(8 downto 0) := (others => '0');
  signal mole_active    : std_logic_vector(8 downto 0) := (others => '0');
  
  signal game_duration_timer : integer range 0 to 30 := 30;
  signal slowclock_prev : std_logic := '0';
  
begin

    main : process(fastclock)
      variable active_count : integer range 0 to 9 := 0;
      variable raw_val : integer range 0 to 15 := 0;
      variable idx : integer range 0 to 8 := 0;
      variable wrong_click : boolean := false;
    begin
        if rising_edge(fastclock) then
		  
            -- Générateur LFSR pseudo-aléatoire (LFSR  = Linear Feedback Shift Register)
            lfsr <= lfsr(3 downto 0) & (lfsr(4) xor lfsr(2));
            
            slowclock_prev <= slowclock;
            
				-- Score
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

            case state is
                when IDLE =>
                    score_reset <= '0';
                    -- Reset du score et des variables internes
                    mole_active <= (others => '0');
                    mole_duration <= (others => '0');
                    global_tick <= 0;
                    
                    -- Affichage des leds qui clignotent avec pos edge de slowclock 
                    leds <= (others => slowclock);
                    
                    if startButton = '1' and start_pressed = '0' then
                        state <= PLAY;
                        score_reset <= '1'; -- Pulse reset
                        game_duration_timer <= 30;
                        leds <= (others => '0');
                    end if;

                when PLAY =>
                    score_reset <= '0';
                    wrong_click := false;
                    
                    -- Timer de jeu total
                    if slowclock = '1' and slowclock_prev = '0' then
                        if game_duration_timer > 0 then
                            game_duration_timer <= game_duration_timer - 1;
                        else
                            state <= IDLE;
                        end if;
                    end if;
                    
                    -- Global Tick Prescaler (0 à 63)
                    if global_tick = 63 then
                        global_tick <= 0;
                    else
                        global_tick <= global_tick + 1;
                    end if;
                    
                    -- Compter le nombre de taupes actives
                    active_count := 0;
                    for i in 0 to 8 loop
                        if mole_active(i) = '1' then
                            active_count := active_count + 1;
                        end if;
                    end loop;
                    
                    -- Logique de détectiond es taupes, grosso modo ce qui était fait avant
                    for i in 0 to 8 loop
                        -- Hit detection indepedante
                        if button(i) = '1' and button_pressed(i) = '0' then
                            if mole_active(i) = '1' then
                                score_timer <= 3;
                                mole_active(i) <= '0';
                            else
                                wrong_click := true;
                            end if;
                        end if;
                        
                        -- Logique Timer
                        if mole_active(i) = '1' and global_tick = 0 then
                            if mole_duration(i) = '1' then
                                mole_duration(i) <= '0';
                            else
                                -- Player a échoué. On pourrait decrease le score ici
                                mole_active(i) <= '0';
                            end if;
                        end if;
                        
                        -- Display Logic simplifié
                        leds(i) <= mole_active(i);
                    end loop;
                    
                    -- Pénalité d'erreur sur un clic dans le vide
                    if wrong_click then
                        error_timer <= 3;
                        if game_duration_timer > 0 then
                            game_duration_timer <= game_duration_timer - 1;
                        end if;
                    end if;
                    
                    -- Faire apparaitre les taupes
                    if global_tick = 0 then
                        -- prevention si y'a déjà assez de taupes sur le terrain
                        if active_count < 2 then
                        
                            -- Extraction LFSR 0-15 -> index 0-8
                            raw_val := to_integer(unsigned(lfsr(3 downto 0)));
                            if raw_val > 8 then
                                idx := raw_val - 9;
                            else
                                idx := raw_val;
                            end if;
                            
                            if mole_active(idx) = '0' then
                                mole_active(idx) <= '1';
                                mole_duration(idx) <= '1';
                            end if;
                        end if;
                    end if;
                    
            end case;

            start_pressed <= startButton; 
            button_pressed <= button;
            
        end if;
    end process;

end architecture;
