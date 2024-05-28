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

-- DATE "05/23/2024 17:12:59"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Output_ports IS
    PORT (
	address : IN std_logic_vector(7 DOWNTO 0);
	data_in : IN std_logic_vector(7 DOWNTO 0);
	writen : IN std_logic;
	clock : IN std_logic;
	reset : IN std_logic;
	port_out_01 : OUT std_logic_vector(7 DOWNTO 0);
	port_out_00 : OUT std_logic_vector(7 DOWNTO 0)
	);
END Output_ports;

-- Design Ports Information
-- port_out_01[0]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_01[1]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_01[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_01[3]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_01[4]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_01[5]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_01[6]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_01[7]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_00[0]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_00[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_00[2]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_00[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_00[4]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_00[5]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_00[6]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_00[7]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[5]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[6]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[7]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writen	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Output_ports IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_address : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_writen : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_port_out_01 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_00 : std_logic_vector(7 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \port_out_01[0]~output_o\ : std_logic;
SIGNAL \port_out_01[1]~output_o\ : std_logic;
SIGNAL \port_out_01[2]~output_o\ : std_logic;
SIGNAL \port_out_01[3]~output_o\ : std_logic;
SIGNAL \port_out_01[4]~output_o\ : std_logic;
SIGNAL \port_out_01[5]~output_o\ : std_logic;
SIGNAL \port_out_01[6]~output_o\ : std_logic;
SIGNAL \port_out_01[7]~output_o\ : std_logic;
SIGNAL \port_out_00[0]~output_o\ : std_logic;
SIGNAL \port_out_00[1]~output_o\ : std_logic;
SIGNAL \port_out_00[2]~output_o\ : std_logic;
SIGNAL \port_out_00[3]~output_o\ : std_logic;
SIGNAL \port_out_00[4]~output_o\ : std_logic;
SIGNAL \port_out_00[5]~output_o\ : std_logic;
SIGNAL \port_out_00[6]~output_o\ : std_logic;
SIGNAL \port_out_00[7]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \port_out_01[0]~reg0feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \address[5]~input_o\ : std_logic;
SIGNAL \address[7]~input_o\ : std_logic;
SIGNAL \writen~input_o\ : std_logic;
SIGNAL \address[6]~input_o\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \address[4]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \port_out_01[0]~reg0_q\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \port_out_01[1]~reg0feeder_combout\ : std_logic;
SIGNAL \port_out_01[1]~reg0_q\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \port_out_01[2]~reg0feeder_combout\ : std_logic;
SIGNAL \port_out_01[2]~reg0_q\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \port_out_01[3]~reg0_q\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \port_out_01[4]~reg0_q\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \port_out_01[5]~reg0_q\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \port_out_01[6]~reg0feeder_combout\ : std_logic;
SIGNAL \port_out_01[6]~reg0_q\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \port_out_01[7]~reg0feeder_combout\ : std_logic;
SIGNAL \port_out_01[7]~reg0_q\ : std_logic;
SIGNAL \port_out_00[0]~reg0feeder_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \port_out_00[0]~reg0_q\ : std_logic;
SIGNAL \port_out_00[1]~reg0feeder_combout\ : std_logic;
SIGNAL \port_out_00[1]~reg0_q\ : std_logic;
SIGNAL \port_out_00[2]~reg0feeder_combout\ : std_logic;
SIGNAL \port_out_00[2]~reg0_q\ : std_logic;
SIGNAL \port_out_00[3]~reg0_q\ : std_logic;
SIGNAL \port_out_00[4]~reg0_q\ : std_logic;
SIGNAL \port_out_00[5]~reg0_q\ : std_logic;
SIGNAL \port_out_00[6]~reg0feeder_combout\ : std_logic;
SIGNAL \port_out_00[6]~reg0_q\ : std_logic;
SIGNAL \port_out_00[7]~reg0feeder_combout\ : std_logic;
SIGNAL \port_out_00[7]~reg0_q\ : std_logic;

BEGIN

ww_address <= address;
ww_data_in <= data_in;
ww_writen <= writen;
ww_clock <= clock;
ww_reset <= reset;
port_out_01 <= ww_port_out_01;
port_out_00 <= ww_port_out_00;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

-- Location: IOOBUF_X1_Y29_N30
\port_out_01[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_01[0]~reg0_q\,
	devoe => ww_devoe,
	o => \port_out_01[0]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\port_out_01[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_01[1]~reg0_q\,
	devoe => ww_devoe,
	o => \port_out_01[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\port_out_01[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_01[2]~reg0_q\,
	devoe => ww_devoe,
	o => \port_out_01[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\port_out_01[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_01[3]~reg0_q\,
	devoe => ww_devoe,
	o => \port_out_01[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\port_out_01[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_01[4]~reg0_q\,
	devoe => ww_devoe,
	o => \port_out_01[4]~output_o\);

-- Location: IOOBUF_X0_Y2_N9
\port_out_01[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_01[5]~reg0_q\,
	devoe => ww_devoe,
	o => \port_out_01[5]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\port_out_01[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_01[6]~reg0_q\,
	devoe => ww_devoe,
	o => \port_out_01[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\port_out_01[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_01[7]~reg0_q\,
	devoe => ww_devoe,
	o => \port_out_01[7]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\port_out_00[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_00[0]~reg0_q\,
	devoe => ww_devoe,
	o => \port_out_00[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\port_out_00[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_00[1]~reg0_q\,
	devoe => ww_devoe,
	o => \port_out_00[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\port_out_00[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_00[2]~reg0_q\,
	devoe => ww_devoe,
	o => \port_out_00[2]~output_o\);

-- Location: IOOBUF_X0_Y2_N2
\port_out_00[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_00[3]~reg0_q\,
	devoe => ww_devoe,
	o => \port_out_00[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\port_out_00[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_00[4]~reg0_q\,
	devoe => ww_devoe,
	o => \port_out_00[4]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\port_out_00[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_00[5]~reg0_q\,
	devoe => ww_devoe,
	o => \port_out_00[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\port_out_00[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_00[6]~reg0_q\,
	devoe => ww_devoe,
	o => \port_out_00[6]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\port_out_00[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_00[7]~reg0_q\,
	devoe => ww_devoe,
	o => \port_out_00[7]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G4
\clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X21_Y0_N8
\data_in[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: LCCOMB_X1_Y2_N0
\port_out_01[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_out_01[0]~reg0feeder_combout\ = \data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \port_out_01[0]~reg0feeder_combout\);

-- Location: IOIBUF_X0_Y14_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: IOIBUF_X21_Y0_N1
\address[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: IOIBUF_X23_Y0_N29
\address[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(5),
	o => \address[5]~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\address[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(7),
	o => \address[7]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\writen~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writen,
	o => \writen~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\address[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(6),
	o => \address[6]~input_o\);

-- Location: LCCOMB_X23_Y1_N2
\process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (\address[5]~input_o\ & (\address[7]~input_o\ & (\writen~input_o\ & \address[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[5]~input_o\,
	datab => \address[7]~input_o\,
	datac => \writen~input_o\,
	datad => \address[6]~input_o\,
	combout => \process_0~1_combout\);

-- Location: IOIBUF_X23_Y0_N15
\address[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(4),
	o => \address[4]~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\address[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: IOIBUF_X19_Y0_N15
\address[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\address[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: LCCOMB_X23_Y1_N0
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (!\address[4]~input_o\ & (!\address[1]~input_o\ & (!\address[3]~input_o\ & !\address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[2]~input_o\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X23_Y1_N12
\process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (\address[0]~input_o\ & (\process_0~1_combout\ & \process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \process_0~1_combout\,
	datad => \process_0~0_combout\,
	combout => \process_1~0_combout\);

-- Location: FF_X1_Y2_N1
\port_out_01[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_out_01[0]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_01[0]~reg0_q\);

-- Location: IOIBUF_X0_Y2_N22
\data_in[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: LCCOMB_X1_Y2_N10
\port_out_01[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_out_01[1]~reg0feeder_combout\ = \data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \port_out_01[1]~reg0feeder_combout\);

-- Location: FF_X1_Y2_N11
\port_out_01[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_out_01[1]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_01[1]~reg0_q\);

-- Location: IOIBUF_X3_Y0_N29
\data_in[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: LCCOMB_X1_Y2_N12
\port_out_01[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_out_01[2]~reg0feeder_combout\ = \data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \port_out_01[2]~reg0feeder_combout\);

-- Location: FF_X1_Y2_N13
\port_out_01[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_out_01[2]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_01[2]~reg0_q\);

-- Location: IOIBUF_X1_Y0_N1
\data_in[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: FF_X1_Y2_N31
\port_out_01[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[3]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_01[3]~reg0_q\);

-- Location: IOIBUF_X0_Y3_N1
\data_in[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: FF_X1_Y2_N9
\port_out_01[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[4]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_01[4]~reg0_q\);

-- Location: IOIBUF_X0_Y7_N1
\data_in[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: FF_X1_Y2_N3
\port_out_01[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[5]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_01[5]~reg0_q\);

-- Location: IOIBUF_X5_Y0_N22
\data_in[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: LCCOMB_X1_Y2_N20
\port_out_01[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_out_01[6]~reg0feeder_combout\ = \data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \port_out_01[6]~reg0feeder_combout\);

-- Location: FF_X1_Y2_N21
\port_out_01[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_out_01[6]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_01[6]~reg0_q\);

-- Location: IOIBUF_X0_Y2_N15
\data_in[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: LCCOMB_X1_Y2_N6
\port_out_01[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_out_01[7]~reg0feeder_combout\ = \data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \port_out_01[7]~reg0feeder_combout\);

-- Location: FF_X1_Y2_N7
\port_out_01[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_out_01[7]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_01[7]~reg0_q\);

-- Location: LCCOMB_X1_Y2_N16
\port_out_00[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_out_00[0]~reg0feeder_combout\ = \data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \port_out_00[0]~reg0feeder_combout\);

-- Location: LCCOMB_X23_Y1_N14
\process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (!\address[0]~input_o\ & (\process_0~1_combout\ & \process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \process_0~1_combout\,
	datad => \process_0~0_combout\,
	combout => \process_0~2_combout\);

-- Location: FF_X1_Y2_N17
\port_out_00[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_out_00[0]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_00[0]~reg0_q\);

-- Location: LCCOMB_X1_Y2_N26
\port_out_00[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_out_00[1]~reg0feeder_combout\ = \data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \port_out_00[1]~reg0feeder_combout\);

-- Location: FF_X1_Y2_N27
\port_out_00[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_out_00[1]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_00[1]~reg0_q\);

-- Location: LCCOMB_X1_Y2_N28
\port_out_00[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_out_00[2]~reg0feeder_combout\ = \data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \port_out_00[2]~reg0feeder_combout\);

-- Location: FF_X1_Y2_N29
\port_out_00[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_out_00[2]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_00[2]~reg0_q\);

-- Location: FF_X1_Y2_N15
\port_out_00[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[3]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_00[3]~reg0_q\);

-- Location: FF_X1_Y2_N25
\port_out_00[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[4]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_00[4]~reg0_q\);

-- Location: FF_X1_Y2_N19
\port_out_00[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[5]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_00[5]~reg0_q\);

-- Location: LCCOMB_X1_Y2_N4
\port_out_00[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_out_00[6]~reg0feeder_combout\ = \data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \port_out_00[6]~reg0feeder_combout\);

-- Location: FF_X1_Y2_N5
\port_out_00[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_out_00[6]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_00[6]~reg0_q\);

-- Location: LCCOMB_X1_Y2_N22
\port_out_00[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \port_out_00[7]~reg0feeder_combout\ = \data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \port_out_00[7]~reg0feeder_combout\);

-- Location: FF_X1_Y2_N23
\port_out_00[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \port_out_00[7]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_00[7]~reg0_q\);

ww_port_out_01(0) <= \port_out_01[0]~output_o\;

ww_port_out_01(1) <= \port_out_01[1]~output_o\;

ww_port_out_01(2) <= \port_out_01[2]~output_o\;

ww_port_out_01(3) <= \port_out_01[3]~output_o\;

ww_port_out_01(4) <= \port_out_01[4]~output_o\;

ww_port_out_01(5) <= \port_out_01[5]~output_o\;

ww_port_out_01(6) <= \port_out_01[6]~output_o\;

ww_port_out_01(7) <= \port_out_01[7]~output_o\;

ww_port_out_00(0) <= \port_out_00[0]~output_o\;

ww_port_out_00(1) <= \port_out_00[1]~output_o\;

ww_port_out_00(2) <= \port_out_00[2]~output_o\;

ww_port_out_00(3) <= \port_out_00[3]~output_o\;

ww_port_out_00(4) <= \port_out_00[4]~output_o\;

ww_port_out_00(5) <= \port_out_00[5]~output_o\;

ww_port_out_00(6) <= \port_out_00[6]~output_o\;

ww_port_out_00(7) <= \port_out_00[7]~output_o\;
END structure;


