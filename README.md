# ITI Digital IC Summer Cammp Labs

## Lab 1

### 1. Design [Half Adder] and [Full Adder]
- Design a Half Adder.
- Design a Full Adder using the Half Adder as a sub-module by structure.

### 2. Verilog Model for a 4-bit Up-Down Counter
- Write a Verilog model for a 4-bit up-down counter with a parameter to define the output width.
- Write a simple testbench to verify the counter's functionality.
- Use parameter override to test an 8-bit counter.

### 3. 3–8-line Decoder Using Case Statement
- Write Verilog code to model a 3–8-line decoder using a Case statement.
- Write a simple testbench to check the results.

### 4. Simple Memory Buffer
- Write Verilog code to model a simple memory buffer with the following specifications:
  - **Input signals**: `clk`, `rst`, `en_w`, `en_r`,  8-bit `data_in`, address size = 3 bits.
  - **Output signals**: 8-bit `data_out`, `Full_Flag`, `Empty_Flag`.
  - Write a testbench to initialize and read the memory.

### 5. Sequence Operations
- Seq1 = 1011, Seq2 = 0011.
- Access only the first 2 leftmost bits from Seq1 and the last 2 bits from Seq2.
- Perform an AND operation between these parts of Seq1 and Seq2.
- Concatenate the result with Seq3 = 1010.
- Extend the MSB to achieve a final output with a width of 8 bits.

### 6. Combinational Circuit with Flip-Flop
- Write Verilog code for a combinational circuit, inserting a flip-flop at location Xs.
- Compare the netlist and simulation results with and without the flip-flop.

### 7. ALU Design
- Design an ALU to support the following operations:
  - Arithmetic: addition, subtraction, multiplication.
  - Bitwise: AND, OR, XOR, NAND, NOR, XNOR.
  - Shift operations: shift left, shift right.
  - Concatenation: between A and B.
- Consider A and B to be 3 bits each.
- Operations are synchronized with the clock signal.
- Use a testbench to verify your design.

  
---

## Lab 2

#### 1. Binary to Gray Code Converter
- Write Verilog code to convert from binary to gray.
- Write a testbench to test your design.

#### 2. 4-bit PISO (Parallel to Serial)
- Implement Verilog code for a 4-bit PISO (parallel to serial).
- Write a testbench to check the results.

#### 3. 4-bit SIPO (Serial to Parallel)
- Implement Verilog code for a 4-bit SIPO (serial to parallel).
- Write a testbench to check the results.

#### 4. State Machine Implementation
- Write Verilog code that implements the given state machine.

#### 5. Sequence Detector
- Write code for the sequence detector using two different methods: code style and Mealy machine.
- Sequence to detect: 10110101.

#### 6. Clock Divider by (2, 4, 8, 16)
- Write a clock divider with four outputs for divisions by 2, 4, 8, and 16.

#### 7. Clock Divider by 3
- Write a clock divider by 3 using two different methods.

#### 8. Clock Divider by 6
- Write a clock divider by 6.

#### 9. Synchronous FIFO
- Write a synchronous FIFO with `data_width=32` and `Depth=8`.


---

## Bonus Problem

### Asynchronous FIFO Design

#### Problem Statement
Assume you have two systems, A and B, that operate on different clock domains (`clkA` and `clkB`). System A operates at a frequency of 80 MHz, and System B operates at a frequency of 50 MHz. The number of data items to be transferred between the two systems is 120. Determine the required FIFO depth and design an asynchronous FIFO to solve this problem.

---

## VHDL LAB 1

### Problem Statement
Implement a 4-bit binary adder-subtractor circuit using VHDL. The circuit should have two 4-bit inputs (A and B) and a mode input (M) to select between addition (M=0) and subtraction (M=1). The output should be a 4-bit result (S) and a carry-out (Cout).

### Requirements
- Implement three different solutions for the problem using VHDL architectures:
  1. Behavioral
  2. Dataflow
  3. Structural
- Write a test bench for each architecture.
  - The test bench should read input test cases from a file and write the output to an output file.
  - Format for the output file: `in1=..., in2=..., Time=..., out=...`

---

## Python Lab 1

### Task 1: Convert Integer to Binary
Write a program that prompts the user to enter an integer number and converts it to its binary representation without stopping after conversion.

### Task 2: Compute Gross Pay
Write a program that takes user input for hours worked and rate per hour to compute the gross pay.

### Task 3: Arithmetic Operations
Write a program to perform addition and multiplication on the pair (3, 5) in three cases: integer, float, and string. Display the result and its type. Note: For string multiplication, use one string and one integer.

### Task 4: Calculate Grade
Write a program to calculate the grade based on the user's input score:
- 100-85: A
- 85-75: B
- 75-65: C
- 65-60: D
- Less than 60: F

### Task 5: Compute Pay with Overtime
Write a program to compute pay where employees receive 1.5 times the hourly rate for hours worked above 40 hours.

### Task 6: Classify Employee
Write a program using nested if statements to classify employees based on GPA and experience:
- Manager (GPA > 3.8 && Master && MBA && Experience > +15)
- Staff_senior (GPA > 3.6 && Master && 15 >= Experience > 10)
- Senior (GPA > 3.6 && 10 >= Experience > 5)
- TeamleaderSenior (GPA > 3.4 && 10 >= Experience > 3)
- Standard (GPA > 3 && Experience > 1)
- Junior (GPA > 2.5 && Experience < 1)

### Task 7: Validate User Input
Write a program that prompts the user to enter a number between 1.5 and 150. If the number is outside this range, display an error and prompt for another number.

### Task 8: Finding the Average
Write a program that calculates the average of a list [10, 20, 30, 40, 50, 60] and displays both the average and its approximate result.

### Task 9: Filtering Values
Write a program to filter values greater than 20 from a list [9, 41, 12, 3, 74, 15] and print them.

### Task 10: Finding the Smallest Value
Write a program that finds and prints the smallest value in a list [9, 41, 12, 3, 74, 15].

### Task 11: Print Words from Sentence
Write a program that takes a sentence from the user and prints each word separately.

### Task 12: Manipulate String
Using String = “0123456789”, write a program to print the following:
- "02468"
- "13579"
- "0369"
- "9876543210"

---

## Python Lab 2

### 1. Implement Hangman Game

#### Requirements:
- **Word Check**:
  - The user selects a random word to be guessed, for example, "banana".
- **User Input**:
  - The user can enter only 6 attempts.
  - Special characters are not allowed and should be refused.
  - The program accepts characters regardless of case sensitivity.
  - The program does not decrease the attempt count for repeated correct characters.
  
### 2. ATM System Program

### 3. System Company Processes with Lists

#### Implement Processes:
- Add Employee (`name`, `salary`, `department`, `ID`).
- Search Employee by Name.
- Delete Employee.
- Show all Employees.
- Quit.

### 4. System Company Processes with Dictionaries
