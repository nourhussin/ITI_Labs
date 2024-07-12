LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY adder_subtractor IS
PORT ( 
    
    A, B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    Mode : IN STD_LOGIC; -- 1 for sub and 0 for add

    S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    Cout : OUT STD_LOGIC );

END adder_subtractor ;


ARCHITECTURE dataflow OF adder_subtractor IS

SIGNAL Sum : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Controlled_B : STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN
    Controlled_B <= B xor (Mode & Mode & Mode & Mode);
    Sum <= ('0' & A) + ('0' & Controlled_B);
    S <= Sum(3 DOWNTO 0);
    Cout <= Sum(4);
END dataflow;


ARCHITECTURE behavior OF adder_subtractor IS
BEGIN

    P1: PROCESS(A, B, Mode) IS 
	 VARIABLE Sum : STD_LOGIC_VECTOR(4 DOWNTO 0);
	 
    BEGIN
        IF Mode = '1' THEN
            Sum := ('0' & A) + ('0' & B);
        ELSE
            Sum := ('0' & A) - ('0' & B);
        END IF;
		  
        S <= Sum(3 DOWNTO 0);
        Cout <= Sum(4);
    END PROCESS;
END behavior;


ARCHITECTURE structure OF adder_subtractor IS
	COMPONENT full_adder IS
		PORT(
			A,B,Cin	: IN std_logic;
			S,Cout	: OUT std_logic);
	END COMPONENT;
	
	COMPONENT xor_gate IS
		PORT(
			X,Y	: IN std_logic;
			Z  	: OUT std_logic);
	END COMPONENT;
	
	
	SIGNAL c1,c2,c3 : std_logic;
	SIGNAL controlled_B : std_logic_vector(3 downto 0);
	
BEGIN
	X0: xor_gate PORT MAP(Mode, B(0), controlled_B(0));
	X1: xor_gate PORT MAP(Mode, B(1), controlled_B(1));
	X2: xor_gate PORT MAP(Mode, B(2), controlled_B(2));
	X3: xor_gate PORT MAP(Mode, B(3), controlled_B(3));
	
	U0: full_adder PORT MAP(A(0), controlled_B(0),'0', S(0), c1);
	U1: full_adder PORT MAP(A(1), controlled_B(1), C1, S(1), c2);
	U2: full_adder PORT MAP(A(2), controlled_B(2), C2, S(2), c3);
	U3: full_adder PORT MAP(A(3), controlled_B(3), C3, S(3), Cout);
	
END structure;