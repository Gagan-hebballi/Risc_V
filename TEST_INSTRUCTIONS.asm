addi s0, zero, 163 //1 0x0
addi sp, sp, -4   //2   0x4
sw s0, 0(sp)      //3   0x8
add s0, zero, zero //4  0xc
addi t0, zero, 0  //5   0x10
LOOP:                
   slti t1, t0, 7    //6 0x14
   beq t1, zero, EXIT //7 0x18
   addi t0, t0, 1 //8  0x1c
   beq zero, zero, LOOP //9 0x20
EXIT:
    ori t1, t1, 10 //0x24
    lw s0, 0(sp)
    addi sp, sp, 4