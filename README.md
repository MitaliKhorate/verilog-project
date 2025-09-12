# ⚡ Simple ALU in Verilog

This repository contains a **Simple Arithmetic Logic Unit (ALU)** implemented in Verilog, along with its **testbench** and **simulation waveform**.  
Perfect for beginners learning digital design, Verilog, and simulation using **Icarus Verilog** and **GTKWave**.

---

## 📂 Project Files
| File | Description |
|------|-------------|
| `alu.v` | Verilog code for the ALU module |
| `alu_tb.v` | Testbench to verify the ALU functionality |
| `alu_waveform.png` | Screenshot of GTKWave simulation results |
| `README.md` | Project description and instructions |

---

## ⚙️ Features
- Addition  
- Subtraction  
- Bitwise AND  
- Bitwise OR  
 

---

## ▶️ How to Run
1. Open terminal in this folder.  
2. Compile the ALU with its testbench:
```bash
iverilog -o alu_sim alu.v alu_tb.v
```

## 🔗 Quick Access
- [ALU Code (alu.v)](alu.v)
- [Testbench (alu_tb.v)](alu_tb.v)
