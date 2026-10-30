*instruction (opcode, funct3, funct7): description*

**Terms**
- rd = destination register (where the result goes); rs1/rs2 = source registers (the inputs)
- imm = immediate, a constant stored inside the instruction
- PC = address of the current instruction; PC + 4 is the next instruction
- x0 always reads as 0, and writing to it does nothing
- Signed = the top bit means negative (two's complement); unsigned = all 32 bits are a positive number
- Sign-extend = fill the upper bits with copies of the top bit, so negative numbers stay negative; zero-extend = fill them with 0s

### R-Type:
- [ ] add (0110011, funct3 000, funct7 0000000): Adds the value of two registers. rd = rs1 + rs2. Overflow is ignored (only the low 32 bits are kept).
- [ ] sub (0110011, funct3 000, funct7 0100000): Subtracts rs2 from rs1. rd = rs1 - rs2. Overflow is ignored.
- [ ] sll (0110011, funct3 001, funct7 0000000): Shift left logical. Shifts rs1 left by the lower 5 bits of rs2, filling the bottom with 0s.
- [ ] slt (0110011, funct3 010, funct7 0000000): Set less than. rd = 1 if rs1 < rs2 (signed), otherwise 0.
- [ ] sltu (0110011, funct3 011, funct7 0000000): Set less than unsigned. rd = 1 if rs1 < rs2 (unsigned), otherwise 0.
- [ ] xor (0110011, funct3 100, funct7 0000000): Bitwise XOR. rd = rs1 ^ rs2.
- [ ] srl (0110011, funct3 101, funct7 0000000): Shift right logical. Shifts rs1 right by the lower 5 bits of rs2, filling the top with 0s.
- [ ] sra (0110011, funct3 101, funct7 0100000): Shift right arithmetic. Shifts rs1 right by the lower 5 bits of rs2, filling the top with copies of the sign bit.
- [ ] or (0110011, funct3 110, funct7 0000000): Bitwise OR. rd = rs1 | rs2.
- [ ] and (0110011, funct3 111, funct7 0000000): Bitwise AND. rd = rs1 & rs2.

### I-Type:
#### Math with a constant (imm is 12 bits, sign-extended)
- [ ] addi (0010011, funct3 000): Adds a constant. rd = rs1 + imm. Overflow is ignored. `addi x0, x0, 0` is the official NOP (do nothing), and `addi rd, rs1, 0` copies a register (mv).
- [ ] slti (0010011, funct3 010): Set less than immediate. rd = 1 if rs1 < imm (signed), otherwise 0.
- [ ] sltiu (0010011, funct3 011): Like slti, but compares as unsigned (imm is sign-extended first, then treated as unsigned). `sltiu rd, rs1, 1` sets rd = 1 if rs1 is 0 (seqz).
- [ ] xori (0010011, funct3 100): Bitwise XOR with a constant. rd = rs1 ^ imm. `xori rd, rs1, -1` flips every bit (not).
- [ ] ori (0010011, funct3 110): Bitwise OR with a constant. rd = rs1 | imm.
- [ ] andi (0010011, funct3 111): Bitwise AND with a constant. rd = rs1 & imm.

#### Shifts by a constant (shift amount = imm[4:0]; imm[11:5] acts like a funct7)
- [ ] slli (0010011, funct3 001, imm[11:5] 0000000): Shift left logical by a constant, filling the bottom with 0s.
- [ ] srli (0010011, funct3 101, imm[11:5] 0000000): Shift right logical by a constant, filling the top with 0s.
- [ ] srai (0010011, funct3 101, imm[11:5] 0100000): Shift right arithmetic by a constant, filling the top with copies of the sign bit. Bit 30 is what tells srli and srai apart.

#### Loads (memory address = rs1 + imm)
- [ ] lb (0000011, funct3 000): Load byte. Reads 8 bits from memory, sign-extends them to 32 bits, and writes rd.
- [ ] lh (0000011, funct3 001): Load halfword. Reads 16 bits, sign-extends them, and writes rd.
- [ ] lw (0000011, funct3 010): Load word. Reads 32 bits into rd.
- [ ] lbu (0000011, funct3 100): Load byte unsigned. Reads 8 bits, zero-extends them, and writes rd.
- [ ] lhu (0000011, funct3 101): Load halfword unsigned. Reads 16 bits, zero-extends them, and writes rd.

#### Jump
- [ ] jalr (1100111, funct3 000): Jump and link register. Jumps to rs1 + imm (with the lowest bit set to 0) and saves PC + 4 in rd. `jalr x0, 0(x1)` returns from a function (ret).

#### Memory ordering and system
- [ ] fence (0001111, funct3 000): Makes sure other cores and devices see all memory/I/O accesses from before the fence happen before any from after it. On a simple core that does one memory access at a time, in order, there is nothing to reorder, so it acts like a NOP.
- [ ] fence.tso (0001111, funct3 000, fm 1000): A slightly weaker fence (fm = 1000, pred = RW, succ = RW). The spec says it's correct to implement it exactly like a normal fence.
- [ ] pause (0001111, funct3 000, pred 0001, succ 0000): A hint to briefly slow down, used inside spin-wait loops. Its effect is allowed to last zero time, so doing nothing is fine. It comes from the Zihintpause extension (Chapter 9) but is listed in the RV32I table.
- [ ] ecall (1110011, funct3 000, imm 000000000000): Environment call. Stops the program and asks the execution environment (e.g. an operating system) to do something for it, like print or exit. Arguments are usually passed in registers.
- [ ] ebreak (1110011, funct3 000, imm 000000000001): Environment break. Stops the program and hands control to a debugger.

### S-Type:
*Memory address = rs1 + imm (imm is 12 bits, sign-extended).*
- [ ] sb (0100011, funct3 000): Store byte. Writes the low 8 bits of rs2 to memory.
- [ ] sh (0100011, funct3 001): Store halfword. Writes the low 16 bits of rs2 to memory.
- [ ] sw (0100011, funct3 010): Store word. Writes all 32 bits of rs2 to memory.

### B-Type:
*Compares rs1 and rs2. If the condition is true, jumps to PC + imm (imm is a multiple of 2, up to ±4 KiB away). Otherwise it moves on to the next instruction.*
- [ ] beq (1100011, funct3 000): Branch if equal (rs1 == rs2).
- [ ] bne (1100011, funct3 001): Branch if not equal (rs1 != rs2).
- [ ] blt (1100011, funct3 100): Branch if less than, signed (rs1 < rs2).
- [ ] bge (1100011, funct3 101): Branch if greater than or equal, signed (rs1 >= rs2).
- [ ] bltu (1100011, funct3 110): Branch if less than, unsigned (rs1 < rs2).
- [ ] bgeu (1100011, funct3 111): Branch if greater than or equal, unsigned (rs1 >= rs2).

### U-Type:
- [ ] lui (0110111): Load upper immediate. Puts the 20-bit imm in the top 20 bits of rd and sets the low 12 bits to 0. Paired with addi to build any 32-bit constant.
- [ ] auipc (0010111): Add upper immediate to PC. Places the 20-bit imm in the top 20 bits (low 12 bits 0), adds the PC, and writes the result to rd. Used to build addresses relative to the current instruction.

### J-Type:
- [ ] jal (1101111): Jump and link. Saves PC + 4 in rd, then jumps to PC + imm (imm is a multiple of 2, up to ±1 MiB away). Function calls use rd = x1; `jal x0, label` is a plain jump (j).
