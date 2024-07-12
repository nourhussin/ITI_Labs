LIBRARY ieee;
LIBRARY work;
LIBRARY std;

USE ieee.std_logic_1164.all;
USE ieee.numeric_bit.all;
USE ieee.std_logic_arith.all;
USE ieee.numeric_std.all;
USE ieee.std_logic_unsigned.all;
USE std.textio.all;


ENTITY adder_subtractor_tb IS
END ENTITY adder_subtractor_tb;

ARCHITECTURE test_bench OF adder_subtractor_tb IS
	COMPONENT adder_subtractor
		PORT(
			 A, B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			 Mode : IN STD_LOGIC; -- 1 for sub and 0 for add

			 S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			 Cout : OUT STD_LOGIC );
	END COMPONENT;
	FOR DUT: adder_subtractor USE ENTITY WORK.adder_subtractor(behavior);
	
			 SIGNAL A, B :  STD_LOGIC_VECTOR(3 DOWNTO 0);
			 SIGNAL Mode :  STD_LOGIC; -- 1 for sub and 0 for add
			 SIGNAL S    :  STD_LOGIC_VECTOR(3 DOWNTO 0);
			 SIGNAL Cout :  STD_LOGIC ;
			 
BEGIN
	DUT: adder_subtractor PORT MAP(A, B, Mode, S, Cout);
	PR : PROCESS
		file input_file	:	text open read_mode is "C:\Users\Nour\Desktop\ITI\VHDL\input_file.txt";
		file output_file	:	text open write_mode is "C:\Users\Nour\Desktop\ITI\VHDL\output_file.txt";
		
		VARIABLE in_L, out_L	 : 	line;
		VARIABLE Af, Bf, Sf	 : 	std_logic_vector(3 downto 0);
		VARIABLE Mf, Cf		 :		std_logic;
	BEGIN
		WHILE NoT endfile(input_file) LOOP
			readline(input_file, in_L);
			read(in_L, Af);
			read(in_L, Bf);
			read(in_L, Mf);
			
			A <= Af;	 B <= Bf;	Mode <= Mf; WAIT FOR 20ps;
			Cf := Cout;	Sf := S;
			
			write(out_L, string'("Time = "));write(out_L, now);
			write(out_L, string'(" IN1 = "));write(out_L, Af);
			write(out_L, string'(" IN2 = "));write(out_L, Bf);
			write(out_L, string'(" MODE = "));write(out_L, Mf);
			Writeline(output_file, out_L);
			
			write(out_L, string'("Cout = "));write(out_L, Cf);
			write(out_L, string'(" Sum = "));write(out_L, Sf);
			Writeline(output_file, out_L); wait for 5 ps;
			END LOOP;
			WAIT;
	END PROCESS PR;
END ARCHITECTURE test_bench;
