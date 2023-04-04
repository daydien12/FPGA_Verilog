transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES {C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES/main.v}
vlog -vlog01compat -work work +incdir+C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES/output_files {C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES/output_files/PC1.v}

vlog -vlog01compat -work work +incdir+C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES/output_files {C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES/output_files/testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  DES_TESTBENCH

add wave *
view structure
view signals
run -all
