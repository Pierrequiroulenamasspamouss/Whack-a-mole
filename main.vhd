library ieee ;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all;

entity Whackamole is
  port
	(
    fastclock   : in  std_logic ;
    slowclock   : in  std_logic ;
    button      : in  std_logic_vector(8 downto 0);
    startButton : in  std_logic;
	 
	leds        : out std_logic_vector(8 downto 0);
    penalty_led : out std_logic;
	score_reset : out std_logic;
	score_high  : out std_logic
  );
end entity Whackamole ;

architecture Behavior of Whackamole is

    -- 1) Global Game FSM
    type game_state_type is (WAIT_START, PLAYING);
    signal game_state : game_state_type := WAIT_START;

    -- 2) Active moles arrays 
    signal mole_active   : std_logic_vector(8 downto 0) := (others => '0');
    signal mole_duration : std_logic_vector(8 downto 0) := (others => '0');

    -- Timers and Clocks
    signal game_duration_timer : integer range 0 to 30 := 30;
    signal slowclock_prev : std_logic := '0';
    signal global_tick : integer range 0 to 63 := 0;

    -- LFSR for random generation
    signal lfsr : std_logic_vector(4 downto 0) := "10000";

    -- Internal rising edge detection
    signal button_prev : std_logic_vector(8 downto 0) := (others => '0');
    signal startButton_prev : std_logic := '1';

    -- Score pulse counters
    signal score_timer : integer range 0 to 3 := 0; -- 2 bits
    signal error_timer : integer range 0 to 31 := 0; -- more bits required for sufficient visibility

    -- Communication triggers between processes
    signal trigger_hit  : std_logic := '0';
    signal trigger_miss : std_logic := '0';



begin
    -------------------------------------------------------------------------
    -- Random numbers
    -------------------------------------------------------------------------
    
    lfsr_proc: process(fastclock)
    begin
        if rising_edge(fastclock) then
            lfsr <= lfsr(3 downto 0) & (lfsr(4) xor lfsr(2));
        end if;
    end process;

    -------------------------------------------------------------------------
    -- Global clock manager
    -------------------------------------------------------------------------
    
    timer_proc: process(fastclock)
    begin
        if rising_edge(fastclock) then
            slowclock_prev <= slowclock;
            
            -- Global Tick Prescaler (0 to 63)
            if global_tick = 63 then
                global_tick <= 0;
            else
                global_tick <= global_tick + 1;
            end if;

            -- Score pulse generation 
            if trigger_hit = '1' then
                score_timer <= 3 ; 
            elsif score_timer > 0 then
                score_timer <= score_timer - 1;
            end if;
            
            if trigger_hit = '1' or score_timer > 0 then
                score_high <= '1';
            else
                score_high <= '0';
            end if;

            if trigger_miss = '1' then
                error_timer <= 31;
            elsif error_timer > 0 then
                error_timer <= error_timer - 1;
            end if;
            
            if trigger_miss = '1' or error_timer > 0 then
                penalty_led <= '1';
            else
                penalty_led <= '0';
            end if;
        end if;
    end process;


    -------------------------------------------------------------------------
    -- Global game controller
    -------------------------------------------------------------------------
    game_fsm_proc: process(fastclock)
    begin
        if rising_edge(fastclock) then
            startButton_prev <= startButton;

            case game_state is
                when WAIT_START =>
                    score_reset <= '0';
                    game_duration_timer <= 30; -- Main timer reset
                    if startButton = '0' and startButton_prev = '1' then
                        game_state <= PLAYING;
                        score_reset <= '1'; -- Reset pulse to display
                    end if;

                when PLAYING =>
                    score_reset <= '0';
                    
                    -- Handle total game timer and penalties
                    if (slowclock = '1' and slowclock_prev = '0') or trigger_miss = '1' then
                        if game_duration_timer > 0 then
                            game_duration_timer <= game_duration_timer - 1;
                        end if;
                    end if;

                    -- Transition at the end of the timer
                    if game_duration_timer = 0 then
                        game_state <= WAIT_START;
                    end if;

            end case;
        end if;
    end process;


    -------------------------------------------------------------------------
    -- Mole detection
    -------------------------------------------------------------------------
    moles_fsm_proc: process(fastclock)
        variable active_count : integer range 0 to 9;
        variable raw_val : integer range 0 to 15;
        variable spawn_idx : integer range 0 to 8;
        variable wrong_click : boolean;
    begin
        if rising_edge(fastclock) then
            button_prev <= button;
            wrong_click := false;
            trigger_hit <= '0';  -- Clear triggers every cycle
            trigger_miss <= '0';

            if game_state = PLAYING then
                
                -- Dynamically count active moles
                active_count := 0;
                for i in 0 to 8 loop
                    if mole_active(i) = '1' then
                        active_count := active_count + 1;
                    end if;
                end loop;

                -- Spawning logic: spawn moles based on random tick
                if global_tick = 0 and (active_count = 0 or (active_count < 2 and lfsr(0) = '1')) then
                    raw_val := to_integer(unsigned(lfsr(3 downto 0)));
                    if raw_val > 8 then
                        spawn_idx := raw_val - 9;
                    else
                        spawn_idx := raw_val;
                    end if;
                    
                    if mole_active(spawn_idx) = '0' then
                        mole_active(spawn_idx) <= '1';
                        mole_duration(spawn_idx) <= '1';
                    end if;
                end if;

                -- Launch 9 hit detections in parallel 
                for i in 0 to 8 loop
                    if mole_active(i) = '0' then
                        leds(i) <= '0';
                        -- If player clicks an inactive mole, penalty!
                        if button(i) = '1' and button_prev(i) = '0' then
                            wrong_click := true;
                        end if;
                    else
                        leds(i) <= '1';
                        -- Transition 1: player hits the mole
                        if button(i) = '1' and button_prev(i) = '0' then
                            trigger_hit <= '1';
                            mole_active(i) <= '0';
                        else
                            -- Transition 2: mole disappears naturally after 1 full global tick
                            if global_tick = 0 then 
                                if mole_duration(i) = '1' then
                                    mole_duration(i) <= '0';
                                else
                                    mole_active(i) <= '0';
                                end if;
                            end if;
                        end if;
                    end if;
                end loop;

                -- Apply global error logic penalty
                if wrong_click then
                    trigger_miss <= '1'; -- Signal to timer & FSM processes
                end if;

            else
                -- While the game is inactive
                for i in 0 to 8 loop
                    mole_active(i) <= '0';
                    if game_state = WAIT_START then
                        leds(i) <= slowclock; -- Led blinks with slowclock positive edge 
                    else
                        leds(i) <= '0';       
                    end if;
                end loop;
            end if;

        end if;
    end process;

end architecture;
