vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_fir/ip/pynq_fir_fir_fab_0_0/sim/pynq_fir_fir_fab_0_0.vhd" \
"../../../bd/pynq_fir/ip/pynq_fir_trapz_klm_0_0/sim/pynq_fir_trapz_klm_0_0.vhd" \
"../../../bd/pynq_fir/sim/pynq_fir.vhd" \


