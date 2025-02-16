transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/khurt/Downloads/quartus\ codes/lab\ Hws/clock {C:/Users/khurt/Downloads/quartus codes/lab Hws/clock/clock.v}

