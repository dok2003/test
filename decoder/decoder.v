module decoder
#(
	parameter clk_hz = 250,
	parameter bit_0 = 125,
	parameter bit_1 = 225
)
(
	input wire clk,
	input wire gpio,
	output reg [7:0] code_com	
);
	reg [31:0] command;
	integer i_0=0,i=8;
	integer k=1;
	localparam integer n_0 = bit_0*clk_hz;
	localparam integer  n_1 = bit_1*clk_hz;

	assign command[7:0] = 8'b00000000;
	reg [$clog2(n_1)-1:0] counter = 0;

	always @(posedge clk) begin
		counter <= counter + 1;
	end

	always @(posedge gpio) begin
		if( counter >= n_1-1)
		begin
			command[i] <= 1'b1;
			i  = i + 1;
			k = (&command[i-1])?k+1:1;
			i=(k==1)?9:i;
			counter =0;
		end
		else 
		begin
			command[i] <= 1'b0;
			i = i+1;
		end
	end
	assign code_com[7:0] = command[16:23];
endmodule
