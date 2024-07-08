# ITI Lab

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
