module JK_ff_tb; 
    reg clk; 
    reg reset; 
    reg j, k; 
    wire q; 
    wire qb; 
    jk_flip_flop jk(.clk(clk), .reset(reset), .j(j), .k(k), .q(q), .q_bar(qb));
    
    initial begin
        j     = 1'b0;
        k     = 1'b0;
        reset = 1;
        clk   = 1;
        
        #5
        reset = 0;
        j     = 1'b1;
        k     = 1'b0;
        
        #10
        reset = 0;
        j     = 1'b0;
        k     = 1'b1;
        
        #10
        reset = 0;
        j     = 1'b1;
        k     = 1'b1;
        
        #10
        reset = 0;
        j     = 1'b0;
        k     = 1'b0;
        
        #10
        reset = 1;
        j     = 1'b1;
        k     = 1'b0;
        
    end
    always #1 clk <= ~clk;
    
endmodule
