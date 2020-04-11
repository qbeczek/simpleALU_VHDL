-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "04/11/2020 15:54:52"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	simpleALU IS
    PORT (
	opcode : IN std_logic_vector(2 DOWNTO 0);
	arg1 : IN std_logic_vector(7 DOWNTO 0);
	arg2 : IN std_logic_vector(7 DOWNTO 0);
	result : OUT std_logic_vector(7 DOWNTO 0);
	result_9bit : OUT std_logic_vector(8 DOWNTO 0);
	Carryout : OUT std_logic
	);
END simpleALU;

-- Design Ports Information
-- result[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_9bit[0]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_9bit[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_9bit[2]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_9bit[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_9bit[4]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_9bit[5]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_9bit[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_9bit[7]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_9bit[8]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Carryout	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arg2[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arg1[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arg2[1]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arg1[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arg2[2]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arg1[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arg2[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arg1[3]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arg2[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arg1[4]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arg2[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arg1[5]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arg2[6]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arg1[6]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arg2[7]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- arg1[7]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF simpleALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_opcode : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_arg1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_arg2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_result_9bit : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_Carryout : std_logic;
SIGNAL \Mux17~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \result_9bit[0]~output_o\ : std_logic;
SIGNAL \result_9bit[1]~output_o\ : std_logic;
SIGNAL \result_9bit[2]~output_o\ : std_logic;
SIGNAL \result_9bit[3]~output_o\ : std_logic;
SIGNAL \result_9bit[4]~output_o\ : std_logic;
SIGNAL \result_9bit[5]~output_o\ : std_logic;
SIGNAL \result_9bit[6]~output_o\ : std_logic;
SIGNAL \result_9bit[7]~output_o\ : std_logic;
SIGNAL \result_9bit[8]~output_o\ : std_logic;
SIGNAL \Carryout~output_o\ : std_logic;
SIGNAL \opcode[1]~input_o\ : std_logic;
SIGNAL \arg2[0]~input_o\ : std_logic;
SIGNAL \opcode[0]~input_o\ : std_logic;
SIGNAL \arg1[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \opcode[2]~input_o\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~0clkctrl_outclk\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \arg1[7]~input_o\ : std_logic;
SIGNAL \arg2[7]~input_o\ : std_logic;
SIGNAL \arg1[6]~input_o\ : std_logic;
SIGNAL \arg2[6]~input_o\ : std_logic;
SIGNAL \arg1[5]~input_o\ : std_logic;
SIGNAL \arg2[5]~input_o\ : std_logic;
SIGNAL \arg1[4]~input_o\ : std_logic;
SIGNAL \arg2[4]~input_o\ : std_logic;
SIGNAL \arg2[3]~input_o\ : std_logic;
SIGNAL \arg1[3]~input_o\ : std_logic;
SIGNAL \arg1[2]~input_o\ : std_logic;
SIGNAL \arg2[2]~input_o\ : std_logic;
SIGNAL \arg2[1]~input_o\ : std_logic;
SIGNAL \arg1[1]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \result_9bit[0]$latch~combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \result_9bit[1]$latch~combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \result_9bit[2]$latch~combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \result_9bit[3]$latch~combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \result_9bit[4]$latch~combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \result_9bit[5]$latch~combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \result_9bit[6]$latch~combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \result_9bit[7]$latch~combout\ : std_logic;
SIGNAL \result_9bit[8]$latch~combout\ : std_logic;
SIGNAL tmp : std_logic_vector(8 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_opcode <= opcode;
ww_arg1 <= arg1;
ww_arg2 <= arg2;
result <= ww_result;
result_9bit <= ww_result_9bit;
Carryout <= ww_Carryout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mux17~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux17~0_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X42_Y73_N2
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~3_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~2_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~2_combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~2_combout\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~2_combout\,
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~2_combout\,
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~2_combout\,
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~2_combout\,
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\result_9bit[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result_9bit[0]$latch~combout\,
	devoe => ww_devoe,
	o => \result_9bit[0]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\result_9bit[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result_9bit[1]$latch~combout\,
	devoe => ww_devoe,
	o => \result_9bit[1]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\result_9bit[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result_9bit[2]$latch~combout\,
	devoe => ww_devoe,
	o => \result_9bit[2]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\result_9bit[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result_9bit[3]$latch~combout\,
	devoe => ww_devoe,
	o => \result_9bit[3]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\result_9bit[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result_9bit[4]$latch~combout\,
	devoe => ww_devoe,
	o => \result_9bit[4]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\result_9bit[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result_9bit[5]$latch~combout\,
	devoe => ww_devoe,
	o => \result_9bit[5]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\result_9bit[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result_9bit[6]$latch~combout\,
	devoe => ww_devoe,
	o => \result_9bit[6]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\result_9bit[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result_9bit[7]$latch~combout\,
	devoe => ww_devoe,
	o => \result_9bit[7]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\result_9bit[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result_9bit[8]$latch~combout\,
	devoe => ww_devoe,
	o => \result_9bit[8]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\Carryout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result_9bit[8]$latch~combout\,
	devoe => ww_devoe,
	o => \Carryout~output_o\);

-- Location: IOIBUF_X58_Y73_N1
\opcode[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(1),
	o => \opcode[1]~input_o\);

-- Location: IOIBUF_X38_Y73_N22
\arg2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg2(0),
	o => \arg2[0]~input_o\);

-- Location: IOIBUF_X54_Y73_N1
\opcode[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(0),
	o => \opcode[0]~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\arg1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg1(0),
	o => \arg1[0]~input_o\);

-- Location: LCCOMB_X50_Y71_N10
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\arg1[0]~input_o\ & (\arg2[0]~input_o\ $ (VCC))) # (!\arg1[0]~input_o\ & (\arg2[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\arg1[0]~input_o\ & \arg2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arg1[0]~input_o\,
	datab => \arg2[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X54_Y73_N8
\opcode[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(2),
	o => \opcode[2]~input_o\);

-- Location: LCCOMB_X55_Y72_N6
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (!\opcode[1]~input_o\ & (\opcode[2]~input_o\ & !\opcode[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datac => \opcode[2]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: CLKCTRL_G14
\Mux17~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux17~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux17~0clkctrl_outclk\);

-- Location: LCCOMB_X53_Y71_N4
\tmp[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- tmp(0) = (GLOBAL(\Mux17~0clkctrl_outclk\) & (\Add0~0_combout\)) # (!GLOBAL(\Mux17~0clkctrl_outclk\) & ((tmp(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datac => tmp(0),
	datad => \Mux17~0clkctrl_outclk\,
	combout => tmp(0));

-- Location: LCCOMB_X52_Y71_N4
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\arg2[0]~input_o\ & (\arg1[0]~input_o\ $ (VCC))) # (!\arg2[0]~input_o\ & ((\arg1[0]~input_o\) # (GND)))
-- \Add1~1\ = CARRY((\arg1[0]~input_o\) # (!\arg2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arg2[0]~input_o\,
	datab => \arg1[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: IOIBUF_X49_Y73_N15
\arg1[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg1(7),
	o => \arg1[7]~input_o\);

-- Location: IOIBUF_X45_Y73_N8
\arg2[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg2(7),
	o => \arg2[7]~input_o\);

-- Location: IOIBUF_X38_Y73_N8
\arg1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg1(6),
	o => \arg1[6]~input_o\);

-- Location: IOIBUF_X67_Y73_N1
\arg2[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg2(6),
	o => \arg2[6]~input_o\);

-- Location: IOIBUF_X52_Y73_N1
\arg1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg1(5),
	o => \arg1[5]~input_o\);

-- Location: IOIBUF_X40_Y73_N8
\arg2[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg2(5),
	o => \arg2[5]~input_o\);

-- Location: IOIBUF_X52_Y73_N8
\arg1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg1(4),
	o => \arg1[4]~input_o\);

-- Location: IOIBUF_X40_Y73_N1
\arg2[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg2(4),
	o => \arg2[4]~input_o\);

-- Location: IOIBUF_X45_Y73_N1
\arg2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg2(3),
	o => \arg2[3]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\arg1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg1(3),
	o => \arg1[3]~input_o\);

-- Location: IOIBUF_X60_Y73_N1
\arg1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg1(2),
	o => \arg1[2]~input_o\);

-- Location: IOIBUF_X67_Y73_N8
\arg2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg2(2),
	o => \arg2[2]~input_o\);

-- Location: IOIBUF_X47_Y73_N15
\arg2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg2(1),
	o => \arg2[1]~input_o\);

-- Location: IOIBUF_X38_Y73_N15
\arg1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg1(1),
	o => \arg1[1]~input_o\);

-- Location: LCCOMB_X50_Y71_N12
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\arg2[1]~input_o\ & ((\arg1[1]~input_o\ & (\Add0~1\ & VCC)) # (!\arg1[1]~input_o\ & (!\Add0~1\)))) # (!\arg2[1]~input_o\ & ((\arg1[1]~input_o\ & (!\Add0~1\)) # (!\arg1[1]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\arg2[1]~input_o\ & (!\arg1[1]~input_o\ & !\Add0~1\)) # (!\arg2[1]~input_o\ & ((!\Add0~1\) # (!\arg1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arg2[1]~input_o\,
	datab => \arg1[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X50_Y71_N14
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\arg1[2]~input_o\ $ (\arg2[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\arg1[2]~input_o\ & ((\arg2[2]~input_o\) # (!\Add0~3\))) # (!\arg1[2]~input_o\ & (\arg2[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arg1[2]~input_o\,
	datab => \arg2[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X50_Y71_N16
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\arg2[3]~input_o\ & ((\arg1[3]~input_o\ & (\Add0~5\ & VCC)) # (!\arg1[3]~input_o\ & (!\Add0~5\)))) # (!\arg2[3]~input_o\ & ((\arg1[3]~input_o\ & (!\Add0~5\)) # (!\arg1[3]~input_o\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\arg2[3]~input_o\ & (!\arg1[3]~input_o\ & !\Add0~5\)) # (!\arg2[3]~input_o\ & ((!\Add0~5\) # (!\arg1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arg2[3]~input_o\,
	datab => \arg1[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X50_Y71_N18
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\arg1[4]~input_o\ $ (\arg2[4]~input_o\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\arg1[4]~input_o\ & ((\arg2[4]~input_o\) # (!\Add0~7\))) # (!\arg1[4]~input_o\ & (\arg2[4]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arg1[4]~input_o\,
	datab => \arg2[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X50_Y71_N20
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\arg1[5]~input_o\ & ((\arg2[5]~input_o\ & (\Add0~9\ & VCC)) # (!\arg2[5]~input_o\ & (!\Add0~9\)))) # (!\arg1[5]~input_o\ & ((\arg2[5]~input_o\ & (!\Add0~9\)) # (!\arg2[5]~input_o\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\arg1[5]~input_o\ & (!\arg2[5]~input_o\ & !\Add0~9\)) # (!\arg1[5]~input_o\ & ((!\Add0~9\) # (!\arg2[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arg1[5]~input_o\,
	datab => \arg2[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X50_Y71_N22
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\arg1[6]~input_o\ $ (\arg2[6]~input_o\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\arg1[6]~input_o\ & ((\arg2[6]~input_o\) # (!\Add0~11\))) # (!\arg1[6]~input_o\ & (\arg2[6]~input_o\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arg1[6]~input_o\,
	datab => \arg2[6]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X50_Y71_N24
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\arg1[7]~input_o\ & ((\arg2[7]~input_o\ & (\Add0~13\ & VCC)) # (!\arg2[7]~input_o\ & (!\Add0~13\)))) # (!\arg1[7]~input_o\ & ((\arg2[7]~input_o\ & (!\Add0~13\)) # (!\arg2[7]~input_o\ & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\arg1[7]~input_o\ & (!\arg2[7]~input_o\ & !\Add0~13\)) # (!\arg1[7]~input_o\ & ((!\Add0~13\) # (!\arg2[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arg1[7]~input_o\,
	datab => \arg2[7]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X50_Y71_N26
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = !\Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~15\,
	combout => \Add0~16_combout\);

-- Location: LCCOMB_X54_Y71_N2
\tmp[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- tmp(8) = (GLOBAL(\Mux17~0clkctrl_outclk\) & (\Add0~16_combout\)) # (!GLOBAL(\Mux17~0clkctrl_outclk\) & ((tmp(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datac => tmp(8),
	datad => \Mux17~0clkctrl_outclk\,
	combout => tmp(8));

-- Location: LCCOMB_X53_Y71_N16
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!\opcode[1]~input_o\ & ((\opcode[0]~input_o\) # (!tmp(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => tmp(8),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X53_Y71_N10
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\opcode[0]~input_o\ & (((\Add1~0_combout\) # (!\Mux10~0_combout\)))) # (!\opcode[0]~input_o\ & (tmp(0) & ((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => tmp(0),
	datac => \Add1~0_combout\,
	datad => \Mux10~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X50_Y71_N0
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\opcode[1]~input_o\ & ((\arg2[0]~input_o\ & ((\Mux10~1_combout\) # (\arg1[0]~input_o\))) # (!\arg2[0]~input_o\ & (\Mux10~1_combout\ & \arg1[0]~input_o\)))) # (!\opcode[1]~input_o\ & (((\Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \arg2[0]~input_o\,
	datac => \Mux10~1_combout\,
	datad => \arg1[0]~input_o\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X50_Y71_N6
\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\opcode[2]~input_o\ & (\Mux10~2_combout\)) # (!\opcode[2]~input_o\ & ((\arg1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux10~2_combout\,
	datac => \opcode[2]~input_o\,
	datad => \arg1[0]~input_o\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X52_Y71_N6
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\arg2[1]~input_o\ & ((\arg1[1]~input_o\ & (!\Add1~1\)) # (!\arg1[1]~input_o\ & ((\Add1~1\) # (GND))))) # (!\arg2[1]~input_o\ & ((\arg1[1]~input_o\ & (\Add1~1\ & VCC)) # (!\arg1[1]~input_o\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\arg2[1]~input_o\ & ((!\Add1~1\) # (!\arg1[1]~input_o\))) # (!\arg2[1]~input_o\ & (!\arg1[1]~input_o\ & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arg2[1]~input_o\,
	datab => \arg1[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X54_Y71_N20
\tmp[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- tmp(1) = (GLOBAL(\Mux17~0clkctrl_outclk\) & ((\Add0~2_combout\))) # (!GLOBAL(\Mux17~0clkctrl_outclk\) & (tmp(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tmp(1),
	datac => \Add0~2_combout\,
	datad => \Mux17~0clkctrl_outclk\,
	combout => tmp(1));

-- Location: LCCOMB_X53_Y71_N28
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\opcode[0]~input_o\ & ((\Add1~2_combout\) # ((!\Mux10~0_combout\)))) # (!\opcode[0]~input_o\ & (((tmp(1) & \Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \Add1~2_combout\,
	datac => tmp(1),
	datad => \Mux10~0_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X52_Y71_N28
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\arg2[1]~input_o\ & ((\Mux9~0_combout\) # ((\arg1[1]~input_o\ & \opcode[1]~input_o\)))) # (!\arg2[1]~input_o\ & (\Mux9~0_combout\ & ((\arg1[1]~input_o\) # (!\opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arg2[1]~input_o\,
	datab => \Mux9~0_combout\,
	datac => \arg1[1]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X52_Y71_N26
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\opcode[2]~input_o\ & (\Mux9~1_combout\)) # (!\opcode[2]~input_o\ & ((\arg1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \Mux9~1_combout\,
	datac => \arg1[1]~input_o\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X52_Y71_N8
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\arg2[2]~input_o\ $ (\arg1[2]~input_o\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\arg2[2]~input_o\ & (\arg1[2]~input_o\ & !\Add1~3\)) # (!\arg2[2]~input_o\ & ((\arg1[2]~input_o\) # (!\Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arg2[2]~input_o\,
	datab => \arg1[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X55_Y71_N8
\tmp[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- tmp(2) = (GLOBAL(\Mux17~0clkctrl_outclk\) & (\Add0~4_combout\)) # (!GLOBAL(\Mux17~0clkctrl_outclk\) & ((tmp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datac => tmp(2),
	datad => \Mux17~0clkctrl_outclk\,
	combout => tmp(2));

-- Location: LCCOMB_X53_Y71_N26
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\opcode[0]~input_o\ & ((\Add1~4_combout\) # ((!\Mux10~0_combout\)))) # (!\opcode[0]~input_o\ & (((tmp(2) & \Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => tmp(2),
	datac => \opcode[0]~input_o\,
	datad => \Mux10~0_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X53_Y71_N24
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\opcode[1]~input_o\ & ((\arg1[2]~input_o\ & ((\Mux8~0_combout\) # (\arg2[2]~input_o\))) # (!\arg1[2]~input_o\ & (\Mux8~0_combout\ & \arg2[2]~input_o\)))) # (!\opcode[1]~input_o\ & (((\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \arg1[2]~input_o\,
	datac => \Mux8~0_combout\,
	datad => \arg2[2]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X55_Y71_N24
\Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\opcode[2]~input_o\ & (\Mux8~1_combout\)) # (!\opcode[2]~input_o\ & ((\arg1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datac => \Mux8~1_combout\,
	datad => \arg1[2]~input_o\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X52_Y71_N10
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\arg2[3]~input_o\ & ((\arg1[3]~input_o\ & (!\Add1~5\)) # (!\arg1[3]~input_o\ & ((\Add1~5\) # (GND))))) # (!\arg2[3]~input_o\ & ((\arg1[3]~input_o\ & (\Add1~5\ & VCC)) # (!\arg1[3]~input_o\ & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\arg2[3]~input_o\ & ((!\Add1~5\) # (!\arg1[3]~input_o\))) # (!\arg2[3]~input_o\ & (!\arg1[3]~input_o\ & !\Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arg2[3]~input_o\,
	datab => \arg1[3]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X54_Y71_N14
\tmp[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- tmp(3) = (GLOBAL(\Mux17~0clkctrl_outclk\) & (\Add0~6_combout\)) # (!GLOBAL(\Mux17~0clkctrl_outclk\) & ((tmp(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datac => tmp(3),
	datad => \Mux17~0clkctrl_outclk\,
	combout => tmp(3));

-- Location: LCCOMB_X53_Y71_N30
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Mux10~0_combout\ & ((\opcode[0]~input_o\ & (\Add1~6_combout\)) # (!\opcode[0]~input_o\ & ((tmp(3)))))) # (!\Mux10~0_combout\ & (((\opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Mux10~0_combout\,
	datac => \opcode[0]~input_o\,
	datad => tmp(3),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X52_Y71_N24
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & ((\arg2[3]~input_o\) # ((\arg1[3]~input_o\) # (!\opcode[1]~input_o\)))) # (!\Mux7~0_combout\ & (\arg2[3]~input_o\ & (\arg1[3]~input_o\ & \opcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \arg2[3]~input_o\,
	datac => \arg1[3]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X52_Y71_N2
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\opcode[2]~input_o\ & (\Mux7~1_combout\)) # (!\opcode[2]~input_o\ & ((\arg1[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \Mux7~1_combout\,
	datac => \arg1[3]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X52_Y71_N12
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\arg1[4]~input_o\ $ (\arg2[4]~input_o\ $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\arg1[4]~input_o\ & ((!\Add1~7\) # (!\arg2[4]~input_o\))) # (!\arg1[4]~input_o\ & (!\arg2[4]~input_o\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arg1[4]~input_o\,
	datab => \arg2[4]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X53_Y71_N6
\tmp[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- tmp(4) = (GLOBAL(\Mux17~0clkctrl_outclk\) & (\Add0~8_combout\)) # (!GLOBAL(\Mux17~0clkctrl_outclk\) & ((tmp(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datac => \Mux17~0clkctrl_outclk\,
	datad => tmp(4),
	combout => tmp(4));

-- Location: LCCOMB_X53_Y71_N20
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux10~0_combout\ & ((\opcode[0]~input_o\ & (\Add1~8_combout\)) # (!\opcode[0]~input_o\ & ((tmp(4)))))) # (!\Mux10~0_combout\ & (((\opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Mux10~0_combout\,
	datac => \opcode[0]~input_o\,
	datad => tmp(4),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X52_Y71_N20
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & ((\arg1[4]~input_o\) # ((\arg2[4]~input_o\) # (!\opcode[1]~input_o\)))) # (!\Mux6~0_combout\ & (\arg1[4]~input_o\ & (\arg2[4]~input_o\ & \opcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \arg1[4]~input_o\,
	datac => \arg2[4]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X52_Y71_N30
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\opcode[2]~input_o\ & (\Mux6~1_combout\)) # (!\opcode[2]~input_o\ & ((\arg1[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~1_combout\,
	datac => \opcode[2]~input_o\,
	datad => \arg1[4]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X52_Y71_N14
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\arg2[5]~input_o\ & ((\arg1[5]~input_o\ & (!\Add1~9\)) # (!\arg1[5]~input_o\ & ((\Add1~9\) # (GND))))) # (!\arg2[5]~input_o\ & ((\arg1[5]~input_o\ & (\Add1~9\ & VCC)) # (!\arg1[5]~input_o\ & (!\Add1~9\))))
-- \Add1~11\ = CARRY((\arg2[5]~input_o\ & ((!\Add1~9\) # (!\arg1[5]~input_o\))) # (!\arg2[5]~input_o\ & (!\arg1[5]~input_o\ & !\Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arg2[5]~input_o\,
	datab => \arg1[5]~input_o\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X54_Y71_N24
\tmp[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- tmp(5) = (GLOBAL(\Mux17~0clkctrl_outclk\) & ((\Add0~10_combout\))) # (!GLOBAL(\Mux17~0clkctrl_outclk\) & (tmp(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tmp(5),
	datac => \Add0~10_combout\,
	datad => \Mux17~0clkctrl_outclk\,
	combout => tmp(5));

-- Location: LCCOMB_X53_Y71_N14
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\opcode[0]~input_o\ & ((\Add1~10_combout\) # ((!\Mux10~0_combout\)))) # (!\opcode[0]~input_o\ & (((tmp(5) & \Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => tmp(5),
	datac => \opcode[0]~input_o\,
	datad => \Mux10~0_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X52_Y71_N0
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\arg2[5]~input_o\ & ((\Mux5~0_combout\) # ((\arg1[5]~input_o\ & \opcode[1]~input_o\)))) # (!\arg2[5]~input_o\ & (\Mux5~0_combout\ & ((\arg1[5]~input_o\) # (!\opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arg2[5]~input_o\,
	datab => \arg1[5]~input_o\,
	datac => \Mux5~0_combout\,
	datad => \opcode[1]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X52_Y71_N22
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\opcode[2]~input_o\ & (\Mux5~1_combout\)) # (!\opcode[2]~input_o\ & ((\arg1[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \Mux5~1_combout\,
	datac => \arg1[5]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X54_Y71_N18
\tmp[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- tmp(6) = (GLOBAL(\Mux17~0clkctrl_outclk\) & (\Add0~12_combout\)) # (!GLOBAL(\Mux17~0clkctrl_outclk\) & ((tmp(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~12_combout\,
	datac => \Mux17~0clkctrl_outclk\,
	datad => tmp(6),
	combout => tmp(6));

-- Location: LCCOMB_X52_Y71_N16
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\arg2[6]~input_o\ $ (\arg1[6]~input_o\ $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\arg2[6]~input_o\ & (\arg1[6]~input_o\ & !\Add1~11\)) # (!\arg2[6]~input_o\ & ((\arg1[6]~input_o\) # (!\Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arg2[6]~input_o\,
	datab => \arg1[6]~input_o\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X53_Y71_N12
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\opcode[0]~input_o\ & (((\Add1~12_combout\) # (!\Mux10~0_combout\)))) # (!\opcode[0]~input_o\ & (tmp(6) & ((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => tmp(6),
	datac => \Add1~12_combout\,
	datad => \Mux10~0_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X50_Y71_N8
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\opcode[1]~input_o\ & ((\arg1[6]~input_o\ & ((\arg2[6]~input_o\) # (\Mux4~0_combout\))) # (!\arg1[6]~input_o\ & (\arg2[6]~input_o\ & \Mux4~0_combout\)))) # (!\opcode[1]~input_o\ & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \arg1[6]~input_o\,
	datac => \arg2[6]~input_o\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X50_Y71_N30
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\opcode[2]~input_o\ & ((\Mux4~1_combout\))) # (!\opcode[2]~input_o\ & (\arg1[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \arg1[6]~input_o\,
	datac => \Mux4~1_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X52_Y71_N18
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \arg2[7]~input_o\ $ (\Add1~13\ $ (!\arg1[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arg2[7]~input_o\,
	datad => \arg1[7]~input_o\,
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X54_Y71_N8
\tmp[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- tmp(7) = (GLOBAL(\Mux17~0clkctrl_outclk\) & (\Add0~14_combout\)) # (!GLOBAL(\Mux17~0clkctrl_outclk\) & ((tmp(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datac => tmp(7),
	datad => \Mux17~0clkctrl_outclk\,
	combout => tmp(7));

-- Location: LCCOMB_X53_Y71_N22
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\opcode[0]~input_o\ & ((\Add1~14_combout\) # ((!\Mux10~0_combout\)))) # (!\opcode[0]~input_o\ & (((tmp(7) & \Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \Add1~14_combout\,
	datac => tmp(7),
	datad => \Mux10~0_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X50_Y71_N4
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\arg1[7]~input_o\ & ((\Mux3~0_combout\) # ((\arg2[7]~input_o\ & \opcode[1]~input_o\)))) # (!\arg1[7]~input_o\ & (\Mux3~0_combout\ & ((\arg2[7]~input_o\) # (!\opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arg1[7]~input_o\,
	datab => \arg2[7]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X50_Y71_N28
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\opcode[2]~input_o\ & (\Mux3~1_combout\)) # (!\opcode[2]~input_o\ & ((\arg1[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \Mux3~1_combout\,
	datac => \arg1[7]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X53_Y71_N0
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (tmp(0) & tmp(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tmp(0),
	datad => tmp(8),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X53_Y71_N8
\result_9bit[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result_9bit[0]$latch~combout\ = (GLOBAL(\Mux17~0clkctrl_outclk\) & ((\Mux2~0_combout\))) # (!GLOBAL(\Mux17~0clkctrl_outclk\) & (\result_9bit[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \result_9bit[0]$latch~combout\,
	datac => \Mux17~0clkctrl_outclk\,
	datad => \Mux2~0_combout\,
	combout => \result_9bit[0]$latch~combout\);

-- Location: LCCOMB_X54_Y71_N4
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (tmp(8) & tmp(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tmp(8),
	datad => tmp(1),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X54_Y71_N10
\result_9bit[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result_9bit[1]$latch~combout\ = (GLOBAL(\Mux17~0clkctrl_outclk\) & ((\Mux1~0_combout\))) # (!GLOBAL(\Mux17~0clkctrl_outclk\) & (\result_9bit[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_9bit[1]$latch~combout\,
	datac => \Mux1~0_combout\,
	datad => \Mux17~0clkctrl_outclk\,
	combout => \result_9bit[1]$latch~combout\);

-- Location: LCCOMB_X55_Y71_N26
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (tmp(2) & tmp(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tmp(2),
	datad => tmp(8),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X55_Y71_N22
\result_9bit[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result_9bit[2]$latch~combout\ = (GLOBAL(\Mux17~0clkctrl_outclk\) & ((\Mux0~0_combout\))) # (!GLOBAL(\Mux17~0clkctrl_outclk\) & (\result_9bit[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_9bit[2]$latch~combout\,
	datac => \Mux0~0_combout\,
	datad => \Mux17~0clkctrl_outclk\,
	combout => \result_9bit[2]$latch~combout\);

-- Location: LCCOMB_X54_Y71_N30
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (tmp(3) & tmp(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tmp(3),
	datad => tmp(8),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X54_Y71_N28
\result_9bit[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result_9bit[3]$latch~combout\ = (GLOBAL(\Mux17~0clkctrl_outclk\) & ((\Mux11~0_combout\))) # (!GLOBAL(\Mux17~0clkctrl_outclk\) & (\result_9bit[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \result_9bit[3]$latch~combout\,
	datac => \Mux11~0_combout\,
	datad => \Mux17~0clkctrl_outclk\,
	combout => \result_9bit[3]$latch~combout\);

-- Location: LCCOMB_X53_Y71_N18
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (tmp(4) & tmp(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tmp(4),
	datad => tmp(8),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X53_Y71_N2
\result_9bit[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result_9bit[4]$latch~combout\ = (GLOBAL(\Mux17~0clkctrl_outclk\) & ((\Mux12~0_combout\))) # (!GLOBAL(\Mux17~0clkctrl_outclk\) & (\result_9bit[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \result_9bit[4]$latch~combout\,
	datac => \Mux17~0clkctrl_outclk\,
	datad => \Mux12~0_combout\,
	combout => \result_9bit[4]$latch~combout\);

-- Location: LCCOMB_X54_Y71_N16
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (tmp(8) & tmp(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tmp(8),
	datad => tmp(5),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X54_Y71_N6
\result_9bit[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result_9bit[5]$latch~combout\ = (GLOBAL(\Mux17~0clkctrl_outclk\) & ((\Mux13~0_combout\))) # (!GLOBAL(\Mux17~0clkctrl_outclk\) & (\result_9bit[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_9bit[5]$latch~combout\,
	datac => \Mux17~0clkctrl_outclk\,
	datad => \Mux13~0_combout\,
	combout => \result_9bit[5]$latch~combout\);

-- Location: LCCOMB_X54_Y71_N22
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (tmp(8) & tmp(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tmp(8),
	datad => tmp(6),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X54_Y71_N12
\result_9bit[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result_9bit[6]$latch~combout\ = (GLOBAL(\Mux17~0clkctrl_outclk\) & ((\Mux14~0_combout\))) # (!GLOBAL(\Mux17~0clkctrl_outclk\) & (\result_9bit[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result_9bit[6]$latch~combout\,
	datac => \Mux14~0_combout\,
	datad => \Mux17~0clkctrl_outclk\,
	combout => \result_9bit[6]$latch~combout\);

-- Location: LCCOMB_X54_Y71_N0
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (tmp(7) & tmp(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tmp(7),
	datad => tmp(8),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X54_Y71_N26
\result_9bit[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result_9bit[7]$latch~combout\ = (GLOBAL(\Mux17~0clkctrl_outclk\) & ((\Mux15~0_combout\))) # (!GLOBAL(\Mux17~0clkctrl_outclk\) & (\result_9bit[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \result_9bit[7]$latch~combout\,
	datac => \Mux17~0clkctrl_outclk\,
	datad => \Mux15~0_combout\,
	combout => \result_9bit[7]$latch~combout\);

-- Location: LCCOMB_X55_Y71_N4
\result_9bit[8]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result_9bit[8]$latch~combout\ = (GLOBAL(\Mux17~0clkctrl_outclk\) & (tmp(8))) # (!GLOBAL(\Mux17~0clkctrl_outclk\) & ((\result_9bit[8]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tmp(8),
	datac => \result_9bit[8]$latch~combout\,
	datad => \Mux17~0clkctrl_outclk\,
	combout => \result_9bit[8]$latch~combout\);

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;

ww_result_9bit(0) <= \result_9bit[0]~output_o\;

ww_result_9bit(1) <= \result_9bit[1]~output_o\;

ww_result_9bit(2) <= \result_9bit[2]~output_o\;

ww_result_9bit(3) <= \result_9bit[3]~output_o\;

ww_result_9bit(4) <= \result_9bit[4]~output_o\;

ww_result_9bit(5) <= \result_9bit[5]~output_o\;

ww_result_9bit(6) <= \result_9bit[6]~output_o\;

ww_result_9bit(7) <= \result_9bit[7]~output_o\;

ww_result_9bit(8) <= \result_9bit[8]~output_o\;

ww_Carryout <= \Carryout~output_o\;
END structure;


