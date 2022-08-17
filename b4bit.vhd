-- Copyright (C) 1991-2009 Altera Corporation
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

-- PROGRAM		"Quartus II"
-- VERSION		"Version 9.1 Build 222 10/21/2009 SJ Web Edition"
-- CREATED		"Wed Aug 17 09:31:39 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY b4bit IS 
	PORT
	(
		in_C :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		out_C :  OUT  STD_LOGIC;
		S :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END b4bit;

ARCHITECTURE bdf_type OF b4bit IS 

ATTRIBUTE black_box : BOOLEAN;
ATTRIBUTE noopt : BOOLEAN;

COMPONENT \7483_0\
	PORT(B4 : IN STD_LOGIC;
		 C0 : IN STD_LOGIC;
		 A1 : IN STD_LOGIC;
		 A2 : IN STD_LOGIC;
		 B1 : IN STD_LOGIC;
		 B2 : IN STD_LOGIC;
		 A3 : IN STD_LOGIC;
		 B3 : IN STD_LOGIC;
		 A4 : IN STD_LOGIC;
		 S3 : OUT STD_LOGIC;
		 S4 : OUT STD_LOGIC;
		 S2 : OUT STD_LOGIC;
		 C4 : OUT STD_LOGIC;
		 S1 : OUT STD_LOGIC);
END COMPONENT;
ATTRIBUTE black_box OF \7483_0\: COMPONENT IS true;
ATTRIBUTE noopt OF \7483_0\: COMPONENT IS true;

SIGNAL	S_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(3 DOWNTO 0);


BEGIN 



b2v_inst : 7483_0
PORT MAP(B4 => B(3),
		 C0 => in_C,
		 A1 => A(0),
		 A2 => A(1),
		 B1 => B(0),
		 B2 => B(1),
		 A3 => A(2),
		 B3 => B(2),
		 A4 => A(3),
		 S3 => S_ALTERA_SYNTHESIZED(2),
		 S4 => S_ALTERA_SYNTHESIZED(3),
		 S2 => S_ALTERA_SYNTHESIZED(1),
		 C4 => out_C,
		 S1 => S_ALTERA_SYNTHESIZED(0));

S <= S_ALTERA_SYNTHESIZED;

END bdf_type;