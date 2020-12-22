module mac(
	input clk,
	input rstn,
	input [3:0] A,
	input [3:0] B,
    input [7:0] ACC,
	input sel,
	output reg [7:0] out
);


wire [7:0] AB;
assign AB = A*B;

wire [7:0] ACC_or_out;
assign ACC_or_out = (sel) ? ACC : out;

always @(posedge clk, negedge rstn)
begin
	if(!rstn)
	begin
		out <= 0;	
	end
	else
	begin
		out <= AB + ACC_or_out;
	end
end

endmodule
