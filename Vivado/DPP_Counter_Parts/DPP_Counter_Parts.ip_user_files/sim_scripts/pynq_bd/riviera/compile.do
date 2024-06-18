vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_13
vlib riviera/processing_system7_vip_v1_0_15
vlib riviera/xil_defaultlib
vlib riviera/xlconstant_v1_1_7
vlib riviera/lib_pkg_v1_0_2
vlib riviera/fifo_generator_v13_2_7
vlib riviera/lib_fifo_v1_0_16
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/lib_cdc_v1_0_2
vlib riviera/axi_datamover_v5_1_29
vlib riviera/axi_sg_v4_1_15
vlib riviera/axi_dma_v7_1_28
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_29
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_27
vlib riviera/axi_data_fifo_v2_1_26
vlib riviera/axi_crossbar_v2_1_28
vlib riviera/xlslice_v1_0_2
vlib riviera/blk_mem_gen_v8_4_5
vlib riviera/axi_protocol_converter_v2_1_27
vlib riviera/axi_clock_converter_v2_1_26
vlib riviera/axi_dwidth_converter_v2_1_27

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 riviera/axi_vip_v1_1_13
vmap processing_system7_vip_v1_0_15 riviera/processing_system7_vip_v1_0_15
vmap xil_defaultlib riviera/xil_defaultlib
vmap xlconstant_v1_1_7 riviera/xlconstant_v1_1_7
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_7 riviera/fifo_generator_v13_2_7
vmap lib_fifo_v1_0_16 riviera/lib_fifo_v1_0_16
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_29 riviera/axi_datamover_v5_1_29
vmap axi_sg_v4_1_15 riviera/axi_sg_v4_1_15
vmap axi_dma_v7_1_28 riviera/axi_dma_v7_1_28
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_29 riviera/axi_gpio_v2_0_29
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_27 riviera/axi_register_slice_v2_1_27
vmap axi_data_fifo_v2_1_26 riviera/axi_data_fifo_v2_1_26
vmap axi_crossbar_v2_1_28 riviera/axi_crossbar_v2_1_28
vmap xlslice_v1_0_2 riviera/xlslice_v1_0_2
vmap blk_mem_gen_v8_4_5 riviera/blk_mem_gen_v8_4_5
vmap axi_protocol_converter_v2_1_27 riviera/axi_protocol_converter_v2_1_27
vmap axi_clock_converter_v2_1_26 riviera/axi_clock_converter_v2_1_26
vmap axi_dwidth_converter_v2_1_27 riviera/axi_dwidth_converter_v2_1_27

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13  -sv2k12 "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_15  -sv2k12 "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_processing_system7_0_0/sim/pynq_bd_processing_system7_0_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/pynq_bd/ip/pynq_bd_xadc_wiz_0_0/pynq_bd_xadc_wiz_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_clk_wiz_0_0/pynq_bd_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/pynq_bd/ip/pynq_bd_clk_wiz_0_0/pynq_bd_clk_wiz_0_0.v" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/badb/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_xlconstant_0_0/sim/pynq_bd_xlconstant_0_0.v" \

vcom -work lib_pkg_v1_0_2 -93  \
"../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93  \
"../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_16 -93  \
"../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/6c82/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93  \
"../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93  \
"../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_29 -93  \
"../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/2237/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_15 -93  \
"../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/751a/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_28 -93  \
"../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/70c4/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/pynq_bd/ip/pynq_bd_axi_dma_0_0/sim/pynq_bd_axi_dma_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93  \
"../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93  \
"../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_29 -93  \
"../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/6219/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/pynq_bd/ip/pynq_bd_axi_gpio_0_0/sim/pynq_bd_axi_gpio_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93  \
"../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/pynq_bd/ip/pynq_bd_rst_ps7_0_100M_0/sim/pynq_bd_rst_ps7_0_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27  -v2k5 "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_26  -v2k5 "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_28  -v2k5 "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_xbar_0/sim/pynq_bd_xbar_0.v" \
"../../../bd/pynq_bd/ip/pynq_bd_xbar_1/sim/pynq_bd_xbar_1.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/pynq_bd/ip/pynq_bd_signal_mux_0_0/sim/pynq_bd_signal_mux_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_fir_fab_0_0/sim/pynq_bd_fir_fab_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_xadc_buffer_0_0/sim/pynq_bd_xadc_buffer_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_xlconstant_1_0/sim/pynq_bd_xlconstant_1_0.v" \

vlog -work xlslice_v1_0_2  -v2k5 "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_xlslice_0_0/sim/pynq_bd_xlslice_0_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/pynq_bd/ip/pynq_bd_axi_gpio_1_0/sim/pynq_bd_axi_gpio_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_xlslice_1_0/sim/pynq_bd_xlslice_1_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/pynq_bd/ip/pynq_bd_trapz_klm_0_0/sim/pynq_bd_trapz_klm_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_axi_gpio_1_1/sim/pynq_bd_axi_gpio_1_1.vhd" \
"../../../bd/pynq_bd/ipshared/6c0e/hdl/AXI_Data_Stream_v1_0_M00_AXIS.vhd" \
"../../../bd/pynq_bd/ipshared/6c0e/hdl/AXI_Data_Stream_v1_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_AXI_Data_Stream_0_0/sim/pynq_bd_AXI_Data_Stream_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_dpp_counter_0_0/sim/pynq_bd_dpp_counter_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_axi_gpio_1_2/sim/pynq_bd_axi_gpio_1_2.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_greaterthan_0_0/sim/pynq_bd_greaterthan_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_slice_trapz_0_0/sim/pynq_bd_slice_trapz_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_slice_trapz_1_0/sim/pynq_bd_slice_trapz_1_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_axi_dma_1_0/sim/pynq_bd_axi_dma_1_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_axi_gpio_1_3/sim/pynq_bd_axi_gpio_1_3.vhd" \

vlog -work blk_mem_gen_v8_4_5  -v2k5 "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ip/pynq_bd_AXI_DPP_BRam_0_0/src/blk_dpp_mem/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_AXI_DPP_BRam_0_0/src/blk_dpp_mem/sim/blk_dpp_mem.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/pynq_bd/ipshared/5a44/hdl/AXI_DPP_BRam_v1_0_M00_AXIS.vhd" \
"../../../bd/pynq_bd/ipshared/5a44/hdl/AXI_DPP_BRam_v1_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_AXI_DPP_BRam_0_0/sim/pynq_bd_AXI_DPP_BRam_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_xlslice_2_0/sim/pynq_bd_xlslice_2_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/pynq_bd/ip/pynq_bd_axi_gpio_1_4/sim/pynq_bd_axi_gpio_1_4.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_xlslice_3_0/sim/pynq_bd_xlslice_3_0.v" \
"../../../bd/pynq_bd/ip/pynq_bd_xlslice_rst_fir_0/sim/pynq_bd_xlslice_rst_fir_0.v" \
"../../../bd/pynq_bd/ip/pynq_bd_xlslice_rst_trapz_0/sim/pynq_bd_xlslice_rst_trapz_0.v" \
"../../../bd/pynq_bd/ip/pynq_bd_xlslice_rst_dpp_0/sim/pynq_bd_xlslice_rst_dpp_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/pynq_bd/ip/pynq_bd_axi_gpio_0_1/sim/pynq_bd_axi_gpio_0_1.vhd" \

vlog -work axi_protocol_converter_v2_1_27  -v2k5 "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_auto_pc_0/sim/pynq_bd_auto_pc_0.v" \

vlog -work axi_clock_converter_v2_1_26  -v2k5 "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/b8be/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work axi_dwidth_converter_v2_1_27  -v2k5 "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/4675/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Parts.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_auto_us_0/sim/pynq_bd_auto_us_0.v" \
"../../../bd/pynq_bd/ip/pynq_bd_auto_us_1/sim/pynq_bd_auto_us_1.v" \
"../../../bd/pynq_bd/ip/pynq_bd_auto_pc_1/sim/pynq_bd_auto_pc_1.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/pynq_bd/sim/pynq_bd.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

