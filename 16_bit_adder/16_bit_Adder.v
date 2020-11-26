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

module adder_16_bit(Z,X,Y);
	input [15:0] X;
	input [15:0] Y;
	output[16:0] Z;
	reg c0 =0;
	wire [14:0] c;
	full_adder f0 (.A(X[0]),.B(Y[0]),.C(c0),.S(Z[0]),.Cy(c[0]));
	full_adder f1 (.A(X[1]),.B(Y[1]),.C(c[0]),.S(Z[1]),.Cy(c[1]));
	full_adder f2 (.A(X[2]),.B(Y[2]),.C(c[1]),.S(Z[2]),.Cy(c[2]));
	full_adder f3 (.A(X[3]),.B(Y[3]),.C(c[2]),.S(Z[3]),.Cy(c[3]));
	full_adder f4 (.A(X[4]),.B(Y[4]),.C(c[3]),.S(Z[4]),.Cy(c[4]));
	full_adder f5 (.A(X[5]),.B(Y[5]),.C(c[4]),.S(Z[5]),.Cy(c[5]));
	full_adder f6 (.A(X[6]),.B(Y[6]),.C(c[5]),.S(Z[6]),.Cy(c[6]));
	full_adder f7 (.A(X[7]),.B(Y[7]),.C(c[6]),.S(Z[7]),.Cy(c[7]));
	full_adder f8 (.A(X[8]),.B(Y[8]),.C(c[7]),.S(Z[8]),.Cy(c[8]));
	full_adder f9 (.A(X[9]),.B(Y[9]),.C(c[8]),.S(Z[9]),.Cy(c[9]));
	full_adder f10 (.A(X[10]),.B(Y[10]),.C(c[9]),.S(Z[10]),.Cy(c[10]));
	full_adder f11 (.A(X[11]),.B(Y[11]),.C(c[10]),.S(Z[11]),.Cy(c[11]));
	full_adder f12 (.A(X[12]),.B(Y[12]),.C(c[11]),.S(Z[12]),.Cy(c[12]));
	full_adder f13 (.A(X[13]),.B(Y[12]),.C(c[12]),.S(Z[13]),.Cy(c[13]));
	full_adder f14 (.A(X[14]),.B(Y[14]),.C(c[13]),.S(Z[14]),.Cy(c[14]));
	full_adder f15 (.A(X[15]),.B(Y[15]),.C(c[14]),.S(Z[15]),.Cy(Z[16]));
endmodule
