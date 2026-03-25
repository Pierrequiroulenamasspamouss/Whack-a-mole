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

-- DATE "03/25/2026 13:04:23"

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
	button : IN std_logic;
	leds : BUFFER std_logic_vector(8 DOWNTO 0)
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
SIGNAL ww_button : std_logic;
SIGNAL ww_leds : std_logic_vector(8 DOWNTO 0);
SIGNAL \old_button_press~regout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \button~combout\ : std_logic;
SIGNAL \main~0\ : std_logic;
SIGNAL \Decoder0~0\ : std_logic;
SIGNAL \Decoder1~0_combout\ : std_logic;
SIGNAL \leds[0]~reg0_regout\ : std_logic;
SIGNAL \Decoder0~1\ : std_logic;
SIGNAL \Decoder1~1_combout\ : std_logic;
SIGNAL \leds[1]~reg0_regout\ : std_logic;
SIGNAL \Decoder0~2\ : std_logic;
SIGNAL \Decoder1~2_combout\ : std_logic;
SIGNAL \leds[2]~reg0_regout\ : std_logic;
SIGNAL \Decoder1~3_combout\ : std_logic;
SIGNAL \Decoder0~3\ : std_logic;
SIGNAL \leds[3]~reg0_regout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \Decoder1~4_combout\ : std_logic;
SIGNAL \leds[4]~reg0_regout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \Decoder1~5_combout\ : std_logic;
SIGNAL \leds[5]~reg0_regout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \Decoder1~6_combout\ : std_logic;
SIGNAL \leds[6]~reg0_regout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \Decoder1~7_combout\ : std_logic;
SIGNAL \leds[7]~reg0_regout\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \Decoder1~8_combout\ : std_logic;
SIGNAL \leds[8]~reg0_regout\ : std_logic;
SIGNAL cnt : std_logic_vector(3 DOWNTO 0);
SIGNAL current_value : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_button <= button;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LC_X3_Y2_N5
\cnt[1]\ : maxv_lcell
-- Equation(s):
-- cnt(1) = DFFEAS(((cnt(0) $ (cnt(1)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => cnt(0),
	datad => cnt(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(1));

-- Location: LC_X4_Y2_N5
\cnt[2]\ : maxv_lcell
-- Equation(s):
-- cnt(2) = DFFEAS((cnt(2) $ (((cnt(0) & cnt(1))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => cnt(0),
	datac => cnt(2),
	datad => cnt(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(2));

-- Location: LC_X3_Y2_N6
\cnt[3]\ : maxv_lcell
-- Equation(s):
-- cnt(3) = DFFEAS((cnt(2) & (cnt(3) $ (((cnt(0) & cnt(1)))))) # (!cnt(2) & (cnt(3) & ((cnt(0)) # (cnt(1))))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	dataa => cnt(2),
	datab => cnt(3),
	datac => cnt(0),
	datad => cnt(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(3));

-- Location: LC_X3_Y2_N3
\cnt[0]\ : maxv_lcell
-- Equation(s):
-- cnt(0) = DFFEAS((!cnt(0) & ((cnt(1)) # ((cnt(2)) # (!cnt(3))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3233",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(1),
	datab => cnt(0),
	datac => cnt(2),
	datad => cnt(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(0));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\button~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_button,
	combout => \button~combout\);

-- Location: LC_X3_Y2_N8
old_button_press : maxv_lcell
-- Equation(s):
-- \main~0\ = (\button~combout\ & (((!old_button_press))))

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
	clk => \clk~combout\,
	dataa => \button~combout\,
	datac => \button~combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \main~0\,
	regout => \old_button_press~regout\);

-- Location: LC_X3_Y2_N9
\current_value[0]\ : maxv_lcell
-- Equation(s):
-- \Decoder0~0\ = (!current_value(3) & (!current_value(1) & (!current_value[0] & !current_value(2))))
-- current_value(0) = DFFEAS(\Decoder0~0\, GLOBAL(\clk~combout\), VCC, , \main~0\, cnt(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => current_value(3),
	datab => current_value(1),
	datac => cnt(0),
	datad => current_value(2),
	aclr => GND,
	sload => VCC,
	ena => \main~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~0\,
	regout => current_value(0));

-- Location: LC_X3_Y2_N1
\current_value[1]\ : maxv_lcell
-- Equation(s):
-- \Decoder0~1\ = (!current_value(3) & (current_value(0) & (!current_value[1] & !current_value(2))))
-- current_value(1) = DFFEAS(\Decoder0~1\, GLOBAL(\clk~combout\), VCC, , \main~0\, cnt(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => current_value(3),
	datab => current_value(0),
	datac => cnt(1),
	datad => current_value(2),
	aclr => GND,
	sload => VCC,
	ena => \main~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~1\,
	regout => current_value(1));

-- Location: LC_X3_Y2_N0
\current_value[2]\ : maxv_lcell
-- Equation(s):
-- \Decoder0~2\ = (!current_value(3) & (current_value(1) & (!current_value[2] & !current_value(0))))
-- current_value(2) = DFFEAS(\Decoder0~2\, GLOBAL(\clk~combout\), VCC, , \main~0\, cnt(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => current_value(3),
	datab => current_value(1),
	datac => cnt(2),
	datad => current_value(0),
	aclr => GND,
	sload => VCC,
	ena => \main~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~2\,
	regout => current_value(2));

-- Location: LC_X3_Y2_N7
\current_value[3]\ : maxv_lcell
-- Equation(s):
-- \Decoder0~3\ = (!current_value(2) & (current_value(1) & (!current_value[3] & current_value(0))))
-- current_value(3) = DFFEAS(\Decoder0~3\, GLOBAL(\clk~combout\), VCC, , \main~0\, cnt(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => current_value(2),
	datab => current_value(1),
	datac => cnt(3),
	datad => current_value(0),
	aclr => GND,
	sload => VCC,
	ena => \main~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~3\,
	regout => current_value(3));

-- Location: LC_X4_Y2_N1
\Decoder1~0\ : maxv_lcell
-- Equation(s):
-- \Decoder1~0_combout\ = (!cnt(2) & (!cnt(3) & (!cnt(0) & !cnt(1))))

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
	dataa => cnt(2),
	datab => cnt(3),
	datac => cnt(0),
	datad => cnt(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder1~0_combout\);

-- Location: LC_X4_Y2_N7
\leds[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[0]~reg0_regout\ = DFFEAS(((\Decoder1~0_combout\) # ((\leds[0]~reg0_regout\ & !\Decoder0~0\))), GLOBAL(\clk~combout\), VCC, , \main~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \leds[0]~reg0_regout\,
	datac => \Decoder0~0\,
	datad => \Decoder1~0_combout\,
	aclr => GND,
	ena => \main~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[0]~reg0_regout\);

-- Location: LC_X4_Y2_N2
\Decoder1~1\ : maxv_lcell
-- Equation(s):
-- \Decoder1~1_combout\ = (!cnt(2) & (!cnt(3) & (cnt(0) & !cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(2),
	datab => cnt(3),
	datac => cnt(0),
	datad => cnt(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder1~1_combout\);

-- Location: LC_X4_Y2_N3
\leds[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[1]~reg0_regout\ = DFFEAS(((\Decoder1~1_combout\) # ((\leds[1]~reg0_regout\ & !\Decoder0~1\))), GLOBAL(\clk~combout\), VCC, , \main~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \leds[1]~reg0_regout\,
	datac => \Decoder0~1\,
	datad => \Decoder1~1_combout\,
	aclr => GND,
	ena => \main~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[1]~reg0_regout\);

-- Location: LC_X2_Y2_N3
\Decoder1~2\ : maxv_lcell
-- Equation(s):
-- \Decoder1~2_combout\ = (!cnt(0) & (!cnt(3) & (cnt(1) & !cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datab => cnt(3),
	datac => cnt(1),
	datad => cnt(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder1~2_combout\);

-- Location: LC_X2_Y2_N0
\leds[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[2]~reg0_regout\ = DFFEAS(((\Decoder1~2_combout\) # ((\leds[2]~reg0_regout\ & !\Decoder0~2\))), GLOBAL(\clk~combout\), VCC, , \main~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \leds[2]~reg0_regout\,
	datac => \Decoder0~2\,
	datad => \Decoder1~2_combout\,
	aclr => GND,
	ena => \main~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[2]~reg0_regout\);

-- Location: LC_X4_Y2_N4
\Decoder1~3\ : maxv_lcell
-- Equation(s):
-- \Decoder1~3_combout\ = (!cnt(2) & (!cnt(3) & (cnt(0) & cnt(1))))

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
	dataa => cnt(2),
	datab => cnt(3),
	datac => cnt(0),
	datad => cnt(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder1~3_combout\);

-- Location: LC_X4_Y2_N6
\leds[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[3]~reg0_regout\ = DFFEAS(((\Decoder1~3_combout\) # ((\leds[3]~reg0_regout\ & !\Decoder0~3\))), GLOBAL(\clk~combout\), VCC, , \main~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0fa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \leds[3]~reg0_regout\,
	datac => \Decoder1~3_combout\,
	datad => \Decoder0~3\,
	aclr => GND,
	ena => \main~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[3]~reg0_regout\);

-- Location: LC_X2_Y2_N4
\Decoder0~4\ : maxv_lcell
-- Equation(s):
-- \Decoder0~4_combout\ = (current_value(2) & (!current_value(0) & (!current_value(3) & !current_value(1))))

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
	dataa => current_value(2),
	datab => current_value(0),
	datac => current_value(3),
	datad => current_value(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~4_combout\);

-- Location: LC_X2_Y2_N5
\Decoder1~4\ : maxv_lcell
-- Equation(s):
-- \Decoder1~4_combout\ = (!cnt(0) & (!cnt(3) & (!cnt(1) & cnt(2))))

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
	dataa => cnt(0),
	datab => cnt(3),
	datac => cnt(1),
	datad => cnt(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder1~4_combout\);

-- Location: LC_X2_Y2_N6
\leds[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[4]~reg0_regout\ = DFFEAS(((\Decoder1~4_combout\) # ((\leds[4]~reg0_regout\ & !\Decoder0~4_combout\))), GLOBAL(\clk~combout\), VCC, , \main~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \leds[4]~reg0_regout\,
	datac => \Decoder0~4_combout\,
	datad => \Decoder1~4_combout\,
	aclr => GND,
	ena => \main~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[4]~reg0_regout\);

-- Location: LC_X2_Y2_N7
\Decoder0~5\ : maxv_lcell
-- Equation(s):
-- \Decoder0~5_combout\ = (current_value(2) & (current_value(0) & (!current_value(3) & !current_value(1))))

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
	dataa => current_value(2),
	datab => current_value(0),
	datac => current_value(3),
	datad => current_value(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~5_combout\);

-- Location: LC_X2_Y2_N8
\Decoder1~5\ : maxv_lcell
-- Equation(s):
-- \Decoder1~5_combout\ = (cnt(0) & (!cnt(3) & (!cnt(1) & cnt(2))))

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
	dataa => cnt(0),
	datab => cnt(3),
	datac => cnt(1),
	datad => cnt(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder1~5_combout\);

-- Location: LC_X2_Y2_N9
\leds[5]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[5]~reg0_regout\ = DFFEAS(((\Decoder1~5_combout\) # ((\leds[5]~reg0_regout\ & !\Decoder0~5_combout\))), GLOBAL(\clk~combout\), VCC, , \main~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0c",
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
	datad => \Decoder1~5_combout\,
	aclr => GND,
	ena => \main~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[5]~reg0_regout\);

-- Location: LC_X3_Y2_N4
\Decoder0~6\ : maxv_lcell
-- Equation(s):
-- \Decoder0~6_combout\ = (!current_value(3) & (current_value(1) & (current_value(2) & !current_value(0))))

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
	dataa => current_value(3),
	datab => current_value(1),
	datac => current_value(2),
	datad => current_value(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~6_combout\);

-- Location: LC_X4_Y2_N9
\Decoder1~6\ : maxv_lcell
-- Equation(s):
-- \Decoder1~6_combout\ = (cnt(2) & (!cnt(3) & (!cnt(0) & cnt(1))))

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
	dataa => cnt(2),
	datab => cnt(3),
	datac => cnt(0),
	datad => cnt(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder1~6_combout\);

-- Location: LC_X4_Y2_N0
\leds[6]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[6]~reg0_regout\ = DFFEAS(((\Decoder1~6_combout\) # ((\leds[6]~reg0_regout\ & !\Decoder0~6_combout\))), GLOBAL(\clk~combout\), VCC, , \main~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \leds[6]~reg0_regout\,
	datac => \Decoder0~6_combout\,
	datad => \Decoder1~6_combout\,
	aclr => GND,
	ena => \main~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[6]~reg0_regout\);

-- Location: LC_X4_Y2_N8
\Decoder0~7\ : maxv_lcell
-- Equation(s):
-- \Decoder0~7_combout\ = (current_value(1) & (!current_value(3) & (current_value(0) & current_value(2))))

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
	dataa => current_value(1),
	datab => current_value(3),
	datac => current_value(0),
	datad => current_value(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~7_combout\);

-- Location: LC_X5_Y2_N3
\Decoder1~7\ : maxv_lcell
-- Equation(s):
-- \Decoder1~7_combout\ = (cnt(2) & (!cnt(3) & (cnt(1) & cnt(0))))

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
	dataa => cnt(2),
	datab => cnt(3),
	datac => cnt(1),
	datad => cnt(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder1~7_combout\);

-- Location: LC_X5_Y2_N4
\leds[7]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[7]~reg0_regout\ = DFFEAS(((\Decoder1~7_combout\) # ((\leds[7]~reg0_regout\ & !\Decoder0~7_combout\))), GLOBAL(\clk~combout\), VCC, , \main~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \leds[7]~reg0_regout\,
	datac => \Decoder0~7_combout\,
	datad => \Decoder1~7_combout\,
	aclr => GND,
	ena => \main~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[7]~reg0_regout\);

-- Location: LC_X3_Y2_N2
\Decoder0~8\ : maxv_lcell
-- Equation(s):
-- \Decoder0~8_combout\ = (current_value(3) & (!current_value(0) & (!current_value(2) & !current_value(1))))

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
	dataa => current_value(3),
	datab => current_value(0),
	datac => current_value(2),
	datad => current_value(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~8_combout\);

-- Location: LC_X2_Y2_N1
\Decoder1~8\ : maxv_lcell
-- Equation(s):
-- \Decoder1~8_combout\ = (!cnt(0) & (cnt(3) & (!cnt(1) & !cnt(2))))

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
	dataa => cnt(0),
	datab => cnt(3),
	datac => cnt(1),
	datad => cnt(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder1~8_combout\);

-- Location: LC_X2_Y2_N2
\leds[8]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[8]~reg0_regout\ = DFFEAS(((\Decoder1~8_combout\) # ((\leds[8]~reg0_regout\ & !\Decoder0~8_combout\))), GLOBAL(\clk~combout\), VCC, , \main~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \leds[8]~reg0_regout\,
	datac => \Decoder0~8_combout\,
	datad => \Decoder1~8_combout\,
	aclr => GND,
	ena => \main~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[8]~reg0_regout\);

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds[0]~reg0_regout\,
	oe => VCC,
	padio => ww_leds(0));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds[1]~reg0_regout\,
	oe => VCC,
	padio => ww_leds(1));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds[2]~reg0_regout\,
	oe => VCC,
	padio => ww_leds(2));

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds[3]~reg0_regout\,
	oe => VCC,
	padio => ww_leds(3));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds[4]~reg0_regout\,
	oe => VCC,
	padio => ww_leds(4));

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds[5]~reg0_regout\,
	oe => VCC,
	padio => ww_leds(5));

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds[6]~reg0_regout\,
	oe => VCC,
	padio => ww_leds(6));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds[7]~reg0_regout\,
	oe => VCC,
	padio => ww_leds(7));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds[8]~reg0_regout\,
	oe => VCC,
	padio => ww_leds(8));
END structure;


