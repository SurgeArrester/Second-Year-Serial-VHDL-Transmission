-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 12.0 Build 178 05/31/2012 SJ Full Version"

-- DATE "06/05/2013 09:06:42"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	finalreceiver IS
    PORT (
	datain : IN std_logic;
	disp0 : OUT std_logic_vector(6 DOWNTO 0);
	disp1 : OUT std_logic_vector(6 DOWNTO 0);
	disp2 : OUT std_logic_vector(6 DOWNTO 0);
	disp3 : OUT std_logic_vector(6 DOWNTO 0);
	clock : IN std_logic
	);
END finalreceiver;

-- Design Ports Information
-- disp0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF finalreceiver IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_datain : std_logic;
SIGNAL ww_disp0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL \instance3|clock_slow~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instance1|Add0~6_combout\ : std_logic;
SIGNAL \instance3|clock_slow~q\ : std_logic;
SIGNAL \instance3|clock_slow~0_combout\ : std_logic;
SIGNAL \instance1|count[3]~3_combout\ : std_logic;
SIGNAL \instance3|Add0~0_combout\ : std_logic;
SIGNAL \instance3|count[0]~0_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \instance3|clock_slow~clkctrl_outclk\ : std_logic;
SIGNAL \instance3|clock_slow~feeder_combout\ : std_logic;
SIGNAL \disp0[0]~output_o\ : std_logic;
SIGNAL \disp0[1]~output_o\ : std_logic;
SIGNAL \disp0[2]~output_o\ : std_logic;
SIGNAL \disp0[3]~output_o\ : std_logic;
SIGNAL \disp0[4]~output_o\ : std_logic;
SIGNAL \disp0[5]~output_o\ : std_logic;
SIGNAL \disp0[6]~output_o\ : std_logic;
SIGNAL \disp1[0]~output_o\ : std_logic;
SIGNAL \disp1[1]~output_o\ : std_logic;
SIGNAL \disp1[2]~output_o\ : std_logic;
SIGNAL \disp1[3]~output_o\ : std_logic;
SIGNAL \disp1[4]~output_o\ : std_logic;
SIGNAL \disp1[5]~output_o\ : std_logic;
SIGNAL \disp1[6]~output_o\ : std_logic;
SIGNAL \disp2[0]~output_o\ : std_logic;
SIGNAL \disp2[1]~output_o\ : std_logic;
SIGNAL \disp2[2]~output_o\ : std_logic;
SIGNAL \disp2[3]~output_o\ : std_logic;
SIGNAL \disp2[4]~output_o\ : std_logic;
SIGNAL \disp2[5]~output_o\ : std_logic;
SIGNAL \disp2[6]~output_o\ : std_logic;
SIGNAL \disp3[0]~output_o\ : std_logic;
SIGNAL \disp3[1]~output_o\ : std_logic;
SIGNAL \disp3[2]~output_o\ : std_logic;
SIGNAL \disp3[3]~output_o\ : std_logic;
SIGNAL \disp3[4]~output_o\ : std_logic;
SIGNAL \disp3[5]~output_o\ : std_logic;
SIGNAL \disp3[6]~output_o\ : std_logic;
SIGNAL \datain~input_o\ : std_logic;
SIGNAL \instance1|temp[16]~feeder_combout\ : std_logic;
SIGNAL \instance1|temp[15]~feeder_combout\ : std_logic;
SIGNAL \instance1|temp[14]~feeder_combout\ : std_logic;
SIGNAL \instance1|temp[13]~feeder_combout\ : std_logic;
SIGNAL \instance1|temp[12]~feeder_combout\ : std_logic;
SIGNAL \instance1|temp[11]~feeder_combout\ : std_logic;
SIGNAL \instance1|temp[10]~feeder_combout\ : std_logic;
SIGNAL \instance1|temp[9]~feeder_combout\ : std_logic;
SIGNAL \instance1|temp[8]~feeder_combout\ : std_logic;
SIGNAL \instance1|temp[7]~feeder_combout\ : std_logic;
SIGNAL \instance1|temp[6]~feeder_combout\ : std_logic;
SIGNAL \instance1|temp[5]~feeder_combout\ : std_logic;
SIGNAL \instance1|temp[4]~feeder_combout\ : std_logic;
SIGNAL \instance1|temp[3]~feeder_combout\ : std_logic;
SIGNAL \instance1|temp[2]~feeder_combout\ : std_logic;
SIGNAL \instance1|temp[1]~feeder_combout\ : std_logic;
SIGNAL \instance1|serialout0[1]~feeder_combout\ : std_logic;
SIGNAL \instance1|Add0~1\ : std_logic;
SIGNAL \instance1|Add0~3\ : std_logic;
SIGNAL \instance1|Add0~4_combout\ : std_logic;
SIGNAL \instance1|count[2]~2_combout\ : std_logic;
SIGNAL \instance1|Add0~2_combout\ : std_logic;
SIGNAL \instance1|count[1]~1_combout\ : std_logic;
SIGNAL \instance1|Add0~5\ : std_logic;
SIGNAL \instance1|Add0~7\ : std_logic;
SIGNAL \instance1|Add0~8_combout\ : std_logic;
SIGNAL \instance1|count[4]~4_combout\ : std_logic;
SIGNAL \instance1|Equal1~0_combout\ : std_logic;
SIGNAL \instance1|Add0~0_combout\ : std_logic;
SIGNAL \instance1|count[0]~0_combout\ : std_logic;
SIGNAL \instance1|Equal1~1_combout\ : std_logic;
SIGNAL \instance1|temp[0]~feeder_combout\ : std_logic;
SIGNAL \instance2|hexout0[0]~0_combout\ : std_logic;
SIGNAL \instance2|hexout0[1]~1_combout\ : std_logic;
SIGNAL \instance2|hexout0[2]~2_combout\ : std_logic;
SIGNAL \instance2|hexout0[3]~3_combout\ : std_logic;
SIGNAL \instance2|hexout0[4]~4_combout\ : std_logic;
SIGNAL \instance2|hexout0[5]~5_combout\ : std_logic;
SIGNAL \instance2|hexout0[6]~6_combout\ : std_logic;
SIGNAL \instance1|serialout1[1]~feeder_combout\ : std_logic;
SIGNAL \instance2|hexout1[0]~0_combout\ : std_logic;
SIGNAL \instance2|hexout1[1]~1_combout\ : std_logic;
SIGNAL \instance2|hexout1[2]~2_combout\ : std_logic;
SIGNAL \instance2|hexout1[3]~3_combout\ : std_logic;
SIGNAL \instance2|hexout1[4]~4_combout\ : std_logic;
SIGNAL \instance2|hexout1[5]~5_combout\ : std_logic;
SIGNAL \instance2|hexout1[6]~6_combout\ : std_logic;
SIGNAL \instance1|serialout2[3]~feeder_combout\ : std_logic;
SIGNAL \instance1|serialout2[0]~feeder_combout\ : std_logic;
SIGNAL \instance1|serialout2[1]~feeder_combout\ : std_logic;
SIGNAL \instance2|hexout2[0]~0_combout\ : std_logic;
SIGNAL \instance2|hexout2[1]~1_combout\ : std_logic;
SIGNAL \instance2|hexout2[2]~2_combout\ : std_logic;
SIGNAL \instance2|hexout2[3]~3_combout\ : std_logic;
SIGNAL \instance2|hexout2[4]~4_combout\ : std_logic;
SIGNAL \instance2|hexout2[5]~5_combout\ : std_logic;
SIGNAL \instance2|hexout2[6]~6_combout\ : std_logic;
SIGNAL \instance1|serialout3[1]~feeder_combout\ : std_logic;
SIGNAL \instance1|serialout3[2]~feeder_combout\ : std_logic;
SIGNAL \instance2|hexout3[0]~0_combout\ : std_logic;
SIGNAL \instance2|hexout3[1]~1_combout\ : std_logic;
SIGNAL \instance2|hexout3[2]~2_combout\ : std_logic;
SIGNAL \instance2|hexout3[3]~3_combout\ : std_logic;
SIGNAL \instance2|hexout3[4]~4_combout\ : std_logic;
SIGNAL \instance2|hexout3[5]~5_combout\ : std_logic;
SIGNAL \instance2|hexout3[6]~6_combout\ : std_logic;
SIGNAL \instance1|temp\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \instance1|serialout3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instance1|serialout2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instance1|serialout1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instance1|serialout0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instance1|count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \instance3|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \instance2|ALT_INV_hexout3[6]~6_combout\ : std_logic;
SIGNAL \instance2|ALT_INV_hexout2[6]~6_combout\ : std_logic;
SIGNAL \instance2|ALT_INV_hexout1[6]~6_combout\ : std_logic;
SIGNAL \instance2|ALT_INV_hexout0[6]~6_combout\ : std_logic;

BEGIN

ww_datain <= datain;
disp0 <= ww_disp0;
disp1 <= ww_disp1;
disp2 <= ww_disp2;
disp3 <= ww_disp3;
ww_clock <= clock;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\instance3|clock_slow~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \instance3|clock_slow~q\);
\instance2|ALT_INV_hexout3[6]~6_combout\ <= NOT \instance2|hexout3[6]~6_combout\;
\instance2|ALT_INV_hexout2[6]~6_combout\ <= NOT \instance2|hexout2[6]~6_combout\;
\instance2|ALT_INV_hexout1[6]~6_combout\ <= NOT \instance2|hexout1[6]~6_combout\;
\instance2|ALT_INV_hexout0[6]~6_combout\ <= NOT \instance2|hexout0[6]~6_combout\;

-- Location: LCCOMB_X113_Y21_N12
\instance1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|Add0~6_combout\ = (\instance1|count\(3) & (\instance1|Add0~5\ & VCC)) # (!\instance1|count\(3) & (!\instance1|Add0~5\))
-- \instance1|Add0~7\ = CARRY((!\instance1|count\(3) & !\instance1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|count\(3),
	datad => VCC,
	cin => \instance1|Add0~5\,
	combout => \instance1|Add0~6_combout\,
	cout => \instance1|Add0~7\);

-- Location: FF_X114_Y37_N5
\instance3|clock_slow\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \instance3|clock_slow~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance3|clock_slow~q\);

-- Location: FF_X113_Y21_N31
\instance1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	d => \instance1|count[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|count\(3));

-- Location: FF_X114_Y37_N29
\instance3|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \instance3|count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance3|count\(0));

-- Location: FF_X114_Y37_N31
\instance3|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \instance3|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance3|count\(1));

-- Location: LCCOMB_X114_Y37_N20
\instance3|clock_slow~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance3|clock_slow~0_combout\ = (\instance3|count\(1) & ((\instance3|clock_slow~q\) # (!\instance3|count\(0)))) # (!\instance3|count\(1) & ((\instance3|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance3|clock_slow~q\,
	datac => \instance3|count\(1),
	datad => \instance3|count\(0),
	combout => \instance3|clock_slow~0_combout\);

-- Location: LCCOMB_X113_Y21_N30
\instance1|count[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|count[3]~3_combout\ = (\instance1|Add0~6_combout\ & ((\instance1|count\(0)) # (!\instance1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|count\(0),
	datac => \instance1|Equal1~0_combout\,
	datad => \instance1|Add0~6_combout\,
	combout => \instance1|count[3]~3_combout\);

-- Location: LCCOMB_X114_Y37_N30
\instance3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance3|Add0~0_combout\ = \instance3|count\(1) $ (\instance3|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance3|count\(1),
	datad => \instance3|count\(0),
	combout => \instance3|Add0~0_combout\);

-- Location: LCCOMB_X114_Y37_N28
\instance3|count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance3|count[0]~0_combout\ = !\instance3|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance3|count\(0),
	combout => \instance3|count[0]~0_combout\);

-- Location: IOIBUF_X115_Y17_N1
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G8
\instance3|clock_slow~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \instance3|clock_slow~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \instance3|clock_slow~clkctrl_outclk\);

-- Location: LCCOMB_X114_Y37_N4
\instance3|clock_slow~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance3|clock_slow~feeder_combout\ = \instance3|clock_slow~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance3|clock_slow~0_combout\,
	combout => \instance3|clock_slow~feeder_combout\);

-- Location: IOOBUF_X69_Y73_N23
\disp0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance2|hexout0[0]~0_combout\,
	devoe => ww_devoe,
	o => \disp0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\disp0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance2|hexout0[1]~1_combout\,
	devoe => ww_devoe,
	o => \disp0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\disp0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance2|hexout0[2]~2_combout\,
	devoe => ww_devoe,
	o => \disp0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\disp0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance2|hexout0[3]~3_combout\,
	devoe => ww_devoe,
	o => \disp0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\disp0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance2|hexout0[4]~4_combout\,
	devoe => ww_devoe,
	o => \disp0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\disp0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance2|hexout0[5]~5_combout\,
	devoe => ww_devoe,
	o => \disp0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\disp0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance2|ALT_INV_hexout0[6]~6_combout\,
	devoe => ww_devoe,
	o => \disp0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\disp1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance2|hexout1[0]~0_combout\,
	devoe => ww_devoe,
	o => \disp1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\disp1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance2|hexout1[1]~1_combout\,
	devoe => ww_devoe,
	o => \disp1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\disp1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance2|hexout1[2]~2_combout\,
	devoe => ww_devoe,
	o => \disp1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\disp1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance2|hexout1[3]~3_combout\,
	devoe => ww_devoe,
	o => \disp1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\disp1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance2|hexout1[4]~4_combout\,
	devoe => ww_devoe,
	o => \disp1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\disp1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance2|hexout1[5]~5_combout\,
	devoe => ww_devoe,
	o => \disp1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\disp1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance2|ALT_INV_hexout1[6]~6_combout\,
	devoe => ww_devoe,
	o => \disp1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\disp2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance2|hexout2[0]~0_combout\,
	devoe => ww_devoe,
	o => \disp2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\disp2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance2|hexout2[1]~1_combout\,
	devoe => ww_devoe,
	o => \disp2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\disp2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance2|hexout2[2]~2_combout\,
	devoe => ww_devoe,
	o => \disp2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\disp2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance2|hexout2[3]~3_combout\,
	devoe => ww_devoe,
	o => \disp2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\disp2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance2|hexout2[4]~4_combout\,
	devoe => ww_devoe,
	o => \disp2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\disp2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance2|hexout2[5]~5_combout\,
	devoe => ww_devoe,
	o => \disp2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\disp2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance2|ALT_INV_hexout2[6]~6_combout\,
	devoe => ww_devoe,
	o => \disp2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\disp3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance2|hexout3[0]~0_combout\,
	devoe => ww_devoe,
	o => \disp3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\disp3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance2|hexout3[1]~1_combout\,
	devoe => ww_devoe,
	o => \disp3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\disp3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance2|hexout3[2]~2_combout\,
	devoe => ww_devoe,
	o => \disp3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\disp3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance2|hexout3[3]~3_combout\,
	devoe => ww_devoe,
	o => \disp3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\disp3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance2|hexout3[4]~4_combout\,
	devoe => ww_devoe,
	o => \disp3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\disp3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance2|hexout3[5]~5_combout\,
	devoe => ww_devoe,
	o => \disp3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\disp3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance2|ALT_INV_hexout3[6]~6_combout\,
	devoe => ww_devoe,
	o => \disp3[6]~output_o\);

-- Location: IOIBUF_X115_Y14_N1
\datain~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain,
	o => \datain~input_o\);

-- Location: LCCOMB_X111_Y21_N0
\instance1|temp[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|temp[16]~feeder_combout\ = \datain~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datain~input_o\,
	combout => \instance1|temp[16]~feeder_combout\);

-- Location: FF_X111_Y21_N1
\instance1|temp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	d => \instance1|temp[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|temp\(16));

-- Location: LCCOMB_X111_Y21_N6
\instance1|temp[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|temp[15]~feeder_combout\ = \instance1|temp\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance1|temp\(16),
	combout => \instance1|temp[15]~feeder_combout\);

-- Location: FF_X111_Y21_N7
\instance1|temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	d => \instance1|temp[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|temp\(15));

-- Location: LCCOMB_X112_Y21_N10
\instance1|temp[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|temp[14]~feeder_combout\ = \instance1|temp\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance1|temp\(15),
	combout => \instance1|temp[14]~feeder_combout\);

-- Location: FF_X112_Y21_N11
\instance1|temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	d => \instance1|temp[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|temp\(14));

-- Location: LCCOMB_X112_Y21_N14
\instance1|temp[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|temp[13]~feeder_combout\ = \instance1|temp\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance1|temp\(14),
	combout => \instance1|temp[13]~feeder_combout\);

-- Location: FF_X112_Y21_N15
\instance1|temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	d => \instance1|temp[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|temp\(13));

-- Location: LCCOMB_X112_Y21_N8
\instance1|temp[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|temp[12]~feeder_combout\ = \instance1|temp\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance1|temp\(13),
	combout => \instance1|temp[12]~feeder_combout\);

-- Location: FF_X112_Y21_N9
\instance1|temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	d => \instance1|temp[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|temp\(12));

-- Location: LCCOMB_X112_Y21_N20
\instance1|temp[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|temp[11]~feeder_combout\ = \instance1|temp\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance1|temp\(12),
	combout => \instance1|temp[11]~feeder_combout\);

-- Location: FF_X112_Y21_N21
\instance1|temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	d => \instance1|temp[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|temp\(11));

-- Location: LCCOMB_X112_Y21_N26
\instance1|temp[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|temp[10]~feeder_combout\ = \instance1|temp\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance1|temp\(11),
	combout => \instance1|temp[10]~feeder_combout\);

-- Location: FF_X112_Y21_N27
\instance1|temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	d => \instance1|temp[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|temp\(10));

-- Location: LCCOMB_X112_Y21_N6
\instance1|temp[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|temp[9]~feeder_combout\ = \instance1|temp\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance1|temp\(10),
	combout => \instance1|temp[9]~feeder_combout\);

-- Location: FF_X112_Y21_N7
\instance1|temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	d => \instance1|temp[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|temp\(9));

-- Location: LCCOMB_X112_Y21_N24
\instance1|temp[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|temp[8]~feeder_combout\ = \instance1|temp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance1|temp\(9),
	combout => \instance1|temp[8]~feeder_combout\);

-- Location: FF_X112_Y21_N25
\instance1|temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	d => \instance1|temp[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|temp\(8));

-- Location: LCCOMB_X114_Y21_N8
\instance1|temp[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|temp[7]~feeder_combout\ = \instance1|temp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance1|temp\(8),
	combout => \instance1|temp[7]~feeder_combout\);

-- Location: FF_X114_Y21_N9
\instance1|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	d => \instance1|temp[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|temp\(7));

-- Location: LCCOMB_X114_Y21_N30
\instance1|temp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|temp[6]~feeder_combout\ = \instance1|temp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance1|temp\(7),
	combout => \instance1|temp[6]~feeder_combout\);

-- Location: FF_X114_Y21_N31
\instance1|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	d => \instance1|temp[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|temp\(6));

-- Location: LCCOMB_X114_Y21_N24
\instance1|temp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|temp[5]~feeder_combout\ = \instance1|temp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance1|temp\(6),
	combout => \instance1|temp[5]~feeder_combout\);

-- Location: FF_X114_Y21_N25
\instance1|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	d => \instance1|temp[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|temp\(5));

-- Location: LCCOMB_X114_Y21_N10
\instance1|temp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|temp[4]~feeder_combout\ = \instance1|temp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance1|temp\(5),
	combout => \instance1|temp[4]~feeder_combout\);

-- Location: FF_X114_Y21_N11
\instance1|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	d => \instance1|temp[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|temp\(4));

-- Location: LCCOMB_X114_Y21_N0
\instance1|temp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|temp[3]~feeder_combout\ = \instance1|temp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance1|temp\(4),
	combout => \instance1|temp[3]~feeder_combout\);

-- Location: FF_X114_Y21_N1
\instance1|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	d => \instance1|temp[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|temp\(3));

-- Location: LCCOMB_X114_Y21_N14
\instance1|temp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|temp[2]~feeder_combout\ = \instance1|temp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance1|temp\(3),
	combout => \instance1|temp[2]~feeder_combout\);

-- Location: FF_X114_Y21_N15
\instance1|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	d => \instance1|temp[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|temp\(2));

-- Location: LCCOMB_X114_Y21_N20
\instance1|temp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|temp[1]~feeder_combout\ = \instance1|temp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance1|temp\(2),
	combout => \instance1|temp[1]~feeder_combout\);

-- Location: FF_X114_Y21_N21
\instance1|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	d => \instance1|temp[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|temp\(1));

-- Location: LCCOMB_X113_Y21_N4
\instance1|serialout0[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|serialout0[1]~feeder_combout\ = \instance1|temp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance1|temp\(1),
	combout => \instance1|serialout0[1]~feeder_combout\);

-- Location: LCCOMB_X113_Y21_N6
\instance1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|Add0~0_combout\ = \instance1|count\(0) $ (VCC)
-- \instance1|Add0~1\ = CARRY(\instance1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance1|count\(0),
	datad => VCC,
	combout => \instance1|Add0~0_combout\,
	cout => \instance1|Add0~1\);

-- Location: LCCOMB_X113_Y21_N8
\instance1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|Add0~2_combout\ = (\instance1|count\(1) & (\instance1|Add0~1\ & VCC)) # (!\instance1|count\(1) & (!\instance1|Add0~1\))
-- \instance1|Add0~3\ = CARRY((!\instance1|count\(1) & !\instance1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|count\(1),
	datad => VCC,
	cin => \instance1|Add0~1\,
	combout => \instance1|Add0~2_combout\,
	cout => \instance1|Add0~3\);

-- Location: LCCOMB_X113_Y21_N10
\instance1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|Add0~4_combout\ = (\instance1|count\(2) & ((GND) # (!\instance1|Add0~3\))) # (!\instance1|count\(2) & (\instance1|Add0~3\ $ (GND)))
-- \instance1|Add0~5\ = CARRY((\instance1|count\(2)) # (!\instance1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance1|count\(2),
	datad => VCC,
	cin => \instance1|Add0~3\,
	combout => \instance1|Add0~4_combout\,
	cout => \instance1|Add0~5\);

-- Location: LCCOMB_X113_Y21_N20
\instance1|count[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|count[2]~2_combout\ = (\instance1|Add0~4_combout\ & ((\instance1|count\(0)) # (!\instance1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|count\(0),
	datac => \instance1|Equal1~0_combout\,
	datad => \instance1|Add0~4_combout\,
	combout => \instance1|count[2]~2_combout\);

-- Location: FF_X113_Y21_N21
\instance1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	d => \instance1|count[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|count\(2));

-- Location: LCCOMB_X113_Y21_N26
\instance1|count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|count[1]~1_combout\ = (\instance1|Add0~2_combout\ & ((\instance1|count\(0)) # ((\datain~input_o\) # (!\instance1|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|count\(0),
	datab => \datain~input_o\,
	datac => \instance1|Add0~2_combout\,
	datad => \instance1|Equal1~0_combout\,
	combout => \instance1|count[1]~1_combout\);

-- Location: FF_X113_Y21_N27
\instance1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	d => \instance1|count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|count\(1));

-- Location: LCCOMB_X113_Y21_N14
\instance1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|Add0~8_combout\ = \instance1|Add0~7\ $ (\instance1|count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \instance1|count\(4),
	cin => \instance1|Add0~7\,
	combout => \instance1|Add0~8_combout\);

-- Location: LCCOMB_X113_Y21_N0
\instance1|count[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|count[4]~4_combout\ = (\instance1|count\(0) & (((\instance1|Add0~8_combout\)))) # (!\instance1|count\(0) & ((\instance1|Equal1~0_combout\ & (\datain~input_o\)) # (!\instance1|Equal1~0_combout\ & ((\instance1|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datain~input_o\,
	datab => \instance1|count\(0),
	datac => \instance1|Add0~8_combout\,
	datad => \instance1|Equal1~0_combout\,
	combout => \instance1|count[4]~4_combout\);

-- Location: FF_X113_Y21_N1
\instance1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	d => \instance1|count[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|count\(4));

-- Location: LCCOMB_X113_Y21_N2
\instance1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|Equal1~0_combout\ = (!\instance1|count\(3) & (!\instance1|count\(2) & (!\instance1|count\(1) & !\instance1|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|count\(3),
	datab => \instance1|count\(2),
	datac => \instance1|count\(1),
	datad => \instance1|count\(4),
	combout => \instance1|Equal1~0_combout\);

-- Location: LCCOMB_X113_Y21_N24
\instance1|count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|count[0]~0_combout\ = (\instance1|Add0~0_combout\ & ((\instance1|count\(0)) # (!\instance1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance1|Equal1~0_combout\,
	datac => \instance1|count\(0),
	datad => \instance1|Add0~0_combout\,
	combout => \instance1|count[0]~0_combout\);

-- Location: FF_X113_Y21_N25
\instance1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	d => \instance1|count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|count\(0));

-- Location: LCCOMB_X113_Y21_N18
\instance1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|Equal1~1_combout\ = (\instance1|count\(0) & \instance1|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance1|count\(0),
	datad => \instance1|Equal1~0_combout\,
	combout => \instance1|Equal1~1_combout\);

-- Location: FF_X113_Y21_N5
\instance1|serialout0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	d => \instance1|serialout0[1]~feeder_combout\,
	ena => \instance1|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|serialout0\(1));

-- Location: FF_X113_Y21_N13
\instance1|serialout0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	asdata => \instance1|temp\(2),
	sload => VCC,
	ena => \instance1|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|serialout0\(2));

-- Location: FF_X113_Y21_N11
\instance1|serialout0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	asdata => \instance1|temp\(3),
	sload => VCC,
	ena => \instance1|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|serialout0\(3));

-- Location: LCCOMB_X114_Y21_N18
\instance1|temp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|temp[0]~feeder_combout\ = \instance1|temp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance1|temp\(1),
	combout => \instance1|temp[0]~feeder_combout\);

-- Location: FF_X114_Y21_N19
\instance1|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	d => \instance1|temp[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|temp\(0));

-- Location: FF_X113_Y21_N15
\instance1|serialout0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	asdata => \instance1|temp\(0),
	sload => VCC,
	ena => \instance1|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|serialout0\(0));

-- Location: LCCOMB_X114_Y46_N16
\instance2|hexout0[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance2|hexout0[0]~0_combout\ = (\instance1|serialout0\(2) & (!\instance1|serialout0\(1) & (\instance1|serialout0\(3) $ (!\instance1|serialout0\(0))))) # (!\instance1|serialout0\(2) & (\instance1|serialout0\(0) & (\instance1|serialout0\(1) $ 
-- (!\instance1|serialout0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|serialout0\(1),
	datab => \instance1|serialout0\(2),
	datac => \instance1|serialout0\(3),
	datad => \instance1|serialout0\(0),
	combout => \instance2|hexout0[0]~0_combout\);

-- Location: LCCOMB_X114_Y46_N2
\instance2|hexout0[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance2|hexout0[1]~1_combout\ = (\instance1|serialout0\(1) & ((\instance1|serialout0\(0) & ((\instance1|serialout0\(3)))) # (!\instance1|serialout0\(0) & (\instance1|serialout0\(2))))) # (!\instance1|serialout0\(1) & (\instance1|serialout0\(2) & 
-- (\instance1|serialout0\(3) $ (\instance1|serialout0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|serialout0\(1),
	datab => \instance1|serialout0\(2),
	datac => \instance1|serialout0\(3),
	datad => \instance1|serialout0\(0),
	combout => \instance2|hexout0[1]~1_combout\);

-- Location: LCCOMB_X114_Y46_N4
\instance2|hexout0[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance2|hexout0[2]~2_combout\ = (\instance1|serialout0\(2) & (\instance1|serialout0\(3) & ((\instance1|serialout0\(1)) # (!\instance1|serialout0\(0))))) # (!\instance1|serialout0\(2) & (\instance1|serialout0\(1) & (!\instance1|serialout0\(3) & 
-- !\instance1|serialout0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|serialout0\(1),
	datab => \instance1|serialout0\(2),
	datac => \instance1|serialout0\(3),
	datad => \instance1|serialout0\(0),
	combout => \instance2|hexout0[2]~2_combout\);

-- Location: LCCOMB_X114_Y46_N26
\instance2|hexout0[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance2|hexout0[3]~3_combout\ = (\instance1|serialout0\(0) & (\instance1|serialout0\(1) $ ((!\instance1|serialout0\(2))))) # (!\instance1|serialout0\(0) & ((\instance1|serialout0\(1) & (!\instance1|serialout0\(2) & \instance1|serialout0\(3))) # 
-- (!\instance1|serialout0\(1) & (\instance1|serialout0\(2) & !\instance1|serialout0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|serialout0\(1),
	datab => \instance1|serialout0\(2),
	datac => \instance1|serialout0\(3),
	datad => \instance1|serialout0\(0),
	combout => \instance2|hexout0[3]~3_combout\);

-- Location: LCCOMB_X114_Y46_N0
\instance2|hexout0[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance2|hexout0[4]~4_combout\ = (\instance1|serialout0\(1) & (((!\instance1|serialout0\(3) & \instance1|serialout0\(0))))) # (!\instance1|serialout0\(1) & ((\instance1|serialout0\(2) & (!\instance1|serialout0\(3))) # (!\instance1|serialout0\(2) & 
-- ((\instance1|serialout0\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|serialout0\(1),
	datab => \instance1|serialout0\(2),
	datac => \instance1|serialout0\(3),
	datad => \instance1|serialout0\(0),
	combout => \instance2|hexout0[4]~4_combout\);

-- Location: LCCOMB_X114_Y46_N10
\instance2|hexout0[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance2|hexout0[5]~5_combout\ = (\instance1|serialout0\(1) & (!\instance1|serialout0\(3) & ((\instance1|serialout0\(0)) # (!\instance1|serialout0\(2))))) # (!\instance1|serialout0\(1) & (\instance1|serialout0\(0) & (\instance1|serialout0\(2) $ 
-- (!\instance1|serialout0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|serialout0\(1),
	datab => \instance1|serialout0\(2),
	datac => \instance1|serialout0\(3),
	datad => \instance1|serialout0\(0),
	combout => \instance2|hexout0[5]~5_combout\);

-- Location: LCCOMB_X114_Y46_N28
\instance2|hexout0[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance2|hexout0[6]~6_combout\ = (\instance1|serialout0\(0) & ((\instance1|serialout0\(3)) # (\instance1|serialout0\(1) $ (\instance1|serialout0\(2))))) # (!\instance1|serialout0\(0) & ((\instance1|serialout0\(1)) # (\instance1|serialout0\(2) $ 
-- (\instance1|serialout0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|serialout0\(1),
	datab => \instance1|serialout0\(2),
	datac => \instance1|serialout0\(3),
	datad => \instance1|serialout0\(0),
	combout => \instance2|hexout0[6]~6_combout\);

-- Location: FF_X113_Y21_N9
\instance1|serialout1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	asdata => \instance1|temp\(6),
	sload => VCC,
	ena => \instance1|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|serialout1\(2));

-- Location: LCCOMB_X113_Y21_N28
\instance1|serialout1[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|serialout1[1]~feeder_combout\ = \instance1|temp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance1|temp\(5),
	combout => \instance1|serialout1[1]~feeder_combout\);

-- Location: FF_X113_Y21_N29
\instance1|serialout1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	d => \instance1|serialout1[1]~feeder_combout\,
	ena => \instance1|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|serialout1\(1));

-- Location: FF_X113_Y21_N7
\instance1|serialout1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	asdata => \instance1|temp\(7),
	sload => VCC,
	ena => \instance1|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|serialout1\(3));

-- Location: FF_X113_Y21_N19
\instance1|serialout1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	asdata => \instance1|temp\(4),
	sload => VCC,
	ena => \instance1|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|serialout1\(0));

-- Location: LCCOMB_X114_Y21_N4
\instance2|hexout1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance2|hexout1[0]~0_combout\ = (\instance1|serialout1\(2) & (!\instance1|serialout1\(1) & (\instance1|serialout1\(3) $ (!\instance1|serialout1\(0))))) # (!\instance1|serialout1\(2) & (\instance1|serialout1\(0) & (\instance1|serialout1\(1) $ 
-- (!\instance1|serialout1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|serialout1\(2),
	datab => \instance1|serialout1\(1),
	datac => \instance1|serialout1\(3),
	datad => \instance1|serialout1\(0),
	combout => \instance2|hexout1[0]~0_combout\);

-- Location: LCCOMB_X114_Y21_N2
\instance2|hexout1[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance2|hexout1[1]~1_combout\ = (\instance1|serialout1\(1) & ((\instance1|serialout1\(0) & ((\instance1|serialout1\(3)))) # (!\instance1|serialout1\(0) & (\instance1|serialout1\(2))))) # (!\instance1|serialout1\(1) & (\instance1|serialout1\(2) & 
-- (\instance1|serialout1\(3) $ (\instance1|serialout1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|serialout1\(2),
	datab => \instance1|serialout1\(1),
	datac => \instance1|serialout1\(3),
	datad => \instance1|serialout1\(0),
	combout => \instance2|hexout1[1]~1_combout\);

-- Location: LCCOMB_X114_Y21_N28
\instance2|hexout1[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance2|hexout1[2]~2_combout\ = (\instance1|serialout1\(2) & (\instance1|serialout1\(3) & ((\instance1|serialout1\(1)) # (!\instance1|serialout1\(0))))) # (!\instance1|serialout1\(2) & (\instance1|serialout1\(1) & (!\instance1|serialout1\(3) & 
-- !\instance1|serialout1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|serialout1\(2),
	datab => \instance1|serialout1\(1),
	datac => \instance1|serialout1\(3),
	datad => \instance1|serialout1\(0),
	combout => \instance2|hexout1[2]~2_combout\);

-- Location: LCCOMB_X114_Y21_N26
\instance2|hexout1[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance2|hexout1[3]~3_combout\ = (\instance1|serialout1\(0) & (\instance1|serialout1\(2) $ ((!\instance1|serialout1\(1))))) # (!\instance1|serialout1\(0) & ((\instance1|serialout1\(2) & (!\instance1|serialout1\(1) & !\instance1|serialout1\(3))) # 
-- (!\instance1|serialout1\(2) & (\instance1|serialout1\(1) & \instance1|serialout1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|serialout1\(2),
	datab => \instance1|serialout1\(1),
	datac => \instance1|serialout1\(3),
	datad => \instance1|serialout1\(0),
	combout => \instance2|hexout1[3]~3_combout\);

-- Location: LCCOMB_X114_Y21_N12
\instance2|hexout1[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance2|hexout1[4]~4_combout\ = (\instance1|serialout1\(1) & (((!\instance1|serialout1\(3) & \instance1|serialout1\(0))))) # (!\instance1|serialout1\(1) & ((\instance1|serialout1\(2) & (!\instance1|serialout1\(3))) # (!\instance1|serialout1\(2) & 
-- ((\instance1|serialout1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|serialout1\(2),
	datab => \instance1|serialout1\(1),
	datac => \instance1|serialout1\(3),
	datad => \instance1|serialout1\(0),
	combout => \instance2|hexout1[4]~4_combout\);

-- Location: LCCOMB_X114_Y21_N22
\instance2|hexout1[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance2|hexout1[5]~5_combout\ = (\instance1|serialout1\(2) & (\instance1|serialout1\(0) & (\instance1|serialout1\(1) $ (\instance1|serialout1\(3))))) # (!\instance1|serialout1\(2) & (!\instance1|serialout1\(3) & ((\instance1|serialout1\(1)) # 
-- (\instance1|serialout1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|serialout1\(2),
	datab => \instance1|serialout1\(1),
	datac => \instance1|serialout1\(3),
	datad => \instance1|serialout1\(0),
	combout => \instance2|hexout1[5]~5_combout\);

-- Location: LCCOMB_X114_Y21_N16
\instance2|hexout1[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance2|hexout1[6]~6_combout\ = (\instance1|serialout1\(0) & ((\instance1|serialout1\(3)) # (\instance1|serialout1\(2) $ (\instance1|serialout1\(1))))) # (!\instance1|serialout1\(0) & ((\instance1|serialout1\(1)) # (\instance1|serialout1\(2) $ 
-- (\instance1|serialout1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|serialout1\(2),
	datab => \instance1|serialout1\(1),
	datac => \instance1|serialout1\(3),
	datad => \instance1|serialout1\(0),
	combout => \instance2|hexout1[6]~6_combout\);

-- Location: LCCOMB_X112_Y21_N12
\instance1|serialout2[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|serialout2[3]~feeder_combout\ = \instance1|temp\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance1|temp\(11),
	combout => \instance1|serialout2[3]~feeder_combout\);

-- Location: FF_X112_Y21_N13
\instance1|serialout2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	d => \instance1|serialout2[3]~feeder_combout\,
	ena => \instance1|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|serialout2\(3));

-- Location: LCCOMB_X112_Y21_N16
\instance1|serialout2[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|serialout2[0]~feeder_combout\ = \instance1|temp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance1|temp\(8),
	combout => \instance1|serialout2[0]~feeder_combout\);

-- Location: FF_X112_Y21_N17
\instance1|serialout2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	d => \instance1|serialout2[0]~feeder_combout\,
	ena => \instance1|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|serialout2\(0));

-- Location: FF_X112_Y21_N23
\instance1|serialout2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	asdata => \instance1|temp\(10),
	sload => VCC,
	ena => \instance1|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|serialout2\(2));

-- Location: LCCOMB_X112_Y21_N0
\instance1|serialout2[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|serialout2[1]~feeder_combout\ = \instance1|temp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance1|temp\(9),
	combout => \instance1|serialout2[1]~feeder_combout\);

-- Location: FF_X112_Y21_N1
\instance1|serialout2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	d => \instance1|serialout2[1]~feeder_combout\,
	ena => \instance1|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|serialout2\(1));

-- Location: LCCOMB_X112_Y21_N22
\instance2|hexout2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance2|hexout2[0]~0_combout\ = (\instance1|serialout2\(3) & (\instance1|serialout2\(0) & (\instance1|serialout2\(2) $ (\instance1|serialout2\(1))))) # (!\instance1|serialout2\(3) & (!\instance1|serialout2\(1) & (\instance1|serialout2\(0) $ 
-- (\instance1|serialout2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|serialout2\(3),
	datab => \instance1|serialout2\(0),
	datac => \instance1|serialout2\(2),
	datad => \instance1|serialout2\(1),
	combout => \instance2|hexout2[0]~0_combout\);

-- Location: LCCOMB_X111_Y21_N16
\instance2|hexout2[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance2|hexout2[1]~1_combout\ = (\instance1|serialout2\(3) & ((\instance1|serialout2\(0) & ((\instance1|serialout2\(1)))) # (!\instance1|serialout2\(0) & (\instance1|serialout2\(2))))) # (!\instance1|serialout2\(3) & (\instance1|serialout2\(2) & 
-- (\instance1|serialout2\(1) $ (\instance1|serialout2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|serialout2\(2),
	datab => \instance1|serialout2\(3),
	datac => \instance1|serialout2\(1),
	datad => \instance1|serialout2\(0),
	combout => \instance2|hexout2[1]~1_combout\);

-- Location: LCCOMB_X112_Y21_N18
\instance2|hexout2[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance2|hexout2[2]~2_combout\ = (\instance1|serialout2\(3) & (\instance1|serialout2\(2) & ((\instance1|serialout2\(1)) # (!\instance1|serialout2\(0))))) # (!\instance1|serialout2\(3) & (!\instance1|serialout2\(0) & (!\instance1|serialout2\(2) & 
-- \instance1|serialout2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|serialout2\(3),
	datab => \instance1|serialout2\(0),
	datac => \instance1|serialout2\(2),
	datad => \instance1|serialout2\(1),
	combout => \instance2|hexout2[2]~2_combout\);

-- Location: LCCOMB_X112_Y21_N28
\instance2|hexout2[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance2|hexout2[3]~3_combout\ = (\instance1|serialout2\(0) & ((\instance1|serialout2\(2) $ (!\instance1|serialout2\(1))))) # (!\instance1|serialout2\(0) & ((\instance1|serialout2\(3) & (!\instance1|serialout2\(2) & \instance1|serialout2\(1))) # 
-- (!\instance1|serialout2\(3) & (\instance1|serialout2\(2) & !\instance1|serialout2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|serialout2\(3),
	datab => \instance1|serialout2\(0),
	datac => \instance1|serialout2\(2),
	datad => \instance1|serialout2\(1),
	combout => \instance2|hexout2[3]~3_combout\);

-- Location: LCCOMB_X111_Y21_N14
\instance2|hexout2[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance2|hexout2[4]~4_combout\ = (\instance1|serialout2\(1) & (((!\instance1|serialout2\(3) & \instance1|serialout2\(0))))) # (!\instance1|serialout2\(1) & ((\instance1|serialout2\(2) & (!\instance1|serialout2\(3))) # (!\instance1|serialout2\(2) & 
-- ((\instance1|serialout2\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|serialout2\(2),
	datab => \instance1|serialout2\(3),
	datac => \instance1|serialout2\(1),
	datad => \instance1|serialout2\(0),
	combout => \instance2|hexout2[4]~4_combout\);

-- Location: LCCOMB_X112_Y21_N30
\instance2|hexout2[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance2|hexout2[5]~5_combout\ = (\instance1|serialout2\(0) & (\instance1|serialout2\(3) $ (((\instance1|serialout2\(1)) # (!\instance1|serialout2\(2)))))) # (!\instance1|serialout2\(0) & (!\instance1|serialout2\(3) & (!\instance1|serialout2\(2) & 
-- \instance1|serialout2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|serialout2\(3),
	datab => \instance1|serialout2\(0),
	datac => \instance1|serialout2\(2),
	datad => \instance1|serialout2\(1),
	combout => \instance2|hexout2[5]~5_combout\);

-- Location: LCCOMB_X111_Y21_N20
\instance2|hexout2[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance2|hexout2[6]~6_combout\ = (\instance1|serialout2\(0) & ((\instance1|serialout2\(3)) # (\instance1|serialout2\(2) $ (\instance1|serialout2\(1))))) # (!\instance1|serialout2\(0) & ((\instance1|serialout2\(1)) # (\instance1|serialout2\(2) $ 
-- (\instance1|serialout2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|serialout2\(2),
	datab => \instance1|serialout2\(3),
	datac => \instance1|serialout2\(1),
	datad => \instance1|serialout2\(0),
	combout => \instance2|hexout2[6]~6_combout\);

-- Location: FF_X112_Y21_N5
\instance1|serialout3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	asdata => \instance1|temp\(15),
	sload => VCC,
	ena => \instance1|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|serialout3\(3));

-- Location: LCCOMB_X113_Y21_N22
\instance1|serialout3[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|serialout3[1]~feeder_combout\ = \instance1|temp\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance1|temp\(13),
	combout => \instance1|serialout3[1]~feeder_combout\);

-- Location: FF_X113_Y21_N23
\instance1|serialout3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	d => \instance1|serialout3[1]~feeder_combout\,
	ena => \instance1|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|serialout3\(1));

-- Location: FF_X112_Y21_N3
\instance1|serialout3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	asdata => \instance1|temp\(12),
	sload => VCC,
	ena => \instance1|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|serialout3\(0));

-- Location: LCCOMB_X113_Y21_N16
\instance1|serialout3[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|serialout3[2]~feeder_combout\ = \instance1|temp\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance1|temp\(14),
	combout => \instance1|serialout3[2]~feeder_combout\);

-- Location: FF_X113_Y21_N17
\instance1|serialout3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance3|clock_slow~clkctrl_outclk\,
	d => \instance1|serialout3[2]~feeder_combout\,
	ena => \instance1|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|serialout3\(2));

-- Location: LCCOMB_X112_Y21_N2
\instance2|hexout3[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance2|hexout3[0]~0_combout\ = (\instance1|serialout3\(3) & (\instance1|serialout3\(0) & (\instance1|serialout3\(1) $ (\instance1|serialout3\(2))))) # (!\instance1|serialout3\(3) & (!\instance1|serialout3\(1) & (\instance1|serialout3\(0) $ 
-- (\instance1|serialout3\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|serialout3\(3),
	datab => \instance1|serialout3\(1),
	datac => \instance1|serialout3\(0),
	datad => \instance1|serialout3\(2),
	combout => \instance2|hexout3[0]~0_combout\);

-- Location: LCCOMB_X112_Y21_N4
\instance2|hexout3[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance2|hexout3[1]~1_combout\ = (\instance1|serialout3\(1) & ((\instance1|serialout3\(0) & (\instance1|serialout3\(3))) # (!\instance1|serialout3\(0) & ((\instance1|serialout3\(2)))))) # (!\instance1|serialout3\(1) & (\instance1|serialout3\(2) & 
-- (\instance1|serialout3\(0) $ (\instance1|serialout3\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|serialout3\(0),
	datab => \instance1|serialout3\(1),
	datac => \instance1|serialout3\(3),
	datad => \instance1|serialout3\(2),
	combout => \instance2|hexout3[1]~1_combout\);

-- Location: LCCOMB_X112_Y4_N16
\instance2|hexout3[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance2|hexout3[2]~2_combout\ = (\instance1|serialout3\(3) & (\instance1|serialout3\(2) & ((\instance1|serialout3\(1)) # (!\instance1|serialout3\(0))))) # (!\instance1|serialout3\(3) & (\instance1|serialout3\(1) & (!\instance1|serialout3\(0) & 
-- !\instance1|serialout3\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|serialout3\(1),
	datab => \instance1|serialout3\(0),
	datac => \instance1|serialout3\(3),
	datad => \instance1|serialout3\(2),
	combout => \instance2|hexout3[2]~2_combout\);

-- Location: LCCOMB_X112_Y4_N26
\instance2|hexout3[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance2|hexout3[3]~3_combout\ = (\instance1|serialout3\(0) & (\instance1|serialout3\(1) $ (((!\instance1|serialout3\(2)))))) # (!\instance1|serialout3\(0) & ((\instance1|serialout3\(1) & (\instance1|serialout3\(3) & !\instance1|serialout3\(2))) # 
-- (!\instance1|serialout3\(1) & (!\instance1|serialout3\(3) & \instance1|serialout3\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|serialout3\(1),
	datab => \instance1|serialout3\(0),
	datac => \instance1|serialout3\(3),
	datad => \instance1|serialout3\(2),
	combout => \instance2|hexout3[3]~3_combout\);

-- Location: LCCOMB_X112_Y4_N20
\instance2|hexout3[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance2|hexout3[4]~4_combout\ = (\instance1|serialout3\(1) & (\instance1|serialout3\(0) & (!\instance1|serialout3\(3)))) # (!\instance1|serialout3\(1) & ((\instance1|serialout3\(2) & ((!\instance1|serialout3\(3)))) # (!\instance1|serialout3\(2) & 
-- (\instance1|serialout3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|serialout3\(1),
	datab => \instance1|serialout3\(0),
	datac => \instance1|serialout3\(3),
	datad => \instance1|serialout3\(2),
	combout => \instance2|hexout3[4]~4_combout\);

-- Location: LCCOMB_X112_Y4_N22
\instance2|hexout3[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance2|hexout3[5]~5_combout\ = (\instance1|serialout3\(1) & (!\instance1|serialout3\(3) & ((\instance1|serialout3\(0)) # (!\instance1|serialout3\(2))))) # (!\instance1|serialout3\(1) & (\instance1|serialout3\(0) & (\instance1|serialout3\(3) $ 
-- (!\instance1|serialout3\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|serialout3\(1),
	datab => \instance1|serialout3\(0),
	datac => \instance1|serialout3\(3),
	datad => \instance1|serialout3\(2),
	combout => \instance2|hexout3[5]~5_combout\);

-- Location: LCCOMB_X112_Y4_N12
\instance2|hexout3[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance2|hexout3[6]~6_combout\ = (\instance1|serialout3\(0) & ((\instance1|serialout3\(3)) # (\instance1|serialout3\(1) $ (\instance1|serialout3\(2))))) # (!\instance1|serialout3\(0) & ((\instance1|serialout3\(1)) # (\instance1|serialout3\(3) $ 
-- (\instance1|serialout3\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance1|serialout3\(1),
	datab => \instance1|serialout3\(0),
	datac => \instance1|serialout3\(3),
	datad => \instance1|serialout3\(2),
	combout => \instance2|hexout3[6]~6_combout\);

ww_disp0(0) <= \disp0[0]~output_o\;

ww_disp0(1) <= \disp0[1]~output_o\;

ww_disp0(2) <= \disp0[2]~output_o\;

ww_disp0(3) <= \disp0[3]~output_o\;

ww_disp0(4) <= \disp0[4]~output_o\;

ww_disp0(5) <= \disp0[5]~output_o\;

ww_disp0(6) <= \disp0[6]~output_o\;

ww_disp1(0) <= \disp1[0]~output_o\;

ww_disp1(1) <= \disp1[1]~output_o\;

ww_disp1(2) <= \disp1[2]~output_o\;

ww_disp1(3) <= \disp1[3]~output_o\;

ww_disp1(4) <= \disp1[4]~output_o\;

ww_disp1(5) <= \disp1[5]~output_o\;

ww_disp1(6) <= \disp1[6]~output_o\;

ww_disp2(0) <= \disp2[0]~output_o\;

ww_disp2(1) <= \disp2[1]~output_o\;

ww_disp2(2) <= \disp2[2]~output_o\;

ww_disp2(3) <= \disp2[3]~output_o\;

ww_disp2(4) <= \disp2[4]~output_o\;

ww_disp2(5) <= \disp2[5]~output_o\;

ww_disp2(6) <= \disp2[6]~output_o\;

ww_disp3(0) <= \disp3[0]~output_o\;

ww_disp3(1) <= \disp3[1]~output_o\;

ww_disp3(2) <= \disp3[2]~output_o\;

ww_disp3(3) <= \disp3[3]~output_o\;

ww_disp3(4) <= \disp3[4]~output_o\;

ww_disp3(5) <= \disp3[5]~output_o\;

ww_disp3(6) <= \disp3[6]~output_o\;
END structure;


