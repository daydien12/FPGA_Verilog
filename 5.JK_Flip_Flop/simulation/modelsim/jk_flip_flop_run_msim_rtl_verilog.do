transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/5.JK_Flip_Flop {C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/5.JK_Flip_Flop/jk_flip_flop.v}

vlog -vlog01compat -work work +incdir+C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/5.JK_Flip_Flop {C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/5.JK_Flip_Flop/jk_flip_flop_testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  jk_ff_tb

add wave *
view structure
view signals
run -all
