`timescale 10ns/1ns
module subtractor_4_bit_test;
	reg [3:0] X,Y;
	reg Bi;
	wire [3:0]Z;
	wire Bf;
	subtractor_4_bit uut(.X(X),.Y(Y),.Z(Z),.Bi(Bi),.Bf(Bf));
	 initial begin
	 X=0;
	 Y=0;
	 Bi=0;
	 
	 #2 X =7;
	 #2 Y= 8;
	 #2 X= 10;
	 #2 Y = 5;
	 #4;
	 end
	 
	 initial begin
	 $monitor("X=%4b,Y=%4b,Bi=%b, Bf=%b, Z=%4b \n",X,Y,Bi,Bf,Z);
	 end
	 endmodule
	 