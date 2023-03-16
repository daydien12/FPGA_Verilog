module number_format_tb ();
    reg 			clk;
	 wire [9:0] LED;
	 wire [24:0] count;
	 
	 reg signed [7:0] x, y;  // signed 8 bits wide
    reg signed [7:0] s;  // signed 8 bits wide
    reg signed [7:0] u;  // unsigned 8 bits wide
    reg signed [3:0] m;  // signed 4 bits wide
	 
	 number_format test (.clk(clk), .LED(LED), .count(count));
	 
	 initial begin 
		clk=0;
		forever #1 clk=~clk;
	end
	
		always @ (posedge clk) begin
        x = s + m;  // signed + signed
        y = u + m;  // unsigned + signed
    end
    initial begin
        #10
        s = 8'sb0000_0111;  // decimal 7
        u = 8'b0000_0111;   // decimal 7
        #10
        $display(" s: %b  %d", s, s);
        $display(" u: %b  %d", u, u);


        #10
        m = 4;  // decimal 4
        $display("When 'm' is +4:");
        $display("m:     %b  %d", m, m);
        $display("x: %b  %d", x, x);
        $display("y: %b  %d", y, y);

        #10
        m = -4;  // decimal -4
        $display("When 'm' is -4:");
        $display("m:     %b  %d", m, m);
        $display("x: %b  %d", x, x);
        $display("y: %b  %d  **SURPRISE**", y, y);
    end

endmodule