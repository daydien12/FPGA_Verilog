
module sync_counter_4bit (j,
                     k,
                     clk,
                     reset,
                     q,
                     q_bar);
    
	input j, k, clk, reset;
   output [3:0] q, q_bar;
	wire [3:0] q;
//	initial begin
//		q[3:0] = 4'b0000;
//	end
	jk_flip_flop FFA(.clk(clk),  .reset(reset), .j(j), .k(k), .q(q[0]), .q_bar(q_bar[0]));
	jk_flip_flop FFB(.clk(q_bar[0]), .reset(reset), .j(j), .k(k), .q(q[1]), .q_bar(q_bar[1]));
	jk_flip_flop FFC(.clk(q_bar[1]), .reset(reset), .j(j), .k(k), .q(q[2]), .q_bar(q_bar[2]));
	jk_flip_flop FFD(.clk(q_bar[2]), .reset(reset), .j(j), .k(k), .q(q[3]), .q_bar(q_bar[3]));
	//assign cnt = q;

endmodule
