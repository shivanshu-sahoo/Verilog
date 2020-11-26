`timescale 10ns/1ns
module subtractor_16_bit_test;
	reg [15:0] X,Y;
	wire [16:0]Z;
	subtractor_16_bit uut(.X(X),.Y(Y),.Z(Z));
	 initial begin
	 X=0;
	 Y=0;
	 
	 #2 X =60000;
	 #2 Y= 10000;
	 #2 X= 5000;
	 #2 Y = 1;
	 #4;
	 end
	 
	 initial begin
	 $monitor("X=%4b,Y=%4b,Z=%4b \n",X,Y,Z);
	 end
	 endmodule
	 