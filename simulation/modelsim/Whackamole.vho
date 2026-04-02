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

-- DATE "04/03/2026 00:47:05"

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
	score_reset : OUT std_logic;
	score_high : OUT std_logic;
	score_low : OUT std_logic
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
SIGNAL ww_score_reset : std_logic;
SIGNAL ww_score_high : std_logic;
SIGNAL ww_score_low : std_logic;
SIGNAL \slowclock_prev~regout\ : std_logic;
SIGNAL \fastclock~combout\ : std_logic;
SIGNAL \slowclock~combout\ : std_logic;
SIGNAL \game_duration_timer[4]~0\ : std_logic;
SIGNAL \startButton~combout\ : std_logic;
SIGNAL \start_pressed~regout\ : std_logic;
SIGNAL \score_reset~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \score_reset~1\ : std_logic;
SIGNAL \idx~1_combout\ : std_logic;
SIGNAL \idx~2\ : std_logic;
SIGNAL \idx~3\ : std_logic;
SIGNAL \idx~0\ : std_logic;
SIGNAL \Decoder0~10_combout\ : std_logic;
SIGNAL \mole_active~5_combout\ : std_logic;
SIGNAL \global_tick[0]~1\ : std_logic;
SIGNAL \global_tick[0]~1COUT1_15\ : std_logic;
SIGNAL \global_tick[1]~3\ : std_logic;
SIGNAL \global_tick[1]~3COUT1_16\ : std_logic;
SIGNAL \global_tick[2]~5\ : std_logic;
SIGNAL \global_tick[2]~5COUT1_17\ : std_logic;
SIGNAL \global_tick[3]~7\ : std_logic;
SIGNAL \global_tick[4]~9\ : std_logic;
SIGNAL \global_tick[4]~9COUT1_18\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \main~5_combout\ : std_logic;
SIGNAL \mole_active~7_combout\ : std_logic;
SIGNAL \Decoder0~12_combout\ : std_logic;
SIGNAL \main~7_combout\ : std_logic;
SIGNAL \Decoder0~11_combout\ : std_logic;
SIGNAL \main~6_combout\ : std_logic;
SIGNAL \mole_active~6_combout\ : std_logic;
SIGNAL \Decoder0~9_combout\ : std_logic;
SIGNAL \mole_active~4_combout\ : std_logic;
SIGNAL \main~4_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \mole_active~3_combout\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \main~3_combout\ : std_logic;
SIGNAL \main~1_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \mole_active~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \Add8~1_combout\ : std_logic;
SIGNAL \Add5~1_combout\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add7~1_combout\ : std_logic;
SIGNAL \Add9~12\ : std_logic;
SIGNAL \Add9~12COUT1_21\ : std_logic;
SIGNAL \Add9~5_combout\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~7COUT1_22\ : std_logic;
SIGNAL \Add9~2\ : std_logic;
SIGNAL \Add9~2COUT1_23\ : std_logic;
SIGNAL \Add9~15_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \Decoder0~13_combout\ : std_logic;
SIGNAL \mole_active~8_combout\ : std_logic;
SIGNAL \main~8_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \mole_active~2_combout\ : std_logic;
SIGNAL \main~2_combout\ : std_logic;
SIGNAL \score_timer~13\ : std_logic;
SIGNAL \score_timer~12\ : std_logic;
SIGNAL \wrong_click~2_combout\ : std_logic;
SIGNAL \score_timer~10\ : std_logic;
SIGNAL \wrong_click~0\ : std_logic;
SIGNAL \wrong_click~1_combout\ : std_logic;
SIGNAL \score_timer~21\ : std_logic;
SIGNAL \score_timer~15\ : std_logic;
SIGNAL \score_timer~16\ : std_logic;
SIGNAL \wrong_click~3_combout\ : std_logic;
SIGNAL \score_timer~19\ : std_logic;
SIGNAL \score_timer~18\ : std_logic;
SIGNAL \wrong_click~4_combout\ : std_logic;
SIGNAL \wrong_click~5_combout\ : std_logic;
SIGNAL \wrong_click~6_combout\ : std_logic;
SIGNAL \game_duration_timer[4]~1_combout\ : std_logic;
SIGNAL \game_duration_timer[4]~2_combout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~2COUT1_30\ : std_logic;
SIGNAL \Add2~23_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~25COUT1_31\ : std_logic;
SIGNAL \Add2~17_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~19COUT1_32\ : std_logic;
SIGNAL \Add2~11_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~13COUT1_33\ : std_logic;
SIGNAL \Add2~5_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \state~regout\ : std_logic;
SIGNAL \global_tick[3]~12_combout\ : std_logic;
SIGNAL \global_tick[3]~13_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \main~0_combout\ : std_logic;
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
SIGNAL \score_reset~reg0_regout\ : std_logic;
SIGNAL \score_timer[0]~14_combout\ : std_logic;
SIGNAL \score_timer[0]~20_combout\ : std_logic;
SIGNAL \score_timer[0]~17_combout\ : std_logic;
SIGNAL \score_timer[0]~22_combout\ : std_logic;
SIGNAL \score_timer[0]~11_combout\ : std_logic;
SIGNAL \score_timer[0]~23_combout\ : std_logic;
SIGNAL \score_timer[0]~3\ : std_logic;
SIGNAL \score_timer[0]~3COUT1_26\ : std_logic;
SIGNAL \score_timer[1]~5\ : std_logic;
SIGNAL \score_timer[1]~5COUT1_27\ : std_logic;
SIGNAL \score_timer[2]~7\ : std_logic;
SIGNAL \score_timer[2]~7COUT1_28\ : std_logic;
SIGNAL \score_timer[3]~9\ : std_logic;
SIGNAL \score_timer[3]~9COUT1_29\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1\ : std_logic;
SIGNAL \score_timer[0]~24_combout\ : std_logic;
SIGNAL \score_high~reg0_regout\ : std_logic;
SIGNAL \error_timer~10_combout\ : std_logic;
SIGNAL \error_timer[0]~3\ : std_logic;
SIGNAL \error_timer[0]~3COUT1_13\ : std_logic;
SIGNAL \error_timer[1]~5\ : std_logic;
SIGNAL \error_timer[1]~5COUT1_14\ : std_logic;
SIGNAL \error_timer[2]~7\ : std_logic;
SIGNAL \error_timer[2]~7COUT1_15\ : std_logic;
SIGNAL \error_timer[3]~9\ : std_logic;
SIGNAL \error_timer[3]~9COUT1_16\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1\ : std_logic;
SIGNAL \error_timer[1]~11_combout\ : std_logic;
SIGNAL \score_low~reg0_regout\ : std_logic;
SIGNAL error_timer : std_logic_vector(4 DOWNTO 0);
SIGNAL mole_active : std_logic_vector(8 DOWNTO 0);
SIGNAL global_tick : std_logic_vector(5 DOWNTO 0);
SIGNAL score_timer : std_logic_vector(4 DOWNTO 0);
SIGNAL \button~combout\ : std_logic_vector(8 DOWNTO 0);
SIGNAL game_duration_timer : std_logic_vector(4 DOWNTO 0);
SIGNAL mole_duration : std_logic_vector(8 DOWNTO 0);
SIGNAL lfsr : std_logic_vector(4 DOWNTO 0);
SIGNAL button_pressed : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_state~regout\ : std_logic;

BEGIN

ww_fastclock <= fastclock;
ww_slowclock <= slowclock;
ww_button <= button;
ww_startButton <= startButton;
leds <= ww_leds;
score_reset <= ww_score_reset;
score_high <= ww_score_high;
score_low <= ww_score_low;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_state~regout\ <= NOT \state~regout\;

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

-- Location: LC_X6_Y2_N9
slowclock_prev : maxv_lcell
-- Equation(s):
-- \game_duration_timer[4]~0\ = (\slowclock~combout\ & (((!slowclock_prev))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
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
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game_duration_timer[4]~0\,
	regout => \slowclock_prev~regout\);

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

-- Location: LC_X4_Y1_N5
start_pressed : maxv_lcell
-- Equation(s):
-- \score_reset~1\ = (\startButton~combout\ & (((!start_pressed & !\state~regout\))))
-- \start_pressed~regout\ = DFFEAS(\score_reset~1\, GLOBAL(\fastclock~combout\), VCC, , , \startButton~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \startButton~combout\,
	datac => \startButton~combout\,
	datad => \state~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \score_reset~1\,
	regout => \start_pressed~regout\);

-- Location: LC_X4_Y1_N4
\score_reset~0\ : maxv_lcell
-- Equation(s):
-- \score_reset~0_combout\ = (((\startButton~combout\ & !\start_pressed~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \startButton~combout\,
	datad => \start_pressed~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \score_reset~0_combout\);

-- Location: LC_X3_Y2_N5
\Add2~0\ : maxv_lcell
-- Equation(s):
-- \Add2~0_combout\ = ((!game_duration_timer(0)))
-- \Add2~2\ = CARRY(((game_duration_timer(0))))
-- \Add2~2COUT1_30\ = CARRY(((game_duration_timer(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => game_duration_timer(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~0_combout\,
	cout0 => \Add2~2\,
	cout1 => \Add2~2COUT1_30\);

-- Location: LC_X6_Y4_N4
\lfsr[3]\ : maxv_lcell
-- Equation(s):
-- \idx~0\ = (!lfsr(1) & (!lfsr(0) & (lfsr[3] & !lfsr(2))))
-- lfsr(3) = DFFEAS(\idx~0\, GLOBAL(\fastclock~combout\), VCC, , , lfsr(2), , , VCC)

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
	datab => lfsr(0),
	datac => lfsr(2),
	datad => lfsr(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \idx~0\,
	regout => lfsr(3));

-- Location: LC_X6_Y4_N8
\lfsr[4]\ : maxv_lcell
-- Equation(s):
-- lfsr(4) = DFFEAS((((!lfsr(3)))), GLOBAL(\fastclock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	datac => lfsr(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lfsr(4));

-- Location: LC_X6_Y4_N9
\lfsr[0]\ : maxv_lcell
-- Equation(s):
-- lfsr(0) = DFFEAS(((lfsr(2) $ (!lfsr(4)))), GLOBAL(\fastclock~combout\), VCC, , , , , , )

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
	datac => lfsr(2),
	datad => lfsr(4),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lfsr(0));

-- Location: LC_X6_Y4_N6
\lfsr[2]\ : maxv_lcell
-- Equation(s):
-- \idx~3\ = (lfsr(0) & (((!lfsr(3))))) # (!lfsr(0) & (lfsr(3) & ((lfsr(1)) # (lfsr[2]))))
-- lfsr(2) = DFFEAS(\idx~3\, GLOBAL(\fastclock~combout\), VCC, , , lfsr(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "32cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => lfsr(1),
	datab => lfsr(0),
	datac => lfsr(1),
	datad => lfsr(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \idx~3\,
	regout => lfsr(2));

-- Location: LC_X6_Y4_N5
\lfsr[1]\ : maxv_lcell
-- Equation(s):
-- \idx~2\ = (lfsr(0) & (((lfsr[1])))) # (!lfsr(0) & ((lfsr[1] & ((!lfsr(3)))) # (!lfsr[1] & (lfsr(2) & lfsr(3)))))
-- lfsr(1) = DFFEAS(\idx~2\, GLOBAL(\fastclock~combout\), VCC, , , lfsr(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c2f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => lfsr(2),
	datab => lfsr(0),
	datac => lfsr(0),
	datad => lfsr(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \idx~2\,
	regout => lfsr(1));

-- Location: LC_X6_Y4_N0
\idx~1\ : maxv_lcell
-- Equation(s):
-- \idx~1_combout\ = (lfsr(2) & ((lfsr(1)) # ((lfsr(0)) # (!lfsr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => lfsr(1),
	datab => lfsr(3),
	datac => lfsr(0),
	datad => lfsr(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \idx~1_combout\);

-- Location: LC_X4_Y3_N6
\Decoder0~10\ : maxv_lcell
-- Equation(s):
-- \Decoder0~10_combout\ = (\idx~3\ & (!\idx~2\ & (\idx~1_combout\ & \Decoder0~3_combout\)))

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
	dataa => \idx~3\,
	datab => \idx~2\,
	datac => \idx~1_combout\,
	datad => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~10_combout\);

-- Location: LC_X4_Y3_N5
\mole_duration[5]\ : maxv_lcell
-- Equation(s):
-- mole_duration(5) = DFFEAS((\Decoder0~10_combout\) # ((mole_duration(5) & ((!\Equal1~1_combout\) # (!mole_active(5))))), GLOBAL(\fastclock~combout\), VCC, , , , , !\state~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => mole_duration(5),
	datab => mole_active(5),
	datac => \Equal1~1_combout\,
	datad => \Decoder0~10_combout\,
	aclr => GND,
	sclr => \ALT_INV_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_duration(5));

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

-- Location: LC_X4_Y1_N0
\button_pressed[5]\ : maxv_lcell
-- Equation(s):
-- \score_timer~16\ = ((\button~combout\(5) & (!button_pressed[5])))
-- button_pressed(5) = DFFEAS(\score_timer~16\, GLOBAL(\fastclock~combout\), VCC, , , \button~combout\(5), , , VCC)

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
	combout => \score_timer~16\,
	regout => button_pressed(5));

-- Location: LC_X4_Y1_N2
\mole_active~5\ : maxv_lcell
-- Equation(s):
-- \mole_active~5_combout\ = ((mole_active(5) & ((button_pressed(5)) # (!\button~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => button_pressed(5),
	datab => \button~combout\(5),
	datad => mole_active(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mole_active~5_combout\);

-- Location: LC_X3_Y4_N1
\global_tick[0]\ : maxv_lcell
-- Equation(s):
-- global_tick(0) = DFFEAS(((!global_tick(0))), GLOBAL(\fastclock~combout\), VCC, , , , , \global_tick[3]~13_combout\, )
-- \global_tick[0]~1\ = CARRY(((global_tick(0))))
-- \global_tick[0]~1COUT1_15\ = CARRY(((global_tick(0))))

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
	datab => global_tick(0),
	aclr => GND,
	sclr => \global_tick[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => global_tick(0),
	cout0 => \global_tick[0]~1\,
	cout1 => \global_tick[0]~1COUT1_15\);

-- Location: LC_X3_Y4_N2
\global_tick[1]\ : maxv_lcell
-- Equation(s):
-- global_tick(1) = DFFEAS((global_tick(1) $ ((\global_tick[0]~1\))), GLOBAL(\fastclock~combout\), VCC, , , , , \global_tick[3]~13_combout\, )
-- \global_tick[1]~3\ = CARRY(((!\global_tick[0]~1\) # (!global_tick(1))))
-- \global_tick[1]~3COUT1_16\ = CARRY(((!\global_tick[0]~1COUT1_15\) # (!global_tick(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	datab => global_tick(1),
	aclr => GND,
	sclr => \global_tick[3]~13_combout\,
	cin0 => \global_tick[0]~1\,
	cin1 => \global_tick[0]~1COUT1_15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => global_tick(1),
	cout0 => \global_tick[1]~3\,
	cout1 => \global_tick[1]~3COUT1_16\);

-- Location: LC_X3_Y4_N3
\global_tick[2]\ : maxv_lcell
-- Equation(s):
-- global_tick(2) = DFFEAS(global_tick(2) $ ((((!\global_tick[1]~3\)))), GLOBAL(\fastclock~combout\), VCC, , , , , \global_tick[3]~13_combout\, )
-- \global_tick[2]~5\ = CARRY((global_tick(2) & ((!\global_tick[1]~3\))))
-- \global_tick[2]~5COUT1_17\ = CARRY((global_tick(2) & ((!\global_tick[1]~3COUT1_16\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => global_tick(2),
	aclr => GND,
	sclr => \global_tick[3]~13_combout\,
	cin0 => \global_tick[1]~3\,
	cin1 => \global_tick[1]~3COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => global_tick(2),
	cout0 => \global_tick[2]~5\,
	cout1 => \global_tick[2]~5COUT1_17\);

-- Location: LC_X3_Y4_N4
\global_tick[3]\ : maxv_lcell
-- Equation(s):
-- global_tick(3) = DFFEAS(global_tick(3) $ ((((\global_tick[2]~5\)))), GLOBAL(\fastclock~combout\), VCC, , , , , \global_tick[3]~13_combout\, )
-- \global_tick[3]~7\ = CARRY(((!\global_tick[2]~5COUT1_17\)) # (!global_tick(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => global_tick(3),
	aclr => GND,
	sclr => \global_tick[3]~13_combout\,
	cin0 => \global_tick[2]~5\,
	cin1 => \global_tick[2]~5COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => global_tick(3),
	cout => \global_tick[3]~7\);

-- Location: LC_X3_Y4_N5
\global_tick[4]\ : maxv_lcell
-- Equation(s):
-- global_tick(4) = DFFEAS(global_tick(4) $ ((((!\global_tick[3]~7\)))), GLOBAL(\fastclock~combout\), VCC, , , , , \global_tick[3]~13_combout\, )
-- \global_tick[4]~9\ = CARRY((global_tick(4) & ((!\global_tick[3]~7\))))
-- \global_tick[4]~9COUT1_18\ = CARRY((global_tick(4) & ((!\global_tick[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => global_tick(4),
	aclr => GND,
	sclr => \global_tick[3]~13_combout\,
	cin => \global_tick[3]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => global_tick(4),
	cout0 => \global_tick[4]~9\,
	cout1 => \global_tick[4]~9COUT1_18\);

-- Location: LC_X3_Y4_N6
\global_tick[5]\ : maxv_lcell
-- Equation(s):
-- global_tick(5) = DFFEAS(global_tick(5) $ (((((!\global_tick[3]~7\ & \global_tick[4]~9\) # (\global_tick[3]~7\ & \global_tick[4]~9COUT1_18\))))), GLOBAL(\fastclock~combout\), VCC, , , , , \global_tick[3]~13_combout\, )

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
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => global_tick(5),
	aclr => GND,
	sclr => \global_tick[3]~13_combout\,
	cin => \global_tick[3]~7\,
	cin0 => \global_tick[4]~9\,
	cin1 => \global_tick[4]~9COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => global_tick(5));

-- Location: LC_X3_Y4_N8
\Equal1~0\ : maxv_lcell
-- Equation(s):
-- \Equal1~0_combout\ = (!global_tick(3) & (!global_tick(0) & (!global_tick(1) & !global_tick(2))))

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
	dataa => global_tick(3),
	datab => global_tick(0),
	datac => global_tick(1),
	datad => global_tick(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~0_combout\);

-- Location: LC_X4_Y3_N4
\main~5\ : maxv_lcell
-- Equation(s):
-- \main~5_combout\ = (!global_tick(4) & (mole_active(5) & (!global_tick(5) & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => global_tick(4),
	datab => mole_active(5),
	datac => global_tick(5),
	datad => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \main~5_combout\);

-- Location: LC_X4_Y3_N7
\mole_active[5]\ : maxv_lcell
-- Equation(s):
-- mole_active(5) = DFFEAS((\Decoder0~10_combout\) # ((\mole_active~5_combout\ & ((mole_duration(5)) # (!\main~5_combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , !\state~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff8c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => mole_duration(5),
	datab => \mole_active~5_combout\,
	datac => \main~5_combout\,
	datad => \Decoder0~10_combout\,
	aclr => GND,
	sclr => \ALT_INV_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_active(5));

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

-- Location: LC_X4_Y4_N2
\button_pressed[7]\ : maxv_lcell
-- Equation(s):
-- \score_timer~19\ = (\button~combout\(7) & (((!button_pressed[7]))))
-- button_pressed(7) = DFFEAS(\score_timer~19\, GLOBAL(\fastclock~combout\), VCC, , , \button~combout\(7), , , VCC)

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
	combout => \score_timer~19\,
	regout => button_pressed(7));

-- Location: LC_X4_Y4_N7
\mole_active~7\ : maxv_lcell
-- Equation(s):
-- \mole_active~7_combout\ = (mole_active(7) & ((button_pressed(7)) # ((!\button~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => mole_active(7),
	datab => button_pressed(7),
	datac => \button~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mole_active~7_combout\);

-- Location: LC_X5_Y4_N2
\Decoder0~12\ : maxv_lcell
-- Equation(s):
-- \Decoder0~12_combout\ = (\idx~1_combout\ & (\idx~3\ & (\idx~2\ & \Decoder0~3_combout\)))

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
	dataa => \idx~1_combout\,
	datab => \idx~3\,
	datac => \idx~2\,
	datad => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~12_combout\);

-- Location: LC_X5_Y4_N7
\mole_duration[7]\ : maxv_lcell
-- Equation(s):
-- mole_duration(7) = DFFEAS((\Decoder0~12_combout\) # ((mole_duration(7) & ((!mole_active(7)) # (!\Equal1~1_combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , !\state~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff4c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \Equal1~1_combout\,
	datab => mole_duration(7),
	datac => mole_active(7),
	datad => \Decoder0~12_combout\,
	aclr => GND,
	sclr => \ALT_INV_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_duration(7));

-- Location: LC_X5_Y4_N4
\main~7\ : maxv_lcell
-- Equation(s):
-- \main~7_combout\ = (!global_tick(4) & (mole_active(7) & (\Equal1~0_combout\ & !global_tick(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => global_tick(4),
	datab => mole_active(7),
	datac => \Equal1~0_combout\,
	datad => global_tick(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \main~7_combout\);

-- Location: LC_X5_Y4_N3
\mole_active[7]\ : maxv_lcell
-- Equation(s):
-- mole_active(7) = DFFEAS((\Decoder0~12_combout\) # ((\mole_active~7_combout\ & ((mole_duration(7)) # (!\main~7_combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , !\state~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff8a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \mole_active~7_combout\,
	datab => mole_duration(7),
	datac => \main~7_combout\,
	datad => \Decoder0~12_combout\,
	aclr => GND,
	sclr => \ALT_INV_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_active(7));

-- Location: LC_X5_Y3_N3
\Decoder0~11\ : maxv_lcell
-- Equation(s):
-- \Decoder0~11_combout\ = (\idx~2\ & (\idx~1_combout\ & (!\idx~3\ & \Decoder0~3_combout\)))

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
	dataa => \idx~2\,
	datab => \idx~1_combout\,
	datac => \idx~3\,
	datad => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~11_combout\);

-- Location: LC_X5_Y3_N5
\mole_duration[6]\ : maxv_lcell
-- Equation(s):
-- mole_duration(6) = DFFEAS((\Decoder0~11_combout\) # ((mole_duration(6) & ((!\Equal1~1_combout\) # (!mole_active(6))))), GLOBAL(\fastclock~combout\), VCC, , , , , !\state~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => mole_duration(6),
	datab => mole_active(6),
	datac => \Equal1~1_combout\,
	datad => \Decoder0~11_combout\,
	aclr => GND,
	sclr => \ALT_INV_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_duration(6));

-- Location: LC_X5_Y2_N8
\main~6\ : maxv_lcell
-- Equation(s):
-- \main~6_combout\ = (mole_active(6) & (!global_tick(4) & (!global_tick(5) & \Equal1~0_combout\)))

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
	dataa => mole_active(6),
	datab => global_tick(4),
	datac => global_tick(5),
	datad => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \main~6_combout\);

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

-- Location: LC_X4_Y2_N6
\button_pressed[6]\ : maxv_lcell
-- Equation(s):
-- \score_timer~18\ = ((\button~combout\(6) & (!button_pressed[6])))
-- button_pressed(6) = DFFEAS(\score_timer~18\, GLOBAL(\fastclock~combout\), VCC, , , \button~combout\(6), , , VCC)

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
	combout => \score_timer~18\,
	regout => button_pressed(6));

-- Location: LC_X4_Y2_N2
\mole_active~6\ : maxv_lcell
-- Equation(s):
-- \mole_active~6_combout\ = (mole_active(6) & ((button_pressed(6)) # ((!\button~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0b0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => button_pressed(6),
	datab => \button~combout\(6),
	datac => mole_active(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mole_active~6_combout\);

-- Location: LC_X5_Y3_N4
\mole_active[6]\ : maxv_lcell
-- Equation(s):
-- mole_active(6) = DFFEAS((\Decoder0~11_combout\) # ((\mole_active~6_combout\ & ((mole_duration(6)) # (!\main~6_combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , !\state~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffb0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => mole_duration(6),
	datab => \main~6_combout\,
	datac => \mole_active~6_combout\,
	datad => \Decoder0~11_combout\,
	aclr => GND,
	sclr => \ALT_INV_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_active(6));

-- Location: LC_X5_Y3_N8
\Decoder0~9\ : maxv_lcell
-- Equation(s):
-- \Decoder0~9_combout\ = (!\idx~2\ & (\idx~1_combout\ & (!\idx~3\ & \Decoder0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \idx~2\,
	datab => \idx~1_combout\,
	datac => \idx~3\,
	datad => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~9_combout\);

-- Location: LC_X4_Y3_N8
\mole_duration[4]\ : maxv_lcell
-- Equation(s):
-- mole_duration(4) = DFFEAS((\Decoder0~9_combout\) # ((mole_duration(4) & ((!mole_active(4)) # (!\Equal1~1_combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , !\state~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => mole_duration(4),
	datab => \Equal1~1_combout\,
	datac => mole_active(4),
	datad => \Decoder0~9_combout\,
	aclr => GND,
	sclr => \ALT_INV_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_duration(4));

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

-- Location: LC_X4_Y1_N6
\button_pressed[4]\ : maxv_lcell
-- Equation(s):
-- \score_timer~15\ = (\button~combout\(4) & (((!button_pressed[4]))))
-- button_pressed(4) = DFFEAS(\score_timer~15\, GLOBAL(\fastclock~combout\), VCC, , , \button~combout\(4), , , VCC)

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
	combout => \score_timer~15\,
	regout => button_pressed(4));

-- Location: LC_X4_Y1_N3
\mole_active~4\ : maxv_lcell
-- Equation(s):
-- \mole_active~4_combout\ = ((mole_active(4) & ((button_pressed(4)) # (!\button~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \button~combout\(4),
	datab => button_pressed(4),
	datad => mole_active(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mole_active~4_combout\);

-- Location: LC_X4_Y4_N1
\main~4\ : maxv_lcell
-- Equation(s):
-- \main~4_combout\ = (!global_tick(4) & (mole_active(4) & (\Equal1~0_combout\ & !global_tick(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => global_tick(4),
	datab => mole_active(4),
	datac => \Equal1~0_combout\,
	datad => global_tick(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \main~4_combout\);

-- Location: LC_X5_Y3_N9
\mole_active[4]\ : maxv_lcell
-- Equation(s):
-- mole_active(4) = DFFEAS((\Decoder0~9_combout\) # ((\mole_active~4_combout\ & ((mole_duration(4)) # (!\main~4_combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , !\state~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff8c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => mole_duration(4),
	datab => \mole_active~4_combout\,
	datac => \main~4_combout\,
	datad => \Decoder0~9_combout\,
	aclr => GND,
	sclr => \ALT_INV_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_active(4));

-- Location: LC_X5_Y4_N6
\Mux0~2\ : maxv_lcell
-- Equation(s):
-- \Mux0~2_combout\ = (\idx~2\ & ((mole_active(6)) # ((\idx~3\)))) # (!\idx~2\ & (((mole_active(4) & !\idx~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => mole_active(6),
	datab => mole_active(4),
	datac => \idx~2\,
	datad => \idx~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~2_combout\);

-- Location: LC_X5_Y4_N0
\Mux0~3\ : maxv_lcell
-- Equation(s):
-- \Mux0~3_combout\ = (\idx~3\ & ((\Mux0~2_combout\ & ((mole_active(7)))) # (!\Mux0~2_combout\ & (mole_active(5))))) # (!\idx~3\ & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => mole_active(5),
	datab => mole_active(7),
	datac => \idx~3\,
	datad => \Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~3_combout\);

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

-- Location: LC_X4_Y4_N0
\button_pressed[3]\ : maxv_lcell
-- Equation(s):
-- \score_timer~13\ = (\button~combout\(3) & (((!button_pressed[3]))))
-- button_pressed(3) = DFFEAS(\score_timer~13\, GLOBAL(\fastclock~combout\), VCC, , , \button~combout\(3), , , VCC)

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
	dataa => \button~combout\(3),
	datac => \button~combout\(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \score_timer~13\,
	regout => button_pressed(3));

-- Location: LC_X4_Y4_N4
\mole_active~3\ : maxv_lcell
-- Equation(s):
-- \mole_active~3_combout\ = ((mole_active(3) & ((button_pressed(3)) # (!\button~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \button~combout\(3),
	datab => button_pressed(3),
	datad => mole_active(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mole_active~3_combout\);

-- Location: LC_X5_Y3_N1
\Decoder0~8\ : maxv_lcell
-- Equation(s):
-- \Decoder0~8_combout\ = (\idx~2\ & (!\idx~1_combout\ & (\idx~3\ & \Decoder0~3_combout\)))

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
	dataa => \idx~2\,
	datab => \idx~1_combout\,
	datac => \idx~3\,
	datad => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~8_combout\);

-- Location: LC_X5_Y3_N2
\mole_duration[3]\ : maxv_lcell
-- Equation(s):
-- mole_duration(3) = DFFEAS((\Decoder0~8_combout\) # ((mole_duration(3) & ((!\Equal1~1_combout\) # (!mole_active(3))))), GLOBAL(\fastclock~combout\), VCC, , , , , !\state~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff4c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => mole_active(3),
	datab => mole_duration(3),
	datac => \Equal1~1_combout\,
	datad => \Decoder0~8_combout\,
	aclr => GND,
	sclr => \ALT_INV_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_duration(3));

-- Location: LC_X5_Y2_N3
\main~3\ : maxv_lcell
-- Equation(s):
-- \main~3_combout\ = (mole_active(3) & (!global_tick(4) & (!global_tick(5) & \Equal1~0_combout\)))

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
	dataa => mole_active(3),
	datab => global_tick(4),
	datac => global_tick(5),
	datad => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \main~3_combout\);

-- Location: LC_X5_Y3_N6
\mole_active[3]\ : maxv_lcell
-- Equation(s):
-- mole_active(3) = DFFEAS((\Decoder0~8_combout\) # ((\mole_active~3_combout\ & ((mole_duration(3)) # (!\main~3_combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , !\state~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff8a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \mole_active~3_combout\,
	datab => mole_duration(3),
	datac => \main~3_combout\,
	datad => \Decoder0~8_combout\,
	aclr => GND,
	sclr => \ALT_INV_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_active(3));

-- Location: LC_X5_Y2_N1
\main~1\ : maxv_lcell
-- Equation(s):
-- \main~1_combout\ = (mole_active(1) & (!global_tick(4) & (!global_tick(5) & \Equal1~0_combout\)))

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
	dataa => mole_active(1),
	datab => global_tick(4),
	datac => global_tick(5),
	datad => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \main~1_combout\);

-- Location: LC_X6_Y4_N7
\Decoder0~4\ : maxv_lcell
-- Equation(s):
-- \Decoder0~4_combout\ = (!lfsr(2) & (((!lfsr(0) & lfsr(3))) # (!lfsr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1311",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => lfsr(1),
	datab => lfsr(2),
	datac => lfsr(0),
	datad => lfsr(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~4_combout\);

-- Location: LC_X7_Y3_N8
\Decoder0~6\ : maxv_lcell
-- Equation(s):
-- \Decoder0~6_combout\ = ((\Decoder0~4_combout\ & (\idx~3\ & \Decoder0~3_combout\)))

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
	datab => \Decoder0~4_combout\,
	datac => \idx~3\,
	datad => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~6_combout\);

-- Location: LC_X7_Y3_N9
\mole_duration[1]\ : maxv_lcell
-- Equation(s):
-- mole_duration(1) = DFFEAS((\Decoder0~6_combout\) # ((mole_duration(1) & ((!\Equal1~1_combout\) # (!mole_active(1))))), GLOBAL(\fastclock~combout\), VCC, , , , , !\state~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff4c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => mole_active(1),
	datab => mole_duration(1),
	datac => \Equal1~1_combout\,
	datad => \Decoder0~6_combout\,
	aclr => GND,
	sclr => \ALT_INV_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_duration(1));

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

-- Location: LC_X5_Y2_N5
\button_pressed[1]\ : maxv_lcell
-- Equation(s):
-- \score_timer~10\ = (\button~combout\(1) & (((!button_pressed[1]))))
-- button_pressed(1) = DFFEAS(\score_timer~10\, GLOBAL(\fastclock~combout\), VCC, , , \button~combout\(1), , , VCC)

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
	combout => \score_timer~10\,
	regout => button_pressed(1));

-- Location: LC_X5_Y2_N9
\mole_active~1\ : maxv_lcell
-- Equation(s):
-- \mole_active~1_combout\ = ((mole_active(1) & ((button_pressed(1)) # (!\button~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \button~combout\(1),
	datac => button_pressed(1),
	datad => mole_active(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mole_active~1_combout\);

-- Location: LC_X7_Y3_N2
\mole_active[1]\ : maxv_lcell
-- Equation(s):
-- mole_active(1) = DFFEAS((\Decoder0~6_combout\) # ((\mole_active~1_combout\ & ((mole_duration(1)) # (!\main~1_combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , !\state~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffd0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \main~1_combout\,
	datab => mole_duration(1),
	datac => \mole_active~1_combout\,
	datad => \Decoder0~6_combout\,
	aclr => GND,
	sclr => \ALT_INV_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_active(1));

-- Location: LC_X5_Y4_N8
\Mux0~0\ : maxv_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (\idx~2\ & (((\idx~3\)))) # (!\idx~2\ & ((\idx~3\ & (mole_active(1))) # (!\idx~3\ & ((mole_active(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => mole_active(1),
	datab => mole_active(0),
	datac => \idx~2\,
	datad => \idx~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: LC_X5_Y4_N9
\Mux0~1\ : maxv_lcell
-- Equation(s):
-- \Mux0~1_combout\ = (\idx~2\ & ((\Mux0~0_combout\ & ((mole_active(3)))) # (!\Mux0~0_combout\ & (mole_active(2))))) # (!\idx~2\ & (((\Mux0~0_combout\))))

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
	datab => \idx~2\,
	datac => mole_active(3),
	datad => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~1_combout\);

-- Location: LC_X5_Y4_N1
\Decoder0~2\ : maxv_lcell
-- Equation(s):
-- \Decoder0~2_combout\ = (\idx~0\) # ((\idx~1_combout\ & (!\Mux0~3_combout\)) # (!\idx~1_combout\ & ((!\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cedf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \idx~1_combout\,
	datab => \idx~0\,
	datac => \Mux0~3_combout\,
	datad => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~2_combout\);

-- Location: LC_X5_Y3_N0
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

-- Location: LC_X6_Y3_N9
\Add5~1\ : maxv_lcell
-- Equation(s):
-- \Add5~1_combout\ = (mole_active(1) $ (mole_active(2) $ (mole_active(0))))

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
	datab => mole_active(1),
	datac => mole_active(2),
	datad => mole_active(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~1_combout\);

-- Location: LC_X6_Y3_N7
\Add7~2\ : maxv_lcell
-- Equation(s):
-- \Add7~2_combout\ = (mole_active(3) $ (mole_active(4) $ (\Add5~1_combout\)))

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
	datac => mole_active(4),
	datad => \Add5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~2_combout\);

-- Location: LC_X6_Y3_N1
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

-- Location: LC_X4_Y3_N9
\Add8~0\ : maxv_lcell
-- Equation(s):
-- \Add8~0_combout\ = (((mole_active(5) & mole_active(6))))

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
	datac => mole_active(5),
	datad => mole_active(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~0_combout\);

-- Location: LC_X7_Y3_N0
\Add5~0\ : maxv_lcell
-- Equation(s):
-- \Add5~0_combout\ = (mole_active(2) & (((mole_active(0)) # (mole_active(1))))) # (!mole_active(2) & (((mole_active(0) & mole_active(1)))))

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
	dataa => mole_active(2),
	datac => mole_active(0),
	datad => mole_active(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~0_combout\);

-- Location: LC_X5_Y3_N7
\Add7~1\ : maxv_lcell
-- Equation(s):
-- \Add7~1_combout\ = \Add5~0_combout\ $ (((mole_active(3) & ((mole_active(4)) # (\Add5~1_combout\))) # (!mole_active(3) & (mole_active(4) & \Add5~1_combout\))))

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
	dataa => mole_active(3),
	datab => mole_active(4),
	datac => \Add5~1_combout\,
	datad => \Add5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~1_combout\);

-- Location: LC_X6_Y3_N2
\Add9~5\ : maxv_lcell
-- Equation(s):
-- \Add9~5_combout\ = \Add8~0_combout\ $ (\Add7~1_combout\ $ ((\Add9~12\)))
-- \Add9~7\ = CARRY((\Add8~0_combout\ & (!\Add7~1_combout\ & !\Add9~12\)) # (!\Add8~0_combout\ & ((!\Add9~12\) # (!\Add7~1_combout\))))
-- \Add9~7COUT1_22\ = CARRY((\Add8~0_combout\ & (!\Add7~1_combout\ & !\Add9~12COUT1_21\)) # (!\Add8~0_combout\ & ((!\Add9~12COUT1_21\) # (!\Add7~1_combout\))))

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
	datab => \Add7~1_combout\,
	cin0 => \Add9~12\,
	cin1 => \Add9~12COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~5_combout\,
	cout0 => \Add9~7\,
	cout1 => \Add9~7COUT1_22\);

-- Location: LC_X6_Y3_N0
\Add11~0\ : maxv_lcell
-- Equation(s):
-- \Add11~0_combout\ = (\Add9~5_combout\ & ((mole_active(8) & ((mole_active(7)) # (\Add9~10_combout\))) # (!mole_active(8) & (mole_active(7) & \Add9~10_combout\))))

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
	dataa => mole_active(8),
	datab => mole_active(7),
	datac => \Add9~10_combout\,
	datad => \Add9~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add11~0_combout\);

-- Location: LC_X6_Y3_N8
\Add7~0\ : maxv_lcell
-- Equation(s):
-- \Add7~0_combout\ = (\Add5~0_combout\ & ((mole_active(4) & ((mole_active(3)) # (\Add5~1_combout\))) # (!mole_active(4) & (mole_active(3) & \Add5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e080",
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

-- Location: LC_X6_Y3_N3
\Add9~0\ : maxv_lcell
-- Equation(s):
-- \Add9~0_combout\ = \Add7~0_combout\ $ ((((!\Add9~7\))))
-- \Add9~2\ = CARRY((\Add7~0_combout\ & ((!\Add9~7\))))
-- \Add9~2COUT1_23\ = CARRY((\Add7~0_combout\ & ((!\Add9~7COUT1_22\))))

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
	dataa => \Add7~0_combout\,
	cin0 => \Add9~7\,
	cin1 => \Add9~7COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~0_combout\,
	cout0 => \Add9~2\,
	cout1 => \Add9~2COUT1_23\);

-- Location: LC_X6_Y3_N4
\Add9~15\ : maxv_lcell
-- Equation(s):
-- \Add9~15_combout\ = (((\Add9~2\)))

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
	cin0 => \Add9~2\,
	cin1 => \Add9~2COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~15_combout\);

-- Location: LC_X6_Y3_N5
\Decoder0~1\ : maxv_lcell
-- Equation(s):
-- \Decoder0~1_combout\ = ((\Add11~0_combout\ & (\Add9~15_combout\ & \Add9~0_combout\)) # (!\Add11~0_combout\ & (!\Add9~15_combout\ & !\Add9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add11~0_combout\,
	datac => \Add9~15_combout\,
	datad => \Add9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~1_combout\);

-- Location: LC_X4_Y3_N2
\Decoder0~13\ : maxv_lcell
-- Equation(s):
-- \Decoder0~13_combout\ = (\Decoder0~2_combout\ & (\idx~0\ & (\Decoder0~0_combout\ & \Decoder0~1_combout\)))

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
	dataa => \Decoder0~2_combout\,
	datab => \idx~0\,
	datac => \Decoder0~0_combout\,
	datad => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~13_combout\);

-- Location: LC_X4_Y3_N3
\mole_duration[8]\ : maxv_lcell
-- Equation(s):
-- mole_duration(8) = DFFEAS((\Decoder0~13_combout\) # ((mole_duration(8) & ((!\Equal1~1_combout\) # (!mole_active(8))))), GLOBAL(\fastclock~combout\), VCC, , , , , !\state~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => mole_duration(8),
	datab => mole_active(8),
	datac => \Equal1~1_combout\,
	datad => \Decoder0~13_combout\,
	aclr => GND,
	sclr => \ALT_INV_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_duration(8));

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

-- Location: LC_X4_Y2_N1
\button_pressed[8]\ : maxv_lcell
-- Equation(s):
-- \score_timer~21\ = (\button~combout\(8) & (((!button_pressed[8]))))
-- button_pressed(8) = DFFEAS(\score_timer~21\, GLOBAL(\fastclock~combout\), VCC, , , \button~combout\(8), , , VCC)

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
	dataa => \button~combout\(8),
	datac => \button~combout\(8),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \score_timer~21\,
	regout => button_pressed(8));

-- Location: LC_X4_Y2_N5
\mole_active~8\ : maxv_lcell
-- Equation(s):
-- \mole_active~8_combout\ = ((mole_active(8) & ((button_pressed(8)) # (!\button~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \button~combout\(8),
	datab => button_pressed(8),
	datad => mole_active(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mole_active~8_combout\);

-- Location: LC_X4_Y3_N0
\main~8\ : maxv_lcell
-- Equation(s):
-- \main~8_combout\ = (!global_tick(4) & (mole_active(8) & (!global_tick(5) & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => global_tick(4),
	datab => mole_active(8),
	datac => global_tick(5),
	datad => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \main~8_combout\);

-- Location: LC_X4_Y3_N1
\mole_active[8]\ : maxv_lcell
-- Equation(s):
-- mole_active(8) = DFFEAS((\Decoder0~13_combout\) # ((\mole_active~8_combout\ & ((mole_duration(8)) # (!\main~8_combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , !\state~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff8c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => mole_duration(8),
	datab => \mole_active~8_combout\,
	datac => \main~8_combout\,
	datad => \Decoder0~13_combout\,
	aclr => GND,
	sclr => \ALT_INV_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_active(8));

-- Location: LC_X6_Y4_N3
\Decoder0~0\ : maxv_lcell
-- Equation(s):
-- \Decoder0~0_combout\ = ((\Equal1~1_combout\ & ((!mole_active(8)) # (!\idx~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \idx~0\,
	datac => mole_active(8),
	datad => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~0_combout\);

-- Location: LC_X6_Y3_N6
\Decoder0~3\ : maxv_lcell
-- Equation(s):
-- \Decoder0~3_combout\ = (!\idx~0\ & (\Decoder0~0_combout\ & (\Decoder0~2_combout\ & \Decoder0~1_combout\)))

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
	dataa => \idx~0\,
	datab => \Decoder0~0_combout\,
	datac => \Decoder0~2_combout\,
	datad => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~3_combout\);

-- Location: LC_X7_Y3_N1
\Decoder0~7\ : maxv_lcell
-- Equation(s):
-- \Decoder0~7_combout\ = (!\idx~1_combout\ & (\idx~2\ & (!\idx~3\ & \Decoder0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \idx~1_combout\,
	datab => \idx~2\,
	datac => \idx~3\,
	datad => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~7_combout\);

-- Location: LC_X7_Y3_N5
\mole_duration[2]\ : maxv_lcell
-- Equation(s):
-- mole_duration(2) = DFFEAS((\Decoder0~7_combout\) # ((mole_duration(2) & ((!\Equal1~1_combout\) # (!mole_active(2))))), GLOBAL(\fastclock~combout\), VCC, , , , , !\state~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => mole_duration(2),
	datab => mole_active(2),
	datac => \Equal1~1_combout\,
	datad => \Decoder0~7_combout\,
	aclr => GND,
	sclr => \ALT_INV_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_duration(2));

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

-- Location: LC_X4_Y4_N3
\button_pressed[2]\ : maxv_lcell
-- Equation(s):
-- \score_timer~12\ = ((\button~combout\(2) & (!button_pressed[2])))
-- button_pressed(2) = DFFEAS(\score_timer~12\, GLOBAL(\fastclock~combout\), VCC, , , \button~combout\(2), , , VCC)

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
	datab => \button~combout\(2),
	datac => \button~combout\(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \score_timer~12\,
	regout => button_pressed(2));

-- Location: LC_X4_Y4_N9
\mole_active~2\ : maxv_lcell
-- Equation(s):
-- \mole_active~2_combout\ = ((mole_active(2) & ((button_pressed(2)) # (!\button~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => button_pressed(2),
	datab => \button~combout\(2),
	datad => mole_active(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mole_active~2_combout\);

-- Location: LC_X5_Y4_N5
\main~2\ : maxv_lcell
-- Equation(s):
-- \main~2_combout\ = (\Equal1~0_combout\ & (!global_tick(4) & (mole_active(2) & !global_tick(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => global_tick(4),
	datac => mole_active(2),
	datad => global_tick(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \main~2_combout\);

-- Location: LC_X7_Y3_N6
\mole_active[2]\ : maxv_lcell
-- Equation(s):
-- mole_active(2) = DFFEAS((\Decoder0~7_combout\) # ((\mole_active~2_combout\ & ((mole_duration(2)) # (!\main~2_combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , !\state~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff8c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => mole_duration(2),
	datab => \mole_active~2_combout\,
	datac => \main~2_combout\,
	datad => \Decoder0~7_combout\,
	aclr => GND,
	sclr => \ALT_INV_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_active(2));

-- Location: LC_X4_Y4_N6
\wrong_click~2\ : maxv_lcell
-- Equation(s):
-- \wrong_click~2_combout\ = (mole_active(2) & (!mole_active(3) & (\score_timer~13\))) # (!mole_active(2) & ((\score_timer~12\) # ((!mole_active(3) & \score_timer~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7530",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => mole_active(2),
	datab => mole_active(3),
	datac => \score_timer~13\,
	datad => \score_timer~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrong_click~2_combout\);

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

-- Location: LC_X5_Y2_N2
\button_pressed[0]\ : maxv_lcell
-- Equation(s):
-- \wrong_click~0\ = ((\button~combout\(0) & (!button_pressed[0])))
-- button_pressed(0) = DFFEAS(\wrong_click~0\, GLOBAL(\fastclock~combout\), VCC, , , \button~combout\(0), , , VCC)

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
	datab => \button~combout\(0),
	datac => \button~combout\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrong_click~0\,
	regout => button_pressed(0));

-- Location: LC_X5_Y2_N6
\wrong_click~1\ : maxv_lcell
-- Equation(s):
-- \wrong_click~1_combout\ = (\score_timer~10\ & (((!mole_active(0) & \wrong_click~0\)) # (!mole_active(1)))) # (!\score_timer~10\ & (((!mole_active(0) & \wrong_click~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \score_timer~10\,
	datab => mole_active(1),
	datac => mole_active(0),
	datad => \wrong_click~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrong_click~1_combout\);

-- Location: LC_X4_Y1_N1
\wrong_click~3\ : maxv_lcell
-- Equation(s):
-- \wrong_click~3_combout\ = (mole_active(5) & (!mole_active(4) & (\score_timer~15\))) # (!mole_active(5) & ((\score_timer~16\) # ((!mole_active(4) & \score_timer~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7530",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => mole_active(5),
	datab => mole_active(4),
	datac => \score_timer~15\,
	datad => \score_timer~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrong_click~3_combout\);

-- Location: LC_X4_Y2_N7
\wrong_click~4\ : maxv_lcell
-- Equation(s):
-- \wrong_click~4_combout\ = (mole_active(6) & (!mole_active(7) & (\score_timer~19\))) # (!mole_active(6) & ((\score_timer~18\) # ((!mole_active(7) & \score_timer~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7530",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => mole_active(6),
	datab => mole_active(7),
	datac => \score_timer~19\,
	datad => \score_timer~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrong_click~4_combout\);

-- Location: LC_X4_Y2_N8
\wrong_click~5\ : maxv_lcell
-- Equation(s):
-- \wrong_click~5_combout\ = (\wrong_click~3_combout\) # ((\wrong_click~4_combout\) # ((\score_timer~21\ & !mole_active(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \score_timer~21\,
	datab => mole_active(8),
	datac => \wrong_click~3_combout\,
	datad => \wrong_click~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrong_click~5_combout\);

-- Location: LC_X4_Y2_N0
\wrong_click~6\ : maxv_lcell
-- Equation(s):
-- \wrong_click~6_combout\ = ((\wrong_click~2_combout\) # ((\wrong_click~1_combout\) # (\wrong_click~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wrong_click~2_combout\,
	datac => \wrong_click~1_combout\,
	datad => \wrong_click~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrong_click~6_combout\);

-- Location: LC_X4_Y2_N3
\game_duration_timer[4]~1\ : maxv_lcell
-- Equation(s):
-- \game_duration_timer[4]~1_combout\ = (((\state~regout\ & \LessThan2~1_combout\)))

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
	datac => \state~regout\,
	datad => \LessThan2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game_duration_timer[4]~1_combout\);

-- Location: LC_X4_Y2_N4
\game_duration_timer[4]~2\ : maxv_lcell
-- Equation(s):
-- \game_duration_timer[4]~2_combout\ = (\score_reset~1\) # ((\game_duration_timer[4]~1_combout\ & ((\game_duration_timer[4]~0\) # (\wrong_click~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \score_reset~1\,
	datab => \game_duration_timer[4]~0\,
	datac => \wrong_click~6_combout\,
	datad => \game_duration_timer[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \game_duration_timer[4]~2_combout\);

-- Location: LC_X3_Y3_N3
\game_duration_timer[0]\ : maxv_lcell
-- Equation(s):
-- game_duration_timer(0) = DFFEAS((\game_duration_timer[4]~2_combout\ & (((\state~regout\ & \Add2~0_combout\)))) # (!\game_duration_timer[4]~2_combout\ & (game_duration_timer(0))), GLOBAL(\fastclock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => game_duration_timer(0),
	datab => \state~regout\,
	datac => \Add2~0_combout\,
	datad => \game_duration_timer[4]~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => game_duration_timer(0));

-- Location: LC_X3_Y2_N6
\Add2~23\ : maxv_lcell
-- Equation(s):
-- \Add2~23_combout\ = (game_duration_timer(1) $ ((\Add2~2\)))
-- \Add2~25\ = CARRY(((game_duration_timer(1) & !\Add2~2\)))
-- \Add2~25COUT1_31\ = CARRY(((game_duration_timer(1) & !\Add2~2COUT1_30\)))

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
	cin0 => \Add2~2\,
	cin1 => \Add2~2COUT1_30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~23_combout\,
	cout0 => \Add2~25\,
	cout1 => \Add2~25COUT1_31\);

-- Location: LC_X3_Y3_N2
\game_duration_timer[1]\ : maxv_lcell
-- Equation(s):
-- game_duration_timer(1) = DFFEAS(((\state~regout\ & (!\Add2~23_combout\))), GLOBAL(\fastclock~combout\), VCC, , \game_duration_timer[4]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	datab => \state~regout\,
	datac => \Add2~23_combout\,
	aclr => GND,
	ena => \game_duration_timer[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => game_duration_timer(1));

-- Location: LC_X3_Y2_N7
\Add2~17\ : maxv_lcell
-- Equation(s):
-- \Add2~17_combout\ = game_duration_timer(2) $ ((((!\Add2~25\))))
-- \Add2~19\ = CARRY(((!\Add2~25\)) # (!game_duration_timer(2)))
-- \Add2~19COUT1_32\ = CARRY(((!\Add2~25COUT1_31\)) # (!game_duration_timer(2)))

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
	cin0 => \Add2~25\,
	cin1 => \Add2~25COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~17_combout\,
	cout0 => \Add2~19\,
	cout1 => \Add2~19COUT1_32\);

-- Location: LC_X3_Y2_N4
\game_duration_timer[2]\ : maxv_lcell
-- Equation(s):
-- game_duration_timer(2) = DFFEAS(((\state~regout\ & (!\Add2~17_combout\))), GLOBAL(\fastclock~combout\), VCC, , \game_duration_timer[4]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	datab => \state~regout\,
	datac => \Add2~17_combout\,
	aclr => GND,
	ena => \game_duration_timer[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => game_duration_timer(2));

-- Location: LC_X3_Y2_N8
\Add2~11\ : maxv_lcell
-- Equation(s):
-- \Add2~11_combout\ = (game_duration_timer(3) $ ((\Add2~19\)))
-- \Add2~13\ = CARRY(((game_duration_timer(3) & !\Add2~19\)))
-- \Add2~13COUT1_33\ = CARRY(((game_duration_timer(3) & !\Add2~19COUT1_32\)))

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
	cin0 => \Add2~19\,
	cin1 => \Add2~19COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~11_combout\,
	cout0 => \Add2~13\,
	cout1 => \Add2~13COUT1_33\);

-- Location: LC_X3_Y2_N0
\game_duration_timer[3]\ : maxv_lcell
-- Equation(s):
-- game_duration_timer(3) = DFFEAS((((\state~regout\ & !\Add2~11_combout\))), GLOBAL(\fastclock~combout\), VCC, , \game_duration_timer[4]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	datac => \state~regout\,
	datad => \Add2~11_combout\,
	aclr => GND,
	ena => \game_duration_timer[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => game_duration_timer(3));

-- Location: LC_X3_Y2_N9
\Add2~5\ : maxv_lcell
-- Equation(s):
-- \Add2~5_combout\ = ((\Add2~13\ $ (!game_duration_timer(4))))

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
	cin0 => \Add2~13\,
	cin1 => \Add2~13COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~5_combout\);

-- Location: LC_X3_Y2_N3
\game_duration_timer[4]\ : maxv_lcell
-- Equation(s):
-- game_duration_timer(4) = DFFEAS((((\state~regout\ & !\Add2~5_combout\))), GLOBAL(\fastclock~combout\), VCC, , \game_duration_timer[4]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	datac => \state~regout\,
	datad => \Add2~5_combout\,
	aclr => GND,
	ena => \game_duration_timer[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => game_duration_timer(4));

-- Location: LC_X3_Y2_N1
\LessThan2~0\ : maxv_lcell
-- Equation(s):
-- \LessThan2~0_combout\ = (((!game_duration_timer(4)) # (!game_duration_timer(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => game_duration_timer(3),
	datad => game_duration_timer(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~0_combout\);

-- Location: LC_X3_Y2_N2
\LessThan2~1\ : maxv_lcell
-- Equation(s):
-- \LessThan2~1_combout\ = (((game_duration_timer(0)) # (\LessThan2~0_combout\)) # (!game_duration_timer(1))) # (!game_duration_timer(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => game_duration_timer(2),
	datab => game_duration_timer(1),
	datac => game_duration_timer(0),
	datad => \LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~1_combout\);

-- Location: LC_X6_Y2_N3
state : maxv_lcell
-- Equation(s):
-- \state~regout\ = DFFEAS((\state~regout\ & (((\LessThan2~1_combout\)) # (!\game_duration_timer[4]~0\))) # (!\state~regout\ & (((\score_reset~0_combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa72",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \state~regout\,
	datab => \game_duration_timer[4]~0\,
	datac => \score_reset~0_combout\,
	datad => \LessThan2~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state~regout\);

-- Location: LC_X3_Y4_N9
\global_tick[3]~12\ : maxv_lcell
-- Equation(s):
-- \global_tick[3]~12_combout\ = (((!global_tick(1)) # (!global_tick(2))) # (!global_tick(0))) # (!global_tick(3))

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
	dataa => global_tick(3),
	datab => global_tick(0),
	datac => global_tick(2),
	datad => global_tick(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \global_tick[3]~12_combout\);

-- Location: LC_X3_Y4_N7
\global_tick[3]~13\ : maxv_lcell
-- Equation(s):
-- \global_tick[3]~13_combout\ = ((global_tick(4) & (global_tick(5) & !\global_tick[3]~12_combout\))) # (!\state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33b3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => global_tick(4),
	datab => \state~regout\,
	datac => global_tick(5),
	datad => \global_tick[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \global_tick[3]~13_combout\);

-- Location: LC_X3_Y4_N0
\Equal1~1\ : maxv_lcell
-- Equation(s):
-- \Equal1~1_combout\ = (!global_tick(4) & (((!global_tick(5) & \Equal1~0_combout\))))

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
	datad => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~1_combout\);

-- Location: LC_X7_Y3_N3
\Decoder0~5\ : maxv_lcell
-- Equation(s):
-- \Decoder0~5_combout\ = (!\idx~3\ & (((\Decoder0~4_combout\ & \Decoder0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \idx~3\,
	datac => \Decoder0~4_combout\,
	datad => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~5_combout\);

-- Location: LC_X7_Y3_N4
\mole_duration[0]\ : maxv_lcell
-- Equation(s):
-- mole_duration(0) = DFFEAS((\Decoder0~5_combout\) # ((mole_duration(0) & ((!\Equal1~1_combout\) # (!mole_active(0))))), GLOBAL(\fastclock~combout\), VCC, , , , , !\state~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => mole_duration(0),
	datab => mole_active(0),
	datac => \Equal1~1_combout\,
	datad => \Decoder0~5_combout\,
	aclr => GND,
	sclr => \ALT_INV_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_duration(0));

-- Location: LC_X5_Y2_N4
\main~0\ : maxv_lcell
-- Equation(s):
-- \main~0_combout\ = (!global_tick(5) & (!global_tick(4) & (mole_active(0) & \Equal1~0_combout\)))

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
	dataa => global_tick(5),
	datab => global_tick(4),
	datac => mole_active(0),
	datad => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \main~0_combout\);

-- Location: LC_X5_Y2_N0
\mole_active~0\ : maxv_lcell
-- Equation(s):
-- \mole_active~0_combout\ = ((mole_active(0) & ((button_pressed(0)) # (!\button~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => mole_active(0),
	datac => button_pressed(0),
	datad => \button~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mole_active~0_combout\);

-- Location: LC_X7_Y3_N7
\mole_active[0]\ : maxv_lcell
-- Equation(s):
-- mole_active(0) = DFFEAS((\Decoder0~5_combout\) # ((\mole_active~0_combout\ & ((mole_duration(0)) # (!\main~0_combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , !\state~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffb0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => mole_duration(0),
	datab => \main~0_combout\,
	datac => \mole_active~0_combout\,
	datad => \Decoder0~5_combout\,
	aclr => GND,
	sclr => \ALT_INV_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_active(0));

-- Location: LC_X6_Y2_N0
\leds[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[0]~reg0_regout\ = DFFEAS((\state~regout\ & (((mole_active(0))))) # (!\state~regout\ & (\slowclock~combout\ & ((!\score_reset~0_combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc0a",
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
	datac => \score_reset~0_combout\,
	datad => \state~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[0]~reg0_regout\);

-- Location: LC_X6_Y2_N6
\leds[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[1]~reg0_regout\ = DFFEAS((\state~regout\ & (((mole_active(1))))) # (!\state~regout\ & (\slowclock~combout\ & ((!\score_reset~0_combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \slowclock~combout\,
	datab => mole_active(1),
	datac => \score_reset~0_combout\,
	datad => \state~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[1]~reg0_regout\);

-- Location: LC_X6_Y2_N2
\leds[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[2]~reg0_regout\ = DFFEAS((\state~regout\ & (((mole_active(2))))) # (!\state~regout\ & (\slowclock~combout\ & ((!\score_reset~0_combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \slowclock~combout\,
	datab => mole_active(2),
	datac => \score_reset~0_combout\,
	datad => \state~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[2]~reg0_regout\);

-- Location: LC_X6_Y2_N4
\leds[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[3]~reg0_regout\ = DFFEAS((\state~regout\ & (((mole_active(3))))) # (!\state~regout\ & (\slowclock~combout\ & ((!\score_reset~0_combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \slowclock~combout\,
	datab => mole_active(3),
	datac => \score_reset~0_combout\,
	datad => \state~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[3]~reg0_regout\);

-- Location: LC_X6_Y2_N7
\leds[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[4]~reg0_regout\ = DFFEAS((\state~regout\ & (((mole_active(4))))) # (!\state~regout\ & (\slowclock~combout\ & ((!\score_reset~0_combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \slowclock~combout\,
	datab => mole_active(4),
	datac => \score_reset~0_combout\,
	datad => \state~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[4]~reg0_regout\);

-- Location: LC_X6_Y2_N8
\leds[5]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[5]~reg0_regout\ = DFFEAS((\state~regout\ & (((mole_active(5))))) # (!\state~regout\ & (\slowclock~combout\ & ((!\score_reset~0_combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \slowclock~combout\,
	datab => mole_active(5),
	datac => \score_reset~0_combout\,
	datad => \state~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[5]~reg0_regout\);

-- Location: LC_X6_Y2_N1
\leds[6]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[6]~reg0_regout\ = DFFEAS((\state~regout\ & (((mole_active(6))))) # (!\state~regout\ & (\slowclock~combout\ & ((!\score_reset~0_combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \slowclock~combout\,
	datab => mole_active(6),
	datac => \score_reset~0_combout\,
	datad => \state~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[6]~reg0_regout\);

-- Location: LC_X6_Y2_N5
\leds[7]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[7]~reg0_regout\ = DFFEAS((\state~regout\ & (mole_active(7))) # (!\state~regout\ & (((!\score_reset~0_combout\ & \slowclock~combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => mole_active(7),
	datab => \score_reset~0_combout\,
	datac => \slowclock~combout\,
	datad => \state~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[7]~reg0_regout\);

-- Location: LC_X5_Y1_N6
\leds[8]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[8]~reg0_regout\ = DFFEAS((\state~regout\ & (((mole_active(8))))) # (!\state~regout\ & (\slowclock~combout\ & ((!\score_reset~0_combout\)))), GLOBAL(\fastclock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0ca",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => \slowclock~combout\,
	datab => mole_active(8),
	datac => \state~regout\,
	datad => \score_reset~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[8]~reg0_regout\);

-- Location: LC_X4_Y1_N9
\score_reset~reg0\ : maxv_lcell
-- Equation(s):
-- \score_reset~reg0_regout\ = DFFEAS(GND, GLOBAL(\fastclock~combout\), VCC, , , \score_reset~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	datac => \score_reset~1\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \score_reset~reg0_regout\);

-- Location: LC_X4_Y4_N5
\score_timer[0]~14\ : maxv_lcell
-- Equation(s):
-- \score_timer[0]~14_combout\ = (mole_active(2) & (!\score_timer~12\ & ((!\score_timer~13\) # (!mole_active(3))))) # (!mole_active(2) & (((!\score_timer~13\)) # (!mole_active(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "153f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => mole_active(2),
	datab => mole_active(3),
	datac => \score_timer~13\,
	datad => \score_timer~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \score_timer[0]~14_combout\);

-- Location: LC_X4_Y4_N8
\score_timer[0]~20\ : maxv_lcell
-- Equation(s):
-- \score_timer[0]~20_combout\ = (mole_active(7) & (!\score_timer~19\ & ((!\score_timer~18\) # (!mole_active(6))))) # (!mole_active(7) & (((!\score_timer~18\) # (!mole_active(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0777",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => mole_active(7),
	datab => \score_timer~19\,
	datac => mole_active(6),
	datad => \score_timer~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \score_timer[0]~20_combout\);

-- Location: LC_X4_Y1_N7
\score_timer[0]~17\ : maxv_lcell
-- Equation(s):
-- \score_timer[0]~17_combout\ = (\score_timer~15\ & (!mole_active(4) & ((!mole_active(5)) # (!\score_timer~16\)))) # (!\score_timer~15\ & (((!mole_active(5))) # (!\score_timer~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "135f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \score_timer~15\,
	datab => \score_timer~16\,
	datac => mole_active(4),
	datad => mole_active(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \score_timer[0]~17_combout\);

-- Location: LC_X4_Y1_N8
\score_timer[0]~22\ : maxv_lcell
-- Equation(s):
-- \score_timer[0]~22_combout\ = (\score_timer[0]~20_combout\ & (\score_timer[0]~17_combout\ & ((!mole_active(8)) # (!\score_timer~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \score_timer~21\,
	datab => mole_active(8),
	datac => \score_timer[0]~20_combout\,
	datad => \score_timer[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \score_timer[0]~22_combout\);

-- Location: LC_X5_Y2_N7
\score_timer[0]~11\ : maxv_lcell
-- Equation(s):
-- \score_timer[0]~11_combout\ = (\score_timer~10\ & (!mole_active(1) & ((!\wrong_click~0\) # (!mole_active(0))))) # (!\score_timer~10\ & (((!\wrong_click~0\) # (!mole_active(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0777",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \score_timer~10\,
	datab => mole_active(1),
	datac => mole_active(0),
	datad => \wrong_click~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \score_timer[0]~11_combout\);

-- Location: LC_X5_Y1_N7
\score_timer[0]~23\ : maxv_lcell
-- Equation(s):
-- \score_timer[0]~23_combout\ = (\state~regout\ & (((!\score_timer[0]~11_combout\) # (!\score_timer[0]~22_combout\)) # (!\score_timer[0]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \score_timer[0]~14_combout\,
	datab => \state~regout\,
	datac => \score_timer[0]~22_combout\,
	datad => \score_timer[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \score_timer[0]~23_combout\);

-- Location: LC_X5_Y1_N0
\score_timer[0]\ : maxv_lcell
-- Equation(s):
-- score_timer(0) = DFFEAS(((!score_timer(0))), GLOBAL(\fastclock~combout\), VCC, , \score_timer[0]~24_combout\, VCC, , , \score_timer[0]~23_combout\)
-- \score_timer[0]~3\ = CARRY(((score_timer(0))))
-- \score_timer[0]~3COUT1_26\ = CARRY(((score_timer(0))))

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
	sload => \score_timer[0]~23_combout\,
	ena => \score_timer[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_timer(0),
	cout0 => \score_timer[0]~3\,
	cout1 => \score_timer[0]~3COUT1_26\);

-- Location: LC_X5_Y1_N1
\score_timer[1]\ : maxv_lcell
-- Equation(s):
-- score_timer(1) = DFFEAS((score_timer(1) $ ((!\score_timer[0]~3\))), GLOBAL(\fastclock~combout\), VCC, , \score_timer[0]~24_combout\, VCC, , , \score_timer[0]~23_combout\)
-- \score_timer[1]~5\ = CARRY(((!score_timer(1) & !\score_timer[0]~3\)))
-- \score_timer[1]~5COUT1_27\ = CARRY(((!score_timer(1) & !\score_timer[0]~3COUT1_26\)))

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
	sload => \score_timer[0]~23_combout\,
	ena => \score_timer[0]~24_combout\,
	cin0 => \score_timer[0]~3\,
	cin1 => \score_timer[0]~3COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_timer(1),
	cout0 => \score_timer[1]~5\,
	cout1 => \score_timer[1]~5COUT1_27\);

-- Location: LC_X5_Y1_N2
\score_timer[2]\ : maxv_lcell
-- Equation(s):
-- score_timer(2) = DFFEAS((score_timer(2) $ ((\score_timer[1]~5\))), GLOBAL(\fastclock~combout\), VCC, , \score_timer[0]~24_combout\, VCC, , , \score_timer[0]~23_combout\)
-- \score_timer[2]~7\ = CARRY(((score_timer(2)) # (!\score_timer[1]~5\)))
-- \score_timer[2]~7COUT1_28\ = CARRY(((score_timer(2)) # (!\score_timer[1]~5COUT1_27\)))

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
	sload => \score_timer[0]~23_combout\,
	ena => \score_timer[0]~24_combout\,
	cin0 => \score_timer[1]~5\,
	cin1 => \score_timer[1]~5COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_timer(2),
	cout0 => \score_timer[2]~7\,
	cout1 => \score_timer[2]~7COUT1_28\);

-- Location: LC_X5_Y1_N3
\score_timer[3]\ : maxv_lcell
-- Equation(s):
-- score_timer(3) = DFFEAS(score_timer(3) $ ((((!\score_timer[2]~7\)))), GLOBAL(\fastclock~combout\), VCC, , \score_timer[0]~24_combout\, VCC, , , \score_timer[0]~23_combout\)
-- \score_timer[3]~9\ = CARRY((!score_timer(3) & ((!\score_timer[2]~7\))))
-- \score_timer[3]~9COUT1_29\ = CARRY((!score_timer(3) & ((!\score_timer[2]~7COUT1_28\))))

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
	sload => \score_timer[0]~23_combout\,
	ena => \score_timer[0]~24_combout\,
	cin0 => \score_timer[2]~7\,
	cin1 => \score_timer[2]~7COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_timer(3),
	cout0 => \score_timer[3]~9\,
	cout1 => \score_timer[3]~9COUT1_29\);

-- Location: LC_X5_Y1_N4
\score_timer[4]\ : maxv_lcell
-- Equation(s):
-- score_timer(4) = DFFEAS(score_timer(4) $ ((((\score_timer[3]~9\)))), GLOBAL(\fastclock~combout\), VCC, , \score_timer[0]~24_combout\, VCC, , , \score_timer[0]~23_combout\)

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
	sload => \score_timer[0]~23_combout\,
	ena => \score_timer[0]~24_combout\,
	cin0 => \score_timer[3]~9\,
	cin1 => \score_timer[3]~9COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_timer(4));

-- Location: LC_X5_Y1_N9
\LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \LessThan0~0_combout\ = (((score_timer(0)) # (score_timer(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => score_timer(0),
	datad => score_timer(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~0_combout\);

-- Location: LC_X5_Y1_N5
\score_high~reg0\ : maxv_lcell
-- Equation(s):
-- \LessThan0~1\ = (score_timer(3)) # ((score_timer(2)) # ((score_timer(4)) # (\LessThan0~0_combout\)))
-- \score_high~reg0_regout\ = DFFEAS(\LessThan0~1\, GLOBAL(\fastclock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => score_timer(3),
	datab => score_timer(2),
	datac => score_timer(4),
	datad => \LessThan0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~1\,
	regout => \score_high~reg0_regout\);

-- Location: LC_X5_Y1_N8
\score_timer[0]~24\ : maxv_lcell
-- Equation(s):
-- \score_timer[0]~24_combout\ = (((\LessThan0~1\) # (\score_timer[0]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~1\,
	datad => \score_timer[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \score_timer[0]~24_combout\);

-- Location: LC_X4_Y2_N9
\error_timer~10\ : maxv_lcell
-- Equation(s):
-- \error_timer~10_combout\ = (\state~regout\ & ((\wrong_click~2_combout\) # ((\wrong_click~1_combout\) # (\wrong_click~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state~regout\,
	datab => \wrong_click~2_combout\,
	datac => \wrong_click~1_combout\,
	datad => \wrong_click~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \error_timer~10_combout\);

-- Location: LC_X3_Y1_N0
\error_timer[0]\ : maxv_lcell
-- Equation(s):
-- error_timer(0) = DFFEAS(((!error_timer(0))), GLOBAL(\fastclock~combout\), VCC, , \error_timer[1]~11_combout\, VCC, , , \error_timer~10_combout\)
-- \error_timer[0]~3\ = CARRY(((error_timer(0))))
-- \error_timer[0]~3COUT1_13\ = CARRY(((error_timer(0))))

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
	datab => error_timer(0),
	datac => VCC,
	aclr => GND,
	sload => \error_timer~10_combout\,
	ena => \error_timer[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => error_timer(0),
	cout0 => \error_timer[0]~3\,
	cout1 => \error_timer[0]~3COUT1_13\);

-- Location: LC_X3_Y1_N1
\error_timer[1]\ : maxv_lcell
-- Equation(s):
-- error_timer(1) = DFFEAS((error_timer(1) $ ((!\error_timer[0]~3\))), GLOBAL(\fastclock~combout\), VCC, , \error_timer[1]~11_combout\, VCC, , , \error_timer~10_combout\)
-- \error_timer[1]~5\ = CARRY(((!error_timer(1) & !\error_timer[0]~3\)))
-- \error_timer[1]~5COUT1_14\ = CARRY(((!error_timer(1) & !\error_timer[0]~3COUT1_13\)))

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
	datab => error_timer(1),
	datac => VCC,
	aclr => GND,
	sload => \error_timer~10_combout\,
	ena => \error_timer[1]~11_combout\,
	cin0 => \error_timer[0]~3\,
	cin1 => \error_timer[0]~3COUT1_13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => error_timer(1),
	cout0 => \error_timer[1]~5\,
	cout1 => \error_timer[1]~5COUT1_14\);

-- Location: LC_X3_Y1_N2
\error_timer[2]\ : maxv_lcell
-- Equation(s):
-- error_timer(2) = DFFEAS((error_timer(2) $ ((\error_timer[1]~5\))), GLOBAL(\fastclock~combout\), VCC, , \error_timer[1]~11_combout\, VCC, , , \error_timer~10_combout\)
-- \error_timer[2]~7\ = CARRY(((error_timer(2)) # (!\error_timer[1]~5\)))
-- \error_timer[2]~7COUT1_15\ = CARRY(((error_timer(2)) # (!\error_timer[1]~5COUT1_14\)))

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
	sload => \error_timer~10_combout\,
	ena => \error_timer[1]~11_combout\,
	cin0 => \error_timer[1]~5\,
	cin1 => \error_timer[1]~5COUT1_14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => error_timer(2),
	cout0 => \error_timer[2]~7\,
	cout1 => \error_timer[2]~7COUT1_15\);

-- Location: LC_X3_Y1_N3
\error_timer[3]\ : maxv_lcell
-- Equation(s):
-- error_timer(3) = DFFEAS(error_timer(3) $ ((((!\error_timer[2]~7\)))), GLOBAL(\fastclock~combout\), VCC, , \error_timer[1]~11_combout\, VCC, , , \error_timer~10_combout\)
-- \error_timer[3]~9\ = CARRY((!error_timer(3) & ((!\error_timer[2]~7\))))
-- \error_timer[3]~9COUT1_16\ = CARRY((!error_timer(3) & ((!\error_timer[2]~7COUT1_15\))))

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
	sload => \error_timer~10_combout\,
	ena => \error_timer[1]~11_combout\,
	cin0 => \error_timer[2]~7\,
	cin1 => \error_timer[2]~7COUT1_15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => error_timer(3),
	cout0 => \error_timer[3]~9\,
	cout1 => \error_timer[3]~9COUT1_16\);

-- Location: LC_X3_Y1_N4
\error_timer[4]\ : maxv_lcell
-- Equation(s):
-- error_timer(4) = DFFEAS(error_timer(4) $ ((((\error_timer[3]~9\)))), GLOBAL(\fastclock~combout\), VCC, , \error_timer[1]~11_combout\, VCC, , , \error_timer~10_combout\)

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
	dataa => error_timer(4),
	datac => VCC,
	aclr => GND,
	sload => \error_timer~10_combout\,
	ena => \error_timer[1]~11_combout\,
	cin0 => \error_timer[3]~9\,
	cin1 => \error_timer[3]~9COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => error_timer(4));

-- Location: LC_X3_Y1_N7
\LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \LessThan1~0_combout\ = (((error_timer(0)) # (error_timer(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => error_timer(0),
	datad => error_timer(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan1~0_combout\);

-- Location: LC_X3_Y1_N8
\score_low~reg0\ : maxv_lcell
-- Equation(s):
-- \LessThan1~1\ = (error_timer(3)) # ((error_timer(2)) # ((error_timer(4)) # (\LessThan1~0_combout\)))
-- \score_low~reg0_regout\ = DFFEAS(\LessThan1~1\, GLOBAL(\fastclock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fastclock~combout\,
	dataa => error_timer(3),
	datab => error_timer(2),
	datac => error_timer(4),
	datad => \LessThan1~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan1~1\,
	regout => \score_low~reg0_regout\);

-- Location: LC_X3_Y1_N9
\error_timer[1]~11\ : maxv_lcell
-- Equation(s):
-- \error_timer[1]~11_combout\ = ((\LessThan1~1\) # ((\state~regout\ & \wrong_click~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \state~regout\,
	datac => \wrong_click~6_combout\,
	datad => \LessThan1~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \error_timer[1]~11_combout\);

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

-- Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\score_low~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \score_low~reg0_regout\,
	oe => VCC,
	padio => ww_score_low);
END structure;


