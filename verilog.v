module AND2(output OUT, input IN1, input IN2);
assign OUT = IN1 & IN2;
endmodule

module NAND2(output OUT, input IN1, input IN2);
assign OUT = ~(IN1 & IN2);
endmodule 

module adder1(output sum, output c_out, input a, input b, input c_in);
wire s1,s2,s3;

XOR  my_1_xor(  .OUT (s1),  .IN1 (a), .IN2 (b)  );
AND2 my_1_and2( .OUT (s3), .IN1 (a), .IN2 (b) );

XOR my_2_xor(  .OUT (sum),  .IN1 (s1), .IN2 (c_in)  );
AND2 my_2_and2( .OUT (s2), .IN1 (s1), .IN2 (c_in) );

XOR my_3_xor( .OUT (c_out),  .IN1 (s2), .IN2 (s3) );
endmodule

module adder4(output [3:0]sum, output c_out, input [3:0]a, input [3:0]b );
wire c0, c1, c2;
adder1 my0_adder1( .sum (sum[0]) , .c_out (c0), .a (a[0]), .b (b[0]), .c_in (1’b0) );
adder1 my1_adder1( .sum (sum[1]) , .c_out (c1), .a (a[1]), .b (b[1]), .c_in (c0));
adder1 my2_adder1( .sum (sum[2]) , .c_out (c2), .a (a[2]), .b (b[2]), .c_in (c1));
adder1 my3_adder1( .sum (sum[3]) , .c_out (c_out), .a (a[3]), .b (b[3]), .c_in (c2) );
endmodule
