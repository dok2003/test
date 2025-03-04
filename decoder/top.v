module top (
	input wire clk25,
	inout [3:0] gpio
);
	reg [7:0] command;
	decoder #(
	.clk_hz(250),
	.bit_0(112.5),
	.bit_1(225)
	)  decoder_take(
		.clk(clk25),
		.gpio(gpio[3]),
		.code_com(command)       
	);
	reg [7:0] x1=0;
	always @(*) begin
	reg [7:0] x=0;
 
	case(command[7:0])
	'b10100010: x[0]<=1'b1;//left
	'b11100010: x[1]<=1'b1;//right
	'b11100000: x[2]<=1'b1;//dec_speed
	'b10101000: x[3]<=1'b1; //in_speed
	'b11000010: x[4]<=1'b1; //start
	'b01101000: x[5]<=1'b1; //stop
	'b10010000: x[6]<=1'b1; //diversion
	'b10001110: x[7]<=1'b1; //reset
	endcase
	assign x1[7:0]=[0:1];
	end
	

	motor_drv # (			// Creating an instance of motor_drv module (motor_drv.sv)
		.clk_hz(25000000),
		.pwm_hz(250) 
	) motor_inst (
		.clk(clk25),
		.enable(~x[5]),
		.rst(x1[7]),
		.direction(x[6]),
		.duty_cycle(8'd128),	// Setting duty_cycle to a fixed value (50%) for testing purposes
		.pwm_outA(gpio[0]),
		.pwm_outB(gpio[1])
	);


	
endmodule
