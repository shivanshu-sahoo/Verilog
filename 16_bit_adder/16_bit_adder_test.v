`timescale 10ns/ 1ns
module adder_16_bit_test;
	reg [15:0]X,Y;
	wire [16:0]Z;
	 adder_16_bit uut(.X(X),.Y(Y),.Z(Z));
	 
	 initial begin
	 X= 0;
	 Y= 0;
	 
	 #20 X=70000;
	 #20 Y=1;
	 #20 X=80000;
	 #20 Y=6000;
	 end
	 
	 initial begin
	 $monitor("X=%b, Y=%b, Z=%b \n",X,Y,Z);
	 end
endmodule