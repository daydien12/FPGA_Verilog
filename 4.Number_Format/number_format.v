module number_format (
	input clk,
	output [9:0] LED,
	output [24:0] count
);

reg [24:0] cnt;

initial begin
cnt <= 32'h00000000;
end

always @ (posedge clk) begin
cnt <= cnt + 1;
end

assign LED[0] = cnt[22];
assign LED[9:1] = 8'b00000000;
assign count[24:0] = cnt[24:0];
endmodule