`timescale 10ns/ 1ns
module full_adder_test;
	reg A,B,C;
	wire S,Cy;
	
	full_adder uut(.A(A),.B(B),.C(C),.S(S),.Cy(Cy));
	
	initial begin
	A=0;
	B=0;
	C=0;
	
	#2 A=1;
	#2 B=1;
	#2 C=1;
	#4;
	end
	 
	initial begin
	$monitor("A=%d,B=%d,C=%d,S=%d,Cy=%d \n",A,B,C,S,Cy);
	end
endmodule