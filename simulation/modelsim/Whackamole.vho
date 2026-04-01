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

-- DATE "04/01/2026 13:13:46"

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
	clk : IN std_logic;
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
SIGNAL ww_clk : std_logic;
SIGNAL ww_button : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_startButton : std_logic;
SIGNAL ww_leds : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_score_reset : std_logic;
SIGNAL ww_score_high : std_logic;
SIGNAL ww_score_low : std_logic;
SIGNAL \error_timer[1]~15_cout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \main~2\ : std_logic;
SIGNAL \Mux1~0\ : std_logic;
SIGNAL \Mux1~1\ : std_logic;
SIGNAL \Mux0~0\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux1~2\ : std_logic;
SIGNAL \Mux1~3\ : std_logic;
SIGNAL \Mux0~2\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \main~1_combout\ : std_logic;
SIGNAL \main~0\ : std_logic;
SIGNAL \main~3\ : std_logic;
SIGNAL \mole_active~0\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \mole_duration[0]~1\ : std_logic;
SIGNAL \mole_duration[0]~1COUT1_15\ : std_logic;
SIGNAL \mole_duration[1]~3\ : std_logic;
SIGNAL \mole_duration[1]~3COUT1_16\ : std_logic;
SIGNAL \mole_duration[2]~5\ : std_logic;
SIGNAL \mole_duration[2]~5COUT1_17\ : std_logic;
SIGNAL \mole_duration[3]~7\ : std_logic;
SIGNAL \mole_duration[4]~9\ : std_logic;
SIGNAL \mole_duration[4]~9COUT1_18\ : std_logic;
SIGNAL \mole_duration[5]~11\ : std_logic;
SIGNAL \mole_duration[5]~11COUT1_19\ : std_logic;
SIGNAL \leds~0_combout\ : std_logic;
SIGNAL \leds~1_combout\ : std_logic;
SIGNAL \mole_active~regout\ : std_logic;
SIGNAL \spawn_delay[0]~1\ : std_logic;
SIGNAL \spawn_delay[0]~1COUT1_15\ : std_logic;
SIGNAL \spawn_delay[1]~3\ : std_logic;
SIGNAL \spawn_delay[1]~3COUT1_16\ : std_logic;
SIGNAL \spawn_delay[2]~5\ : std_logic;
SIGNAL \spawn_delay[2]~5COUT1_17\ : std_logic;
SIGNAL \spawn_delay[3]~8\ : std_logic;
SIGNAL \spawn_delay[4]~10\ : std_logic;
SIGNAL \spawn_delay[4]~10COUT1_18\ : std_logic;
SIGNAL \spawn_delay[5]~6_combout\ : std_logic;
SIGNAL \spawn_delay[5]~13_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \leds~2_combout\ : std_logic;
SIGNAL \leds[0]~reg0_regout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \leds[1]~reg0_regout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \leds[2]~reg0_regout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \leds[3]~reg0_regout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \leds[4]~reg0_regout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \leds[5]~reg0_regout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \leds[6]~reg0_regout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \leds[7]~reg0_regout\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \leds[8]~reg0_regout\ : std_logic;
SIGNAL \score_timer~14_combout\ : std_logic;
SIGNAL \score_timer[0]~1\ : std_logic;
SIGNAL \score_timer[0]~1COUT1_17\ : std_logic;
SIGNAL \score_timer[1]~3\ : std_logic;
SIGNAL \score_timer[1]~3COUT1_18\ : std_logic;
SIGNAL \score_timer[2]~5\ : std_logic;
SIGNAL \score_timer[2]~5COUT1_19\ : std_logic;
SIGNAL \score_timer[3]~7\ : std_logic;
SIGNAL \score_timer[4]~9\ : std_logic;
SIGNAL \score_timer[4]~9COUT1_20\ : std_logic;
SIGNAL \score_timer[5]~11\ : std_logic;
SIGNAL \score_timer[5]~11COUT1_21\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1\ : std_logic;
SIGNAL \score_timer[6]~15_combout\ : std_logic;
SIGNAL \score_high~reg0_regout\ : std_logic;
SIGNAL \error_timer[1]~15COUT0_20\ : std_logic;
SIGNAL \error_timer[1]~15COUT1_21\ : std_logic;
SIGNAL \error_timer[1]~1\ : std_logic;
SIGNAL \error_timer[1]~1COUT1_22\ : std_logic;
SIGNAL \error_timer[2]~3\ : std_logic;
SIGNAL \error_timer[2]~3COUT1_23\ : std_logic;
SIGNAL \error_timer[3]~5\ : std_logic;
SIGNAL \error_timer[4]~7\ : std_logic;
SIGNAL \error_timer[4]~7COUT1_24\ : std_logic;
SIGNAL \error_timer[5]~9\ : std_logic;
SIGNAL \error_timer[5]~9COUT1_25\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1\ : std_logic;
SIGNAL \score_low~reg0_regout\ : std_logic;
SIGNAL mole_duration : std_logic_vector(6 DOWNTO 0);
SIGNAL score_timer : std_logic_vector(6 DOWNTO 0);
SIGNAL \button~combout\ : std_logic_vector(8 DOWNTO 0);
SIGNAL current_mole : std_logic_vector(3 DOWNTO 0);
SIGNAL spawn_delay : std_logic_vector(5 DOWNTO 0);
SIGNAL button_pressed : std_logic_vector(8 DOWNTO 0);
SIGNAL error_timer : std_logic_vector(6 DOWNTO 0);
SIGNAL cnt : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_mole_active~0\ : std_logic;
SIGNAL \ALT_INV_mole_active~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_button <= button;
ww_startButton <= startButton;
leds <= ww_leds;
score_reset <= ww_score_reset;
score_high <= ww_score_high;
score_low <= ww_score_low;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_mole_active~0\ <= NOT \mole_active~0\;
\ALT_INV_mole_active~regout\ <= NOT \mole_active~regout\;

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

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

-- Location: LC_X4_Y4_N0
\cnt[2]\ : maxv_lcell
-- Equation(s):
-- cnt(2) = DFFEAS((cnt(2) $ (((cnt(1) & cnt(0))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => cnt(2),
	datac => cnt(1),
	datad => cnt(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(2));

-- Location: LC_X4_Y4_N9
\cnt[3]\ : maxv_lcell
-- Equation(s):
-- cnt(3) = DFFEAS((cnt(1) & (cnt(3) $ (((cnt(2) & cnt(0)))))) # (!cnt(1) & (cnt(3) & ((cnt(2)) # (cnt(0))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6cc8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(1),
	datab => cnt(3),
	datac => cnt(2),
	datad => cnt(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(3));

-- Location: LC_X4_Y4_N4
\cnt[0]\ : maxv_lcell
-- Equation(s):
-- cnt(0) = DFFEAS((!cnt(0) & ((cnt(1)) # ((cnt(2)) # (!cnt(3))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fb",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(1),
	datab => cnt(3),
	datac => cnt(2),
	datad => cnt(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(0));

-- Location: LC_X5_Y4_N0
\cnt[1]\ : maxv_lcell
-- Equation(s):
-- cnt(1) = DFFEAS((cnt(0) $ (((cnt(1))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => cnt(0),
	datad => cnt(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(1));

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

-- Location: LC_X4_Y4_N5
\current_mole[3]\ : maxv_lcell
-- Equation(s):
-- \main~2\ = (\button~combout\(8) & (((current_mole[3]))))
-- current_mole(3) = DFFEAS(\main~2\, GLOBAL(\clk~combout\), VCC, , \spawn_delay[5]~13_combout\, cnt(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \button~combout\(8),
	datac => cnt(3),
	aclr => GND,
	sload => VCC,
	ena => \spawn_delay[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \main~2\,
	regout => current_mole(3));

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

-- Location: LC_X4_Y4_N3
\button_pressed[3]\ : maxv_lcell
-- Equation(s):
-- button_pressed(3) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \button~combout\(3), , , VCC)

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
	clk => \clk~combout\,
	datac => \button~combout\(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => button_pressed(3));

-- Location: LC_X4_Y4_N6
\button_pressed[0]\ : maxv_lcell
-- Equation(s):
-- button_pressed(0) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \button~combout\(0), , , VCC)

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
	clk => \clk~combout\,
	datac => \button~combout\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => button_pressed(0));

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

-- Location: LC_X4_Y4_N1
\button_pressed[1]\ : maxv_lcell
-- Equation(s):
-- \Mux1~0\ = (current_mole(0) & (((button_pressed[1]) # (current_mole(1))))) # (!current_mole(0) & (button_pressed(0) & ((!current_mole(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => button_pressed(0),
	datab => current_mole(0),
	datac => \button~combout\(1),
	datad => current_mole(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0\,
	regout => button_pressed(1));

-- Location: LC_X4_Y4_N2
\button_pressed[2]\ : maxv_lcell
-- Equation(s):
-- \Mux1~1\ = (current_mole(1) & ((\Mux1~0\ & (button_pressed(3))) # (!\Mux1~0\ & ((button_pressed[2]))))) # (!current_mole(1) & (((\Mux1~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => button_pressed(3),
	datab => current_mole(1),
	datac => \button~combout\(2),
	datad => \Mux1~0\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~1\,
	regout => button_pressed(2));

-- Location: LC_X3_Y4_N2
\current_mole[0]\ : maxv_lcell
-- Equation(s):
-- \Mux0~0\ = (current_mole(1) & ((\button~combout\(2)) # ((current_mole[0])))) # (!current_mole(1) & (((!current_mole[0] & \button~combout\(0)))))
-- current_mole(0) = DFFEAS(\Mux0~0\, GLOBAL(\clk~combout\), VCC, , \spawn_delay[5]~13_combout\, cnt(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => current_mole(1),
	datab => \button~combout\(2),
	datac => cnt(0),
	datad => \button~combout\(0),
	aclr => GND,
	sload => VCC,
	ena => \spawn_delay[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0\,
	regout => current_mole(0));

-- Location: LC_X3_Y4_N3
\Mux0~1\ : maxv_lcell
-- Equation(s):
-- \Mux0~1_combout\ = (current_mole(0) & ((\Mux0~0\ & ((\button~combout\(3)))) # (!\Mux0~0\ & (\button~combout\(1))))) # (!current_mole(0) & (((\Mux0~0\))))

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
	dataa => \button~combout\(1),
	datab => \button~combout\(3),
	datac => current_mole(0),
	datad => \Mux0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~1_combout\);

-- Location: LC_X3_Y4_N9
\current_mole[2]\ : maxv_lcell
-- Equation(s):
-- \main~0\ = (!current_mole(3) & (!\Mux1~1\ & (!current_mole[2] & \Mux0~1_combout\)))
-- current_mole(2) = DFFEAS(\main~0\, GLOBAL(\clk~combout\), VCC, , \spawn_delay[5]~13_combout\, cnt(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => current_mole(3),
	datab => \Mux1~1\,
	datac => cnt(2),
	datad => \Mux0~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \spawn_delay[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \main~0\,
	regout => current_mole(2));

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

-- Location: LC_X4_Y4_N7
\button_pressed[7]\ : maxv_lcell
-- Equation(s):
-- button_pressed(7) = DFFEAS((((\button~combout\(7)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	datad => \button~combout\(7),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => button_pressed(7));

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

-- Location: LC_X4_Y4_N8
\button_pressed[4]\ : maxv_lcell
-- Equation(s):
-- button_pressed(4) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \button~combout\(4), , , VCC)

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
	clk => \clk~combout\,
	datac => \button~combout\(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => button_pressed(4));

-- Location: LC_X3_Y4_N5
\button_pressed[5]\ : maxv_lcell
-- Equation(s):
-- \Mux1~2\ = (current_mole(1) & (current_mole(0))) # (!current_mole(1) & ((current_mole(0) & (button_pressed[5])) # (!current_mole(0) & ((button_pressed(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => current_mole(1),
	datab => current_mole(0),
	datac => \button~combout\(5),
	datad => button_pressed(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~2\,
	regout => button_pressed(5));

-- Location: LC_X3_Y4_N6
\button_pressed[6]\ : maxv_lcell
-- Equation(s):
-- \Mux1~3\ = (current_mole(1) & ((\Mux1~2\ & (button_pressed(7))) # (!\Mux1~2\ & ((button_pressed[6]))))) # (!current_mole(1) & (((\Mux1~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => current_mole(1),
	datab => button_pressed(7),
	datac => \button~combout\(6),
	datad => \Mux1~2\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~3\,
	regout => button_pressed(6));

-- Location: LC_X3_Y4_N4
\current_mole[1]\ : maxv_lcell
-- Equation(s):
-- \Mux0~2\ = (current_mole[1] & (((\button~combout\(6)) # (current_mole(0))))) # (!current_mole[1] & (\button~combout\(4) & ((!current_mole(0)))))
-- current_mole(1) = DFFEAS(\Mux0~2\, GLOBAL(\clk~combout\), VCC, , \spawn_delay[5]~13_combout\, cnt(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ca",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \button~combout\(4),
	datab => \button~combout\(6),
	datac => cnt(1),
	datad => current_mole(0),
	aclr => GND,
	sload => VCC,
	ena => \spawn_delay[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~2\,
	regout => current_mole(1));

-- Location: LC_X3_Y4_N1
\Mux0~3\ : maxv_lcell
-- Equation(s):
-- \Mux0~3_combout\ = (current_mole(0) & ((\Mux0~2\ & ((\button~combout\(7)))) # (!\Mux0~2\ & (\button~combout\(5))))) # (!current_mole(0) & (((\Mux0~2\))))

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
	dataa => \button~combout\(5),
	datab => \button~combout\(7),
	datac => current_mole(0),
	datad => \Mux0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~3_combout\);

-- Location: LC_X3_Y4_N7
\main~1\ : maxv_lcell
-- Equation(s):
-- \main~1_combout\ = (current_mole(2) & (!current_mole(3) & (!\Mux1~3\ & \Mux0~3_combout\)))

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
	dataa => current_mole(2),
	datab => current_mole(3),
	datac => \Mux1~3\,
	datad => \Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \main~1_combout\);

-- Location: LC_X3_Y4_N8
\button_pressed[8]\ : maxv_lcell
-- Equation(s):
-- \main~3\ = (!\main~1_combout\ & (!\main~0\ & ((button_pressed[8]) # (!\main~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0031",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \main~2\,
	datab => \main~1_combout\,
	datac => \button~combout\(8),
	datad => \main~0\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \main~3\,
	regout => button_pressed(8));

-- Location: LC_X3_Y4_N0
mole_active : maxv_lcell
-- Equation(s):
-- \mole_active~0\ = (\spawn_delay[5]~13_combout\) # ((\leds~1_combout\ & (mole_active & \main~3\)))
-- \mole_active~regout\ = DFFEAS(\mole_active~0\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eccc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \leds~1_combout\,
	datab => \spawn_delay[5]~13_combout\,
	datad => \main~3\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mole_active~0\,
	regout => \mole_active~regout\);

-- Location: LC_X5_Y4_N9
\~GND\ : maxv_lcell
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \~GND~combout\);

-- Location: LC_X6_Y4_N1
\mole_duration[0]\ : maxv_lcell
-- Equation(s):
-- mole_duration(0) = DFFEAS(((!mole_duration(0))), GLOBAL(\clk~combout\), VCC, , \mole_active~0\, \~GND~combout\, , , !\mole_active~regout\)
-- \mole_duration[0]~1\ = CARRY(((mole_duration(0))))
-- \mole_duration[0]~1COUT1_15\ = CARRY(((mole_duration(0))))

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
	clk => \clk~combout\,
	datab => mole_duration(0),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \ALT_INV_mole_active~regout\,
	ena => \mole_active~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_duration(0),
	cout0 => \mole_duration[0]~1\,
	cout1 => \mole_duration[0]~1COUT1_15\);

-- Location: LC_X6_Y4_N2
\mole_duration[1]\ : maxv_lcell
-- Equation(s):
-- mole_duration(1) = DFFEAS((mole_duration(1) $ ((!\mole_duration[0]~1\))), GLOBAL(\clk~combout\), VCC, , \mole_active~0\, \~GND~combout\, , , !\mole_active~regout\)
-- \mole_duration[1]~3\ = CARRY(((!mole_duration(1) & !\mole_duration[0]~1\)))
-- \mole_duration[1]~3COUT1_16\ = CARRY(((!mole_duration(1) & !\mole_duration[0]~1COUT1_15\)))

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
	clk => \clk~combout\,
	datab => mole_duration(1),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \ALT_INV_mole_active~regout\,
	ena => \mole_active~0\,
	cin0 => \mole_duration[0]~1\,
	cin1 => \mole_duration[0]~1COUT1_15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_duration(1),
	cout0 => \mole_duration[1]~3\,
	cout1 => \mole_duration[1]~3COUT1_16\);

-- Location: LC_X6_Y4_N3
\mole_duration[2]\ : maxv_lcell
-- Equation(s):
-- mole_duration(2) = DFFEAS(mole_duration(2) $ ((((\mole_duration[1]~3\)))), GLOBAL(\clk~combout\), VCC, , \mole_active~0\, VCC, , , !\mole_active~regout\)
-- \mole_duration[2]~5\ = CARRY((mole_duration(2)) # ((!\mole_duration[1]~3\)))
-- \mole_duration[2]~5COUT1_17\ = CARRY((mole_duration(2)) # ((!\mole_duration[1]~3COUT1_16\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => mole_duration(2),
	datac => VCC,
	aclr => GND,
	sload => \ALT_INV_mole_active~regout\,
	ena => \mole_active~0\,
	cin0 => \mole_duration[1]~3\,
	cin1 => \mole_duration[1]~3COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_duration(2),
	cout0 => \mole_duration[2]~5\,
	cout1 => \mole_duration[2]~5COUT1_17\);

-- Location: LC_X6_Y4_N4
\mole_duration[3]\ : maxv_lcell
-- Equation(s):
-- mole_duration(3) = DFFEAS(mole_duration(3) $ ((((!\mole_duration[2]~5\)))), GLOBAL(\clk~combout\), VCC, , \mole_active~0\, \~GND~combout\, , , !\mole_active~regout\)
-- \mole_duration[3]~7\ = CARRY((!mole_duration(3) & ((!\mole_duration[2]~5COUT1_17\))))

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
	clk => \clk~combout\,
	dataa => mole_duration(3),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \ALT_INV_mole_active~regout\,
	ena => \mole_active~0\,
	cin0 => \mole_duration[2]~5\,
	cin1 => \mole_duration[2]~5COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_duration(3),
	cout => \mole_duration[3]~7\);

-- Location: LC_X6_Y4_N5
\mole_duration[4]\ : maxv_lcell
-- Equation(s):
-- mole_duration(4) = DFFEAS(mole_duration(4) $ ((((\mole_duration[3]~7\)))), GLOBAL(\clk~combout\), VCC, , \mole_active~0\, \~GND~combout\, , , !\mole_active~regout\)
-- \mole_duration[4]~9\ = CARRY((mole_duration(4)) # ((!\mole_duration[3]~7\)))
-- \mole_duration[4]~9COUT1_18\ = CARRY((mole_duration(4)) # ((!\mole_duration[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => mole_duration(4),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \ALT_INV_mole_active~regout\,
	ena => \mole_active~0\,
	cin => \mole_duration[3]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_duration(4),
	cout0 => \mole_duration[4]~9\,
	cout1 => \mole_duration[4]~9COUT1_18\);

-- Location: LC_X6_Y4_N6
\mole_duration[5]\ : maxv_lcell
-- Equation(s):
-- mole_duration(5) = DFFEAS((mole_duration(5) $ ((!(!\mole_duration[3]~7\ & \mole_duration[4]~9\) # (\mole_duration[3]~7\ & \mole_duration[4]~9COUT1_18\)))), GLOBAL(\clk~combout\), VCC, , \mole_active~0\, VCC, , , !\mole_active~regout\)
-- \mole_duration[5]~11\ = CARRY(((!mole_duration(5) & !\mole_duration[4]~9\)))
-- \mole_duration[5]~11COUT1_19\ = CARRY(((!mole_duration(5) & !\mole_duration[4]~9COUT1_18\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => mole_duration(5),
	datac => VCC,
	aclr => GND,
	sload => \ALT_INV_mole_active~regout\,
	ena => \mole_active~0\,
	cin => \mole_duration[3]~7\,
	cin0 => \mole_duration[4]~9\,
	cin1 => \mole_duration[4]~9COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_duration(5),
	cout0 => \mole_duration[5]~11\,
	cout1 => \mole_duration[5]~11COUT1_19\);

-- Location: LC_X6_Y4_N7
\mole_duration[6]\ : maxv_lcell
-- Equation(s):
-- mole_duration(6) = DFFEAS((mole_duration(6) $ (((!\mole_duration[3]~7\ & \mole_duration[5]~11\) # (\mole_duration[3]~7\ & \mole_duration[5]~11COUT1_19\)))), GLOBAL(\clk~combout\), VCC, , \mole_active~0\, VCC, , , !\mole_active~regout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => mole_duration(6),
	datac => VCC,
	aclr => GND,
	sload => \ALT_INV_mole_active~regout\,
	ena => \mole_active~0\,
	cin => \mole_duration[3]~7\,
	cin0 => \mole_duration[5]~11\,
	cin1 => \mole_duration[5]~11COUT1_19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mole_duration(6));

-- Location: LC_X6_Y4_N9
\leds~0\ : maxv_lcell
-- Equation(s):
-- \leds~0_combout\ = (mole_duration(1)) # ((mole_duration(0)) # ((mole_duration(3)) # (mole_duration(2))))

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
	dataa => mole_duration(1),
	datab => mole_duration(0),
	datac => mole_duration(3),
	datad => mole_duration(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds~0_combout\);

-- Location: LC_X6_Y4_N8
\leds~1\ : maxv_lcell
-- Equation(s):
-- \leds~1_combout\ = (mole_duration(5)) # ((mole_duration(6)) # ((mole_duration(4)) # (\leds~0_combout\)))

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
	dataa => mole_duration(5),
	datab => mole_duration(6),
	datac => mole_duration(4),
	datad => \leds~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds~1_combout\);

-- Location: LC_X5_Y4_N1
\spawn_delay[0]\ : maxv_lcell
-- Equation(s):
-- spawn_delay(0) = DFFEAS(((!spawn_delay(0))), GLOBAL(\clk~combout\), VCC, , !\mole_active~0\, \~GND~combout\, , , \mole_active~regout\)
-- \spawn_delay[0]~1\ = CARRY(((spawn_delay(0))))
-- \spawn_delay[0]~1COUT1_15\ = CARRY(((spawn_delay(0))))

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
	clk => \clk~combout\,
	datab => spawn_delay(0),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \mole_active~regout\,
	ena => \ALT_INV_mole_active~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => spawn_delay(0),
	cout0 => \spawn_delay[0]~1\,
	cout1 => \spawn_delay[0]~1COUT1_15\);

-- Location: LC_X5_Y4_N2
\spawn_delay[1]\ : maxv_lcell
-- Equation(s):
-- spawn_delay(1) = DFFEAS((spawn_delay(1) $ ((!\spawn_delay[0]~1\))), GLOBAL(\clk~combout\), VCC, , !\mole_active~0\, \main~3\, , , \mole_active~regout\)
-- \spawn_delay[1]~3\ = CARRY(((!spawn_delay(1) & !\spawn_delay[0]~1\)))
-- \spawn_delay[1]~3COUT1_16\ = CARRY(((!spawn_delay(1) & !\spawn_delay[0]~1COUT1_15\)))

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
	clk => \clk~combout\,
	datab => spawn_delay(1),
	datac => \main~3\,
	aclr => GND,
	sload => \mole_active~regout\,
	ena => \ALT_INV_mole_active~0\,
	cin0 => \spawn_delay[0]~1\,
	cin1 => \spawn_delay[0]~1COUT1_15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => spawn_delay(1),
	cout0 => \spawn_delay[1]~3\,
	cout1 => \spawn_delay[1]~3COUT1_16\);

-- Location: LC_X5_Y4_N3
\spawn_delay[2]\ : maxv_lcell
-- Equation(s):
-- spawn_delay(2) = DFFEAS(spawn_delay(2) $ ((((\spawn_delay[1]~3\)))), GLOBAL(\clk~combout\), VCC, , !\mole_active~0\, \~GND~combout\, , , \mole_active~regout\)
-- \spawn_delay[2]~5\ = CARRY((spawn_delay(2)) # ((!\spawn_delay[1]~3\)))
-- \spawn_delay[2]~5COUT1_17\ = CARRY((spawn_delay(2)) # ((!\spawn_delay[1]~3COUT1_16\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => spawn_delay(2),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \mole_active~regout\,
	ena => \ALT_INV_mole_active~0\,
	cin0 => \spawn_delay[1]~3\,
	cin1 => \spawn_delay[1]~3COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => spawn_delay(2),
	cout0 => \spawn_delay[2]~5\,
	cout1 => \spawn_delay[2]~5COUT1_17\);

-- Location: LC_X5_Y4_N4
\spawn_delay[3]\ : maxv_lcell
-- Equation(s):
-- spawn_delay(3) = DFFEAS(spawn_delay(3) $ ((((!\spawn_delay[2]~5\)))), GLOBAL(\clk~combout\), VCC, , !\mole_active~0\, \~GND~combout\, , , \mole_active~regout\)
-- \spawn_delay[3]~8\ = CARRY((!spawn_delay(3) & ((!\spawn_delay[2]~5COUT1_17\))))

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
	clk => \clk~combout\,
	dataa => spawn_delay(3),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \mole_active~regout\,
	ena => \ALT_INV_mole_active~0\,
	cin0 => \spawn_delay[2]~5\,
	cin1 => \spawn_delay[2]~5COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => spawn_delay(3),
	cout => \spawn_delay[3]~8\);

-- Location: LC_X5_Y4_N5
\spawn_delay[4]\ : maxv_lcell
-- Equation(s):
-- spawn_delay(4) = DFFEAS(spawn_delay(4) $ ((((\spawn_delay[3]~8\)))), GLOBAL(\clk~combout\), VCC, , !\mole_active~0\, \main~3\, , , \mole_active~regout\)
-- \spawn_delay[4]~10\ = CARRY((spawn_delay(4)) # ((!\spawn_delay[3]~8\)))
-- \spawn_delay[4]~10COUT1_18\ = CARRY((spawn_delay(4)) # ((!\spawn_delay[3]~8\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => spawn_delay(4),
	datac => \main~3\,
	aclr => GND,
	sload => \mole_active~regout\,
	ena => \ALT_INV_mole_active~0\,
	cin => \spawn_delay[3]~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => spawn_delay(4),
	cout0 => \spawn_delay[4]~10\,
	cout1 => \spawn_delay[4]~10COUT1_18\);

-- Location: LC_X5_Y4_N6
\spawn_delay[5]\ : maxv_lcell
-- Equation(s):
-- spawn_delay(5) = DFFEAS((((!\spawn_delay[3]~8\ & \spawn_delay[4]~10\) # (\spawn_delay[3]~8\ & \spawn_delay[4]~10COUT1_18\) $ (!spawn_delay(5)))), GLOBAL(\clk~combout\), VCC, , !\mole_active~0\, VCC, , , \mole_active~regout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => VCC,
	datad => spawn_delay(5),
	aclr => GND,
	sload => \mole_active~regout\,
	ena => \ALT_INV_mole_active~0\,
	cin => \spawn_delay[3]~8\,
	cin0 => \spawn_delay[4]~10\,
	cin1 => \spawn_delay[4]~10COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => spawn_delay(5));

-- Location: LC_X5_Y4_N7
\spawn_delay[5]~6\ : maxv_lcell
-- Equation(s):
-- \spawn_delay[5]~6_combout\ = (!spawn_delay(2) & (!spawn_delay(0) & (!spawn_delay(1) & !\mole_active~regout\)))

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
	dataa => spawn_delay(2),
	datab => spawn_delay(0),
	datac => spawn_delay(1),
	datad => \mole_active~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \spawn_delay[5]~6_combout\);

-- Location: LC_X5_Y4_N8
\spawn_delay[5]~13\ : maxv_lcell
-- Equation(s):
-- \spawn_delay[5]~13_combout\ = (!spawn_delay(4) & (!spawn_delay(5) & (!spawn_delay(3) & \spawn_delay[5]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => spawn_delay(4),
	datab => spawn_delay(5),
	datac => spawn_delay(3),
	datad => \spawn_delay[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \spawn_delay[5]~13_combout\);

-- Location: LC_X4_Y2_N1
\Decoder0~0\ : maxv_lcell
-- Equation(s):
-- \Decoder0~0_combout\ = (!current_mole(1) & (!current_mole(2) & (!current_mole(0) & !current_mole(3))))

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
	dataa => current_mole(1),
	datab => current_mole(2),
	datac => current_mole(0),
	datad => current_mole(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~0_combout\);

-- Location: LC_X3_Y2_N1
\leds~2\ : maxv_lcell
-- Equation(s):
-- \leds~2_combout\ = ((\mole_active~regout\ & ((\leds~1_combout\) # (!\main~3\))))

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
	datab => \mole_active~regout\,
	datac => \leds~1_combout\,
	datad => \main~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds~2_combout\);

-- Location: LC_X3_Y2_N7
\leds[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[0]~reg0_regout\ = DFFEAS((\Decoder0~0_combout\ & (((\leds~2_combout\)))) # (!\Decoder0~0_combout\ & (((\leds[0]~reg0_regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	dataa => \Decoder0~0_combout\,
	datac => \leds[0]~reg0_regout\,
	datad => \leds~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[0]~reg0_regout\);

-- Location: LC_X4_Y2_N4
\Decoder0~1\ : maxv_lcell
-- Equation(s):
-- \Decoder0~1_combout\ = (!current_mole(2) & (current_mole(0) & (!current_mole(1) & !current_mole(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => current_mole(2),
	datab => current_mole(0),
	datac => current_mole(1),
	datad => current_mole(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~1_combout\);

-- Location: LC_X3_Y2_N4
\leds[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[1]~reg0_regout\ = DFFEAS(((\Decoder0~1_combout\ & ((\leds~2_combout\))) # (!\Decoder0~1_combout\ & (\leds[1]~reg0_regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	datab => \Decoder0~1_combout\,
	datac => \leds[1]~reg0_regout\,
	datad => \leds~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[1]~reg0_regout\);

-- Location: LC_X4_Y2_N9
\Decoder0~2\ : maxv_lcell
-- Equation(s):
-- \Decoder0~2_combout\ = (current_mole(1) & (!current_mole(2) & (!current_mole(0) & !current_mole(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => current_mole(1),
	datab => current_mole(2),
	datac => current_mole(0),
	datad => current_mole(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~2_combout\);

-- Location: LC_X3_Y2_N6
\leds[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[2]~reg0_regout\ = DFFEAS(((\Decoder0~2_combout\ & ((\leds~2_combout\))) # (!\Decoder0~2_combout\ & (\leds[2]~reg0_regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \leds[2]~reg0_regout\,
	datac => \Decoder0~2_combout\,
	datad => \leds~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[2]~reg0_regout\);

-- Location: LC_X4_Y2_N6
\Decoder0~3\ : maxv_lcell
-- Equation(s):
-- \Decoder0~3_combout\ = (current_mole(1) & (!current_mole(2) & (current_mole(0) & !current_mole(3))))

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
	dataa => current_mole(1),
	datab => current_mole(2),
	datac => current_mole(0),
	datad => current_mole(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~3_combout\);

-- Location: LC_X3_Y2_N5
\leds[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[3]~reg0_regout\ = DFFEAS(((\Decoder0~3_combout\ & ((\leds~2_combout\))) # (!\Decoder0~3_combout\ & (\leds[3]~reg0_regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \leds[3]~reg0_regout\,
	datac => \Decoder0~3_combout\,
	datad => \leds~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[3]~reg0_regout\);

-- Location: LC_X4_Y2_N3
\Decoder0~4\ : maxv_lcell
-- Equation(s):
-- \Decoder0~4_combout\ = (current_mole(2) & (!current_mole(0) & (!current_mole(1) & !current_mole(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => current_mole(2),
	datab => current_mole(0),
	datac => current_mole(1),
	datad => current_mole(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~4_combout\);

-- Location: LC_X3_Y2_N2
\leds[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[4]~reg0_regout\ = DFFEAS(((\Decoder0~4_combout\ & ((\leds~2_combout\))) # (!\Decoder0~4_combout\ & (\leds[4]~reg0_regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \leds[4]~reg0_regout\,
	datac => \Decoder0~4_combout\,
	datad => \leds~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[4]~reg0_regout\);

-- Location: LC_X4_Y2_N2
\Decoder0~5\ : maxv_lcell
-- Equation(s):
-- \Decoder0~5_combout\ = (current_mole(2) & (current_mole(0) & (!current_mole(1) & !current_mole(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => current_mole(2),
	datab => current_mole(0),
	datac => current_mole(1),
	datad => current_mole(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~5_combout\);

-- Location: LC_X3_Y2_N9
\leds[5]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[5]~reg0_regout\ = DFFEAS(((\Decoder0~5_combout\ & ((\leds~2_combout\))) # (!\Decoder0~5_combout\ & (\leds[5]~reg0_regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \leds[5]~reg0_regout\,
	datac => \Decoder0~5_combout\,
	datad => \leds~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[5]~reg0_regout\);

-- Location: LC_X4_Y2_N5
\Decoder0~6\ : maxv_lcell
-- Equation(s):
-- \Decoder0~6_combout\ = (current_mole(2) & (!current_mole(0) & (current_mole(1) & !current_mole(3))))

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
	dataa => current_mole(2),
	datab => current_mole(0),
	datac => current_mole(1),
	datad => current_mole(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~6_combout\);

-- Location: LC_X3_Y2_N3
\leds[6]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[6]~reg0_regout\ = DFFEAS(((\Decoder0~6_combout\ & ((\leds~2_combout\))) # (!\Decoder0~6_combout\ & (\leds[6]~reg0_regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	datab => \Decoder0~6_combout\,
	datac => \leds[6]~reg0_regout\,
	datad => \leds~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[6]~reg0_regout\);

-- Location: LC_X4_Y2_N7
\Decoder0~7\ : maxv_lcell
-- Equation(s):
-- \Decoder0~7_combout\ = (current_mole(2) & (current_mole(0) & (current_mole(1) & !current_mole(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => current_mole(2),
	datab => current_mole(0),
	datac => current_mole(1),
	datad => current_mole(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~7_combout\);

-- Location: LC_X3_Y2_N0
\leds[7]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[7]~reg0_regout\ = DFFEAS((\Decoder0~7_combout\ & (((\leds~2_combout\)))) # (!\Decoder0~7_combout\ & (((\leds[7]~reg0_regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	dataa => \Decoder0~7_combout\,
	datac => \leds[7]~reg0_regout\,
	datad => \leds~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[7]~reg0_regout\);

-- Location: LC_X4_Y2_N0
\Decoder0~8\ : maxv_lcell
-- Equation(s):
-- \Decoder0~8_combout\ = (!current_mole(2) & (!current_mole(0) & (!current_mole(1) & current_mole(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => current_mole(2),
	datab => current_mole(0),
	datac => current_mole(1),
	datad => current_mole(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~8_combout\);

-- Location: LC_X3_Y2_N8
\leds[8]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[8]~reg0_regout\ = DFFEAS(((\Decoder0~8_combout\ & ((\leds~2_combout\))) # (!\Decoder0~8_combout\ & (\leds[8]~reg0_regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \leds[8]~reg0_regout\,
	datac => \Decoder0~8_combout\,
	datad => \leds~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[8]~reg0_regout\);

-- Location: LC_X2_Y4_N0
\score_timer~14\ : maxv_lcell
-- Equation(s):
-- \score_timer~14_combout\ = (((\mole_active~regout\ & !\main~3\)))

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
	datac => \mole_active~regout\,
	datad => \main~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \score_timer~14_combout\);

-- Location: LC_X2_Y4_N1
\score_timer[0]\ : maxv_lcell
-- Equation(s):
-- score_timer(0) = DFFEAS(((!score_timer(0))), GLOBAL(\clk~combout\), VCC, , \score_timer[6]~15_combout\, \~GND~combout\, , , \score_timer~14_combout\)
-- \score_timer[0]~1\ = CARRY(((score_timer(0))))
-- \score_timer[0]~1COUT1_17\ = CARRY(((score_timer(0))))

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
	clk => \clk~combout\,
	datab => score_timer(0),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \score_timer~14_combout\,
	ena => \score_timer[6]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_timer(0),
	cout0 => \score_timer[0]~1\,
	cout1 => \score_timer[0]~1COUT1_17\);

-- Location: LC_X2_Y4_N2
\score_timer[1]\ : maxv_lcell
-- Equation(s):
-- score_timer(1) = DFFEAS((score_timer(1) $ ((!\score_timer[0]~1\))), GLOBAL(\clk~combout\), VCC, , \score_timer[6]~15_combout\, \~GND~combout\, , , \score_timer~14_combout\)
-- \score_timer[1]~3\ = CARRY(((!score_timer(1) & !\score_timer[0]~1\)))
-- \score_timer[1]~3COUT1_18\ = CARRY(((!score_timer(1) & !\score_timer[0]~1COUT1_17\)))

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
	clk => \clk~combout\,
	datab => score_timer(1),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \score_timer~14_combout\,
	ena => \score_timer[6]~15_combout\,
	cin0 => \score_timer[0]~1\,
	cin1 => \score_timer[0]~1COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_timer(1),
	cout0 => \score_timer[1]~3\,
	cout1 => \score_timer[1]~3COUT1_18\);

-- Location: LC_X2_Y4_N3
\score_timer[2]\ : maxv_lcell
-- Equation(s):
-- score_timer(2) = DFFEAS(score_timer(2) $ ((((\score_timer[1]~3\)))), GLOBAL(\clk~combout\), VCC, , \score_timer[6]~15_combout\, \~GND~combout\, , , \score_timer~14_combout\)
-- \score_timer[2]~5\ = CARRY((score_timer(2)) # ((!\score_timer[1]~3\)))
-- \score_timer[2]~5COUT1_19\ = CARRY((score_timer(2)) # ((!\score_timer[1]~3COUT1_18\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => score_timer(2),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \score_timer~14_combout\,
	ena => \score_timer[6]~15_combout\,
	cin0 => \score_timer[1]~3\,
	cin1 => \score_timer[1]~3COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_timer(2),
	cout0 => \score_timer[2]~5\,
	cout1 => \score_timer[2]~5COUT1_19\);

-- Location: LC_X2_Y4_N4
\score_timer[3]\ : maxv_lcell
-- Equation(s):
-- score_timer(3) = DFFEAS(score_timer(3) $ ((((!\score_timer[2]~5\)))), GLOBAL(\clk~combout\), VCC, , \score_timer[6]~15_combout\, \~GND~combout\, , , \score_timer~14_combout\)
-- \score_timer[3]~7\ = CARRY((!score_timer(3) & ((!\score_timer[2]~5COUT1_19\))))

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
	clk => \clk~combout\,
	dataa => score_timer(3),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \score_timer~14_combout\,
	ena => \score_timer[6]~15_combout\,
	cin0 => \score_timer[2]~5\,
	cin1 => \score_timer[2]~5COUT1_19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_timer(3),
	cout => \score_timer[3]~7\);

-- Location: LC_X2_Y4_N5
\score_timer[4]\ : maxv_lcell
-- Equation(s):
-- score_timer(4) = DFFEAS(score_timer(4) $ ((((\score_timer[3]~7\)))), GLOBAL(\clk~combout\), VCC, , \score_timer[6]~15_combout\, VCC, , , \score_timer~14_combout\)
-- \score_timer[4]~9\ = CARRY((score_timer(4)) # ((!\score_timer[3]~7\)))
-- \score_timer[4]~9COUT1_20\ = CARRY((score_timer(4)) # ((!\score_timer[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => score_timer(4),
	datac => VCC,
	aclr => GND,
	sload => \score_timer~14_combout\,
	ena => \score_timer[6]~15_combout\,
	cin => \score_timer[3]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_timer(4),
	cout0 => \score_timer[4]~9\,
	cout1 => \score_timer[4]~9COUT1_20\);

-- Location: LC_X2_Y4_N6
\score_timer[5]\ : maxv_lcell
-- Equation(s):
-- score_timer(5) = DFFEAS(score_timer(5) $ ((((!(!\score_timer[3]~7\ & \score_timer[4]~9\) # (\score_timer[3]~7\ & \score_timer[4]~9COUT1_20\))))), GLOBAL(\clk~combout\), VCC, , \score_timer[6]~15_combout\, \~GND~combout\, , , \score_timer~14_combout\)
-- \score_timer[5]~11\ = CARRY((!score_timer(5) & ((!\score_timer[4]~9\))))
-- \score_timer[5]~11COUT1_21\ = CARRY((!score_timer(5) & ((!\score_timer[4]~9COUT1_20\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => score_timer(5),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \score_timer~14_combout\,
	ena => \score_timer[6]~15_combout\,
	cin => \score_timer[3]~7\,
	cin0 => \score_timer[4]~9\,
	cin1 => \score_timer[4]~9COUT1_20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_timer(5),
	cout0 => \score_timer[5]~11\,
	cout1 => \score_timer[5]~11COUT1_21\);

-- Location: LC_X2_Y4_N7
\score_timer[6]\ : maxv_lcell
-- Equation(s):
-- score_timer(6) = DFFEAS((score_timer(6) $ (((!\score_timer[3]~7\ & \score_timer[5]~11\) # (\score_timer[3]~7\ & \score_timer[5]~11COUT1_21\)))), GLOBAL(\clk~combout\), VCC, , \score_timer[6]~15_combout\, VCC, , , \score_timer~14_combout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => score_timer(6),
	datac => VCC,
	aclr => GND,
	sload => \score_timer~14_combout\,
	ena => \score_timer[6]~15_combout\,
	cin => \score_timer[3]~7\,
	cin0 => \score_timer[5]~11\,
	cin1 => \score_timer[5]~11COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_timer(6));

-- Location: LC_X2_Y4_N8
\LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \LessThan0~0_combout\ = (score_timer(2)) # ((score_timer(1)) # ((score_timer(3)) # (score_timer(0))))

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
	dataa => score_timer(2),
	datab => score_timer(1),
	datac => score_timer(3),
	datad => score_timer(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~0_combout\);

-- Location: LC_X2_Y3_N7
\score_high~reg0\ : maxv_lcell
-- Equation(s):
-- \LessThan0~1\ = (score_timer(5)) # ((score_timer(4)) # ((score_timer(6)) # (\LessThan0~0_combout\)))
-- \score_high~reg0_regout\ = DFFEAS(\LessThan0~1\, GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	dataa => score_timer(5),
	datab => score_timer(4),
	datac => score_timer(6),
	datad => \LessThan0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~1\,
	regout => \score_high~reg0_regout\);

-- Location: LC_X2_Y4_N9
\score_timer[6]~15\ : maxv_lcell
-- Equation(s):
-- \score_timer[6]~15_combout\ = ((\LessThan0~1\) # ((\mole_active~regout\ & !\main~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mole_active~regout\,
	datac => \LessThan0~1\,
	datad => \main~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \score_timer[6]~15_combout\);

-- Location: LC_X7_Y1_N8
\error_timer[0]\ : maxv_lcell
-- Equation(s):
-- error_timer(0) = DFFEAS(((\LessThan1~1\ $ (error_timer(0)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \LessThan1~1\,
	datad => error_timer(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => error_timer(0));

-- Location: LC_X7_Y1_N1
\error_timer[1]~15\ : maxv_lcell
-- Equation(s):
-- \error_timer[1]~15COUT0_20\ = CARRY((error_timer(0)))
-- \error_timer[1]~15COUT1_21\ = CARRY((error_timer(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => error_timer(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	cout => \error_timer[1]~15_cout\,
	cout0 => \error_timer[1]~15COUT0_20\,
	cout1 => \error_timer[1]~15COUT1_21\);

-- Location: LC_X7_Y1_N2
\error_timer[1]\ : maxv_lcell
-- Equation(s):
-- error_timer(1) = DFFEAS((error_timer(1) $ ((!\error_timer[1]~15COUT0_20\))), GLOBAL(\clk~combout\), VCC, , \LessThan1~1\, , , , )
-- \error_timer[1]~1\ = CARRY(((!error_timer(1) & !\error_timer[1]~15COUT0_20\)))
-- \error_timer[1]~1COUT1_22\ = CARRY(((!error_timer(1) & !\error_timer[1]~15COUT1_21\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => error_timer(1),
	aclr => GND,
	ena => \LessThan1~1\,
	cin0 => \error_timer[1]~15COUT0_20\,
	cin1 => \error_timer[1]~15COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => error_timer(1),
	cout0 => \error_timer[1]~1\,
	cout1 => \error_timer[1]~1COUT1_22\);

-- Location: LC_X7_Y1_N3
\error_timer[2]\ : maxv_lcell
-- Equation(s):
-- error_timer(2) = DFFEAS(error_timer(2) $ ((((\error_timer[1]~1\)))), GLOBAL(\clk~combout\), VCC, , \LessThan1~1\, , , , )
-- \error_timer[2]~3\ = CARRY((error_timer(2)) # ((!\error_timer[1]~1\)))
-- \error_timer[2]~3COUT1_23\ = CARRY((error_timer(2)) # ((!\error_timer[1]~1COUT1_22\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => error_timer(2),
	aclr => GND,
	ena => \LessThan1~1\,
	cin0 => \error_timer[1]~1\,
	cin1 => \error_timer[1]~1COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => error_timer(2),
	cout0 => \error_timer[2]~3\,
	cout1 => \error_timer[2]~3COUT1_23\);

-- Location: LC_X7_Y1_N4
\error_timer[3]\ : maxv_lcell
-- Equation(s):
-- error_timer(3) = DFFEAS((error_timer(3) $ ((!\error_timer[2]~3\))), GLOBAL(\clk~combout\), VCC, , \LessThan1~1\, , , , )
-- \error_timer[3]~5\ = CARRY(((!error_timer(3) & !\error_timer[2]~3COUT1_23\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => error_timer(3),
	aclr => GND,
	ena => \LessThan1~1\,
	cin0 => \error_timer[2]~3\,
	cin1 => \error_timer[2]~3COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => error_timer(3),
	cout => \error_timer[3]~5\);

-- Location: LC_X7_Y1_N5
\error_timer[4]\ : maxv_lcell
-- Equation(s):
-- error_timer(4) = DFFEAS(error_timer(4) $ ((((\error_timer[3]~5\)))), GLOBAL(\clk~combout\), VCC, , \LessThan1~1\, , , , )
-- \error_timer[4]~7\ = CARRY((error_timer(4)) # ((!\error_timer[3]~5\)))
-- \error_timer[4]~7COUT1_24\ = CARRY((error_timer(4)) # ((!\error_timer[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => error_timer(4),
	aclr => GND,
	ena => \LessThan1~1\,
	cin => \error_timer[3]~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => error_timer(4),
	cout0 => \error_timer[4]~7\,
	cout1 => \error_timer[4]~7COUT1_24\);

-- Location: LC_X7_Y1_N6
\error_timer[5]\ : maxv_lcell
-- Equation(s):
-- error_timer(5) = DFFEAS((error_timer(5) $ ((!(!\error_timer[3]~5\ & \error_timer[4]~7\) # (\error_timer[3]~5\ & \error_timer[4]~7COUT1_24\)))), GLOBAL(\clk~combout\), VCC, , \LessThan1~1\, , , , )
-- \error_timer[5]~9\ = CARRY(((!error_timer(5) & !\error_timer[4]~7\)))
-- \error_timer[5]~9COUT1_25\ = CARRY(((!error_timer(5) & !\error_timer[4]~7COUT1_24\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => error_timer(5),
	aclr => GND,
	ena => \LessThan1~1\,
	cin => \error_timer[3]~5\,
	cin0 => \error_timer[4]~7\,
	cin1 => \error_timer[4]~7COUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => error_timer(5),
	cout0 => \error_timer[5]~9\,
	cout1 => \error_timer[5]~9COUT1_25\);

-- Location: LC_X7_Y1_N7
\error_timer[6]\ : maxv_lcell
-- Equation(s):
-- error_timer(6) = DFFEAS((error_timer(6) $ (((!\error_timer[3]~5\ & \error_timer[5]~9\) # (\error_timer[3]~5\ & \error_timer[5]~9COUT1_25\)))), GLOBAL(\clk~combout\), VCC, , \LessThan1~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => error_timer(6),
	aclr => GND,
	ena => \LessThan1~1\,
	cin => \error_timer[3]~5\,
	cin0 => \error_timer[5]~9\,
	cin1 => \error_timer[5]~9COUT1_25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => error_timer(6));

-- Location: LC_X7_Y1_N9
\LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \LessThan1~0_combout\ = (error_timer(0)) # ((error_timer(1)) # ((error_timer(3)) # (error_timer(2))))

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
	datab => error_timer(1),
	datac => error_timer(3),
	datad => error_timer(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan1~0_combout\);

-- Location: LC_X7_Y1_N0
\score_low~reg0\ : maxv_lcell
-- Equation(s):
-- \LessThan1~1\ = (error_timer(4)) # ((error_timer(6)) # ((error_timer(5)) # (\LessThan1~0_combout\)))
-- \score_low~reg0_regout\ = DFFEAS(\LessThan1~1\, GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	dataa => error_timer(4),
	datab => error_timer(6),
	datac => error_timer(5),
	datad => \LessThan1~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan1~1\,
	regout => \score_low~reg0_regout\);

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
	datain => GND,
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

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\score_low~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \score_low~reg0_regout\,
	oe => VCC,
	padio => ww_score_low);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\startButton~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_startButton);
END structure;


