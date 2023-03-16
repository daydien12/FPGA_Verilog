module sync_counter_4bit_testbench; 
    reg clk; 
    reg reset;
	 reg j;
	 reg k;
    wire [3:0] q, q_bar;
    sync_counter_4bit counter(.clk(clk), .reset(reset), .j(j), .k(k), .q(q), .q_bar(q_bar));
	 
   initial begin
		reset = 1;
		clk   = 1;
		j     = 1'b1;
		k     = 1'b1;
		#5
		reset = 0;
		clk   = 0;
   end
	always #5 clk <= ~clk;
endmodule

