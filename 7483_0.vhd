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

LIBRARY altera;
USE altera.maxplus2.all; 

LIBRARY work;

ENTITY 7483_0 IS 
PORT 
( 
	B4	:	IN	 STD_LOGIC;
	C0	:	IN	 STD_LOGIC;
	A1	:	IN	 STD_LOGIC;
	A2	:	IN	 STD_LOGIC;
	B1	:	IN	 STD_LOGIC;
	B2	:	IN	 STD_LOGIC;
	A3	:	IN	 STD_LOGIC;
	B3	:	IN	 STD_LOGIC;
	A4	:	IN	 STD_LOGIC;
	S3	:	OUT	 STD_LOGIC;
	S4	:	OUT	 STD_LOGIC;
	S2	:	OUT	 STD_LOGIC;
	C4	:	OUT	 STD_LOGIC;
	S1	:	OUT	 STD_LOGIC
); 
END 7483_0;

ARCHITECTURE bdf_type OF 7483_0 IS 
BEGIN 

-- instantiate macrofunction 

b2v_inst : 7483
PORT MAP(B4 => B4,
		 C0 => C0,
		 A1 => A1,
		 A2 => A2,
		 B1 => B1,
		 B2 => B2,
		 A3 => A3,
		 B3 => B3,
		 A4 => A4,
		 S3 => S3,
		 S4 => S4,
		 S2 => S2,
		 C4 => C4,
		 S1 => S1);

END bdf_type; 