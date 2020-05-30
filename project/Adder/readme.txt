Type the following command to run code :-

vlib work
vlog -sv design.sv testbench.sv +incdir+env
vopt +acc  tbench_top -o dbg_tbench_top
vsim -c dbg_tbench_top
