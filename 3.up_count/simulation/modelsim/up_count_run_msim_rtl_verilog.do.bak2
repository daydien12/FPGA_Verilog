transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+G:/3.\ FPGA/6.Kit_DE10_Lite/3.up_count {G:/3. FPGA/6.Kit_DE10_Lite/3.up_count/up_count.v}

vlog -vlog01compat -work work +incdir+G:/3.\ FPGA/6.Kit_DE10_Lite/3.up_count {G:/3. FPGA/6.Kit_DE10_Lite/3.up_count/upcounter_testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  up_counter_tb

add wave *
view structure
view signals
run -all
