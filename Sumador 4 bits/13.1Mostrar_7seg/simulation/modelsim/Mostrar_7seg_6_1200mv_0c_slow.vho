-- Copyright (C) 1991-2013 Altera Corporation
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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "02/29/2024 17:24:03"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Mostrar_7seg IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	Cin : IN std_logic;
	DC : OUT std_logic_vector(6 DOWNTO 0);
	UN : OUT std_logic_vector(6 DOWNTO 0)
	);
END Mostrar_7seg;

-- Design Ports Information
-- Cin	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DC[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DC[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DC[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DC[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DC[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DC[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DC[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UN[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UN[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UN[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UN[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UN[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UN[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UN[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Mostrar_7seg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_DC : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_UN : std_logic_vector(6 DOWNTO 0);
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \DC[0]~output_o\ : std_logic;
SIGNAL \DC[1]~output_o\ : std_logic;
SIGNAL \DC[2]~output_o\ : std_logic;
SIGNAL \DC[3]~output_o\ : std_logic;
SIGNAL \DC[4]~output_o\ : std_logic;
SIGNAL \DC[5]~output_o\ : std_logic;
SIGNAL \DC[6]~output_o\ : std_logic;
SIGNAL \UN[0]~output_o\ : std_logic;
SIGNAL \UN[1]~output_o\ : std_logic;
SIGNAL \UN[2]~output_o\ : std_logic;
SIGNAL \UN[3]~output_o\ : std_logic;
SIGNAL \UN[4]~output_o\ : std_logic;
SIGNAL \UN[5]~output_o\ : std_logic;
SIGNAL \UN[6]~output_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \U1|U4|Cout~1_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \U1|U2|Cout~0_combout\ : std_logic;
SIGNAL \U1|U3|Cout~0_combout\ : std_logic;
SIGNAL \U1|U4|Cout~0_combout\ : std_logic;
SIGNAL \U1|U4|U2|Sum~combout\ : std_logic;
SIGNAL \U1|U3|U2|Sum~0_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[18]~15_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[18]~8_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[17]~9_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[17]~13_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[16]~10_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[16]~14_combout\ : std_logic;
SIGNAL \U1|U2|U2|Sum~0_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[15]~12_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[15]~11_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \U4|Mux5~0_combout\ : std_logic;
SIGNAL \U4|Mux3~0_combout\ : std_logic;
SIGNAL \U4|Mux2~0_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[17]~9_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[18]~8_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[18]~19_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[17]~17_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[16]~18_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[16]~10_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[15]~11_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[15]~12_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[23]~16_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[22]~15_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[20]~13_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[21]~14_combout\ : std_logic;
SIGNAL \U5|Mux6~0_combout\ : std_logic;
SIGNAL \U5|Mux5~0_combout\ : std_logic;
SIGNAL \U5|Mux4~0_combout\ : std_logic;
SIGNAL \U5|Mux3~0_combout\ : std_logic;
SIGNAL \U5|Mux2~0_combout\ : std_logic;
SIGNAL \U5|Mux1~0_combout\ : std_logic;
SIGNAL \U5|Mux0~0_combout\ : std_logic;
SIGNAL \U5|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Cin <= Cin;
DC <= ww_DC;
UN <= ww_UN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U5|ALT_INV_Mux6~0_combout\ <= NOT \U5|Mux6~0_combout\;
\U3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ <= NOT \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\;

-- Location: IOOBUF_X26_Y29_N23
\DC[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	devoe => ww_devoe,
	o => \DC[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\DC[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DC[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\DC[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \DC[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\DC[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DC[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\DC[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DC[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\DC[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DC[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\DC[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DC[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\UN[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \UN[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\UN[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \UN[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\UN[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \UN[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\UN[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \UN[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\UN[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \UN[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\UN[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \UN[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\UN[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \UN[6]~output_o\);

-- Location: IOIBUF_X0_Y23_N8
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X12_Y22_N18
\U1|U4|Cout~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|Cout~1_combout\ = (\A[3]~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \U1|U4|Cout~1_combout\);

-- Location: IOIBUF_X0_Y25_N15
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X16_Y22_N10
\U1|U2|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|Cout~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\A[0]~input_o\ & \B[0]~input_o\)))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \U1|U2|Cout~0_combout\);

-- Location: LCCOMB_X11_Y25_N0
\U1|U3|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|Cout~0_combout\ = (\B[2]~input_o\ & ((\A[2]~input_o\) # (\U1|U2|Cout~0_combout\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & \U1|U2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => \U1|U2|Cout~0_combout\,
	combout => \U1|U3|Cout~0_combout\);

-- Location: LCCOMB_X12_Y22_N24
\U1|U4|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|Cout~0_combout\ = (\U1|U3|Cout~0_combout\ & ((\B[3]~input_o\) # (\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \U1|U3|Cout~0_combout\,
	combout => \U1|U4|Cout~0_combout\);

-- Location: LCCOMB_X12_Y22_N28
\U1|U4|U2|Sum\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|U2|Sum~combout\ = \B[3]~input_o\ $ (\A[3]~input_o\ $ (\U1|U3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \U1|U3|Cout~0_combout\,
	combout => \U1|U4|U2|Sum~combout\);

-- Location: LCCOMB_X11_Y25_N2
\U1|U3|U2|Sum~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|U2|Sum~0_combout\ = \B[2]~input_o\ $ (\A[2]~input_o\ $ (\U1|U2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => \U1|U2|Cout~0_combout\,
	combout => \U1|U3|U2|Sum~0_combout\);

-- Location: LCCOMB_X12_Y22_N0
\U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \U1|U3|U2|Sum~0_combout\ $ (VCC)
-- \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\U1|U3|U2|Sum~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|U2|Sum~0_combout\,
	datad => VCC,
	combout => \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X12_Y22_N2
\U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\U1|U4|U2|Sum~combout\ & (\U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\U1|U4|U2|Sum~combout\ & 
-- (!\U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\U1|U4|U2|Sum~combout\ & !\U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U4|U2|Sum~combout\,
	datad => VCC,
	cin => \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X12_Y22_N4
\U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\U1|U4|Cout~1_combout\) # (\U1|U4|Cout~0_combout\)))) # 
-- (!\U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\U1|U4|Cout~1_combout\) # (\U1|U4|Cout~0_combout\)))))
-- \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\U1|U4|Cout~1_combout\) # (\U1|U4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U4|Cout~1_combout\,
	datab => \U1|U4|Cout~0_combout\,
	datad => VCC,
	cin => \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X12_Y22_N6
\U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X12_Y22_N20
\U3|Div0|auto_generated|divider|divider|StageOut[18]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[18]~15_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\U1|U3|Cout~0_combout\ & ((\B[3]~input_o\) # (\A[3]~input_o\))) # (!\U1|U3|Cout~0_combout\ & (\B[3]~input_o\ 
-- & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Cout~0_combout\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[18]~15_combout\);

-- Location: LCCOMB_X11_Y25_N28
\U3|Div0|auto_generated|divider|divider|StageOut[18]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[18]~8_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[18]~8_combout\);

-- Location: LCCOMB_X11_Y25_N24
\U3|Div0|auto_generated|divider|divider|StageOut[17]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[17]~9_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[17]~9_combout\);

-- Location: LCCOMB_X12_Y22_N16
\U3|Div0|auto_generated|divider|divider|StageOut[17]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[17]~13_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\U1|U3|Cout~0_combout\ $ (\B[3]~input_o\ $ (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Cout~0_combout\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[17]~13_combout\);

-- Location: LCCOMB_X11_Y25_N26
\U3|Div0|auto_generated|divider|divider|StageOut[16]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[16]~10_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[16]~10_combout\);

-- Location: LCCOMB_X11_Y25_N4
\U3|Div0|auto_generated|divider|divider|StageOut[16]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[16]~14_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\B[2]~input_o\ $ (\A[2]~input_o\ $ (\U1|U2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => \U1|U2|Cout~0_combout\,
	datad => \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[16]~14_combout\);

-- Location: LCCOMB_X16_Y22_N28
\U1|U2|U2|Sum~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|U2|Sum~0_combout\ = \A[1]~input_o\ $ (\B[1]~input_o\ $ (((\A[0]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \U1|U2|U2|Sum~0_combout\);

-- Location: LCCOMB_X11_Y25_N22
\U3|Div0|auto_generated|divider|divider|StageOut[15]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[15]~12_combout\ = (!\U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \U1|U2|U2|Sum~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \U1|U2|U2|Sum~0_combout\,
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[15]~12_combout\);

-- Location: LCCOMB_X11_Y25_N20
\U3|Div0|auto_generated|divider|divider|StageOut[15]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[15]~11_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \U1|U2|U2|Sum~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \U1|U2|U2|Sum~0_combout\,
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[15]~11_combout\);

-- Location: LCCOMB_X11_Y25_N6
\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ = CARRY((\U3|Div0|auto_generated|divider|divider|StageOut[15]~12_combout\) # (\U3|Div0|auto_generated|divider|divider|StageOut[15]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|StageOut[15]~12_combout\,
	datab => \U3|Div0|auto_generated|divider|divider|StageOut[15]~11_combout\,
	datad => VCC,
	cout => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\);

-- Location: LCCOMB_X11_Y25_N8
\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ = CARRY((!\U3|Div0|auto_generated|divider|divider|StageOut[16]~10_combout\ & (!\U3|Div0|auto_generated|divider|divider|StageOut[16]~14_combout\ & 
-- !\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|StageOut[16]~10_combout\,
	datab => \U3|Div0|auto_generated|divider|divider|StageOut[16]~14_combout\,
	datad => VCC,
	cin => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\,
	cout => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\);

-- Location: LCCOMB_X11_Y25_N10
\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ = CARRY((!\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ & ((\U3|Div0|auto_generated|divider|divider|StageOut[17]~9_combout\) # 
-- (\U3|Div0|auto_generated|divider|divider|StageOut[17]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|StageOut[17]~9_combout\,
	datab => \U3|Div0|auto_generated|divider|divider|StageOut[17]~13_combout\,
	datad => VCC,
	cin => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\,
	cout => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\);

-- Location: LCCOMB_X11_Y25_N12
\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\U3|Div0|auto_generated|divider|divider|StageOut[18]~15_combout\ & (!\U3|Div0|auto_generated|divider|divider|StageOut[18]~8_combout\ & 
-- !\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|StageOut[18]~15_combout\,
	datab => \U3|Div0|auto_generated|divider|divider|StageOut[18]~8_combout\,
	datad => VCC,
	cin => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\,
	cout => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X11_Y25_N14
\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X11_Y25_N16
\U4|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux5~0_combout\ = (!\U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\) # (!\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U4|Mux5~0_combout\);

-- Location: LCCOMB_X11_Y25_N18
\U4|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux3~0_combout\ = (!\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U4|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y28_N0
\U4|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux2~0_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \U3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U4|Mux2~0_combout\);

-- Location: LCCOMB_X12_Y22_N8
\U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \U1|U3|U2|Sum~0_combout\ $ (VCC)
-- \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\U1|U3|U2|Sum~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|U2|Sum~0_combout\,
	datad => VCC,
	combout => \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X12_Y22_N10
\U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\U1|U4|U2|Sum~combout\ & (\U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\U1|U4|U2|Sum~combout\ & 
-- (!\U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\U1|U4|U2|Sum~combout\ & !\U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U4|U2|Sum~combout\,
	datad => VCC,
	cin => \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X12_Y22_N12
\U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\U1|U4|Cout~1_combout\) # (\U1|U4|Cout~0_combout\)))) # 
-- (!\U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\U1|U4|Cout~1_combout\) # (\U1|U4|Cout~0_combout\)))))
-- \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\U1|U4|Cout~1_combout\) # (\U1|U4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U4|Cout~1_combout\,
	datab => \U1|U4|Cout~0_combout\,
	datad => VCC,
	cin => \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X12_Y22_N14
\U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X16_Y22_N30
\U3|Mod0|auto_generated|divider|divider|StageOut[17]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[17]~9_combout\ = (!\U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[17]~9_combout\);

-- Location: LCCOMB_X12_Y22_N22
\U3|Mod0|auto_generated|divider|divider|StageOut[18]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[18]~8_combout\ = (!\U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[18]~8_combout\);

-- Location: LCCOMB_X12_Y22_N30
\U3|Mod0|auto_generated|divider|divider|StageOut[18]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[18]~19_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\A[3]~input_o\ & ((\B[3]~input_o\) # (\U1|U3|Cout~0_combout\))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & 
-- \U1|U3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \U1|U3|Cout~0_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[18]~19_combout\);

-- Location: LCCOMB_X12_Y22_N26
\U3|Mod0|auto_generated|divider|divider|StageOut[17]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[17]~17_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\A[3]~input_o\ $ (\B[3]~input_o\ $ (\U1|U3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \U1|U3|Cout~0_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[17]~17_combout\);

-- Location: LCCOMB_X11_Y25_N30
\U3|Mod0|auto_generated|divider|divider|StageOut[16]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[16]~18_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\B[2]~input_o\ $ (\A[2]~input_o\ $ (\U1|U2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => \U1|U2|Cout~0_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[16]~18_combout\);

-- Location: LCCOMB_X16_Y22_N8
\U3|Mod0|auto_generated|divider|divider|StageOut[16]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[16]~10_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[16]~10_combout\);

-- Location: LCCOMB_X16_Y22_N26
\U3|Mod0|auto_generated|divider|divider|StageOut[15]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[15]~11_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \U1|U2|U2|Sum~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \U1|U2|U2|Sum~0_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[15]~11_combout\);

-- Location: LCCOMB_X16_Y22_N4
\U3|Mod0|auto_generated|divider|divider|StageOut[15]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[15]~12_combout\ = (!\U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \U1|U2|U2|Sum~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \U1|U2|U2|Sum~0_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[15]~12_combout\);

-- Location: LCCOMB_X16_Y22_N16
\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ = (((\U3|Mod0|auto_generated|divider|divider|StageOut[15]~11_combout\) # (\U3|Mod0|auto_generated|divider|divider|StageOut[15]~12_combout\)))
-- \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ = CARRY((\U3|Mod0|auto_generated|divider|divider|StageOut[15]~11_combout\) # (\U3|Mod0|auto_generated|divider|divider|StageOut[15]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[15]~11_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[15]~12_combout\,
	datad => VCC,
	combout => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	cout => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\);

-- Location: LCCOMB_X16_Y22_N18
\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ & (((\U3|Mod0|auto_generated|divider|divider|StageOut[16]~18_combout\) # 
-- (\U3|Mod0|auto_generated|divider|divider|StageOut[16]~10_combout\)))) # (!\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ & (!\U3|Mod0|auto_generated|divider|divider|StageOut[16]~18_combout\ & 
-- (!\U3|Mod0|auto_generated|divider|divider|StageOut[16]~10_combout\)))
-- \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ = CARRY((!\U3|Mod0|auto_generated|divider|divider|StageOut[16]~18_combout\ & (!\U3|Mod0|auto_generated|divider|divider|StageOut[16]~10_combout\ & 
-- !\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[16]~18_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[16]~10_combout\,
	datad => VCC,
	cin => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\,
	combout => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	cout => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\);

-- Location: LCCOMB_X16_Y22_N20
\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ & (((\U3|Mod0|auto_generated|divider|divider|StageOut[17]~9_combout\) # 
-- (\U3|Mod0|auto_generated|divider|divider|StageOut[17]~17_combout\)))) # (!\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ & ((((\U3|Mod0|auto_generated|divider|divider|StageOut[17]~9_combout\) # 
-- (\U3|Mod0|auto_generated|divider|divider|StageOut[17]~17_combout\)))))
-- \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ = CARRY((!\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ & ((\U3|Mod0|auto_generated|divider|divider|StageOut[17]~9_combout\) # 
-- (\U3|Mod0|auto_generated|divider|divider|StageOut[17]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[17]~9_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[17]~17_combout\,
	datad => VCC,
	cin => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\,
	combout => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	cout => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\);

-- Location: LCCOMB_X16_Y22_N22
\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\ = CARRY((!\U3|Mod0|auto_generated|divider|divider|StageOut[18]~8_combout\ & (!\U3|Mod0|auto_generated|divider|divider|StageOut[18]~19_combout\ & 
-- !\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[18]~8_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[18]~19_combout\,
	datad => VCC,
	cin => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\,
	cout => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\);

-- Location: LCCOMB_X16_Y22_N24
\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ = \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\,
	combout => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\);

-- Location: LCCOMB_X16_Y22_N6
\U3|Mod0|auto_generated|divider|divider|StageOut[23]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[23]~16_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\U3|Mod0|auto_generated|divider|divider|StageOut[17]~9_combout\) # 
-- ((\U3|Mod0|auto_generated|divider|divider|StageOut[17]~17_combout\)))) # (!\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (((\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[17]~9_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datac => \U3|Mod0|auto_generated|divider|divider|StageOut[17]~17_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[23]~16_combout\);

-- Location: LCCOMB_X16_Y22_N12
\U3|Mod0|auto_generated|divider|divider|StageOut[22]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[22]~15_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\U3|Mod0|auto_generated|divider|divider|StageOut[16]~18_combout\) # 
-- ((\U3|Mod0|auto_generated|divider|divider|StageOut[16]~10_combout\)))) # (!\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (((\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[16]~18_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datac => \U3|Mod0|auto_generated|divider|divider|StageOut[16]~10_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[22]~15_combout\);

-- Location: LCCOMB_X16_Y22_N0
\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ = \A[0]~input_o\ $ (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\);

-- Location: LCCOMB_X16_Y22_N14
\U3|Mod0|auto_generated|divider|divider|StageOut[20]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[20]~13_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\B[0]~input_o\ $ ((\A[0]~input_o\)))) # 
-- (!\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (((\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datac => \A[0]~input_o\,
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[20]~13_combout\);

-- Location: LCCOMB_X16_Y22_N2
\U3|Mod0|auto_generated|divider|divider|StageOut[21]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[21]~14_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\U1|U2|U2|Sum~0_combout\))) # (!\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ 
-- & (\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	datac => \U1|U2|U2|Sum~0_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[21]~14_combout\);

-- Location: LCCOMB_X26_Y25_N0
\U5|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Mux6~0_combout\ = (\U3|Mod0|auto_generated|divider|divider|StageOut[22]~15_combout\ & (!\U3|Mod0|auto_generated|divider|divider|StageOut[23]~16_combout\ & ((!\U3|Mod0|auto_generated|divider|divider|StageOut[21]~14_combout\) # 
-- (!\U3|Mod0|auto_generated|divider|divider|StageOut[20]~13_combout\)))) # (!\U3|Mod0|auto_generated|divider|divider|StageOut[22]~15_combout\ & (\U3|Mod0|auto_generated|divider|divider|StageOut[23]~16_combout\ $ 
-- (((\U3|Mod0|auto_generated|divider|divider|StageOut[21]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[23]~16_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[22]~15_combout\,
	datac => \U3|Mod0|auto_generated|divider|divider|StageOut[20]~13_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|StageOut[21]~14_combout\,
	combout => \U5|Mux6~0_combout\);

-- Location: LCCOMB_X26_Y25_N26
\U5|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Mux5~0_combout\ = (\U3|Mod0|auto_generated|divider|divider|StageOut[22]~15_combout\ & ((\U3|Mod0|auto_generated|divider|divider|StageOut[23]~16_combout\) # ((\U3|Mod0|auto_generated|divider|divider|StageOut[20]~13_combout\ & 
-- \U3|Mod0|auto_generated|divider|divider|StageOut[21]~14_combout\)))) # (!\U3|Mod0|auto_generated|divider|divider|StageOut[22]~15_combout\ & ((\U3|Mod0|auto_generated|divider|divider|StageOut[21]~14_combout\) # 
-- ((!\U3|Mod0|auto_generated|divider|divider|StageOut[23]~16_combout\ & \U3|Mod0|auto_generated|divider|divider|StageOut[20]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[23]~16_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[22]~15_combout\,
	datac => \U3|Mod0|auto_generated|divider|divider|StageOut[20]~13_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|StageOut[21]~14_combout\,
	combout => \U5|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y25_N4
\U5|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Mux4~0_combout\ = (\U3|Mod0|auto_generated|divider|divider|StageOut[20]~13_combout\) # ((\U3|Mod0|auto_generated|divider|divider|StageOut[21]~14_combout\ & (\U3|Mod0|auto_generated|divider|divider|StageOut[23]~16_combout\)) # 
-- (!\U3|Mod0|auto_generated|divider|divider|StageOut[21]~14_combout\ & ((\U3|Mod0|auto_generated|divider|divider|StageOut[22]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[23]~16_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[22]~15_combout\,
	datac => \U3|Mod0|auto_generated|divider|divider|StageOut[20]~13_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|StageOut[21]~14_combout\,
	combout => \U5|Mux4~0_combout\);

-- Location: LCCOMB_X26_Y25_N30
\U5|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Mux3~0_combout\ = (\U3|Mod0|auto_generated|divider|divider|StageOut[22]~15_combout\ & ((\U3|Mod0|auto_generated|divider|divider|StageOut[23]~16_combout\) # (\U3|Mod0|auto_generated|divider|divider|StageOut[20]~13_combout\ $ 
-- (!\U3|Mod0|auto_generated|divider|divider|StageOut[21]~14_combout\)))) # (!\U3|Mod0|auto_generated|divider|divider|StageOut[22]~15_combout\ & ((\U3|Mod0|auto_generated|divider|divider|StageOut[21]~14_combout\ & 
-- (\U3|Mod0|auto_generated|divider|divider|StageOut[23]~16_combout\)) # (!\U3|Mod0|auto_generated|divider|divider|StageOut[21]~14_combout\ & ((\U3|Mod0|auto_generated|divider|divider|StageOut[20]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[23]~16_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[22]~15_combout\,
	datac => \U3|Mod0|auto_generated|divider|divider|StageOut[20]~13_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|StageOut[21]~14_combout\,
	combout => \U5|Mux3~0_combout\);

-- Location: LCCOMB_X26_Y25_N8
\U5|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Mux2~0_combout\ = (\U3|Mod0|auto_generated|divider|divider|StageOut[22]~15_combout\ & (\U3|Mod0|auto_generated|divider|divider|StageOut[23]~16_combout\)) # (!\U3|Mod0|auto_generated|divider|divider|StageOut[22]~15_combout\ & 
-- (\U3|Mod0|auto_generated|divider|divider|StageOut[21]~14_combout\ & ((\U3|Mod0|auto_generated|divider|divider|StageOut[23]~16_combout\) # (!\U3|Mod0|auto_generated|divider|divider|StageOut[20]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[23]~16_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[22]~15_combout\,
	datac => \U3|Mod0|auto_generated|divider|divider|StageOut[20]~13_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|StageOut[21]~14_combout\,
	combout => \U5|Mux2~0_combout\);

-- Location: LCCOMB_X26_Y25_N2
\U5|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Mux1~0_combout\ = (\U3|Mod0|auto_generated|divider|divider|StageOut[23]~16_combout\ & ((\U3|Mod0|auto_generated|divider|divider|StageOut[22]~15_combout\) # ((\U3|Mod0|auto_generated|divider|divider|StageOut[21]~14_combout\)))) # 
-- (!\U3|Mod0|auto_generated|divider|divider|StageOut[23]~16_combout\ & (\U3|Mod0|auto_generated|divider|divider|StageOut[22]~15_combout\ & (\U3|Mod0|auto_generated|divider|divider|StageOut[20]~13_combout\ $ 
-- (\U3|Mod0|auto_generated|divider|divider|StageOut[21]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[23]~16_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[22]~15_combout\,
	datac => \U3|Mod0|auto_generated|divider|divider|StageOut[20]~13_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|StageOut[21]~14_combout\,
	combout => \U5|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y25_N28
\U5|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Mux0~0_combout\ = (\U3|Mod0|auto_generated|divider|divider|StageOut[21]~14_combout\ & (\U3|Mod0|auto_generated|divider|divider|StageOut[23]~16_combout\)) # (!\U3|Mod0|auto_generated|divider|divider|StageOut[21]~14_combout\ & 
-- (\U3|Mod0|auto_generated|divider|divider|StageOut[22]~15_combout\ $ (((!\U3|Mod0|auto_generated|divider|divider|StageOut[23]~16_combout\ & \U3|Mod0|auto_generated|divider|divider|StageOut[20]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[23]~16_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[22]~15_combout\,
	datac => \U3|Mod0|auto_generated|divider|divider|StageOut[20]~13_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|StageOut[21]~14_combout\,
	combout => \U5|Mux0~0_combout\);

-- Location: IOIBUF_X0_Y25_N1
\Cin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

ww_DC(0) <= \DC[0]~output_o\;

ww_DC(1) <= \DC[1]~output_o\;

ww_DC(2) <= \DC[2]~output_o\;

ww_DC(3) <= \DC[3]~output_o\;

ww_DC(4) <= \DC[4]~output_o\;

ww_DC(5) <= \DC[5]~output_o\;

ww_DC(6) <= \DC[6]~output_o\;

ww_UN(0) <= \UN[0]~output_o\;

ww_UN(1) <= \UN[1]~output_o\;

ww_UN(2) <= \UN[2]~output_o\;

ww_UN(3) <= \UN[3]~output_o\;

ww_UN(4) <= \UN[4]~output_o\;

ww_UN(5) <= \UN[5]~output_o\;

ww_UN(6) <= \UN[6]~output_o\;
END structure;


