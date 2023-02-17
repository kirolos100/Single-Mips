`timescale 1ns / 1ps


module fulladd(a, b, cin, res, cout);
	input a, b, cin;
	output res, cout;

	assign res = a ^ b ^ cin;
	assign cout = cin & (a^b) | (a&b);
endmodule


module fullAdder32(op1, op2, cin, res, cout);
	input [31:0] op1, op2;
	input cin;
	output [31:0] res;
	output cout;

	wire [31:0] carry;
	genvar i;
	generate
		for(i=31; i>=0; i=i-1)
			begin: description
			if(i==0)
				fulladd fu(op1[i], op2[i], cin, res[i], carry[i]);
			else
				fulladd fuu(op1[i], op2[i], carry[i-1], res[i], carry[i]);
  			end
	assign cout = carry[31];
	endgenerate
endmodule