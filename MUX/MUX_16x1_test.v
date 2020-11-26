`timescale 10ns/1ns
module mux_16x1_test;
reg[15:0] in;
reg[3:0] sel;
wire out;
mux_16x1 uut(.in(in),.sel(sel),.out(out));
initial begin
$dumpfile("MUX.vcd");
$dumpvars(0,mux_16x1_test);
$monitor($time,"in=%16b,sel=%4b,out=%b \n",in,sel,out);
#20 in = 876; sel = 1;
#20 sel=3;
#20 sel=4;
#20 sel=7;
#20 $finish;
end

endmodule

