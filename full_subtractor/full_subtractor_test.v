`timescale 10ns/1ns
module full_subtractor_test;
	reg A,B,C;
	wire Bo,D;
	
	full_subtractor uut (.A(A),.B(B),.C(C),.D(D),.Bo(Bo));
	initial begin
		A=0;
		B=0;
		C=0;
		
		#2 A=1;
		#2 B=1;
		#2 C=1;
		#2;
	end
		
		initial begin
		 $monitor("A=%d,B=%d,C=%d,D=%d,Bo=%d \n",A,B,C,D,Bo);
		end
	endmodule