module RAM_test;
reg [9:0] address;
wire [9:0] data_out;
reg [9:0] data_in;
reg write, select,clk,reset;
integer k;
ram RAM (data_out, data_in, clk,address, write, select);
initial begin
    clk=0;
end
always #2 clk = ~clk;

initial begin
	$dumpfile("ram.vcd");
	$dumpvars(0, RAM_test);
end

initial begin
    for (k=0; k<=1023; k=k+1) begin
        address = k;
        data_in = k;  write = 1; select = 1;
        #4 write = 0; select = 0;
    end
    for (k=0; k<=1023; k=k+1) begin
        address = k;
        write = 0; select = 1;
        $display ("Address: %5d, Data: %4d", address,data_out);
        #2 select = 0;
    end
    $finish;
end

endmodule