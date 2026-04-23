-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "04/23/2026 03:22:34"

-- 
-- Device: Altera 5M160ZE64C5 Package EQFP64
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	Whackamole IS
    PORT (
	fastclock : IN std_logic;
	slowclock : IN std_logic;
	button : IN std_logic_vector(8 DOWNTO 0);
	startButton : IN std_logic;
	leds : OUT std_logic_vector(8 DOWNTO 0);
	penalty_led : OUT std_logic;
	score_reset : OUT std_logic;
	score_high : OUT std_logic
	);
END Whackamole;

-- Design Ports Information


ARCHITECTURE structure OF Whackamole IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_fastclock : std_logic;
SIGNAL ww_slowclock : std_logic;
SIGNAL ww_button : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_startButton : std_logic;
SIGNAL ww_leds : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_penalty_led : std_logic;
SIGNAL ww_score_reset : std_logic;
SIGNAL ww_score_high : std_logic;
SIGNAL \startButton_prev~regout\ : std_logic;
SIGNAL \slowclock_prev~regout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \fastclock~combout\ : std_logic;
SIGNAL \slowclock~combout\ : std_logic;
SIGNAL \mole_duration~0_combout\ : std_logic;
SIGNAL \global_tick[0]~1\ : std_logic;
SIGNAL \global_tick[0]~1COUT1_13\ : std_logic;
SIGNAL \global_tick[1]~3\ : std_logic;
SIGNAL \global_tick[1]~3COUT1_14\ : std_logic;
SIGNAL \global_tick[2]~5\ : std_logic;
SIGNAL \global_tick[2]~5COUT1_15\ : std_logic;
SIGNAL \global_tick[3]~7\ : std_logic;
SIGNAL \global_tick[4]~9\ : std_logic;
SIGNAL \global_tick[4]~9COUT1_16\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \spawn_idx~3\ : std_logic;
SIGNAL \mole_duration~16\ : std_logic;
SIGNAL \spawn_idx~0\ : std_logic;
SIGNAL \mole_duration~14_combout\ : std_logic;
SIGNAL \spawn_idx~1_combout\ : std_logic;
SIGNAL \spawn_idx~2\ : std_logic;
SIGNAL \Decoder0~13_combout\ : std_logic;
SIGNAL \Add3~27COUT1_31\ : std_logic;
SIGNAL \Add3~3COUT1_32\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~9COUT1_33\ : std_logic;
SIGNAL \Add3~13_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~15COUT1_34\ : std_logic;
SIGNAL \Add3~19_combout\ : std_logic;
SIGNAL \moles_fsm_proc~0\ : std_logic;
SIGNAL \moles_fsm_proc~7\ : std_logic;
SIGNAL \wrong_click~3_combout\ : std_logic;
SIGNAL \moles_fsm_proc~2\ : std_logic;
SIGNAL \mole_duration~2_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \mole_active~1_combout\ : std_logic;
SIGNAL \moles_fsm_proc~1\ : std_logic;
SIGNAL \mole_duration~4_combout\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \mole_active~2_combout\ : std_logic;
SIGNAL \wrong_click~0_combout\ : std_logic;
SIGNAL \mole_duration~8_combout\ : std_logic;
SIGNAL \Decoder0~10_combout\ : std_logic;
SIGNAL \mole_active~4_combout\ : std_logic;
SIGNAL \moles_fsm_proc~4\ : std_logic;
SIGNAL \mole_duration~6_combout\ : std_logic;
SIGNAL \Decoder0~9_combout\ : std_logic;
SIGNAL \mole_active~3_combout\ : std_logic;
SIGNAL \moles_fsm_proc~3\ : std_logic;
SIGNAL \wrong_click~1_combout\ : std_logic;
SIGNAL \mole_duration~10_combout\ : std_logic;
SIGNAL \Decoder0~11_combout\ : std_logic;
SIGNAL \mole_active~5_combout\ : std_logic;
SIGNAL \moles_fsm_proc~5\ : std_logic;
SIGNAL \moles_fsm_proc~6\ : std_logic;
SIGNAL \mole_duration~12_combout\ : std_logic;
SIGNAL \Decoder0~12_combout\ : std_logic;
SIGNAL \mole_active~6_combout\ : std_logic;
SIGNAL \wrong_click~2_combout\ : std_logic;
SIGNAL \wrong_click~4_combout\ : std_logic;
SIGNAL \trigger_miss~regout\ : std_logic;
SIGNAL \game_duration_timer[0]~0\ : std_logic;
SIGNAL \game_duration_timer[0]~1_combout\ : std_logic;
SIGNAL \Add3~27_cout0\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~7_combout\ : std_logic;
SIGNAL \game_state~0_combout\ : std_logic;
SIGNAL \startButton~combout\ : std_logic;
SIGNAL \score_reset~0\ : std_logic;
SIGNAL \game_state~regout\ : std_logic;
SIGNAL \mole_active~7_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \Add10~1_combout\ : std_logic;
SIGNAL \Add8~1_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Add11~10_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \Add5~1_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add9~12\ : std_logic;
SIGNAL \Add9~12COUT1_21\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \Add11~12\ : std_logic;
SIGNAL \Add11~12COUT1_21\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \Add7~1_combout\ : std_logic;
SIGNAL \Add9~2\ : std_logic;
SIGNAL \Add9~2COUT1_22\ : std_logic;
SIGNAL \Add9~5_combout\ : std_logic;
SIGNAL \Add11~2\ : std_logic;
SIGNAL \Add11~2COUT1_22\ : std_logic;
SIGNAL \Add11~5_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~7COUT1_23\ : std_logic;
SIGNAL \Add9~15_combout\ : std_logic;
SIGNAL \Add11~7\ : std_logic;
SIGNAL \Add11~7COUT1_23\ : std_logic;
SIGNAL \Add11~15_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \Decoder0~14_combout\ : std_logic;
SIGNAL \moles_fsm_proc~8_combout\ : std_logic;
SIGNAL \mole_active~8_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \mole_active~0_combout\ : std_logic;
SIGNAL \leds[0]~reg0_regout\ : std_logic;
SIGNAL \leds[1]~reg0_regout\ : std_logic;
SIGNAL \leds[2]~reg0_regout\ : std_logic;
SIGNAL \leds[3]~reg0_regout\ : std_logic;
SIGNAL \leds[4]~reg0_regout\ : std_logic;
SIGNAL \leds[5]~reg0_regout\ : std_logic;
SIGNAL \leds[6]~reg0_regout\ : std_logic;
SIGNAL \leds[7]~reg0_regout\ : std_logic;
SIGNAL \leds[8]~reg0_regout\ : std_logic;
SIGNAL \error_timer[0]~1\ : std_logic;
SIGNAL \error_timer[0]~1COUT1_11\ : std_logic;
SIGNAL \error_timer[1]~3\ : std_logic;
SIGNAL \error_timer[1]~3COUT1_12\ : std_logic;
SIGNAL \error_timer[2]~5\ : std_logic;
SIGNAL \error_timer[2]~5COUT1_13\ : std_logic;
SIGNAL \error_timer[3]~7\ : std_logic;
SIGNAL \error_timer[3]~7COUT1_14\ : std_logic;
SIGNAL \timer_proc~0_combout\ : std_logic;
SIGNAL \timer_proc~1\ : std_logic;
SIGNAL \penalty_led~reg0_regout\ : std_logic;
SIGNAL \score_reset~reg0_regout\ : std_logic;
SIGNAL \trigger_hit~0_combout\ : std_logic;
SIGNAL \trigger_hit~3_combout\ : std_logic;
SIGNAL \trigger_hit~2_combout\ : std_logic;
SIGNAL \trigger_hit~1_combout\ : std_logic;
SIGNAL \trigger_hit~4_combout\ : std_logic;
SIGNAL \trigger_hit~regout\ : std_logic;
SIGNAL \score_timer[0]~1\ : std_logic;
SIGNAL \score_timer[0]~1COUT1_11\ : std_logic;
SIGNAL \score_timer[1]~3\ : std_logic;
SIGNAL \score_timer[1]~3COUT1_12\ : std_logic;
SIGNAL \score_timer[2]~5\ : std_logic;
SIGNAL \score_timer[2]~5COUT1_13\ : std_logic;
SIGNAL \score_timer[3]~7\ : std_logic;
SIGNAL \score_timer[3]~7COUT1_14\ : std_logic;
SIGNAL \timer_proc~2_combout\ : std_logic;
SIGNAL \timer_proc~3\ : std_logic;
SIGNAL \score_high~reg0_regout\ : std_logic;
SIGNAL mole_active : std_logic_vector(8 DOWNTO 0);
SIGNAL error_timer : std_logic_vector(4 DOWNTO 0);
SIGNAL global_tick : std_logic_vector(5 DOWNTO 0);
SIGNAL score_timer : std_logic_vector(4 DOWNTO 0);
SIGNAL lfsr : std_logic_vector(4 DOWNTO 0);
SIGNAL \button~combout\ : std_logic_vector(8 DOWNTO 0);
SIGNAL mole_duration : std_logic_vector(8 DOWNTO 0);
SIGNAL button_prev : std_logic_vector(8 DOWNTO 0);
SIGNAL game_duration_timer : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_game_state~regout\ : std_logic;

BEGIN

ww_fastclock <= fastclock;
ww_slowclock <= slowclock;
ww_button <= button;
ww_startButton <= startButton;
leds <= ww_leds;
penalty_led <= ww_penalty_led;
score_reset <= ww_score_reset;
score_high <= ww_score_high;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_game_state~regout\ <= NOT \game_state~regout\;

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fastclock~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_fastclock,
	combout => \fastclock~combout\);

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\slowclock~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_slowclock,
	combout => \slowclock~combout\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\button[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_button(0),
	combout => \button~combout\(0));

-- Location: LC_X4_Y2_N3
\button_prev[0]\ : maxv_lcell
-- Equation(s):
-- \moles_fsm_proc~0\ = (((!button_prev[0] & \button~combout\(0))))
-- button_prev(0) = DFFEAS(\moles_fsm_proc~0\, GLOBAL(\fastclock~combout\), VCC, , , \button~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	datac => \button~combout\(0),
	datad => \button~combout\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \moles_fsm_proc~0\,
	regout => button_prev(0));

-- Location: LC_X4_Y2_N2
\mole_duration~0\ : maxv_lcell
-- Equation(s):
-- \mole_duration~0_combout\ = (mole_duration(0) & (mole_active(0) & ((button_prev(0)) # (!\button~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => button_prev(0),
	datab => \button~combout\(0),
	datac => mole_duration(0),
	datad => mole_active(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mole_duration~0_combout\);

-- Location: LC_X3_Y2_N1
\global_tick[0]\ : maxv_lcell
-- Equation(s):
-- global_tick(0) = DFFEAS(((!global_tick(0))), GLOBAL(\fastclock~combout\), VCC, , , , , , )
-- \global_tick[0]~1\ = CARRY(((global_tick(0))))
-- \global_tick[0]~1COUT1_13\ = CARRY(((global_tick(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	datab => global_tick(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => global_tick(0),
	cout0 => \global_tick[0]~1\,
	cout1 => \global_tick[0]~1COUT1_13\);

-- Location: LC_X3_Y2_N2
\global_tick[1]\ : maxv_lcell
-- Equation(s):
-- global_tick(1) = DFFEAS((global_tick(1) $ ((\global_tick[0]~1\))), GLOBAL(\fastclock~combout\), VCC, , , , , , )
-- \global_tick[1]~3\ = CARRY(((!\global_tick[0]~1\) # (!global_tick(1))))
-- \global_tick[1]~3COUT1_14\ = CARRY(((!\global_tick[0]~1COUT1_13\) # (!global_tick(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	datab => global_tick(1),
	aclr => GND,
	cin0 => \global_tick[0]~1\,
	cin1 => \global_tick[0]~1COUT1_13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => global_tick(1),
	cout0 => \global_tick[1]~3\,
	cout1 => \global_tick[1]~3COUT1_14\);

-- Location: LC_X3_Y2_N3
\global_tick[2]\ : maxv_lcell
-- Equation(s):
-- global_tick(2) = DFFEAS(global_tick(2) $ ((((!\global_tick[1]~3\)))), GLOBAL(\fastclock~combout\), VCC, , , , , , )
-- \global_tick[2]~5\ = CARRY((global_tick(2) & ((!\global_tick[1]~3\))))
-- \global_tick[2]~5COUT1_15\ = CARRY((global_tick(2) & ((!\global_tick[1]~3COUT1_14\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => global_tick(2),
	aclr => GND,
	cin0 => \global_tick[1]~3\,
	cin1 => \global_tick[1]~3COUT1_14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => global_tick(2),
	cout0 => \global_tick[2]~5\,
	cout1 => \global_tick[2]~5COUT1_15\);

-- Location: LC_X3_Y2_N4
\global_tick[3]\ : maxv_lcell
-- Equation(s):
-- global_tick(3) = DFFEAS(global_tick(3) $ ((((\global_tick[2]~5\)))), GLOBAL(\fastclock~combout\), VCC, , , , , , )
-- \global_tick[3]~7\ = CARRY(((!\global_tick[2]~5COUT1_15\)) # (!global_tick(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => global_tick(3),
	aclr => GND,
	cin0 => \global_tick[2]~5\,
	cin1 => \global_tick[2]~5COUT1_15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => global_tick(3),
	cout => \global_tick[3]~7\);

-- Location: LC_X3_Y2_N5
\global_tick[4]\ : maxv_lcell
-- Equation(s):
-- global_tick(4) = DFFEAS(global_tick(4) $ ((((!\global_tick[3]~7\)))), GLOBAL(\fastclock~combout\), VCC, , , , , , )
-- \global_tick[4]~9\ = CARRY((global_tick(4) & ((!\global_tick[3]~7\))))
-- \global_tick[4]~9COUT1_16\ = CARRY((global_tick(4) & ((!\global_tick[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => global_tick(4),
	aclr => GND,
	cin => \global_tick[3]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => global_tick(4),
	cout0 => \global_tick[4]~9\,
	cout1 => \global_tick[4]~9COUT1_16\);

-- Location: LC_X3_Y2_N6
\global_tick[5]\ : maxv_lcell
-- Equation(s):
-- global_tick(5) = DFFEAS(global_tick(5) $ (((((!\global_tick[3]~7\ & \global_tick[4]~9\) # (\global_tick[3]~7\ & \global_tick[4]~9COUT1_16\))))), GLOBAL(\fastclock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => global_tick(5),
	aclr => GND,
	cin => \global_tick[3]~7\,
	cin0 => \global_tick[4]~9\,
	cin1 => \global_tick[4]~9COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => global_tick(5));

-- Location: LC_X3_Y2_N9
\Equal2~0\ : maxv_lcell
-- Equation(s):
-- \Equal2~0_combout\ = (!global_tick(2) & (!global_tick(0) & (!global_tick(3) & !global_tick(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => global_tick(2),
	datab => global_tick(0),
	datac => global_tick(3),
	datad => global_tick(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~0_combout\);

-- Location: LC_X3_Y2_N8
\Equal2~1\ : maxv_lcell
-- Equation(s):
-- \Equal2~1_combout\ = (!global_tick(4) & (((!global_tick(5) & \Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => global_tick(4),
	datac => global_tick(5),
	datad => \Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~1_combout\);

-- Location: LC_X6_Y3_N9
\lfsr[4]\ : maxv_lcell
-- Equation(s):
-- lfsr(4) = DFFEAS((((!lfsr(3)))), GLOBAL(\fastclock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	datad => lfsr(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lfsr(4));

-- Location: LC_X6_Y3_N3
\lfsr[0]\ : maxv_lcell
-- Equation(s):
-- lfsr(0) = DFFEAS(((lfsr(4) $ (!lfsr(2)))), GLOBAL(\fastclock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	datac => lfsr(4),
	datad => lfsr(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lfsr(0));

-- Location: LC_X6_Y3_N1
\lfsr[3]\ : maxv_lcell
-- Equation(s):
-- \spawn_idx~0\ = (!lfsr(1) & (!lfsr(2) & (lfsr[3] & !lfsr(0))))
-- lfsr(3) = DFFEAS(\spawn_idx~0\, GLOBAL(\fastclock~combout\), VCC, , , lfsr(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => lfsr(1),
	datab => lfsr(2),
	datac => lfsr(2),
	datad => lfsr(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \spawn_idx~0\,
	regout => lfsr(3));

-- Location: LC_X6_Y3_N8
\lfsr[2]\ : maxv_lcell
-- Equation(s):
-- \spawn_idx~3\ = (lfsr(3) & (!lfsr(0) & ((lfsr(1)) # (lfsr[2])))) # (!lfsr(3) & (((lfsr(0)))))
-- lfsr(2) = DFFEAS(\spawn_idx~3\, GLOBAL(\fastclock~combout\), VCC, , , lfsr(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => lfsr(1),
	datab => lfsr(3),
	datac => lfsr(1),
	datad => lfsr(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \spawn_idx~3\,
	regout => lfsr(2));

-- Location: LC_X6_Y3_N5
\lfsr[1]\ : maxv_lcell
-- Equation(s):
-- \spawn_idx~2\ = (lfsr(3) & ((lfsr[1] & ((lfsr(0)))) # (!lfsr[1] & (lfsr(2) & !lfsr(0))))) # (!lfsr(3) & (((lfsr[1]))))
-- lfsr(1) = DFFEAS(\spawn_idx~2\, GLOBAL(\fastclock~combout\), VCC, , , lfsr(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f038",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => lfsr(2),
	datab => lfsr(3),
	datac => lfsr(0),
	datad => lfsr(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \spawn_idx~2\,
	regout => lfsr(1));

-- Location: LC_X6_Y3_N7
\Decoder0~5\ : maxv_lcell
-- Equation(s):
-- \Decoder0~5_combout\ = (!lfsr(2) & (((lfsr(3) & !lfsr(0))) # (!lfsr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1131",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => lfsr(1),
	datab => lfsr(2),
	datac => lfsr(3),
	datad => lfsr(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~5_combout\);

-- Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\button[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_button(8),
	combout => \button~combout\(8));

-- Location: LC_X5_Y3_N5
\button_prev[8]\ : maxv_lcell
-- Equation(s):
-- \mole_duration~16\ = (mole_duration(8) & (mole_active(8) & ((button_prev[8]) # (!\button~combout\(8)))))
-- button_prev(8) = DFFEAS(\mole_duration~16\, GLOBAL(\fastclock~combout\), VCC, , , \button~combout\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \button~combout\(8),
	datab => mole_duration(8),
	datac => \button~combout\(8),
	datad => mole_active(8),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mole_duration~16\,
	regout => button_prev(8));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\button[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_button(7),
	combout => \button~combout\(7));

-- Location: LC_X7_Y1_N0
\button_prev[7]\ : maxv_lcell
-- Equation(s):
-- \moles_fsm_proc~7\ = (\button~combout\(7) & (((!button_prev[7]))))
-- button_prev(7) = DFFEAS(\moles_fsm_proc~7\, GLOBAL(\fastclock~combout\), VCC, , , \button~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \button~combout\(7),
	datac => \button~combout\(7),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \moles_fsm_proc~7\,
	regout => button_prev(7));

-- Location: LC_X6_Y2_N0
\mole_duration~14\ : maxv_lcell
-- Equation(s):
-- \mole_duration~14_combout\ = (mole_active(7) & (mole_duration(7) & ((button_prev(7)) # (!\button~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \button~combout\(7),
	datab => mole_active(7),
	datac => mole_duration(7),
	datad => button_prev(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mole_duration~14_combout\);

-- Location: LC_X6_Y3_N0
\spawn_idx~1\ : maxv_lcell
-- Equation(s):
-- \spawn_idx~1_combout\ = (lfsr(2) & ((lfsr(1)) # ((lfsr(0)) # (!lfsr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => lfsr(1),
	datab => lfsr(2),
	datac => lfsr(3),
	datad => lfsr(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \spawn_idx~1_combout\);

-- Location: LC_X6_Y2_N8
\Decoder0~13\ : maxv_lcell
-- Equation(s):
-- \Decoder0~13_combout\ = (\spawn_idx~1_combout\ & (\spawn_idx~2\ & (\spawn_idx~3\ & \Decoder0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spawn_idx~1_combout\,
	datab => \spawn_idx~2\,
	datac => \spawn_idx~3\,
	datad => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~13_combout\);

-- Location: LC_X3_Y3_N5
\Add3~27\ : maxv_lcell
-- Equation(s):
-- \Add3~27_cout0\ = CARRY((!game_duration_timer(0)))
-- \Add3~27COUT1_31\ = CARRY((!game_duration_timer(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff55",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => game_duration_timer(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~25\,
	cout0 => \Add3~27_cout0\,
	cout1 => \Add3~27COUT1_31\);

-- Location: LC_X3_Y3_N6
\Add3~1\ : maxv_lcell
-- Equation(s):
-- \Add3~1_combout\ = (game_duration_timer(1) $ ((\Add3~27_cout0\)))
-- \Add3~3\ = CARRY(((game_duration_timer(1) & !\Add3~27_cout0\)))
-- \Add3~3COUT1_32\ = CARRY(((game_duration_timer(1) & !\Add3~27COUT1_31\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c0c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => game_duration_timer(1),
	cin0 => \Add3~27_cout0\,
	cin1 => \Add3~27COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~1_combout\,
	cout0 => \Add3~3\,
	cout1 => \Add3~3COUT1_32\);

-- Location: LC_X3_Y3_N7
\Add3~7\ : maxv_lcell
-- Equation(s):
-- \Add3~7_combout\ = game_duration_timer(2) $ ((((!\Add3~3\))))
-- \Add3~9\ = CARRY(((!\Add3~3\)) # (!game_duration_timer(2)))
-- \Add3~9COUT1_33\ = CARRY(((!\Add3~3COUT1_32\)) # (!game_duration_timer(2)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a55f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => game_duration_timer(2),
	cin0 => \Add3~3\,
	cin1 => \Add3~3COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~7_combout\,
	cout0 => \Add3~9\,
	cout1 => \Add3~9COUT1_33\);

-- Location: LC_X3_Y3_N8
\Add3~13\ : maxv_lcell
-- Equation(s):
-- \Add3~13_combout\ = (game_duration_timer(3) $ ((\Add3~9\)))
-- \Add3~15\ = CARRY(((game_duration_timer(3) & !\Add3~9\)))
-- \Add3~15COUT1_34\ = CARRY(((game_duration_timer(3) & !\Add3~9COUT1_33\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c0c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => game_duration_timer(3),
	cin0 => \Add3~9\,
	cin1 => \Add3~9COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~13_combout\,
	cout0 => \Add3~15\,
	cout1 => \Add3~15COUT1_34\);

-- Location: LC_X3_Y3_N0
\game_duration_timer[3]\ : maxv_lcell
-- Equation(s):
-- game_duration_timer(3) = DFFEAS(((\game_state~regout\ & ((!\Add3~13_combout\)))), GLOBAL(\fastclock~combout\), VCC, , \game_duration_timer[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	datab => \game_state~regout\,
	datad => \Add3~13_combout\,
	aclr => GND,
	ena => \game_duration_timer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => game_duration_timer(3));

-- Location: LC_X3_Y3_N9
\Add3~19\ : maxv_lcell
-- Equation(s):
-- \Add3~19_combout\ = ((\Add3~15\ $ (!game_duration_timer(4))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => game_duration_timer(4),
	cin0 => \Add3~15\,
	cin1 => \Add3~15COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~19_combout\);

-- Location: LC_X3_Y3_N1
\game_duration_timer[4]\ : maxv_lcell
-- Equation(s):
-- game_duration_timer(4) = DFFEAS(((\game_state~regout\ & ((!\Add3~19_combout\)))), GLOBAL(\fastclock~combout\), VCC, , \game_duration_timer[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	datab => \game_state~regout\,
	datad => \Add3~19_combout\,
	aclr => GND,
	ena => \game_duration_timer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => game_duration_timer(4));

-- Location: LC_X5_Y2_N3
\wrong_click~3\ : maxv_lcell
-- Equation(s):
-- \wrong_click~3_combout\ = (mole_active(0) & (((!mole_active(7) & \moles_fsm_proc~7\)))) # (!mole_active(0) & ((\moles_fsm_proc~0\) # ((!mole_active(7) & \moles_fsm_proc~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4f44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => mole_active(0),
	datab => \moles_fsm_proc~0\,
	datac => mole_active(7),
	datad => \moles_fsm_proc~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrong_click~3_combout\);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\button[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_button(2),
	combout => \button~combout\(2));

-- Location: LC_X2_Y1_N5
\button_prev[2]\ : maxv_lcell
-- Equation(s):
-- \moles_fsm_proc~2\ = (((!button_prev[2] & \button~combout\(2))))
-- button_prev(2) = DFFEAS(\moles_fsm_proc~2\, GLOBAL(\fastclock~combout\), VCC, , , \button~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	datac => \button~combout\(2),
	datad => \button~combout\(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \moles_fsm_proc~2\,
	regout => button_prev(2));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\button[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_button(1),
	combout => \button~combout\(1));

-- Location: LC_X2_Y1_N7
\button_prev[1]\ : maxv_lcell
-- Equation(s):
-- \moles_fsm_proc~1\ = (\button~combout\(1) & (((!button_prev[1]))))
-- button_prev(1) = DFFEAS(\moles_fsm_proc~1\, GLOBAL(\fastclock~combout\), VCC, , , \button~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \button~combout\(1),
	datac => \button~combout\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \moles_fsm_proc~1\,
	regout => button_prev(1));

-- Location: LC_X2_Y1_N8
\mole_duration~2\ : maxv_lcell
-- Equation(s):
-- \mole_duration~2_combout\ = (mole_active(1) & (mole_duration(1) & ((button_prev(1)) # (!\button~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \button~combout\(1),
	datab => button_prev(1),
	datac => mole_active(1),
	datad => mole_duration(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mole_duration~2_combout\);

-- Location: LC_X3_Y1_N3
\Decoder0~7\ : maxv_lcell
-- Equation(s):
-- \Decoder0~7_combout\ = ((\Decoder0~5_combout\ & (\spawn_idx~3\ & \Decoder0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Decoder0~5_combout\,
	datac => \spawn_idx~3\,
	datad => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~7_combout\);

-- Location: LC_X3_Y1_N7
\mole_duration[1]\ : maxv_lcell
-- Equation(s):
-- mole_duration(1) = DFFEAS((\mole_duration~2_combout\ & (!\Equal2~1_combout\ & ((mole_duration(1)) # (\Decoder0~7_combout\)))) # (!\mole_duration~2_combout\ & (((mole_duration(1)) # (\Decoder0~7_combout\)))), GLOBAL(\fastclock~combout\), VCC, , 
-- \game_state~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7770",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \mole_duration~2_combout\,
	datab => \Equal2~1_combout\,
	datac => mole_duration(1),
	datad => \Decoder0~7_combout\,
	aclr => GND,
	ena => \game_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_duration(1));

-- Location: LC_X2_Y1_N6
\mole_active~1\ : maxv_lcell
-- Equation(s):
-- \mole_active~1_combout\ = (global_tick(5)) # (((global_tick(4)) # (mole_duration(1))) # (!\Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => global_tick(5),
	datab => \Equal2~0_combout\,
	datac => global_tick(4),
	datad => mole_duration(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mole_active~1_combout\);

-- Location: LC_X3_Y1_N4
\mole_active[1]\ : maxv_lcell
-- Equation(s):
-- mole_active(1) = DFFEAS((mole_active(1) & (\mole_active~1_combout\ & (!\moles_fsm_proc~1\))) # (!mole_active(1) & (((\Decoder0~7_combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , !\game_state~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \mole_active~1_combout\,
	datab => \moles_fsm_proc~1\,
	datac => mole_active(1),
	datad => \Decoder0~7_combout\,
	aclr => GND,
	sclr => \ALT_INV_game_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_active(1));

-- Location: LC_X2_Y1_N3
\mole_duration~4\ : maxv_lcell
-- Equation(s):
-- \mole_duration~4_combout\ = (mole_active(2) & (mole_duration(2) & ((button_prev(2)) # (!\button~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => button_prev(2),
	datab => \button~combout\(2),
	datac => mole_active(2),
	datad => mole_duration(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mole_duration~4_combout\);

-- Location: LC_X5_Y1_N0
\Decoder0~8\ : maxv_lcell
-- Equation(s):
-- \Decoder0~8_combout\ = (!\spawn_idx~1_combout\ & (!\spawn_idx~3\ & (\spawn_idx~2\ & \Decoder0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spawn_idx~1_combout\,
	datab => \spawn_idx~3\,
	datac => \spawn_idx~2\,
	datad => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~8_combout\);

-- Location: LC_X6_Y1_N3
\mole_duration[2]\ : maxv_lcell
-- Equation(s):
-- mole_duration(2) = DFFEAS((mole_duration(2) & (((!\Equal2~1_combout\)) # (!\mole_duration~4_combout\))) # (!mole_duration(2) & (\Decoder0~8_combout\ & ((!\Equal2~1_combout\) # (!\mole_duration~4_combout\)))), GLOBAL(\fastclock~combout\), VCC, , 
-- \game_state~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => mole_duration(2),
	datab => \mole_duration~4_combout\,
	datac => \Equal2~1_combout\,
	datad => \Decoder0~8_combout\,
	aclr => GND,
	ena => \game_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_duration(2));

-- Location: LC_X2_Y1_N1
\mole_active~2\ : maxv_lcell
-- Equation(s):
-- \mole_active~2_combout\ = (global_tick(4)) # ((global_tick(5)) # ((mole_duration(2)) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => global_tick(4),
	datab => global_tick(5),
	datac => mole_duration(2),
	datad => \Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mole_active~2_combout\);

-- Location: LC_X3_Y1_N8
\mole_active[2]\ : maxv_lcell
-- Equation(s):
-- mole_active(2) = DFFEAS((mole_active(2) & (!\moles_fsm_proc~2\ & (\mole_active~2_combout\))) # (!mole_active(2) & (((\Decoder0~8_combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , !\game_state~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7340",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \moles_fsm_proc~2\,
	datab => mole_active(2),
	datac => \mole_active~2_combout\,
	datad => \Decoder0~8_combout\,
	aclr => GND,
	sclr => \ALT_INV_game_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_active(2));

-- Location: LC_X3_Y1_N0
\wrong_click~0\ : maxv_lcell
-- Equation(s):
-- \wrong_click~0_combout\ = (\moles_fsm_proc~2\ & (((!mole_active(1) & \moles_fsm_proc~1\)) # (!mole_active(2)))) # (!\moles_fsm_proc~2\ & (!mole_active(1) & ((\moles_fsm_proc~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3b0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \moles_fsm_proc~2\,
	datab => mole_active(1),
	datac => mole_active(2),
	datad => \moles_fsm_proc~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrong_click~0_combout\);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\button[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_button(4),
	combout => \button~combout\(4));

-- Location: LC_X4_Y2_N7
\button_prev[4]\ : maxv_lcell
-- Equation(s):
-- \moles_fsm_proc~4\ = (\button~combout\(4) & (((!button_prev[4]))))
-- button_prev(4) = DFFEAS(\moles_fsm_proc~4\, GLOBAL(\fastclock~combout\), VCC, , , \button~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \button~combout\(4),
	datac => \button~combout\(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \moles_fsm_proc~4\,
	regout => button_prev(4));

-- Location: LC_X4_Y2_N6
\mole_duration~8\ : maxv_lcell
-- Equation(s):
-- \mole_duration~8_combout\ = (mole_duration(4) & (mole_active(4) & ((button_prev(4)) # (!\button~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => mole_duration(4),
	datab => button_prev(4),
	datac => \button~combout\(4),
	datad => mole_active(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mole_duration~8_combout\);

-- Location: LC_X5_Y1_N4
\Decoder0~10\ : maxv_lcell
-- Equation(s):
-- \Decoder0~10_combout\ = (\spawn_idx~1_combout\ & (!\spawn_idx~3\ & (!\spawn_idx~2\ & \Decoder0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spawn_idx~1_combout\,
	datab => \spawn_idx~3\,
	datac => \spawn_idx~2\,
	datad => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~10_combout\);

-- Location: LC_X4_Y2_N4
\mole_duration[4]\ : maxv_lcell
-- Equation(s):
-- mole_duration(4) = DFFEAS((\mole_duration~8_combout\ & (!\Equal2~1_combout\ & ((mole_duration(4)) # (\Decoder0~10_combout\)))) # (!\mole_duration~8_combout\ & (((mole_duration(4)) # (\Decoder0~10_combout\)))), GLOBAL(\fastclock~combout\), VCC, , 
-- \game_state~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7770",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \mole_duration~8_combout\,
	datab => \Equal2~1_combout\,
	datac => mole_duration(4),
	datad => \Decoder0~10_combout\,
	aclr => GND,
	ena => \game_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_duration(4));

-- Location: LC_X3_Y2_N0
\mole_active~4\ : maxv_lcell
-- Equation(s):
-- \mole_active~4_combout\ = (global_tick(5)) # (((global_tick(4)) # (mole_duration(4))) # (!\Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => global_tick(5),
	datab => \Equal2~0_combout\,
	datac => global_tick(4),
	datad => mole_duration(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mole_active~4_combout\);

-- Location: LC_X4_Y1_N4
\mole_active[4]\ : maxv_lcell
-- Equation(s):
-- mole_active(4) = DFFEAS((mole_active(4) & (\mole_active~4_combout\ & (!\moles_fsm_proc~4\))) # (!mole_active(4) & (((\Decoder0~10_combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , !\game_state~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5d08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => mole_active(4),
	datab => \mole_active~4_combout\,
	datac => \moles_fsm_proc~4\,
	datad => \Decoder0~10_combout\,
	aclr => GND,
	sclr => \ALT_INV_game_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_active(4));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\button[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_button(3),
	combout => \button~combout\(3));

-- Location: LC_X4_Y2_N8
\button_prev[3]\ : maxv_lcell
-- Equation(s):
-- \moles_fsm_proc~3\ = (((!button_prev[3] & \button~combout\(3))))
-- button_prev(3) = DFFEAS(\moles_fsm_proc~3\, GLOBAL(\fastclock~combout\), VCC, , , \button~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	datac => \button~combout\(3),
	datad => \button~combout\(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \moles_fsm_proc~3\,
	regout => button_prev(3));

-- Location: LC_X4_Y2_N5
\mole_duration~6\ : maxv_lcell
-- Equation(s):
-- \mole_duration~6_combout\ = (mole_active(3) & (mole_duration(3) & ((button_prev(3)) # (!\button~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \button~combout\(3),
	datab => mole_active(3),
	datac => mole_duration(3),
	datad => button_prev(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mole_duration~6_combout\);

-- Location: LC_X5_Y1_N1
\Decoder0~9\ : maxv_lcell
-- Equation(s):
-- \Decoder0~9_combout\ = (!\spawn_idx~1_combout\ & (\spawn_idx~3\ & (\spawn_idx~2\ & \Decoder0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spawn_idx~1_combout\,
	datab => \spawn_idx~3\,
	datac => \spawn_idx~2\,
	datad => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~9_combout\);

-- Location: LC_X4_Y1_N5
\mole_duration[3]\ : maxv_lcell
-- Equation(s):
-- mole_duration(3) = DFFEAS((\Equal2~1_combout\ & (!\mole_duration~6_combout\ & ((mole_duration(3)) # (\Decoder0~9_combout\)))) # (!\Equal2~1_combout\ & ((mole_duration(3)) # ((\Decoder0~9_combout\)))), GLOBAL(\fastclock~combout\), VCC, , 
-- \game_state~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f4c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \Equal2~1_combout\,
	datab => mole_duration(3),
	datac => \mole_duration~6_combout\,
	datad => \Decoder0~9_combout\,
	aclr => GND,
	ena => \game_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_duration(3));

-- Location: LC_X3_Y2_N7
\mole_active~3\ : maxv_lcell
-- Equation(s):
-- \mole_active~3_combout\ = (global_tick(5)) # (((global_tick(4)) # (mole_duration(3))) # (!\Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => global_tick(5),
	datab => \Equal2~0_combout\,
	datac => global_tick(4),
	datad => mole_duration(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mole_active~3_combout\);

-- Location: LC_X4_Y1_N2
\mole_active[3]\ : maxv_lcell
-- Equation(s):
-- mole_active(3) = DFFEAS((mole_active(3) & (\mole_active~3_combout\ & (!\moles_fsm_proc~3\))) # (!mole_active(3) & (((\Decoder0~9_combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , !\game_state~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5d08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => mole_active(3),
	datab => \mole_active~3_combout\,
	datac => \moles_fsm_proc~3\,
	datad => \Decoder0~9_combout\,
	aclr => GND,
	sclr => \ALT_INV_game_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_active(3));

-- Location: LC_X4_Y2_N9
\wrong_click~1\ : maxv_lcell
-- Equation(s):
-- \wrong_click~1_combout\ = (mole_active(4) & (!mole_active(3) & ((\moles_fsm_proc~3\)))) # (!mole_active(4) & ((\moles_fsm_proc~4\) # ((!mole_active(3) & \moles_fsm_proc~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7350",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => mole_active(4),
	datab => mole_active(3),
	datac => \moles_fsm_proc~4\,
	datad => \moles_fsm_proc~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrong_click~1_combout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\button[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_button(5),
	combout => \button~combout\(5));

-- Location: LC_X7_Y1_N7
\button_prev[5]\ : maxv_lcell
-- Equation(s):
-- \moles_fsm_proc~5\ = ((\button~combout\(5) & (!button_prev[5])))
-- button_prev(5) = DFFEAS(\moles_fsm_proc~5\, GLOBAL(\fastclock~combout\), VCC, , , \button~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	datab => \button~combout\(5),
	datac => \button~combout\(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \moles_fsm_proc~5\,
	regout => button_prev(5));

-- Location: LC_X6_Y1_N1
\mole_duration~10\ : maxv_lcell
-- Equation(s):
-- \mole_duration~10_combout\ = (mole_active(5) & (mole_duration(5) & ((button_prev(5)) # (!\button~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \button~combout\(5),
	datab => mole_active(5),
	datac => mole_duration(5),
	datad => button_prev(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mole_duration~10_combout\);

-- Location: LC_X6_Y1_N8
\Decoder0~11\ : maxv_lcell
-- Equation(s):
-- \Decoder0~11_combout\ = (\spawn_idx~1_combout\ & (!\spawn_idx~2\ & (\spawn_idx~3\ & \Decoder0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spawn_idx~1_combout\,
	datab => \spawn_idx~2\,
	datac => \spawn_idx~3\,
	datad => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~11_combout\);

-- Location: LC_X6_Y1_N5
\mole_duration[5]\ : maxv_lcell
-- Equation(s):
-- mole_duration(5) = DFFEAS((\Equal2~1_combout\ & (!\mole_duration~10_combout\ & ((mole_duration(5)) # (\Decoder0~11_combout\)))) # (!\Equal2~1_combout\ & (((mole_duration(5)) # (\Decoder0~11_combout\)))), GLOBAL(\fastclock~combout\), VCC, , 
-- \game_state~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7770",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \Equal2~1_combout\,
	datab => \mole_duration~10_combout\,
	datac => mole_duration(5),
	datad => \Decoder0~11_combout\,
	aclr => GND,
	ena => \game_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_duration(5));

-- Location: LC_X7_Y1_N5
\mole_active~5\ : maxv_lcell
-- Equation(s):
-- \mole_active~5_combout\ = (global_tick(4)) # (((global_tick(5)) # (mole_duration(5))) # (!\Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => global_tick(4),
	datab => \Equal2~0_combout\,
	datac => global_tick(5),
	datad => mole_duration(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mole_active~5_combout\);

-- Location: LC_X6_Y1_N9
\mole_active[5]\ : maxv_lcell
-- Equation(s):
-- mole_active(5) = DFFEAS((mole_active(5) & (\mole_active~5_combout\ & (!\moles_fsm_proc~5\))) # (!mole_active(5) & (((\Decoder0~11_combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , !\game_state~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3b08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \mole_active~5_combout\,
	datab => mole_active(5),
	datac => \moles_fsm_proc~5\,
	datad => \Decoder0~11_combout\,
	aclr => GND,
	sclr => \ALT_INV_game_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_active(5));

-- Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\button[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_button(6),
	combout => \button~combout\(6));

-- Location: LC_X7_Y1_N6
\button_prev[6]\ : maxv_lcell
-- Equation(s):
-- \moles_fsm_proc~6\ = ((\button~combout\(6) & (!button_prev[6])))
-- button_prev(6) = DFFEAS(\moles_fsm_proc~6\, GLOBAL(\fastclock~combout\), VCC, , , \button~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	datab => \button~combout\(6),
	datac => \button~combout\(6),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \moles_fsm_proc~6\,
	regout => button_prev(6));

-- Location: LC_X7_Y1_N2
\mole_duration~12\ : maxv_lcell
-- Equation(s):
-- \mole_duration~12_combout\ = (mole_duration(6) & (mole_active(6) & ((button_prev(6)) # (!\button~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => button_prev(6),
	datab => mole_duration(6),
	datac => \button~combout\(6),
	datad => mole_active(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mole_duration~12_combout\);

-- Location: LC_X6_Y1_N2
\Decoder0~12\ : maxv_lcell
-- Equation(s):
-- \Decoder0~12_combout\ = (\spawn_idx~1_combout\ & (\spawn_idx~2\ & (!\spawn_idx~3\ & \Decoder0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spawn_idx~1_combout\,
	datab => \spawn_idx~2\,
	datac => \spawn_idx~3\,
	datad => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~12_combout\);

-- Location: LC_X6_Y1_N7
\mole_duration[6]\ : maxv_lcell
-- Equation(s):
-- mole_duration(6) = DFFEAS((\Equal2~1_combout\ & (!\mole_duration~12_combout\ & ((mole_duration(6)) # (\Decoder0~12_combout\)))) # (!\Equal2~1_combout\ & (((mole_duration(6)) # (\Decoder0~12_combout\)))), GLOBAL(\fastclock~combout\), VCC, , 
-- \game_state~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7770",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \Equal2~1_combout\,
	datab => \mole_duration~12_combout\,
	datac => mole_duration(6),
	datad => \Decoder0~12_combout\,
	aclr => GND,
	ena => \game_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_duration(6));

-- Location: LC_X7_Y1_N3
\mole_active~6\ : maxv_lcell
-- Equation(s):
-- \mole_active~6_combout\ = (global_tick(4)) # (((global_tick(5)) # (mole_duration(6))) # (!\Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => global_tick(4),
	datab => \Equal2~0_combout\,
	datac => global_tick(5),
	datad => mole_duration(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mole_active~6_combout\);

-- Location: LC_X6_Y1_N0
\mole_active[6]\ : maxv_lcell
-- Equation(s):
-- mole_active(6) = DFFEAS((mole_active(6) & (!\moles_fsm_proc~6\ & (\mole_active~6_combout\))) # (!mole_active(6) & (((\Decoder0~12_combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , !\game_state~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7340",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \moles_fsm_proc~6\,
	datab => mole_active(6),
	datac => \mole_active~6_combout\,
	datad => \Decoder0~12_combout\,
	aclr => GND,
	sclr => \ALT_INV_game_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_active(6));

-- Location: LC_X5_Y2_N1
\wrong_click~2\ : maxv_lcell
-- Equation(s):
-- \wrong_click~2_combout\ = (mole_active(5) & (\moles_fsm_proc~6\ & (!mole_active(6)))) # (!mole_active(5) & ((\moles_fsm_proc~5\) # ((\moles_fsm_proc~6\ & !mole_active(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5d0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => mole_active(5),
	datab => \moles_fsm_proc~6\,
	datac => mole_active(6),
	datad => \moles_fsm_proc~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrong_click~2_combout\);

-- Location: LC_X5_Y2_N9
\wrong_click~4\ : maxv_lcell
-- Equation(s):
-- \wrong_click~4_combout\ = (\wrong_click~3_combout\) # ((\wrong_click~0_combout\) # ((\wrong_click~1_combout\) # (\wrong_click~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wrong_click~3_combout\,
	datab => \wrong_click~0_combout\,
	datac => \wrong_click~1_combout\,
	datad => \wrong_click~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrong_click~4_combout\);

-- Location: LC_X5_Y2_N8
trigger_miss : maxv_lcell
-- Equation(s):
-- \trigger_miss~regout\ = DFFEAS((\wrong_click~4_combout\) # ((!mole_active(8) & (\button~combout\(8) & !button_prev(8)))), GLOBAL(\fastclock~combout\), VCC, , , , , !\game_state~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff04",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => mole_active(8),
	datab => \button~combout\(8),
	datac => button_prev(8),
	datad => \wrong_click~4_combout\,
	aclr => GND,
	sclr => \ALT_INV_game_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \trigger_miss~regout\);

-- Location: LC_X4_Y3_N9
slowclock_prev : maxv_lcell
-- Equation(s):
-- \game_duration_timer[0]~0\ = ((!\trigger_miss~regout\ & ((slowclock_prev) # (!\slowclock~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \slowclock~combout\,
	datac => \slowclock~combout\,
	datad => \trigger_miss~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game_duration_timer[0]~0\,
	regout => \slowclock_prev~regout\);

-- Location: LC_X4_Y3_N4
\game_duration_timer[0]~1\ : maxv_lcell
-- Equation(s):
-- \game_duration_timer[0]~1_combout\ = ((!\game_duration_timer[0]~0\ & ((\game_state~0_combout\) # (!game_duration_timer(4))))) # (!\game_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55df",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \game_state~regout\,
	datab => \game_state~0_combout\,
	datac => game_duration_timer(4),
	datad => \game_duration_timer[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game_duration_timer[0]~1_combout\);

-- Location: LC_X4_Y3_N1
\game_duration_timer[0]\ : maxv_lcell
-- Equation(s):
-- game_duration_timer(0) = DFFEAS(((!game_duration_timer(0) & ((\game_state~regout\)))), GLOBAL(\fastclock~combout\), VCC, , \game_duration_timer[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	datab => game_duration_timer(0),
	datad => \game_state~regout\,
	aclr => GND,
	ena => \game_duration_timer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => game_duration_timer(0));

-- Location: LC_X3_Y3_N2
\game_duration_timer[1]\ : maxv_lcell
-- Equation(s):
-- game_duration_timer(1) = DFFEAS((((!\Add3~1_combout\ & \game_state~regout\))), GLOBAL(\fastclock~combout\), VCC, , \game_duration_timer[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	datac => \Add3~1_combout\,
	datad => \game_state~regout\,
	aclr => GND,
	ena => \game_duration_timer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => game_duration_timer(1));

-- Location: LC_X3_Y3_N3
\game_duration_timer[2]\ : maxv_lcell
-- Equation(s):
-- game_duration_timer(2) = DFFEAS((((!\Add3~7_combout\ & \game_state~regout\))), GLOBAL(\fastclock~combout\), VCC, , \game_duration_timer[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	datac => \Add3~7_combout\,
	datad => \game_state~regout\,
	aclr => GND,
	ena => \game_duration_timer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => game_duration_timer(2));

-- Location: LC_X3_Y3_N4
\game_state~0\ : maxv_lcell
-- Equation(s):
-- \game_state~0_combout\ = (((!game_duration_timer(0)) # (!game_duration_timer(3))) # (!game_duration_timer(1))) # (!game_duration_timer(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => game_duration_timer(2),
	datab => game_duration_timer(1),
	datac => game_duration_timer(3),
	datad => game_duration_timer(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game_state~0_combout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\startButton~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_startButton,
	combout => \startButton~combout\);

-- Location: LC_X4_Y3_N2
startButton_prev : maxv_lcell
-- Equation(s):
-- \score_reset~0\ = (\startButton~combout\ & (((!startButton_prev & !\game_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \startButton~combout\,
	datac => \startButton~combout\,
	datad => \game_state~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \score_reset~0\,
	regout => \startButton_prev~regout\);

-- Location: LC_X4_Y3_N3
game_state : maxv_lcell
-- Equation(s):
-- \game_state~regout\ = DFFEAS((\score_reset~0\) # ((\game_state~regout\ & ((\game_state~0_combout\) # (!game_duration_timer(4))))), GLOBAL(\fastclock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff8a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \game_state~regout\,
	datab => \game_state~0_combout\,
	datac => game_duration_timer(4),
	datad => \score_reset~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \game_state~regout\);

-- Location: LC_X6_Y2_N5
\mole_duration[7]\ : maxv_lcell
-- Equation(s):
-- mole_duration(7) = DFFEAS((\Equal2~1_combout\ & (!\mole_duration~14_combout\ & ((mole_duration(7)) # (\Decoder0~13_combout\)))) # (!\Equal2~1_combout\ & (((mole_duration(7)) # (\Decoder0~13_combout\)))), GLOBAL(\fastclock~combout\), VCC, , 
-- \game_state~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7770",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \Equal2~1_combout\,
	datab => \mole_duration~14_combout\,
	datac => mole_duration(7),
	datad => \Decoder0~13_combout\,
	aclr => GND,
	ena => \game_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_duration(7));

-- Location: LC_X6_Y2_N6
\mole_active~7\ : maxv_lcell
-- Equation(s):
-- \mole_active~7_combout\ = ((global_tick(5)) # ((mole_duration(7)) # (global_tick(4)))) # (!\Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => global_tick(5),
	datac => mole_duration(7),
	datad => global_tick(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mole_active~7_combout\);

-- Location: LC_X6_Y2_N9
\mole_active[7]\ : maxv_lcell
-- Equation(s):
-- mole_active(7) = DFFEAS((mole_active(7) & (\mole_active~7_combout\ & (!\moles_fsm_proc~7\))) # (!mole_active(7) & (((\Decoder0~13_combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , !\game_state~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \mole_active~7_combout\,
	datab => \moles_fsm_proc~7\,
	datac => mole_active(7),
	datad => \Decoder0~13_combout\,
	aclr => GND,
	sclr => \ALT_INV_game_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_active(7));

-- Location: LC_X6_Y3_N6
\Mux0~2\ : maxv_lcell
-- Equation(s):
-- \Mux0~2_combout\ = (\spawn_idx~3\ & (((\spawn_idx~2\)))) # (!\spawn_idx~3\ & ((\spawn_idx~2\ & ((mole_active(6)))) # (!\spawn_idx~2\ & (mole_active(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spawn_idx~3\,
	datab => mole_active(4),
	datac => mole_active(6),
	datad => \spawn_idx~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~2_combout\);

-- Location: LC_X6_Y3_N4
\Mux0~3\ : maxv_lcell
-- Equation(s):
-- \Mux0~3_combout\ = (\spawn_idx~3\ & ((\Mux0~2_combout\ & (mole_active(7))) # (!\Mux0~2_combout\ & ((mole_active(5)))))) # (!\spawn_idx~3\ & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spawn_idx~3\,
	datab => mole_active(7),
	datac => mole_active(5),
	datad => \Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~3_combout\);

-- Location: LC_X5_Y3_N6
\Mux0~0\ : maxv_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (\spawn_idx~3\ & (((mole_active(1)) # (\spawn_idx~2\)))) # (!\spawn_idx~3\ & (mole_active(0) & ((!\spawn_idx~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => mole_active(0),
	datab => mole_active(1),
	datac => \spawn_idx~3\,
	datad => \spawn_idx~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: LC_X5_Y3_N7
\Mux0~1\ : maxv_lcell
-- Equation(s):
-- \Mux0~1_combout\ = (\spawn_idx~2\ & ((\Mux0~0_combout\ & ((mole_active(3)))) # (!\Mux0~0_combout\ & (mole_active(2))))) # (!\spawn_idx~2\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => mole_active(2),
	datab => \spawn_idx~2\,
	datac => mole_active(3),
	datad => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~1_combout\);

-- Location: LC_X6_Y3_N2
\Decoder0~1\ : maxv_lcell
-- Equation(s):
-- \Decoder0~1_combout\ = (\spawn_idx~0\) # ((\spawn_idx~1_combout\ & (!\Mux0~3_combout\)) # (!\spawn_idx~1_combout\ & ((!\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff53",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \Mux0~1_combout\,
	datac => \spawn_idx~1_combout\,
	datad => \spawn_idx~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~1_combout\);

-- Location: LC_X6_Y2_N2
\Add10~1\ : maxv_lcell
-- Equation(s):
-- \Add10~1_combout\ = ((mole_active(8) $ (mole_active(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => mole_active(8),
	datad => mole_active(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add10~1_combout\);

-- Location: LC_X6_Y1_N6
\Add8~1\ : maxv_lcell
-- Equation(s):
-- \Add8~1_combout\ = ((mole_active(6) $ (mole_active(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => mole_active(6),
	datad => mole_active(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~1_combout\);

-- Location: LC_X3_Y1_N9
\Add5~0\ : maxv_lcell
-- Equation(s):
-- \Add5~0_combout\ = mole_active(0) $ (((mole_active(1) $ (mole_active(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => mole_active(0),
	datac => mole_active(1),
	datad => mole_active(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~0_combout\);

-- Location: LC_X4_Y1_N0
\Add7~2\ : maxv_lcell
-- Equation(s):
-- \Add7~2_combout\ = (mole_active(3) $ (\Add5~0_combout\ $ (mole_active(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => mole_active(3),
	datac => \Add5~0_combout\,
	datad => mole_active(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~2_combout\);

-- Location: LC_X4_Y1_N6
\Add9~10\ : maxv_lcell
-- Equation(s):
-- \Add9~10_combout\ = \Add8~1_combout\ $ ((\Add7~2_combout\))
-- \Add9~12\ = CARRY((\Add8~1_combout\ & (\Add7~2_combout\)))
-- \Add9~12COUT1_21\ = CARRY((\Add8~1_combout\ & (\Add7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~1_combout\,
	datab => \Add7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~10_combout\,
	cout0 => \Add9~12\,
	cout1 => \Add9~12COUT1_21\);

-- Location: LC_X5_Y1_N6
\Add11~10\ : maxv_lcell
-- Equation(s):
-- \Add11~10_combout\ = \Add10~1_combout\ $ ((\Add9~10_combout\))
-- \Add11~12\ = CARRY((\Add10~1_combout\ & (\Add9~10_combout\)))
-- \Add11~12COUT1_21\ = CARRY((\Add10~1_combout\ & (\Add9~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~1_combout\,
	datab => \Add9~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add11~10_combout\,
	cout0 => \Add11~12\,
	cout1 => \Add11~12COUT1_21\);

-- Location: LC_X5_Y2_N0
\Add10~0\ : maxv_lcell
-- Equation(s):
-- \Add10~0_combout\ = (((mole_active(7) & mole_active(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => mole_active(7),
	datad => mole_active(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add10~0_combout\);

-- Location: LC_X6_Y1_N4
\Add8~0\ : maxv_lcell
-- Equation(s):
-- \Add8~0_combout\ = (((mole_active(6) & mole_active(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => mole_active(6),
	datad => mole_active(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~0_combout\);

-- Location: LC_X3_Y1_N2
\Add5~1\ : maxv_lcell
-- Equation(s):
-- \Add5~1_combout\ = (mole_active(0) & (((mole_active(1)) # (mole_active(2))))) # (!mole_active(0) & (((mole_active(1) & mole_active(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => mole_active(0),
	datac => mole_active(1),
	datad => mole_active(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~1_combout\);

-- Location: LC_X4_Y1_N1
\Add7~0\ : maxv_lcell
-- Equation(s):
-- \Add7~0_combout\ = \Add5~1_combout\ $ (((mole_active(4) & ((mole_active(3)) # (\Add5~0_combout\))) # (!mole_active(4) & (mole_active(3) & \Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "17e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => mole_active(4),
	datab => mole_active(3),
	datac => \Add5~0_combout\,
	datad => \Add5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~0_combout\);

-- Location: LC_X4_Y1_N7
\Add9~0\ : maxv_lcell
-- Equation(s):
-- \Add9~0_combout\ = \Add8~0_combout\ $ (\Add7~0_combout\ $ ((\Add9~12\)))
-- \Add9~2\ = CARRY((\Add8~0_combout\ & (!\Add7~0_combout\ & !\Add9~12\)) # (!\Add8~0_combout\ & ((!\Add9~12\) # (!\Add7~0_combout\))))
-- \Add9~2COUT1_22\ = CARRY((\Add8~0_combout\ & (!\Add7~0_combout\ & !\Add9~12COUT1_21\)) # (!\Add8~0_combout\ & ((!\Add9~12COUT1_21\) # (!\Add7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~0_combout\,
	datab => \Add7~0_combout\,
	cin0 => \Add9~12\,
	cin1 => \Add9~12COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~0_combout\,
	cout0 => \Add9~2\,
	cout1 => \Add9~2COUT1_22\);

-- Location: LC_X5_Y1_N7
\Add11~0\ : maxv_lcell
-- Equation(s):
-- \Add11~0_combout\ = \Add10~0_combout\ $ (\Add9~0_combout\ $ ((\Add11~12\)))
-- \Add11~2\ = CARRY((\Add10~0_combout\ & (!\Add9~0_combout\ & !\Add11~12\)) # (!\Add10~0_combout\ & ((!\Add11~12\) # (!\Add9~0_combout\))))
-- \Add11~2COUT1_22\ = CARRY((\Add10~0_combout\ & (!\Add9~0_combout\ & !\Add11~12COUT1_21\)) # (!\Add10~0_combout\ & ((!\Add11~12COUT1_21\) # (!\Add9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~0_combout\,
	datab => \Add9~0_combout\,
	cin0 => \Add11~12\,
	cin1 => \Add11~12COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add11~0_combout\,
	cout0 => \Add11~2\,
	cout1 => \Add11~2COUT1_22\);

-- Location: LC_X4_Y1_N3
\Add7~1\ : maxv_lcell
-- Equation(s):
-- \Add7~1_combout\ = (\Add5~1_combout\ & ((mole_active(4) & ((mole_active(3)) # (\Add5~0_combout\))) # (!mole_active(4) & (mole_active(3) & \Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => mole_active(4),
	datab => mole_active(3),
	datac => \Add5~0_combout\,
	datad => \Add5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~1_combout\);

-- Location: LC_X4_Y1_N8
\Add9~5\ : maxv_lcell
-- Equation(s):
-- \Add9~5_combout\ = \Add7~1_combout\ $ ((((!\Add9~2\))))
-- \Add9~7\ = CARRY((\Add7~1_combout\ & ((!\Add9~2\))))
-- \Add9~7COUT1_23\ = CARRY((\Add7~1_combout\ & ((!\Add9~2COUT1_22\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~1_combout\,
	cin0 => \Add9~2\,
	cin1 => \Add9~2COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~5_combout\,
	cout0 => \Add9~7\,
	cout1 => \Add9~7COUT1_23\);

-- Location: LC_X5_Y1_N8
\Add11~5\ : maxv_lcell
-- Equation(s):
-- \Add11~5_combout\ = \Add9~5_combout\ $ ((((!\Add11~2\))))
-- \Add11~7\ = CARRY((\Add9~5_combout\ & ((!\Add11~2\))))
-- \Add11~7COUT1_23\ = CARRY((\Add9~5_combout\ & ((!\Add11~2COUT1_22\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~5_combout\,
	cin0 => \Add11~2\,
	cin1 => \Add11~2COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add11~5_combout\,
	cout0 => \Add11~7\,
	cout1 => \Add11~7COUT1_23\);

-- Location: LC_X5_Y1_N5
\Decoder0~2\ : maxv_lcell
-- Equation(s):
-- \Decoder0~2_combout\ = (((!\Add11~0_combout\ & !\Add11~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Add11~0_combout\,
	datad => \Add11~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~2_combout\);

-- Location: LC_X4_Y1_N9
\Add9~15\ : maxv_lcell
-- Equation(s):
-- \Add9~15_combout\ = (((\Add9~7\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Add9~7\,
	cin1 => \Add9~7COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~15_combout\);

-- Location: LC_X5_Y1_N9
\Add11~15\ : maxv_lcell
-- Equation(s):
-- \Add11~15_combout\ = ((\Add11~7\ $ (\Add9~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \Add9~15_combout\,
	cin0 => \Add11~7\,
	cin1 => \Add11~7COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add11~15_combout\);

-- Location: LC_X5_Y1_N2
\Decoder0~3\ : maxv_lcell
-- Equation(s):
-- \Decoder0~3_combout\ = (\Decoder0~2_combout\ & (!\Add11~15_combout\ & ((lfsr(0)) # (!\Add11~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00b0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => lfsr(0),
	datab => \Add11~10_combout\,
	datac => \Decoder0~2_combout\,
	datad => \Add11~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~3_combout\);

-- Location: LC_X6_Y2_N3
\Decoder0~14\ : maxv_lcell
-- Equation(s):
-- \Decoder0~14_combout\ = (\spawn_idx~0\ & (\Decoder0~0_combout\ & (\Decoder0~1_combout\ & \Decoder0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spawn_idx~0\,
	datab => \Decoder0~0_combout\,
	datac => \Decoder0~1_combout\,
	datad => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~14_combout\);

-- Location: LC_X6_Y2_N4
\mole_duration[8]\ : maxv_lcell
-- Equation(s):
-- mole_duration(8) = DFFEAS((\Equal2~1_combout\ & (!\mole_duration~16\ & ((mole_duration(8)) # (\Decoder0~14_combout\)))) # (!\Equal2~1_combout\ & (((mole_duration(8)) # (\Decoder0~14_combout\)))), GLOBAL(\fastclock~combout\), VCC, , \game_state~regout\, , 
-- , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7770",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \Equal2~1_combout\,
	datab => \mole_duration~16\,
	datac => mole_duration(8),
	datad => \Decoder0~14_combout\,
	aclr => GND,
	ena => \game_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_duration(8));

-- Location: LC_X5_Y3_N0
\moles_fsm_proc~8\ : maxv_lcell
-- Equation(s):
-- \moles_fsm_proc~8_combout\ = (!button_prev(8) & (((\button~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => button_prev(8),
	datac => \button~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \moles_fsm_proc~8_combout\);

-- Location: LC_X6_Y2_N7
\mole_active~8\ : maxv_lcell
-- Equation(s):
-- \mole_active~8_combout\ = ((global_tick(5)) # ((mole_duration(8)) # (global_tick(4)))) # (!\Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => global_tick(5),
	datac => mole_duration(8),
	datad => global_tick(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mole_active~8_combout\);

-- Location: LC_X6_Y2_N1
\mole_active[8]\ : maxv_lcell
-- Equation(s):
-- mole_active(8) = DFFEAS((mole_active(8) & (!\moles_fsm_proc~8_combout\ & (\mole_active~8_combout\))) # (!mole_active(8) & (((\Decoder0~14_combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , !\game_state~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4f40",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \moles_fsm_proc~8_combout\,
	datab => \mole_active~8_combout\,
	datac => mole_active(8),
	datad => \Decoder0~14_combout\,
	aclr => GND,
	sclr => \ALT_INV_game_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_active(8));

-- Location: LC_X5_Y2_N7
\Decoder0~0\ : maxv_lcell
-- Equation(s):
-- \Decoder0~0_combout\ = ((\Equal2~1_combout\ & ((!\spawn_idx~0\) # (!mole_active(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => mole_active(8),
	datac => \spawn_idx~0\,
	datad => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~0_combout\);

-- Location: LC_X5_Y1_N3
\Decoder0~4\ : maxv_lcell
-- Equation(s):
-- \Decoder0~4_combout\ = (\Decoder0~0_combout\ & (!\spawn_idx~0\ & (\Decoder0~1_combout\ & \Decoder0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~0_combout\,
	datab => \spawn_idx~0\,
	datac => \Decoder0~1_combout\,
	datad => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~4_combout\);

-- Location: LC_X3_Y1_N5
\Decoder0~6\ : maxv_lcell
-- Equation(s):
-- \Decoder0~6_combout\ = ((\Decoder0~5_combout\ & (!\spawn_idx~3\ & \Decoder0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Decoder0~5_combout\,
	datac => \spawn_idx~3\,
	datad => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~6_combout\);

-- Location: LC_X3_Y1_N1
\mole_duration[0]\ : maxv_lcell
-- Equation(s):
-- mole_duration(0) = DFFEAS((\mole_duration~0_combout\ & (!\Equal2~1_combout\ & ((\Decoder0~6_combout\) # (mole_duration(0))))) # (!\mole_duration~0_combout\ & (((\Decoder0~6_combout\) # (mole_duration(0))))), GLOBAL(\fastclock~combout\), VCC, , 
-- \game_state~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7770",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \mole_duration~0_combout\,
	datab => \Equal2~1_combout\,
	datac => \Decoder0~6_combout\,
	datad => mole_duration(0),
	aclr => GND,
	ena => \game_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_duration(0));

-- Location: LC_X2_Y1_N9
\mole_active~0\ : maxv_lcell
-- Equation(s):
-- \mole_active~0_combout\ = (mole_duration(0)) # ((global_tick(4)) # ((global_tick(5)) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => mole_duration(0),
	datab => global_tick(4),
	datac => \Equal2~0_combout\,
	datad => global_tick(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mole_active~0_combout\);

-- Location: LC_X3_Y1_N6
\mole_active[0]\ : maxv_lcell
-- Equation(s):
-- mole_active(0) = DFFEAS((mole_active(0) & (\mole_active~0_combout\ & (!\moles_fsm_proc~0\))) # (!mole_active(0) & (((\Decoder0~6_combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , !\game_state~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3b08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \mole_active~0_combout\,
	datab => mole_active(0),
	datac => \moles_fsm_proc~0\,
	datad => \Decoder0~6_combout\,
	aclr => GND,
	sclr => \ALT_INV_game_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_active(0));

-- Location: LC_X4_Y3_N5
\leds[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[0]~reg0_regout\ = DFFEAS(((\game_state~regout\ & ((mole_active(0)))) # (!\game_state~regout\ & (\slowclock~combout\))), GLOBAL(\fastclock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \slowclock~combout\,
	datab => mole_active(0),
	datad => \game_state~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[0]~reg0_regout\);

-- Location: LC_X5_Y3_N9
\leds[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[1]~reg0_regout\ = DFFEAS(((\game_state~regout\ & (mole_active(1))) # (!\game_state~regout\ & ((\slowclock~combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	datab => mole_active(1),
	datac => \slowclock~combout\,
	datad => \game_state~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[1]~reg0_regout\);

-- Location: LC_X5_Y3_N3
\leds[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[2]~reg0_regout\ = DFFEAS(((\game_state~regout\ & ((mole_active(2)))) # (!\game_state~regout\ & (\slowclock~combout\))), GLOBAL(\fastclock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \slowclock~combout\,
	datac => mole_active(2),
	datad => \game_state~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[2]~reg0_regout\);

-- Location: LC_X5_Y3_N4
\leds[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[3]~reg0_regout\ = DFFEAS(((\game_state~regout\ & ((mole_active(3)))) # (!\game_state~regout\ & (\slowclock~combout\))), GLOBAL(\fastclock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \slowclock~combout\,
	datac => mole_active(3),
	datad => \game_state~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[3]~reg0_regout\);

-- Location: LC_X4_Y3_N8
\leds[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[4]~reg0_regout\ = DFFEAS(((\game_state~regout\ & ((mole_active(4)))) # (!\game_state~regout\ & (\slowclock~combout\))), GLOBAL(\fastclock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \slowclock~combout\,
	datac => mole_active(4),
	datad => \game_state~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[4]~reg0_regout\);

-- Location: LC_X5_Y3_N8
\leds[5]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[5]~reg0_regout\ = DFFEAS(((\game_state~regout\ & ((mole_active(5)))) # (!\game_state~regout\ & (\slowclock~combout\))), GLOBAL(\fastclock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	datab => \game_state~regout\,
	datac => \slowclock~combout\,
	datad => mole_active(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[5]~reg0_regout\);

-- Location: LC_X5_Y3_N2
\leds[6]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[6]~reg0_regout\ = DFFEAS(((\game_state~regout\ & ((mole_active(6)))) # (!\game_state~regout\ & (\slowclock~combout\))), GLOBAL(\fastclock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \slowclock~combout\,
	datac => mole_active(6),
	datad => \game_state~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[6]~reg0_regout\);

-- Location: LC_X5_Y3_N1
\leds[7]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[7]~reg0_regout\ = DFFEAS(((\game_state~regout\ & ((mole_active(7)))) # (!\game_state~regout\ & (\slowclock~combout\))), GLOBAL(\fastclock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \slowclock~combout\,
	datac => mole_active(7),
	datad => \game_state~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[7]~reg0_regout\);

-- Location: LC_X4_Y3_N7
\leds[8]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[8]~reg0_regout\ = DFFEAS((\game_state~regout\ & (((mole_active(8))))) # (!\game_state~regout\ & (((\slowclock~combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \game_state~regout\,
	datac => \slowclock~combout\,
	datad => mole_active(8),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[8]~reg0_regout\);

-- Location: LC_X2_Y2_N5
\error_timer[0]\ : maxv_lcell
-- Equation(s):
-- error_timer(0) = DFFEAS((!error_timer(0)), GLOBAL(\fastclock~combout\), VCC, , \timer_proc~1\, VCC, , , \trigger_miss~regout\)
-- \error_timer[0]~1\ = CARRY((error_timer(0)))
-- \error_timer[0]~1COUT1_11\ = CARRY((error_timer(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => error_timer(0),
	datac => VCC,
	aclr => GND,
	sload => \trigger_miss~regout\,
	ena => \timer_proc~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => error_timer(0),
	cout0 => \error_timer[0]~1\,
	cout1 => \error_timer[0]~1COUT1_11\);

-- Location: LC_X2_Y2_N6
\error_timer[1]\ : maxv_lcell
-- Equation(s):
-- error_timer(1) = DFFEAS(error_timer(1) $ ((((!\error_timer[0]~1\)))), GLOBAL(\fastclock~combout\), VCC, , \timer_proc~1\, VCC, , , \trigger_miss~regout\)
-- \error_timer[1]~3\ = CARRY((!error_timer(1) & ((!\error_timer[0]~1\))))
-- \error_timer[1]~3COUT1_12\ = CARRY((!error_timer(1) & ((!\error_timer[0]~1COUT1_11\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => error_timer(1),
	datac => VCC,
	aclr => GND,
	sload => \trigger_miss~regout\,
	ena => \timer_proc~1\,
	cin0 => \error_timer[0]~1\,
	cin1 => \error_timer[0]~1COUT1_11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => error_timer(1),
	cout0 => \error_timer[1]~3\,
	cout1 => \error_timer[1]~3COUT1_12\);

-- Location: LC_X2_Y2_N7
\error_timer[2]\ : maxv_lcell
-- Equation(s):
-- error_timer(2) = DFFEAS((error_timer(2) $ ((\error_timer[1]~3\))), GLOBAL(\fastclock~combout\), VCC, , \timer_proc~1\, VCC, , , \trigger_miss~regout\)
-- \error_timer[2]~5\ = CARRY(((error_timer(2)) # (!\error_timer[1]~3\)))
-- \error_timer[2]~5COUT1_13\ = CARRY(((error_timer(2)) # (!\error_timer[1]~3COUT1_12\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	datab => error_timer(2),
	datac => VCC,
	aclr => GND,
	sload => \trigger_miss~regout\,
	ena => \timer_proc~1\,
	cin0 => \error_timer[1]~3\,
	cin1 => \error_timer[1]~3COUT1_12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => error_timer(2),
	cout0 => \error_timer[2]~5\,
	cout1 => \error_timer[2]~5COUT1_13\);

-- Location: LC_X2_Y2_N8
\error_timer[3]\ : maxv_lcell
-- Equation(s):
-- error_timer(3) = DFFEAS(error_timer(3) $ ((((!\error_timer[2]~5\)))), GLOBAL(\fastclock~combout\), VCC, , \timer_proc~1\, VCC, , , \trigger_miss~regout\)
-- \error_timer[3]~7\ = CARRY((!error_timer(3) & ((!\error_timer[2]~5\))))
-- \error_timer[3]~7COUT1_14\ = CARRY((!error_timer(3) & ((!\error_timer[2]~5COUT1_13\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => error_timer(3),
	datac => VCC,
	aclr => GND,
	sload => \trigger_miss~regout\,
	ena => \timer_proc~1\,
	cin0 => \error_timer[2]~5\,
	cin1 => \error_timer[2]~5COUT1_13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => error_timer(3),
	cout0 => \error_timer[3]~7\,
	cout1 => \error_timer[3]~7COUT1_14\);

-- Location: LC_X2_Y2_N9
\error_timer[4]\ : maxv_lcell
-- Equation(s):
-- error_timer(4) = DFFEAS((error_timer(4) $ ((\error_timer[3]~7\))), GLOBAL(\fastclock~combout\), VCC, , \timer_proc~1\, VCC, , , \trigger_miss~regout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	datab => error_timer(4),
	datac => VCC,
	aclr => GND,
	sload => \trigger_miss~regout\,
	ena => \timer_proc~1\,
	cin0 => \error_timer[3]~7\,
	cin1 => \error_timer[3]~7COUT1_14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => error_timer(4));

-- Location: LC_X2_Y2_N2
\timer_proc~0\ : maxv_lcell
-- Equation(s):
-- \timer_proc~0_combout\ = (error_timer(0)) # ((error_timer(2)) # ((error_timer(1)) # (\trigger_miss~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => error_timer(0),
	datab => error_timer(2),
	datac => error_timer(1),
	datad => \trigger_miss~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_proc~0_combout\);

-- Location: LC_X2_Y2_N3
\penalty_led~reg0\ : maxv_lcell
-- Equation(s):
-- \timer_proc~1\ = (error_timer(3)) # (((error_timer(4)) # (\timer_proc~0_combout\)))
-- \penalty_led~reg0_regout\ = DFFEAS(\timer_proc~1\, GLOBAL(\fastclock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => error_timer(3),
	datac => error_timer(4),
	datad => \timer_proc~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_proc~1\,
	regout => \penalty_led~reg0_regout\);

-- Location: LC_X4_Y3_N6
\score_reset~reg0\ : maxv_lcell
-- Equation(s):
-- \score_reset~reg0_regout\ = DFFEAS((((\score_reset~0\))), GLOBAL(\fastclock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	datad => \score_reset~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \score_reset~reg0_regout\);

-- Location: LC_X2_Y1_N0
\trigger_hit~0\ : maxv_lcell
-- Equation(s):
-- \trigger_hit~0_combout\ = (\moles_fsm_proc~2\ & ((mole_active(2)) # ((\moles_fsm_proc~1\ & mole_active(1))))) # (!\moles_fsm_proc~2\ & (((\moles_fsm_proc~1\ & mole_active(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \moles_fsm_proc~2\,
	datab => mole_active(2),
	datac => \moles_fsm_proc~1\,
	datad => mole_active(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \trigger_hit~0_combout\);

-- Location: LC_X5_Y2_N2
\trigger_hit~3\ : maxv_lcell
-- Equation(s):
-- \trigger_hit~3_combout\ = (mole_active(0) & ((\moles_fsm_proc~0\) # ((mole_active(7) & \moles_fsm_proc~7\)))) # (!mole_active(0) & (((mole_active(7) & \moles_fsm_proc~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => mole_active(0),
	datab => \moles_fsm_proc~0\,
	datac => mole_active(7),
	datad => \moles_fsm_proc~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \trigger_hit~3_combout\);

-- Location: LC_X5_Y2_N6
\trigger_hit~2\ : maxv_lcell
-- Equation(s):
-- \trigger_hit~2_combout\ = (mole_active(5) & ((\moles_fsm_proc~5\) # ((\moles_fsm_proc~6\ & mole_active(6))))) # (!mole_active(5) & (\moles_fsm_proc~6\ & (mole_active(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => mole_active(5),
	datab => \moles_fsm_proc~6\,
	datac => mole_active(6),
	datad => \moles_fsm_proc~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \trigger_hit~2_combout\);

-- Location: LC_X4_Y2_N0
\trigger_hit~1\ : maxv_lcell
-- Equation(s):
-- \trigger_hit~1_combout\ = (mole_active(4) & ((\moles_fsm_proc~4\) # ((mole_active(3) & \moles_fsm_proc~3\)))) # (!mole_active(4) & (mole_active(3) & ((\moles_fsm_proc~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => mole_active(4),
	datab => mole_active(3),
	datac => \moles_fsm_proc~4\,
	datad => \moles_fsm_proc~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \trigger_hit~1_combout\);

-- Location: LC_X5_Y2_N4
\trigger_hit~4\ : maxv_lcell
-- Equation(s):
-- \trigger_hit~4_combout\ = (\trigger_hit~0_combout\) # ((\trigger_hit~3_combout\) # ((\trigger_hit~2_combout\) # (\trigger_hit~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \trigger_hit~0_combout\,
	datab => \trigger_hit~3_combout\,
	datac => \trigger_hit~2_combout\,
	datad => \trigger_hit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \trigger_hit~4_combout\);

-- Location: LC_X5_Y2_N5
trigger_hit : maxv_lcell
-- Equation(s):
-- \trigger_hit~regout\ = DFFEAS((\trigger_hit~4_combout\) # ((mole_active(8) & (\button~combout\(8) & !button_prev(8)))), GLOBAL(\fastclock~combout\), VCC, , , , , !\game_state~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => mole_active(8),
	datab => \button~combout\(8),
	datac => button_prev(8),
	datad => \trigger_hit~4_combout\,
	aclr => GND,
	sclr => \ALT_INV_game_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \trigger_hit~regout\);

-- Location: LC_X5_Y4_N0
\score_timer[0]\ : maxv_lcell
-- Equation(s):
-- score_timer(0) = DFFEAS(((!score_timer(0))), GLOBAL(\fastclock~combout\), VCC, , \timer_proc~3\, VCC, , , \trigger_hit~regout\)
-- \score_timer[0]~1\ = CARRY(((score_timer(0))))
-- \score_timer[0]~1COUT1_11\ = CARRY(((score_timer(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	datab => score_timer(0),
	datac => VCC,
	aclr => GND,
	sload => \trigger_hit~regout\,
	ena => \timer_proc~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_timer(0),
	cout0 => \score_timer[0]~1\,
	cout1 => \score_timer[0]~1COUT1_11\);

-- Location: LC_X5_Y4_N1
\score_timer[1]\ : maxv_lcell
-- Equation(s):
-- score_timer(1) = DFFEAS((score_timer(1) $ ((!\score_timer[0]~1\))), GLOBAL(\fastclock~combout\), VCC, , \timer_proc~3\, VCC, , , \trigger_hit~regout\)
-- \score_timer[1]~3\ = CARRY(((!score_timer(1) & !\score_timer[0]~1\)))
-- \score_timer[1]~3COUT1_12\ = CARRY(((!score_timer(1) & !\score_timer[0]~1COUT1_11\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	datab => score_timer(1),
	datac => VCC,
	aclr => GND,
	sload => \trigger_hit~regout\,
	ena => \timer_proc~3\,
	cin0 => \score_timer[0]~1\,
	cin1 => \score_timer[0]~1COUT1_11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_timer(1),
	cout0 => \score_timer[1]~3\,
	cout1 => \score_timer[1]~3COUT1_12\);

-- Location: LC_X5_Y4_N2
\score_timer[2]\ : maxv_lcell
-- Equation(s):
-- score_timer(2) = DFFEAS((score_timer(2) $ ((\score_timer[1]~3\))), GLOBAL(\fastclock~combout\), VCC, , \timer_proc~3\, VCC, , , \trigger_hit~regout\)
-- \score_timer[2]~5\ = CARRY(((score_timer(2)) # (!\score_timer[1]~3\)))
-- \score_timer[2]~5COUT1_13\ = CARRY(((score_timer(2)) # (!\score_timer[1]~3COUT1_12\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	datab => score_timer(2),
	datac => VCC,
	aclr => GND,
	sload => \trigger_hit~regout\,
	ena => \timer_proc~3\,
	cin0 => \score_timer[1]~3\,
	cin1 => \score_timer[1]~3COUT1_12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_timer(2),
	cout0 => \score_timer[2]~5\,
	cout1 => \score_timer[2]~5COUT1_13\);

-- Location: LC_X5_Y4_N3
\score_timer[3]\ : maxv_lcell
-- Equation(s):
-- score_timer(3) = DFFEAS(score_timer(3) $ ((((!\score_timer[2]~5\)))), GLOBAL(\fastclock~combout\), VCC, , \timer_proc~3\, VCC, , , \trigger_hit~regout\)
-- \score_timer[3]~7\ = CARRY((!score_timer(3) & ((!\score_timer[2]~5\))))
-- \score_timer[3]~7COUT1_14\ = CARRY((!score_timer(3) & ((!\score_timer[2]~5COUT1_13\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => score_timer(3),
	datac => VCC,
	aclr => GND,
	sload => \trigger_hit~regout\,
	ena => \timer_proc~3\,
	cin0 => \score_timer[2]~5\,
	cin1 => \score_timer[2]~5COUT1_13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_timer(3),
	cout0 => \score_timer[3]~7\,
	cout1 => \score_timer[3]~7COUT1_14\);

-- Location: LC_X5_Y4_N4
\score_timer[4]\ : maxv_lcell
-- Equation(s):
-- score_timer(4) = DFFEAS(score_timer(4) $ ((((\score_timer[3]~7\)))), GLOBAL(\fastclock~combout\), VCC, , \timer_proc~3\, VCC, , , \trigger_hit~regout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => score_timer(4),
	datac => VCC,
	aclr => GND,
	sload => \trigger_hit~regout\,
	ena => \timer_proc~3\,
	cin0 => \score_timer[3]~7\,
	cin1 => \score_timer[3]~7COUT1_14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_timer(4));

-- Location: LC_X5_Y4_N5
\timer_proc~2\ : maxv_lcell
-- Equation(s):
-- \timer_proc~2_combout\ = (\trigger_hit~regout\) # ((score_timer(2)) # ((score_timer(0)) # (score_timer(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \trigger_hit~regout\,
	datab => score_timer(2),
	datac => score_timer(0),
	datad => score_timer(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_proc~2_combout\);

-- Location: LC_X5_Y4_N6
\score_high~reg0\ : maxv_lcell
-- Equation(s):
-- \timer_proc~3\ = (score_timer(3)) # (((score_timer(4)) # (\timer_proc~2_combout\)))
-- \score_high~reg0_regout\ = DFFEAS(\timer_proc~3\, GLOBAL(\fastclock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => score_timer(3),
	datac => score_timer(4),
	datad => \timer_proc~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_proc~3\,
	regout => \score_high~reg0_regout\);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds[0]~reg0_regout\,
	oe => VCC,
	padio => ww_leds(0));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds[1]~reg0_regout\,
	oe => VCC,
	padio => ww_leds(1));

-- Location: PIN_46,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds[2]~reg0_regout\,
	oe => VCC,
	padio => ww_leds(2));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds[3]~reg0_regout\,
	oe => VCC,
	padio => ww_leds(3));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds[4]~reg0_regout\,
	oe => VCC,
	padio => ww_leds(4));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds[5]~reg0_regout\,
	oe => VCC,
	padio => ww_leds(5));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds[6]~reg0_regout\,
	oe => VCC,
	padio => ww_leds(6));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds[7]~reg0_regout\,
	oe => VCC,
	padio => ww_leds(7));

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds[8]~reg0_regout\,
	oe => VCC,
	padio => ww_leds(8));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\penalty_led~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \penalty_led~reg0_regout\,
	oe => VCC,
	padio => ww_penalty_led);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\score_reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \score_reset~reg0_regout\,
	oe => VCC,
	padio => ww_score_reset);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\score_high~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \score_high~reg0_regout\,
	oe => VCC,
	padio => ww_score_high);
END structure;


