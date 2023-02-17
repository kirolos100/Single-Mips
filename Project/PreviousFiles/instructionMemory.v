`timescale 1ns / 1ps

module instructionMemory (PC, MachineCode);
    input [31:0] PC;
    output [31:0] MachineCode;

    reg [31:0] memory [0:31];

    // output from assembler, which is the equivalent machine code of the MIPS assembly
    // will be add here like this:
    // memory[0] = 10101010101010101010101010101010;
    // memory[1] = 01010101010101010101010101010101;
    // etc...

    assign MachineCode = memory[PC];

endmodule