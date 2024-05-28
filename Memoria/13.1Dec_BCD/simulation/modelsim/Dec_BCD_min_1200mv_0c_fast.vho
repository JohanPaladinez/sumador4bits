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

-- DATE "05/24/2024 23:16:31"

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

ENTITY 	Dec_BCD IS
    PORT (
	numero : IN std_logic_vector(3 DOWNTO 0);
	segmentos : OUT std_logic_vector(6 DOWNTO 0)
	);
END Dec_BCD;

-- Design Ports Information
-- segmentos[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentos[1]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentos[2]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentos[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentos[4]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentos[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentos[6]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- numero[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- numero[0]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- numero[2]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- numero[3]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Dec_BCD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_numero : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_segmentos : std_logic_vector(6 DOWNTO 0);
SIGNAL \segmentos[0]~output_o\ : std_logic;
SIGNAL \segmentos[1]~output_o\ : std_logic;
SIGNAL \segmentos[2]~output_o\ : std_logic;
SIGNAL \segmentos[3]~output_o\ : std_logic;
SIGNAL \segmentos[4]~output_o\ : std_logic;
SIGNAL \segmentos[5]~output_o\ : std_logic;
SIGNAL \segmentos[6]~output_o\ : std_logic;
SIGNAL \numero[0]~input_o\ : std_logic;
SIGNAL \numero[1]~input_o\ : std_logic;
SIGNAL \numero[2]~input_o\ : std_logic;
SIGNAL \numero[3]~input_o\ : std_logic;
SIGNAL \segmentos~4_combout\ : std_logic;
SIGNAL \segmentos~5_combout\ : std_logic;
SIGNAL \segmentos~6_combout\ : std_logic;
SIGNAL \segmentos~10_combout\ : std_logic;
SIGNAL \segmentos~9_combout\ : std_logic;
SIGNAL \segmentos~7_combout\ : std_logic;
SIGNAL \segmentos~8_combout\ : std_logic;
SIGNAL \ALT_INV_segmentos~6_combout\ : std_logic;

BEGIN

ww_numero <= numero;
segmentos <= ww_segmentos;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_segmentos~6_combout\ <= NOT \segmentos~6_combout\;

-- Location: IOOBUF_X0_Y10_N9
\segmentos[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segmentos~4_combout\,
	devoe => ww_devoe,
	o => \segmentos[0]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\segmentos[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segmentos~5_combout\,
	devoe => ww_devoe,
	o => \segmentos[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\segmentos[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_segmentos~6_combout\,
	devoe => ww_devoe,
	o => \segmentos[2]~output_o\);

-- Location: IOOBUF_X41_Y10_N9
\segmentos[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segmentos~10_combout\,
	devoe => ww_devoe,
	o => \segmentos[3]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\segmentos[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segmentos~9_combout\,
	devoe => ww_devoe,
	o => \segmentos[4]~output_o\);

-- Location: IOOBUF_X16_Y29_N23
\segmentos[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segmentos~7_combout\,
	devoe => ww_devoe,
	o => \segmentos[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\segmentos[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segmentos~8_combout\,
	devoe => ww_devoe,
	o => \segmentos[6]~output_o\);

-- Location: IOIBUF_X0_Y21_N22
\numero[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_numero(0),
	o => \numero[0]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\numero[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_numero(1),
	o => \numero[1]~input_o\);

-- Location: IOIBUF_X41_Y17_N8
\numero[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_numero(2),
	o => \numero[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\numero[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_numero(3),
	o => \numero[3]~input_o\);

-- Location: LCCOMB_X1_Y23_N16
\segmentos~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \segmentos~4_combout\ = (\numero[0]~input_o\ & (\numero[3]~input_o\ $ (((\numero[1]~input_o\) # (\numero[2]~input_o\))))) # (!\numero[0]~input_o\ & (!\numero[2]~input_o\ & ((!\numero[3]~input_o\) # (!\numero[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \numero[0]~input_o\,
	datab => \numero[1]~input_o\,
	datac => \numero[2]~input_o\,
	datad => \numero[3]~input_o\,
	combout => \segmentos~4_combout\);

-- Location: LCCOMB_X1_Y23_N10
\segmentos~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \segmentos~5_combout\ = (\numero[2]~input_o\ & (!\numero[3]~input_o\ & (\numero[0]~input_o\ $ (!\numero[1]~input_o\)))) # (!\numero[2]~input_o\ & (((!\numero[3]~input_o\) # (!\numero[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \numero[0]~input_o\,
	datab => \numero[1]~input_o\,
	datac => \numero[2]~input_o\,
	datad => \numero[3]~input_o\,
	combout => \segmentos~5_combout\);

-- Location: LCCOMB_X1_Y23_N28
\segmentos~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \segmentos~6_combout\ = (\numero[2]~input_o\ & (((\numero[3]~input_o\)))) # (!\numero[2]~input_o\ & (\numero[1]~input_o\ & ((\numero[3]~input_o\) # (!\numero[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \numero[0]~input_o\,
	datab => \numero[1]~input_o\,
	datac => \numero[2]~input_o\,
	datad => \numero[3]~input_o\,
	combout => \segmentos~6_combout\);

-- Location: LCCOMB_X1_Y23_N12
\segmentos~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \segmentos~10_combout\ = (\numero[0]~input_o\ & (!\numero[3]~input_o\ & (\numero[1]~input_o\ $ (\numero[2]~input_o\)))) # (!\numero[0]~input_o\ & ((\numero[1]~input_o\ & ((!\numero[3]~input_o\))) # (!\numero[1]~input_o\ & (!\numero[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \numero[0]~input_o\,
	datab => \numero[1]~input_o\,
	datac => \numero[2]~input_o\,
	datad => \numero[3]~input_o\,
	combout => \segmentos~10_combout\);

-- Location: LCCOMB_X1_Y23_N26
\segmentos~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \segmentos~9_combout\ = (!\numero[0]~input_o\ & ((\numero[1]~input_o\ & ((!\numero[3]~input_o\))) # (!\numero[1]~input_o\ & (!\numero[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \numero[0]~input_o\,
	datab => \numero[1]~input_o\,
	datac => \numero[2]~input_o\,
	datad => \numero[3]~input_o\,
	combout => \segmentos~9_combout\);

-- Location: LCCOMB_X1_Y23_N22
\segmentos~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \segmentos~7_combout\ = (\numero[0]~input_o\ & (!\numero[1]~input_o\ & (\numero[2]~input_o\ $ (\numero[3]~input_o\)))) # (!\numero[0]~input_o\ & ((\numero[2]~input_o\ & ((!\numero[3]~input_o\))) # (!\numero[2]~input_o\ & (!\numero[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \numero[0]~input_o\,
	datab => \numero[1]~input_o\,
	datac => \numero[2]~input_o\,
	datad => \numero[3]~input_o\,
	combout => \segmentos~7_combout\);

-- Location: LCCOMB_X1_Y23_N8
\segmentos~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \segmentos~8_combout\ = (\numero[1]~input_o\ & (!\numero[3]~input_o\ & ((!\numero[2]~input_o\) # (!\numero[0]~input_o\)))) # (!\numero[1]~input_o\ & ((\numero[2]~input_o\ $ (\numero[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \numero[0]~input_o\,
	datab => \numero[1]~input_o\,
	datac => \numero[2]~input_o\,
	datad => \numero[3]~input_o\,
	combout => \segmentos~8_combout\);

ww_segmentos(0) <= \segmentos[0]~output_o\;

ww_segmentos(1) <= \segmentos[1]~output_o\;

ww_segmentos(2) <= \segmentos[2]~output_o\;

ww_segmentos(3) <= \segmentos[3]~output_o\;

ww_segmentos(4) <= \segmentos[4]~output_o\;

ww_segmentos(5) <= \segmentos[5]~output_o\;

ww_segmentos(6) <= \segmentos[6]~output_o\;
END structure;


