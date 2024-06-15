onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+pynq_bd  -L xilinx_vip -L xpm -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xil_defaultlib -L xlconstant_v1_1_7 -L axi_lite_ipif_v3_0_4 -L lib_cdc_v1_0_2 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_29 -L generic_baseblocks_v2_1_0 -L axi_register_slice_v2_1_27 -L fifo_generator_v13_2_7 -L axi_data_fifo_v2_1_26 -L axi_crossbar_v2_1_28 -L proc_sys_reset_v5_0_13 -L lib_pkg_v1_0_2 -L lib_fifo_v1_0_16 -L lib_srl_fifo_v1_0_2 -L axi_datamover_v5_1_29 -L axi_sg_v4_1_15 -L axi_dma_v7_1_28 -L xlslice_v1_0_2 -L blk_mem_gen_v8_4_5 -L axi_protocol_converter_v2_1_27 -L axi_clock_converter_v2_1_26 -L axi_dwidth_converter_v2_1_27 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.pynq_bd xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {pynq_bd.udo}

run 1000ns

endsim

quit -force
