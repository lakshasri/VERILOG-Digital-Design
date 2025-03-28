# VERILOG-Digital-Design
this repository contains verilog implementations of basic digital circuits, including adders, multiplexers, flip-flops, and counters. each module is accompanied by a testbench for simulation.


### 1. Combinational Circuits
- **Half Adder & Full Adder** – Basic building blocks for arithmetic operations.
- **Multiplexer (MUX)** – Implementing 2:1 and 4:1 MUX.
- **Ripple Carry Adder (RCA)** – 4-bit and 8-bit RCA implementations.

### 2. Sequential Circuits
- **Flip-Flops** – D Flip-Flop with testbench.
- **Counters** – Binary counter and synchronous counter with testbenches.

## Setup & Simulation
### Requirements
- Verilog Simulator: [Icarus Verilog (iverilog)](http://iverilog.icarus.com/) 
- GTKWave for waveform analysis

### Running a Simulation
1. Compile and simulate a Verilog file using Icarus Verilog:
   ```sh
   iverilog -o output_file example.v testbench.v
   vvp output_file
   ```
2. View waveforms:
   ```sh
   gtkwave dump.vcd
   ```

