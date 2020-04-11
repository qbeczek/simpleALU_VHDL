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

-- DATE "04/11/2020 17:56:25"

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
SIGNAL \arg2[0]~input_o\ : std_logic;
SIGNAL \arg1[0]~input_o\ : std_logic;
SIGNAL \opcode[2]~input_o\ : std_logic;
SIGNAL \opcode[0]~input_o\ : std_logic;
SIGNAL \opcode[1]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \arg2[7]~input_o\ : std_logic;
SIGNAL \arg1[7]~input_o\ : std_logic;
SIGNAL \arg2[6]~input_o\ : std_logic;
SIGNAL \arg1[6]~input_o\ : std_logic;
SIGNAL \arg2[5]~input_o\ : std_logic;
SIGNAL \arg1[5]~input_o\ : std_logic;
SIGNAL \arg2[4]~input_o\ : std_logic;
SIGNAL \arg1[4]~input_o\ : std_logic;
SIGNAL \arg2[3]~input_o\ : std_logic;
SIGNAL \arg1[3]~input_o\ : std_logic;
SIGNAL \arg2[2]~input_o\ : std_logic;
SIGNAL \arg1[2]~input_o\ : std_logic;
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
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;

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

\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~4_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~2_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~2_combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~2_combout\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

\result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~2_combout\,
	devoe => ww_devoe,
	o => \result[4]~output_o\);

\result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~2_combout\,
	devoe => ww_devoe,
	o => \result[5]~output_o\);

\result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~2_combout\,
	devoe => ww_devoe,
	o => \result[6]~output_o\);

\result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~2_combout\,
	devoe => ww_devoe,
	o => \result[7]~output_o\);

\result_9bit[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~0_combout\,
	devoe => ww_devoe,
	o => \result_9bit[0]~output_o\);

\result_9bit[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~0_combout\,
	devoe => ww_devoe,
	o => \result_9bit[1]~output_o\);

\result_9bit[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~0_combout\,
	devoe => ww_devoe,
	o => \result_9bit[2]~output_o\);

\result_9bit[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~0_combout\,
	devoe => ww_devoe,
	o => \result_9bit[3]~output_o\);

\result_9bit[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~0_combout\,
	devoe => ww_devoe,
	o => \result_9bit[4]~output_o\);

\result_9bit[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~0_combout\,
	devoe => ww_devoe,
	o => \result_9bit[5]~output_o\);

\result_9bit[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~0_combout\,
	devoe => ww_devoe,
	o => \result_9bit[6]~output_o\);

\result_9bit[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~0_combout\,
	devoe => ww_devoe,
	o => \result_9bit[7]~output_o\);

\result_9bit[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \result_9bit[8]~output_o\);

\Carryout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \Carryout~output_o\);

\arg2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg2(0),
	o => \arg2[0]~input_o\);

\arg1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg1(0),
	o => \arg1[0]~input_o\);

\opcode[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(2),
	o => \opcode[2]~input_o\);

\opcode[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(0),
	o => \opcode[0]~input_o\);

\opcode[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(1),
	o => \opcode[1]~input_o\);

\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\arg2[0]~input_o\ & (\arg1[0]~input_o\ $ (VCC))) # (!\arg2[0]~input_o\ & (\arg1[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\arg2[0]~input_o\ & \arg1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arg2[0]~input_o\,
	datab => \arg1[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

\Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\opcode[2]~input_o\ & (!\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & \Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \Add0~0_combout\,
	combout => \Mux16~3_combout\);

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

\arg2[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg2(7),
	o => \arg2[7]~input_o\);

\arg1[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg1(7),
	o => \arg1[7]~input_o\);

\arg2[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg2(6),
	o => \arg2[6]~input_o\);

\arg1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg1(6),
	o => \arg1[6]~input_o\);

\arg2[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg2(5),
	o => \arg2[5]~input_o\);

\arg1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg1(5),
	o => \arg1[5]~input_o\);

\arg2[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg2(4),
	o => \arg2[4]~input_o\);

\arg1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg1(4),
	o => \arg1[4]~input_o\);

\arg2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg2(3),
	o => \arg2[3]~input_o\);

\arg1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg1(3),
	o => \arg1[3]~input_o\);

\arg2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg2(2),
	o => \arg2[2]~input_o\);

\arg1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg1(2),
	o => \arg1[2]~input_o\);

\arg2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg2(1),
	o => \arg2[1]~input_o\);

\arg1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_arg1(1),
	o => \arg1[1]~input_o\);

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

\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\arg2[2]~input_o\ $ (\arg1[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\arg2[2]~input_o\ & ((\arg1[2]~input_o\) # (!\Add0~3\))) # (!\arg2[2]~input_o\ & (\arg1[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arg2[2]~input_o\,
	datab => \arg1[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

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

\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\arg2[4]~input_o\ $ (\arg1[4]~input_o\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\arg2[4]~input_o\ & ((\arg1[4]~input_o\) # (!\Add0~7\))) # (!\arg2[4]~input_o\ & (\arg1[4]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arg2[4]~input_o\,
	datab => \arg1[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\arg2[5]~input_o\ & ((\arg1[5]~input_o\ & (\Add0~9\ & VCC)) # (!\arg1[5]~input_o\ & (!\Add0~9\)))) # (!\arg2[5]~input_o\ & ((\arg1[5]~input_o\ & (!\Add0~9\)) # (!\arg1[5]~input_o\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\arg2[5]~input_o\ & (!\arg1[5]~input_o\ & !\Add0~9\)) # (!\arg2[5]~input_o\ & ((!\Add0~9\) # (!\arg1[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arg2[5]~input_o\,
	datab => \arg1[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\arg2[6]~input_o\ $ (\arg1[6]~input_o\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\arg2[6]~input_o\ & ((\arg1[6]~input_o\) # (!\Add0~11\))) # (!\arg2[6]~input_o\ & (\arg1[6]~input_o\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arg2[6]~input_o\,
	datab => \arg1[6]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\arg2[7]~input_o\ & ((\arg1[7]~input_o\ & (\Add0~13\ & VCC)) # (!\arg1[7]~input_o\ & (!\Add0~13\)))) # (!\arg2[7]~input_o\ & ((\arg1[7]~input_o\ & (!\Add0~13\)) # (!\arg1[7]~input_o\ & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\arg2[7]~input_o\ & (!\arg1[7]~input_o\ & !\Add0~13\)) # (!\arg2[7]~input_o\ & ((!\Add0~13\) # (!\arg1[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arg2[7]~input_o\,
	datab => \arg1[7]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = \arg2[7]~input_o\ $ (\arg1[7]~input_o\ $ (!\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arg2[7]~input_o\,
	datab => \arg1[7]~input_o\,
	cin => \Add0~15\,
	combout => \Add0~16_combout\);

\Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (!\opcode[1]~input_o\ & (((\opcode[0]~input_o\) # (!\Add0~16_combout\)) # (!\opcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \Add0~16_combout\,
	combout => \Mux7~5_combout\);

\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Mux7~5_combout\ & ((\opcode[0]~input_o\ & ((\Add1~0_combout\))) # (!\opcode[0]~input_o\ & (\Mux16~3_combout\)))) # (!\Mux7~5_combout\ & (((\opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~3_combout\,
	datab => \Add1~0_combout\,
	datac => \Mux7~5_combout\,
	datad => \opcode[0]~input_o\,
	combout => \Mux7~2_combout\);

\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\arg2[0]~input_o\ & ((\Mux7~2_combout\) # ((\arg1[0]~input_o\ & \opcode[1]~input_o\)))) # (!\arg2[0]~input_o\ & (\Mux7~2_combout\ & ((\arg1[0]~input_o\) # (!\opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arg2[0]~input_o\,
	datab => \arg1[0]~input_o\,
	datac => \Mux7~2_combout\,
	datad => \opcode[1]~input_o\,
	combout => \Mux7~3_combout\);

\Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\opcode[2]~input_o\ & (\Mux7~3_combout\)) # (!\opcode[2]~input_o\ & ((\arg1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datab => \arg1[0]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux7~4_combout\);

\Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\opcode[2]~input_o\ & (!\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & \Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \Add0~2_combout\,
	combout => \Mux15~2_combout\);

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

\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux7~5_combout\ & ((\opcode[0]~input_o\ & ((\Add1~2_combout\))) # (!\opcode[0]~input_o\ & (\Mux15~2_combout\)))) # (!\Mux7~5_combout\ & (((\opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~2_combout\,
	datab => \Add1~2_combout\,
	datac => \Mux7~5_combout\,
	datad => \opcode[0]~input_o\,
	combout => \Mux6~0_combout\);

\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\arg2[1]~input_o\ & ((\Mux6~0_combout\) # ((\arg1[1]~input_o\ & \opcode[1]~input_o\)))) # (!\arg2[1]~input_o\ & (\Mux6~0_combout\ & ((\arg1[1]~input_o\) # (!\opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arg2[1]~input_o\,
	datab => \arg1[1]~input_o\,
	datac => \Mux6~0_combout\,
	datad => \opcode[1]~input_o\,
	combout => \Mux6~1_combout\);

\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\opcode[2]~input_o\ & (\Mux6~1_combout\)) # (!\opcode[2]~input_o\ & ((\arg1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \arg1[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux6~2_combout\);

\Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\opcode[2]~input_o\ & (!\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & \Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \Add0~4_combout\,
	combout => \Mux14~2_combout\);

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

\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux7~5_combout\ & ((\opcode[0]~input_o\ & ((\Add1~4_combout\))) # (!\opcode[0]~input_o\ & (\Mux14~2_combout\)))) # (!\Mux7~5_combout\ & (((\opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => \Add1~4_combout\,
	datac => \Mux7~5_combout\,
	datad => \opcode[0]~input_o\,
	combout => \Mux5~0_combout\);

\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\arg2[2]~input_o\ & ((\Mux5~0_combout\) # ((\arg1[2]~input_o\ & \opcode[1]~input_o\)))) # (!\arg2[2]~input_o\ & (\Mux5~0_combout\ & ((\arg1[2]~input_o\) # (!\opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arg2[2]~input_o\,
	datab => \arg1[2]~input_o\,
	datac => \Mux5~0_combout\,
	datad => \opcode[1]~input_o\,
	combout => \Mux5~1_combout\);

\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\opcode[2]~input_o\ & (\Mux5~1_combout\)) # (!\opcode[2]~input_o\ & ((\arg1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \arg1[2]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux5~2_combout\);

\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\opcode[2]~input_o\ & (!\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & \Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \Add0~6_combout\,
	combout => \Mux13~2_combout\);

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

\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mux7~5_combout\ & ((\opcode[0]~input_o\ & ((\Add1~6_combout\))) # (!\opcode[0]~input_o\ & (\Mux13~2_combout\)))) # (!\Mux7~5_combout\ & (((\opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~2_combout\,
	datab => \Add1~6_combout\,
	datac => \Mux7~5_combout\,
	datad => \opcode[0]~input_o\,
	combout => \Mux4~0_combout\);

\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\arg2[3]~input_o\ & ((\Mux4~0_combout\) # ((\arg1[3]~input_o\ & \opcode[1]~input_o\)))) # (!\arg2[3]~input_o\ & (\Mux4~0_combout\ & ((\arg1[3]~input_o\) # (!\opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arg2[3]~input_o\,
	datab => \arg1[3]~input_o\,
	datac => \Mux4~0_combout\,
	datad => \opcode[1]~input_o\,
	combout => \Mux4~1_combout\);

\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\opcode[2]~input_o\ & (\Mux4~1_combout\)) # (!\opcode[2]~input_o\ & ((\arg1[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \arg1[3]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux4~2_combout\);

\Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\opcode[2]~input_o\ & (!\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & \Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \Add0~8_combout\,
	combout => \Mux12~2_combout\);

\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\arg2[4]~input_o\ $ (\arg1[4]~input_o\ $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\arg2[4]~input_o\ & (\arg1[4]~input_o\ & !\Add1~7\)) # (!\arg2[4]~input_o\ & ((\arg1[4]~input_o\) # (!\Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arg2[4]~input_o\,
	datab => \arg1[4]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mux7~5_combout\ & ((\opcode[0]~input_o\ & ((\Add1~8_combout\))) # (!\opcode[0]~input_o\ & (\Mux12~2_combout\)))) # (!\Mux7~5_combout\ & (((\opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \Add1~8_combout\,
	datac => \Mux7~5_combout\,
	datad => \opcode[0]~input_o\,
	combout => \Mux3~0_combout\);

\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\arg2[4]~input_o\ & ((\Mux3~0_combout\) # ((\arg1[4]~input_o\ & \opcode[1]~input_o\)))) # (!\arg2[4]~input_o\ & (\Mux3~0_combout\ & ((\arg1[4]~input_o\) # (!\opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arg2[4]~input_o\,
	datab => \arg1[4]~input_o\,
	datac => \Mux3~0_combout\,
	datad => \opcode[1]~input_o\,
	combout => \Mux3~1_combout\);

\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\opcode[2]~input_o\ & (\Mux3~1_combout\)) # (!\opcode[2]~input_o\ & ((\arg1[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \arg1[4]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux3~2_combout\);

\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\opcode[2]~input_o\ & (!\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & \Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \Add0~10_combout\,
	combout => \Mux11~2_combout\);

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

\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux7~5_combout\ & ((\opcode[0]~input_o\ & ((\Add1~10_combout\))) # (!\opcode[0]~input_o\ & (\Mux11~2_combout\)))) # (!\Mux7~5_combout\ & (((\opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~2_combout\,
	datab => \Add1~10_combout\,
	datac => \Mux7~5_combout\,
	datad => \opcode[0]~input_o\,
	combout => \Mux2~0_combout\);

\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\arg2[5]~input_o\ & ((\Mux2~0_combout\) # ((\arg1[5]~input_o\ & \opcode[1]~input_o\)))) # (!\arg2[5]~input_o\ & (\Mux2~0_combout\ & ((\arg1[5]~input_o\) # (!\opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arg2[5]~input_o\,
	datab => \arg1[5]~input_o\,
	datac => \Mux2~0_combout\,
	datad => \opcode[1]~input_o\,
	combout => \Mux2~1_combout\);

\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\opcode[2]~input_o\ & (\Mux2~1_combout\)) # (!\opcode[2]~input_o\ & ((\arg1[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \arg1[5]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux2~2_combout\);

\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\opcode[2]~input_o\ & (!\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & \Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \Add0~12_combout\,
	combout => \Mux10~2_combout\);

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

\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Mux7~5_combout\ & ((\opcode[0]~input_o\ & ((\Add1~12_combout\))) # (!\opcode[0]~input_o\ & (\Mux10~2_combout\)))) # (!\Mux7~5_combout\ & (((\opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~2_combout\,
	datab => \Add1~12_combout\,
	datac => \Mux7~5_combout\,
	datad => \opcode[0]~input_o\,
	combout => \Mux1~0_combout\);

\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\arg2[6]~input_o\ & ((\Mux1~0_combout\) # ((\arg1[6]~input_o\ & \opcode[1]~input_o\)))) # (!\arg2[6]~input_o\ & (\Mux1~0_combout\ & ((\arg1[6]~input_o\) # (!\opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arg2[6]~input_o\,
	datab => \arg1[6]~input_o\,
	datac => \Mux1~0_combout\,
	datad => \opcode[1]~input_o\,
	combout => \Mux1~1_combout\);

\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\opcode[2]~input_o\ & (\Mux1~1_combout\)) # (!\opcode[2]~input_o\ & ((\arg1[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \arg1[6]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux1~2_combout\);

\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\opcode[2]~input_o\ & (!\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & \Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \Add0~14_combout\,
	combout => \Mux9~2_combout\);

\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \arg2[7]~input_o\ $ (\arg1[7]~input_o\ $ (!\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arg2[7]~input_o\,
	datab => \arg1[7]~input_o\,
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Mux7~5_combout\ & ((\opcode[0]~input_o\ & ((\Add1~14_combout\))) # (!\opcode[0]~input_o\ & (\Mux9~2_combout\)))) # (!\Mux7~5_combout\ & (((\opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~2_combout\,
	datab => \Add1~14_combout\,
	datac => \Mux7~5_combout\,
	datad => \opcode[0]~input_o\,
	combout => \Mux0~0_combout\);

\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\arg2[7]~input_o\ & ((\Mux0~0_combout\) # ((\arg1[7]~input_o\ & \opcode[1]~input_o\)))) # (!\arg2[7]~input_o\ & (\Mux0~0_combout\ & ((\arg1[7]~input_o\) # (!\opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arg2[7]~input_o\,
	datab => \arg1[7]~input_o\,
	datac => \Mux0~0_combout\,
	datad => \opcode[1]~input_o\,
	combout => \Mux0~1_combout\);

\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\opcode[2]~input_o\ & (\Mux0~1_combout\)) # (!\opcode[2]~input_o\ & ((\arg1[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \arg1[7]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux0~2_combout\);

\Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\opcode[2]~input_o\ & (!\opcode[0]~input_o\ & !\opcode[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux16~2_combout\);

\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\Add0~0_combout\ & (\Mux16~2_combout\ & \Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Mux16~2_combout\,
	datac => \Add0~16_combout\,
	combout => \Mux25~0_combout\);

\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\Mux16~2_combout\ & (\Add0~2_combout\ & \Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~2_combout\,
	datab => \Add0~2_combout\,
	datac => \Add0~16_combout\,
	combout => \Mux24~0_combout\);

\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\Mux16~2_combout\ & (\Add0~4_combout\ & \Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~2_combout\,
	datab => \Add0~4_combout\,
	datac => \Add0~16_combout\,
	combout => \Mux23~0_combout\);

\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\Mux16~2_combout\ & (\Add0~6_combout\ & \Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~2_combout\,
	datab => \Add0~6_combout\,
	datac => \Add0~16_combout\,
	combout => \Mux22~0_combout\);

\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\Mux16~2_combout\ & (\Add0~8_combout\ & \Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~2_combout\,
	datab => \Add0~8_combout\,
	datac => \Add0~16_combout\,
	combout => \Mux21~0_combout\);

\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\Mux16~2_combout\ & (\Add0~10_combout\ & \Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~2_combout\,
	datab => \Add0~10_combout\,
	datac => \Add0~16_combout\,
	combout => \Mux20~0_combout\);

\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\Mux16~2_combout\ & (\Add0~12_combout\ & \Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~2_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~16_combout\,
	combout => \Mux19~0_combout\);

\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Mux16~2_combout\ & (\Add0~14_combout\ & \Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~2_combout\,
	datab => \Add0~14_combout\,
	datac => \Add0~16_combout\,
	combout => \Mux18~0_combout\);

\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\opcode[2]~input_o\ & (\Add0~16_combout\ & (!\opcode[0]~input_o\ & !\opcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \Add0~16_combout\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux8~0_combout\);

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


