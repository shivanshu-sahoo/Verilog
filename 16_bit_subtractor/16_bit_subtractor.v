module full_subtractor(input A, input B, input C, output Bo , output D);
	wire t1,t2,t3;
	
	xor(t1,A,B);
	xor(D,t1,C);
	and(t2,~t1,C);
	and(t3,~A,B);
	or(Bo,t2,t3);
	
endmodule

module subtractor_4_bit(input[3:0] X, input[3:0] Y,input Bi, output Bf, output[3:0] Z);
	wire [2:0] b;
	

		full_subtractor f0 (.A(X[0]),.B(Y[0]),.C(Bi),.Bo(b[0]),.D(Z[0]));
		full_subtractor f1 (.A(X[1]),.B(Y[1]),.C(b[0]),.Bo(b[1]),.D(Z[1]));
		full_subtractor f2 (.A(X[2]),.B(Y[2]),.C(b[1]),.Bo(b[2]),.D(Z[2]));
		full_subtractor f3 (.A(X[3]),.B(Y[3]),.C(b[2]),.Bo(Bf),.D(Z[3]));
		
endmodule

module subtractor_16_bit(input [15:0] X, input[15:0] Y, output[16:0] Z);
	reg b0= 0;
	wire[2:0] b;
	subtractor_4_bit s1 (.X(X[3:0]),.Y(Y[3:0]),.Bi(b0),.Bf(b[0]),.Z(Z[3:0]));
	subtractor_4_bit s2 (.X(X[7:4]),.Y(Y[7:4]),.Bi(b[0]),.Bf(b[1]),.Z(Z[7:4]));
	subtractor_4_bit s3 (.X(X[11:8]),.Y(Y[11:8]),.Bi(b[1]),.Bf(b[2]),.Z(Z[11:8]));
	subtractor_4_bit s4 (.X(X[15:12]),.Y(Y[15:12]),.Bi(b[2]),.Bf(Z[16]),.Z(Z[15:12]));
endmodule