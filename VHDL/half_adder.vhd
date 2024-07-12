LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY half_adder IS
	PORT(
		A, B  	:	IN std_logic;
		S, C		:	OUT std_logic);
	
END ENTITY half_adder;

ARCHITECTURE dataflow OF half_adder is 
BEGIN
	S <= A xor B;
	C <= A and B;
END dataflow;