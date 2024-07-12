LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY full_adder IS
	PORT(
		A,B,Cin		:	IN std_logic;
		S,Cout		: OUT std_logic);
END ENTITY full_adder;

ARCHITECTURE structure OF full_adder IS
	COMPONENT half_adder IS
		PORT(
			A,B	: IN std_logic;
			S,C	: OUT std_logic);
	END COMPONENT;
	
	COMPONENT or_gate IS
		PORT(
			X,Y	: IN std_logic;
			Z		: OUT std_logic);
	END COMPONENT;
	
	SIGNAL s0,s1,s2	: std_logic;
	BEGIN
	U1: half_adder PORT MAP (A, B, s0, s1);
	U2: half_adder PORT MAP (s0, Cin, S, s2);
	U3: or_gate PORT MAP (s2, s1, Cout);
END structure;