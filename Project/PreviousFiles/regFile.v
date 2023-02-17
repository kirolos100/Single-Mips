`timescale 1ns / 1ps

module registerFile (sout1, sout2, sinp, inp, clk, WE, rd1, rd2);
    input [4:0] sout1, sout2, sinp;
    input clk, WE;
    input [31:0] inp;
    output reg [31:0] rd1, rd2;

    reg [31:0] registers [0:31];

    always @ (posedge clk) begin
        rd1 = registers[sout1];
        rd2 = registers[sout2];
    
        if (WE) begin
            registers[sinp] = inp;
        end
    end

endmodule