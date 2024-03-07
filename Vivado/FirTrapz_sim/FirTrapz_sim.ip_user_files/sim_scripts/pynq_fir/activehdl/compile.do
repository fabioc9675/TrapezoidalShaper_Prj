vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vcom -work xil_defaultlib -93  \
"../../../bd/pynq_fir/ip/pynq_fir_fir_fab_0_0/sim/pynq_fir_fir_fab_0_0.vhd" \
"../../../bd/pynq_fir/ip/pynq_fir_steplike_0_0/sim/pynq_fir_steplike_0_0.vhd" \
"../../../bd/pynq_fir/ip/pynq_fir_trapz_rm_0_0/sim/pynq_fir_trapz_rm_0_0.vhd" \
"../../../bd/pynq_fir/sim/pynq_fir.vhd" \


