
module testbench;
  reg [64:1] M;
  reg [64:1] K;
  wire [64:1] OUT;
  
  
  wire [28:1] c [0:16];
  wire [28:1] d [0:16];
  wire [48:1] k [1:16];
	
  
  main des_inst(M, K, OUT);

  initial begin
    M = 64'h85abcd1a98876543;
    K = 64'ha1b2c3d4e5f61234;
//    #1
//ASSERT(OUT == 64'h4bbd010363a955c0)
//$finish;
	end
  initial $monitor($time, " M=0x%x, K=0x%x, OUT=0x%x", M, K, OUT);
endmodule