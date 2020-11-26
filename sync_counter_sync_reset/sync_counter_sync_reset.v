module sync_counter_sync_reset(input clk,en,reset, output reg[3:0] count);
initial count=0;
always@(posedge clk) begin
  if (reset == 0)begin
	if (en==1) begin
	count <= count + 1;
	end
   end
  else begin
  count <= 0;
  end
end
endmodule