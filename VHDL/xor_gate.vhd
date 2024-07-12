LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY xor_gate IS
	PORT(
		X,Y		:	IN std_logic;
		Z			: OUT std_logic);
END ENTITY xor_gate;


ARCHITECTURE dataflow of xor_gate IS
BEGIN
	Z <= X xor Y;
END dataflow;