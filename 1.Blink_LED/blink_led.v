module blink_led (
	input clk,
	output [9:0] LED,
	input  [3:0] SW
);

reg [24:0] cnt;

initial begin
cnt <= 32'h00000000;
end

always @ (posedge clk) begin
cnt <= cnt + 5;
end

assign LED[0] = SW[0];
assign LED[1] = !SW[1];
assign LED[9:2] = 9'b000000000;

endmodule