module sync_counter_sync_reset_test;
reg clk,en,reset;
wire[3:0] count;

always #5 clk = ~clk;

sync_counter_sync_reset uut(.clk(clk),.en(en),.reset(reset),.count(count));
initial begin
$dumpfile("counter.vcd");
$dumpvars(0,sync_counter_sync_reset_test);
$monitor ("count=%4b,clock = %b,enable=%b,reset=%b",count,clk,en,reset);
clk = 0; reset = 0; en =1;
#50 reset= 1;
#80 reset=0;
#110 en=0;
#150 en=1;
#200 $finish;
end
endmodule