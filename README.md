# 8-bit Arithmetic Logic Unit (ALU) using Verilog HDL

## Overview

This project implements an 8-bit Arithmetic Logic Unit (ALU) using Verilog HDL in Xilinx Vivado. The ALU performs basic arithmetic and bitwise logical operations based on a 3-bit opcode.

The design was simulated using Vivado Simulator (XSim) and synthesized to evaluate FPGA resource utilization.

## Features

- 8-bit input operands (`A` and `B`)
- 3-bit opcode for operation selection
- 8-bit output (`Y`)
- Carry flag for addition
- Zero flag to indicate when the output is zero
- Default output for unsupported opcodes

## Supported Operations

| Opcode | Operation | Description |
|---|---|---|
| `000` | Addition | `A + B` |
| `001` | Subtraction | `A - B` |
| `010` | Bitwise AND | `A & B` |
| `011` | Bitwise OR | `A \| B` |
| `100` | Bitwise XOR | `A ^ B` |
| `101` | Bitwise NOT | `~A` |
| `110` | Default | Output is zero |
| `111` | Default | Output is zero |

## Tools and Technologies

- **HDL:** Verilog
- **Design and Synthesis:** Xilinx Vivado
- **Simulation:** Vivado Simulator (XSim)
- **Target Device:** Artix 7

## Project Structure

```text
8bit-ALU-Verilog/
├── alu.v
├── alu_tb.v
├── screenshots/
│   ├── simulation_waveform.png
│   └── synthesis_utilization.png
└── README.md
```

## Simulation and Verification

A Verilog testbench (`alu_tb.v`) was created to apply input combinations and observe the ALU outputs in Vivado Simulator.

The test scenarios include:

- Addition of two 8-bit numbers
- Addition overflow and carry-out
- Subtraction
- Bitwise AND, OR, and XOR
- Bitwise NOT of input `A`
- Invalid opcode handling
- Zero-flag behavior

**Simulation status:**<img width="1496" height="320" alt="image" src="https://github.com/user-attachments/assets/37a3b719-bff8-4b83-8878-88c4a6493398" />


## Synthesis Results

The design was synthesized using Xilinx Vivado.

| FPGA Resource | Used | Available | Utilization |
|---|---:|---:|---:|
| LUTs | 40 | 20,800 | 0.19% |
| Bonded IOBs | 29 | 106 | 27.36% |

These values are from the Vivado utilization summary for the selected FPGA target. Resource utilization may vary depending on the FPGA device and synthesis settings.

### Synthesis Report

<img width="962" height="485" alt="image" src="https://github.com/user-attachments/assets/5ca3dd47-26d2-4dfd-97ed-74a6fd4ed779" />

### Simulation Waveform

<img width="1580" height="412" alt="image" src="https://github.com/user-attachments/assets/316ad474-4b26-4084-99ff-1985db8fd415" />


## Key Learning Outcomes

- Implementing combinational logic using Verilog HDL
- Using `always @(*)` and `case` statements
- Designing arithmetic and bitwise operations
- Developing a Verilog testbench
- Simulating and inspecting waveforms using Vivado Simulator
- Synthesizing RTL and analyzing FPGA resource utilization

## Future Improvements

- Add a signed arithmetic mode
- Extend the ALU with shift and comparison operations
- Develop more extensive self-checking testbenches
- Evaluate timing reports and optimize the RTL

## Author

Kavin K K

Electronics and Communication Engineering Student  
Interested in RTL Design and Digital VLSI

GitHub: https://github.com/kavinkk0509
