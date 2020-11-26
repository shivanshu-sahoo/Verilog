module mux_16x1(input[15:0]in,input[3:0]sel,output out);

wire [3:0]t;
mux_4x1 M0 (in[3:0],sel[1:0],t[0]);
mux_4x1 M1 (in[7:4],sel[1:0],t[1]);
mux_4x1 M2 (in[11:8],sel[1:0],t[2]);
mux_4x1 M3 (in[15:12],sel[1:0],t[3]);
mux_4x1 M4 (t,sel[3:2],out);
endmodule

module mux_4x1(input[3:0] in, input[1:0] sel, output out);
assign out = in[sel];
endmodule