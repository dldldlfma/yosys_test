module NOT(input A, output Y);
	assign Y=~A;
endmodule


module NAND(input A, input B, output Y);
	assign Y = ~(A&B);
endmodule

module NOR(input A, input B, output Y);
	assign Y = ~(A|B);
endmodule

