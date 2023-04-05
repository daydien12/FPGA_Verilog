
module testbench;
  reg [64:1] M;
  reg [64:1] K;
  wire [64:1] OUT;
  
  
  main des_inst(M, K, OUT);

  initial begin
    M = 64'hbbd010363a955c0;
    K = 64'ha1b2c3d4e5f61234;
	end
  initial $monitor($time, " M=0x%x, K=0x%x, OUT=0x%x", M, K, OUT);
endmodule