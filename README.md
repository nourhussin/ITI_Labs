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
