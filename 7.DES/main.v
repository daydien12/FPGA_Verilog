
module KS_left_shift(input [5:1] level, input [28:1] in, output [28:1] out);
  assign out = (level == 1 || level == 2 || level == 9 || level == 16) ? {in[27:1], in[28]} : {in[26:1], in[28:27]};
endmodule

module main(
	input  [64:1] in, 
	input  [64:1] key, 
	output [64:1] out
);

wire [56:1] key_pc1;
PC1 pc1_inst(key, key_pc1);


assign out[56:1] = key_pc1;

endmodule