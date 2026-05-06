# 🧠 4-bit RISC Processor in Verilog

A simple 4-bit Reduced Instruction Set Computer (RISC) processor designed and simulated using Verilog HDL. This project demonstrates the basic working of a CPU including instruction fetch, decode, execution, and memory operations.

---

## ✨ Features

* 4-bit ALU supporting:

  * ➕ ADD
  * ➖ SUB
  * 🔗 AND
  * 🔀 OR
* Register File with 4 registers
* Control Unit for instruction decoding
* Instruction Memory and Data Memory
* Supports:

  * LOAD
  * STORE
  * Arithmetic operations
* Simulated using ModelSim

---

## 🧠 Architecture Overview

The processor consists of:

* **Program Counter (PC)** → Fetches instructions
* **Instruction Memory** → Stores program
* **Control Unit** → Decodes opcode
* **Register File** → Stores intermediate data
* **ALU** → Performs operations
* **Data Memory** → Handles LOAD/STORE

---

## ⚙️ Instruction Format (8-bit)

```
[7:6] → Opcode  
[5:4] → Destination Register (rd)  
[3:2] → Source Register (rs)  
[1:0] → Immediate / Address  
```

---

## 📋 Instruction Set

| Opcode | Instruction | Description           |
| ------ | ----------- | --------------------- |
| 00     | ADD         | R[rd] = R[rd] + R[rs] |
| 01     | SUB         | R[rd] = R[rd] - R[rs] |
| 10     | LOAD        | R[rd] = Mem[imm]      |
| 11     | STORE       | Mem[imm] = R[rd]      |

---

## 🧪 Simulation

The processor was simulated using ModelSim.

### Example Execution Flow:

1. LOAD value into R0
2. LOAD value into R1
3. ADD R0 and R1
4. STORE result into memory

### Expected Output:

* `R0 = 5`
* `R1 = 3`
* `Memory[3] = 5`

---

## 📊 Waveform



<img width="1894" height="506" alt="Screenshot 2026-05-06 105648" src="https://github.com/user-attachments/assets/87caf3bd-1a0a-4ba6-89a1-f56805b1bc8b" />




---

## 📁 Project Structure

```
├── alu.v
├── regfile.v
├── control.v
├── imem.v
├── dmem.v
├── cpu.v
├── cpu_tb.v
├── docs/
│   └── waveform.png
```

---

## 🚀 How to Run

```bash
vlib work
vmap work work
vlog *.v
vsim work.cpu_tb
add wave -r *
run 200
```

---

## 🎯 Key Learnings

* CPU architecture fundamentals
* Data path and control flow
* Verilog-based hardware design
* Simulation and debugging

---

## 👩‍💻 Author

Vindya G

---

## ⭐ If you like this project, give it a star!
