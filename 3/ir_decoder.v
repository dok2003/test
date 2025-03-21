module ir_decoder
(       input wire clk,
        input wire rst,
        input wire enable,
        input wire ir_input,
        output wire ready,
        output wire [31:0] command,
        output wire [3:0] test
);

	localparam T_MAX = 1750000+8192;

        wire strobe_front;
	
	reg  ir_input_last;
	reg [23:0] t1;
//	reg [20:0] t2;
	reg [7:0] dem;
	reg [1400:0] a;
	reg ktra;

	assign test[3:0] = dem[7:4];
	//assign test[0] = strobe_front;
	//assign test[3:1] = '0;
	assign strobe_front = (ir_input_last != ir_input) & ir_input;

	always @(posedge clk or posedge rst)
        begin
		if(rst) begin
		//	ir_input_last <= '1;
			dem <= '0;
			t1 <= '0;
			ktra <= '0;
		end else begin
                        if(enable)
                        begin
				//a[1400:0] <= { a[1399:0], ir_input };
				//ir_input_last <= a[1400];
				ir_input_last <= ir_input;
				if(t1<T_MAX && ktra)
					t1 <= t1 + 'b1;
				if(dem != '0 && strobe_front)
					ktra <= 1'b1;

				if(strobe_front && t1<T_MAX) begin	
					dem <= dem + 'b1;

				end
			end
		end
	end
endmodule
