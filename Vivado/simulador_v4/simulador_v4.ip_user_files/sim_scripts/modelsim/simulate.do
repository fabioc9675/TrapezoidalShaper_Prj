onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xbip_utils_v3_0_13 -L xbip_pipe_v3_0_9 -L xbip_bram18k_v3_0_9 -L mult_gen_v12_0_21 -L xil_defaultlib -L secureip -lib xil_defaultlib xil_defaultlib.modelo

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {modelo.udo}

run 1000ns

quit -force
