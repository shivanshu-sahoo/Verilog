module full_adder(S,Cy,A,B,C);
	input A;
	input B;
	input C;
	output S;
	output Cy;
	wire t1;
	wire t2;
	wire t3;
	
	xor(t1,A,B);
	xor(S,t1,C);
	and(t2,t1,C);
	and(t3,A,B);
	or(Cy,t2,t3);
endmodule
