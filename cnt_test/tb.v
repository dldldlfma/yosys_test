module tb();

reg clk;
reg rstn;
wire [7:0] out;


cnt u0(clk, rstn, out);

always #5 clk <= ~clk;


initial
begin
	rstn<=1;
	clk<=1;
	#1 rstn<=0;
	#1 rstn<=1;
	repeat(50) @(posedge clk);
	$finish;
end


initial
begin
	$dumpfile("wave.vcd");
	$dumpvars(-1,u0);
end

endmodule
