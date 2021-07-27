module ram (data_out_1, data_in_1,clk, address_1, write_1,chip_select_1);
parameter ADDRESS_SIZE = 10, DATA_SIZE = 10, MEMORY_SIZE = 1024;
input [ADDRESS_SIZE-1:0] address_1;
input [DATA_SIZE-1:0] data_in_1;
input write_1,write_2, chip_select_1,clk;
output [DATA_SIZE-1:0] data_out_1;
reg [DATA_SIZE-1:0] memory[MEMORY_SIZE-1:0];
integer i;

assign data_out_1 = memory[address_1];


always @(posedge clk) begin
    if (write_1) memory[address_1] = data_in_1; 

end
endmodule