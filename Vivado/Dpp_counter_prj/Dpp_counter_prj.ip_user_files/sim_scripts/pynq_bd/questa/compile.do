vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_13
vlib questa_lib/msim/processing_system7_vip_v1_0_15
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_27
vlib questa_lib/msim/fifo_generator_v13_2_7
vlib questa_lib/msim/axi_data_fifo_v2_1_26
vlib questa_lib/msim/axi_crossbar_v2_1_28
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_gpio_v2_0_29
vlib questa_lib/msim/xlslice_v1_0_2
vlib questa_lib/msim/axi_protocol_converter_v2_1_27

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 questa_lib/msim/axi_vip_v1_1_13
vmap processing_system7_vip_v1_0_15 questa_lib/msim/processing_system7_vip_v1_0_15
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_27 questa_lib/msim/axi_register_slice_v2_1_27
vmap fifo_generator_v13_2_7 questa_lib/msim/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_26 questa_lib/msim/axi_data_fifo_v2_1_26
vmap axi_crossbar_v2_1_28 questa_lib/msim/axi_crossbar_v2_1_28
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_29 questa_lib/msim/axi_gpio_v2_0_29
vmap xlslice_v1_0_2 questa_lib/msim/xlslice_v1_0_2
vmap axi_protocol_converter_v2_1_27 questa_lib/msim/axi_protocol_converter_v2_1_27

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_15  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_processing_system7_0_0/sim/pynq_bd_processing_system7_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_bd/ip/pynq_bd_xadc_wiz_0_0/pynq_bd_xadc_wiz_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_clk_wiz_0_0/pynq_bd_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/pynq_bd/ip/pynq_bd_clk_wiz_0_0/pynq_bd_clk_wiz_0_0.v" \

vcom -work lib_cdc_v1_0_2  -93  \
"../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93  \
"../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_bd/ip/pynq_bd_rst_clk_wiz_0_104M_0/sim/pynq_bd_rst_clk_wiz_0_104M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu  "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27  -incr -mfcu  "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu  "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7  -93  \
"../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu  "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_26  -incr -mfcu  "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_28  -incr -mfcu  "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_xbar_0/sim/pynq_bd_xbar_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_bd/ip/pynq_bd_rst_ps7_0_100M_1/sim/pynq_bd_rst_ps7_0_100M_1.vhd" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4  -93  \
"../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_29  -93  \
"../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/6219/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_bd/ip/pynq_bd_axi_gpio_0_0/sim/pynq_bd_axi_gpio_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_leds_0_0/sim/pynq_bd_leds_0_0.vhd" \

vlog -work xlslice_v1_0_2  -incr -mfcu  "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_xlslice_0_0/sim/pynq_bd_xlslice_0_0.v" \
"../../../bd/pynq_bd/ip/pynq_bd_xlslice_0_1/sim/pynq_bd_xlslice_0_1.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_bd/ip/pynq_bd_ila_0_0/sim/pynq_bd_ila_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_dpp_leds_0_0/sim/pynq_bd_dpp_leds_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_fir_fab_0_0/sim/pynq_bd_fir_fab_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_trapz_klm_0_0/sim/pynq_bd_trapz_klm_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_xadc_buffer_0_0/sim/pynq_bd_xadc_buffer_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_dpp_counter_0_0/sim/pynq_bd_dpp_counter_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_inv_sw_0_0/sim/pynq_bd_inv_sw_0_0.vhd" \

vlog -work axi_protocol_converter_v2_1_27  -incr -mfcu  "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../Xadc_No_Dma.gen/sources_1/bd/pynq_bd/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_auto_pc_0/sim/pynq_bd_auto_pc_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_bd/sim/pynq_bd.vhd" \

vlog -work xil_defaultlib \
"glbl.v"
