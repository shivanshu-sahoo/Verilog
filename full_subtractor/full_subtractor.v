module full_subtractor(input A, input B, input C, output Bo , output D);
	wire t1,t2,t3;
	
	xor(t1,A,B);
	xor(D,t1,C);
	and(t2,~t1,C);
	and(t3,~A,B);
	or(Bo,t2,t3);
	
endmodule