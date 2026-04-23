library ieee ;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all;

entity Whackamole_Modular is
  port
	(
    fastclock   : in  std_logic ;
    slowclock   : in  std_logic ;
    button      : in  std_logic_vector(8 downto 0);
    startButton : in  std_logic;
	 
	leds        : out std_logic_vector(8 downto 0);
	score_reset : out std_logic;
	score_high  : out std_logic;
	score_low   : out std_logic 
  );
end entity Whackamole_Modular ;

architecture Behavior of Whackamole_Modular is

    -- 1) Global Game FSM
    type game_state_type is (WAIT_START, PLAYING, GAME_OVER);
    signal game_state : game_state_type := WAIT_START;

    -- 2) Mole FSM Array (9 independent concurrent State Machines!)
    type mole_state_type is (HIDDEN, SHOWING, HIT, MISSED);
    type mole_state_array is array (0 to 8) of mole_state_type;
    signal mole_states : mole_state_array := (others => HIDDEN);

    -- Timers and Clocks
    signal game_duration_timer : integer range 0 to 30 := 30;
    signal slowclock_prev : std_logic := '0';
    signal global_tick : integer range 0 to 63 := 0;

    -- LFSR
    signal lfsr : std_logic_vector(4 downto 0) := "10000";

    -- Edge detection internals
    signal button_prev : std_logic_vector(8 downto 0) := (others => '0');
    signal startButton_prev : std_logic := '0';

    -- Score pulse counters
    signal score_timer : integer range 0 to 31 := 0;
    signal error_timer : integer range 0 to 31 := 0;

    -- Mole individual duration timers
    type int_array is array (0 to 8) of integer range 0 to 63;
    signal mole_timers : int_array := (others => 0);

begin

    -------------------------------------------------------------------------
    -- PROCESS 1: LFSR for Randomness (Runs continuously)
    -------------------------------------------------------------------------
    lfsr_proc: process(fastclock)
    begin
        if rising_edge(fastclock) then
            lfsr <= lfsr(3 downto 0) & (lfsr(4) xor lfsr(2));
        end if;
    end process;


    -------------------------------------------------------------------------
    -- PROCESS 2: Global Clocks & Timers Manager
    -------------------------------------------------------------------------
    timer_proc: process(fastclock)
    begin
        if rising_edge(fastclock) then
            slowclock_prev <= slowclock;
            
            -- Game Countdown (1 Hz via slowclock edge detection)
            if slowclock = '1' and slowclock_prev = '0' then
                if game_duration_timer > 0 and game_state = PLAYING then
                    game_duration_timer <= game_duration_timer - 1;
                end if;
            end if;

            -- Global Tick (fast prescaler for mole spawning & timing delays)
            if global_tick = 63 then
                global_tick <= 0;
            else
                global_tick <= global_tick + 1;
            end if;

            -- Score pulsing generation (Asynchronous length guarantees CPLD recognition)
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
        end if;
    end process;


    -------------------------------------------------------------------------
    -- PROCESS 3: Global Game Controller FSM
    -------------------------------------------------------------------------
    game_fsm_proc: process(fastclock)
    begin
        if rising_edge(fastclock) then
            startButton_prev <= startButton;

            case game_state is
                when WAIT_START =>
                    score_reset <= '0';
                    if startButton = '1' and startButton_prev = '0' then
                        game_state <= PLAYING;
                        score_reset <= '1'; -- Send reset pulse to screen
                    end if;

                when PLAYING =>
                    score_reset <= '0';
                    -- State transition upon timeout
                    if game_duration_timer = 0 then
                        game_state <= GAME_OVER;
                    end if;

                when GAME_OVER =>
                    -- To implement a replay factor, pressing start sends us back
                    if startButton = '1' and startButton_prev = '0' then
                        game_state <= WAIT_START;
                    end if;
                    
            end case;
        end if;
    end process;


    -------------------------------------------------------------------------
    -- PROCESS 4: Logic Array of Independent Mole FSMs & Hit Detection
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

            if game_state = PLAYING then
                
                -- Count currently showing moles dynamically
                active_count := 0;
                for i in 0 to 8 loop
                    if mole_states(i) = SHOWING then
                        active_count := active_count + 1;
                    end if;
                end loop;

                -- SPAWN LOGIC: Attempt a spawn based on random tick
                if global_tick = 0 and active_count < 2 then
                    raw_val := to_integer(unsigned(lfsr(3 downto 0)));
                    if raw_val > 8 then
                        spawn_idx := raw_val - 9;
                    else
                        spawn_idx := raw_val;
                    end if;
                    
                    if mole_states(spawn_idx) = HIDDEN then
                        mole_states(spawn_idx) <= SHOWING;
                        mole_timers(spawn_idx) <= 45; -- Arbitrary life length
                    end if;
                end if;

                -- RUNNING THE 9 CONCURRENT FSMs 
                for i in 0 to 8 loop
                    case mole_states(i) is
                        
                        when HIDDEN =>
                            leds(i) <= '0';
                            -- If user clicks a hidden mole, flag penalty!
                            if button(i) = '1' and button_prev(i) = '0' then
                                wrong_click := true;
                            end if;

                        when SHOWING =>
                            leds(i) <= '1';
                            
                            -- Edge transition 1: User hits mole
                            if button(i) = '1' and button_prev(i) = '0' then
                                mole_states(i) <= HIT;
                            else
                                -- Edge transition 2: Mole times out naturally
                                if global_tick = 31 then 
                                    if mole_timers(i) > 0 then
                                        mole_timers(i) <= mole_timers(i) - 1;
                                    else
                                        mole_states(i) <= MISSED;
                                    end if;
                                end if;
                            end if;

                        when HIT =>
                            leds(i) <= '0';
                            score_timer <= 31; -- Trigger +1 reward
                            mole_states(i) <= HIDDEN;

                        when MISSED =>
                            leds(i) <= '0';
                            wrong_click := true; -- Penalize for missing as an option
                            mole_states(i) <= HIDDEN;

                    end case;
                end loop;

                -- APPLY GLOBAL PENALTY LOGIC
                if wrong_click then
                    error_timer <= 31;
                    -- Tick down the main game clock to punish rapid firing
                    if game_duration_timer > 0 then
                        game_duration_timer <= game_duration_timer - 1;
                    end if;
                end if;

            else
                -- While Game is not actively playing
                for i in 0 to 8 loop
                    mole_states(i) <= HIDDEN;
                    if game_state = WAIT_START then
                        leds(i) <= slowclock; -- Flash effect while waiting
                    else
                        leds(i) <= '0';       -- Turn off safely
                    end if;
                end loop;
            end if;

        end if;
    end process;

end architecture;
