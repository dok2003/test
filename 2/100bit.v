module bitback(
	input wire clk,
	input wire ir_input,
	output wire input_last
);
	reg [10000:0] a;
	reg [9999:0] b;
	
	assign input_last = a[1000];

	always @(posedge clk) begin
		b[999:0]<=a[999:0];
		a[0]<=ir_input;
		a[1000:1]<=b[999:0];	
	end
endmodule
