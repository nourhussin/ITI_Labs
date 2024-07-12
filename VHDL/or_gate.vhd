LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY or_gate IS
	PORT(
		X,Y		:	IN std_logic;
		Z			: OUT std_logic);
END ENTITY or_gate;


ARCHITECTURE dataflow of or_gate IS
BEGIN
	Z <= X or Y;
END dataflow;