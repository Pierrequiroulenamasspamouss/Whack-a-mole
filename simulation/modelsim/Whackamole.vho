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

-- DATE "03/25/2026 22:07:20"

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
	slowclk : IN std_logic;
	fastclk : IN std_logic;
	button : IN std_logic_vector(8 DOWNTO 0);
	addscore : IN std_logic;
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
SIGNAL ww_slowclk : std_logic;
SIGNAL ww_fastclk : std_logic;
SIGNAL ww_button : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_addscore : std_logic;
SIGNAL ww_leds : std_logic_vector(8 DOWNTO 0);
SIGNAL \fastclk~combout\ : std_logic;
SIGNAL \leds[0]~reg0_regout\ : std_logic;
SIGNAL \leds[1]~reg0_regout\ : std_logic;
SIGNAL \leds[2]~reg0_regout\ : std_logic;
SIGNAL \leds[3]~reg0_regout\ : std_logic;
SIGNAL \leds[4]~reg0_regout\ : std_logic;
SIGNAL \leds[5]~reg0_regout\ : std_logic;
SIGNAL \leds[6]~reg0_regout\ : std_logic;
SIGNAL \leds[7]~reg0_regout\ : std_logic;
SIGNAL \leds[8]~reg0_regout\ : std_logic;
SIGNAL \button~combout\ : std_logic_vector(8 DOWNTO 0);

BEGIN

ww_slowclk <= slowclk;
ww_fastclk <= fastclk;
ww_button <= button;
ww_addscore <= addscore;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fastclk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_fastclk,
	combout => \fastclk~combout\);

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

-- Location: LC_X2_Y4_N2
\leds[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[0]~reg0_regout\ = DFFEAS((((!\button~combout\(0)))), GLOBAL(\fastclk~combout\), VCC, , , , , , )

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
	clk => \fastclk~combout\,
	datac => \button~combout\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[0]~reg0_regout\);

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

-- Location: LC_X3_Y3_N0
\leds[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[1]~reg0_regout\ = DFFEAS((((!\button~combout\(1)))), GLOBAL(\fastclk~combout\), VCC, , , , , , )

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
	clk => \fastclk~combout\,
	datad => \button~combout\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[1]~reg0_regout\);

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

-- Location: LC_X7_Y4_N9
\leds[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[2]~reg0_regout\ = DFFEAS((((!\button~combout\(2)))), GLOBAL(\fastclk~combout\), VCC, , , , , , )

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
	clk => \fastclk~combout\,
	datad => \button~combout\(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[2]~reg0_regout\);

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

-- Location: LC_X3_Y4_N2
\leds[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[3]~reg0_regout\ = DFFEAS((((!\button~combout\(3)))), GLOBAL(\fastclk~combout\), VCC, , , , , , )

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
	clk => \fastclk~combout\,
	datad => \button~combout\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[3]~reg0_regout\);

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

-- Location: LC_X5_Y3_N2
\leds[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[4]~reg0_regout\ = DFFEAS((((!\button~combout\(4)))), GLOBAL(\fastclk~combout\), VCC, , , , , , )

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
	clk => \fastclk~combout\,
	datad => \button~combout\(4),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[4]~reg0_regout\);

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

-- Location: LC_X5_Y3_N4
\leds[5]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[5]~reg0_regout\ = DFFEAS((((!\button~combout\(5)))), GLOBAL(\fastclk~combout\), VCC, , , , , , )

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
	clk => \fastclk~combout\,
	datad => \button~combout\(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[5]~reg0_regout\);

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

-- Location: LC_X3_Y4_N4
\leds[6]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[6]~reg0_regout\ = DFFEAS((((!\button~combout\(6)))), GLOBAL(\fastclk~combout\), VCC, , , , , , )

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
	clk => \fastclk~combout\,
	datac => \button~combout\(6),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[6]~reg0_regout\);

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

-- Location: LC_X5_Y1_N6
\leds[7]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[7]~reg0_regout\ = DFFEAS((((!\button~combout\(7)))), GLOBAL(\fastclk~combout\), VCC, , , , , , )

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
	clk => \fastclk~combout\,
	datad => \button~combout\(7),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[7]~reg0_regout\);

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

-- Location: LC_X3_Y2_N2
\leds[8]~reg0\ : maxv_lcell
-- Equation(s):
-- \leds[8]~reg0_regout\ = DFFEAS((((!\button~combout\(8)))), GLOBAL(\fastclk~combout\), VCC, , , , , , )

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
	clk => \fastclk~combout\,
	datad => \button~combout\(8),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \leds[8]~reg0_regout\);

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\slowclk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_slowclk);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addscore~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addscore);

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
END structure;


