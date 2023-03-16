transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+G:/3.\ FPGA/6.Kit_DE10_Lite/4.Number_Format {G:/3. FPGA/6.Kit_DE10_Lite/4.Number_Format/number_format.v}

vlog -vlog01compat -work work +incdir+G:/3.\ FPGA/6.Kit_DE10_Lite/4.Number_Format {G:/3. FPGA/6.Kit_DE10_Lite/4.Number_Format/number_format_testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  number_formart_tb

add wave *
view structure
view signals
run -all
