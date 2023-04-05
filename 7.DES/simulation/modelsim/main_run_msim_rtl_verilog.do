transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES {C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES/main.v}
vlog -vlog01compat -work work +incdir+C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES {C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES/ip.v}
vlog -vlog01compat -work work +incdir+C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES {C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES/pc1.v}
vlog -vlog01compat -work work +incdir+C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES {C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES/pc2.v}
vlog -vlog01compat -work work +incdir+C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES {C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES/e.v}
vlog -vlog01compat -work work +incdir+C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES {C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES/s1.v}
vlog -vlog01compat -work work +incdir+C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES {C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES/s2.v}
vlog -vlog01compat -work work +incdir+C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES {C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES/s3.v}
vlog -vlog01compat -work work +incdir+C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES {C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES/s4.v}
vlog -vlog01compat -work work +incdir+C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES {C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES/s5.v}
vlog -vlog01compat -work work +incdir+C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES {C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES/s6.v}
vlog -vlog01compat -work work +incdir+C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES {C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES/s7.v}
vlog -vlog01compat -work work +incdir+C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES {C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES/s8.v}
vlog -vlog01compat -work work +incdir+C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES {C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES/p.v}
vlog -vlog01compat -work work +incdir+C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES {C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES/ip_inv.v}

vlog -vlog01compat -work work +incdir+C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES {C:/Users/nguye/OneDrive/Documents/github/FPGA_Verilog/7.DES/testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
