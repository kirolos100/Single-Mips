`timescale 1ns / 1ps


module fullsub(a, b, bin, res, bout);
	input a, b, bin;
	output res, bout;
	assign res = a ^ b ^ bin;
	assign bout = ~a & (b^bin) | b & bin;
endmodule


module fullSubtractor32(op1, op2, bin, res, bout);
	input [31:0] op1, op2;
	input bin;
	output [31:0] res;
	output bout;

	wire [31:0] borrow;
	genvar i;
	generate
		for(i=31; i>=0; i=i-1)
			begin: description
			if(i===0)
				fullsub ff(op1[i], op2[i], bin, res[i], borrow[i]);
			else
				fullsub fff(op1[i], op2[i], borrow[i-1], res[i], borrow[i]);
  			end
	assign bout = borrow[31];
	endgenerate
endmodule