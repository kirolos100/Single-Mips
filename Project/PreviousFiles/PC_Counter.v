`timescale 1ns / 1ps

module PC_Counter(PCin, PCout, clk);
    input [31:0] PCin;
    input clk;
    output reg [31:0] PCout;

    always @ (negedge clk) begin
        PCout = PCin + 1;
    end
endmodule