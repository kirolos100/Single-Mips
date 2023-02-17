`timescale 1ns / 1ps

module ALU(op1, op2, cin, opcode, res, cout, zflag, oflag);
	input [31:0] op1, op2;
	input cin;
	input [3:0] opcode;
	output reg [31:0] res;
	output reg cout, zflag, oflag;

	wire [31:0] resAdd, resSub;
	wire coutA, coutS;

	fullAdder32 f1(op1, op2, cin, resAdd, coutA);
	fullSubtractor32 f2(op1, op2, cin, resSub, coutS);

	always @ (*) begin
		case(opcode)

			4'b0000: begin
				res = op1 & op2; 
				cout = 1'b0;
				oflag = 1'b0;
			end

			4'b1111: begin
				res= op1 | op2; 
				cout = 1'b0;
				oflag = 1'b0;
			end

			4'b1001: begin
				res = resAdd;
				cout = coutA;
				oflag = (~res[31] & op1[31] & op2[31]) | (res[31] & ~op1[31] & ~op2[31]);
			end

			4'b0110: begin
				res = resSub;
				cout = coutS;
				oflag = (~res[31] & op1[31] & op2[31]) | (res[31] & ~op1[31] & ~op2[31]);
			end
		endcase
	end

	always @ (res) begin
        if (res == 0)
            zflag=1;
        else
            zflag=0;
    end
endmodule