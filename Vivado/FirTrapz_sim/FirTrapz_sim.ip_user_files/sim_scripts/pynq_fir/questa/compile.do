vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_fir/ip/pynq_fir_trapz_klm_0_0/sim/pynq_fir_trapz_klm_0_0.vhd" \
"../../../bd/pynq_fir/ip/pynq_fir_fir_fab_0_0/sim/pynq_fir_fir_fab_0_0.vhd" \
"../../../bd/pynq_fir/sim/pynq_fir.vhd" \


