# 7-Segment Display Using Verilog

## Project Overview

This project implements a **7-segment display decoder using Verilog HDL**.

A 4-bit binary input is converted into the corresponding display pattern for hexadecimal values **0 to F**.

## Features

* 4-bit binary input
* 7-segment output
* Displays hexadecimal digits 0–F
* Combinational logic design
* Includes a Verilog testbench for simulation

## Inputs

| Signal | Width | Description              |
| ------ | ----: | ------------------------ |
| `bin`  | 4-bit | Binary/hexadecimal input |

## Outputs

| Signal | Width | Description              |
| ------ | ----: | ------------------------ |
| `seg`  | 7-bit | 7-segment display output |

## Segment Configuration

The segments are arranged as:

```text
       a
      ---
   f |   | b
      -g-
   e |   | c
      ---
       d
```

The output format is:

```text
seg = {a,b,c,d,e,f,g}
```

This project uses an **active-low common-anode display**, where `0` means the segment is ON.

## Hexadecimal Display

| Input | Digit | Output  |
| ----- | ----- | ------- |
| 0000  | 0     | 1000000 |
| 0001  | 1     | 1111001 |
| 0010  | 2     | 0100100 |
| 0011  | 3     | 0110000 |
| 0100  | 4     | 0011001 |
| 0101  | 5     | 0010010 |
| 0110  | 6     | 0000010 |
| 0111  | 7     | 1111000 |
| 1000  | 8     | 0000000 |
| 1001  | 9     | 0010000 |
| 1010  | A     | 0001000 |
| 1011  | b     | 0000011 |
| 1100  | C     | 1000110 |
| 1101  | d     | 0100001 |
| 1110  | E     | 0000110 |
| 1111  | F     | 0001110 |

## Tools

* Verilog HDL
* Icarus Verilog / ModelSim / Vivado
* GTKWave for waveform viewing

## Simulation

Compile:

```bash
iverilog -o seven_segment_sim seven_segment.v seven_segment_tb.v
```

Run:

```bash
vvp seven_segment_sim
```

Generate waveform:

```bash
iverilog -o seven_segment_sim -g2012 -s seven_segment_tb seven_segment.v seven_segment_tb.v
vvp seven_segment_sim
gtkwave seven_segment.vcd
```

## Expected Result

The simulation tests all hexadecimal inputs from `0` to `F`. The corresponding 7-segment pattern should be generated for each input.

## Conclusion

The project successfully demonstrates how Verilog combinational logic can be used to control a 7-segment display and decode 4-bit hexadecimal input values.
