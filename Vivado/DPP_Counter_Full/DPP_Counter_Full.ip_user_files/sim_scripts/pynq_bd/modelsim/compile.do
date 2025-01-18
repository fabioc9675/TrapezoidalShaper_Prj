vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_13
vlib modelsim_lib/msim/processing_system7_vip_v1_0_15
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlconstant_v1_1_7
vlib modelsim_lib/msim/blk_mem_gen_v8_4_5
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/fifo_generator_v13_2_7
vlib modelsim_lib/msim/lib_fifo_v1_0_16
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_2
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/axi_datamover_v5_1_29
vlib modelsim_lib/msim/axi_sg_v4_1_15
vlib modelsim_lib/msim/axi_dma_v7_1_28
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_27
vlib modelsim_lib/msim/axi_data_fifo_v2_1_26
vlib modelsim_lib/msim/axi_crossbar_v2_1_28
vlib modelsim_lib/msim/xlslice_v1_0_2
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_27
vlib modelsim_lib/msim/axi_clock_converter_v2_1_26
vlib modelsim_lib/msim/axi_dwidth_converter_v2_1_27

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 modelsim_lib/msim/axi_vip_v1_1_13
vmap processing_system7_vip_v1_0_15 modelsim_lib/msim/processing_system7_vip_v1_0_15
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_7 modelsim_lib/msim/xlconstant_v1_1_7
vmap blk_mem_gen_v8_4_5 modelsim_lib/msim/blk_mem_gen_v8_4_5
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_7 modelsim_lib/msim/fifo_generator_v13_2_7
vmap lib_fifo_v1_0_16 modelsim_lib/msim/lib_fifo_v1_0_16
vmap lib_srl_fifo_v1_0_2 modelsim_lib/msim/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_29 modelsim_lib/msim/axi_datamover_v5_1_29
vmap axi_sg_v4_1_15 modelsim_lib/msim/axi_sg_v4_1_15
vmap axi_dma_v7_1_28 modelsim_lib/msim/axi_dma_v7_1_28
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_27 modelsim_lib/msim/axi_register_slice_v2_1_27
vmap axi_data_fifo_v2_1_26 modelsim_lib/msim/axi_data_fifo_v2_1_26
vmap axi_crossbar_v2_1_28 modelsim_lib/msim/axi_crossbar_v2_1_28
vmap xlslice_v1_0_2 modelsim_lib/msim/xlslice_v1_0_2
vmap axi_protocol_converter_v2_1_27 modelsim_lib/msim/axi_protocol_converter_v2_1_27
vmap axi_clock_converter_v2_1_26 modelsim_lib/msim/axi_clock_converter_v2_1_26
vmap axi_dwidth_converter_v2_1_27 modelsim_lib/msim/axi_dwidth_converter_v2_1_27

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

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_15  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_processing_system7_0_0/sim/pynq_bd_processing_system7_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_bd/ip/pynq_bd_xadc_wiz_0_0/pynq_bd_xadc_wiz_0_0.vhd" \

vlog -work xlconstant_v1_1_7  -incr -mfcu  "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/badb/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_xlconstant_0_0/sim/pynq_bd_xlconstant_0_0.v" \
"../../../bd/pynq_bd/ip/pynq_bd_clk_wiz_0_0/pynq_bd_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/pynq_bd/ip/pynq_bd_clk_wiz_0_0/pynq_bd_clk_wiz_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_bd/ipshared/fa58/hdl/AXI_DPP_Prepross_v1_0_S00_AXI.vhd" \
"../../../bd/pynq_bd/ipshared/fa58/hdl/dpp_counter.vhd" \
"../../../bd/pynq_bd/ipshared/fa58/hdl/fir_fab.vhd" \
"../../../bd/pynq_bd/ipshared/fa58/hdl/greaterthan.vhd" \
"../../../bd/pynq_bd/ipshared/fa58/hdl/signal_mux.vhd" \
"../../../bd/pynq_bd/ipshared/fa58/hdl/slice_trapz.vhd" \
"../../../bd/pynq_bd/ipshared/fa58/hdl/trapz_klm.vhd" \
"../../../bd/pynq_bd/ipshared/fa58/hdl/xadc_buffer.vhd" \
"../../../bd/pynq_bd/ipshared/fa58/hdl/AXI_DPP_Prepross_v1_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_AXI_DPP_Prepross_0_0/sim/pynq_bd_AXI_DPP_Prepross_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_5  -incr -mfcu  "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ip/pynq_bd_AXI_DPP_BRam_0_0/src/blk_dpp_mem/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_AXI_DPP_BRam_0_0/src/blk_dpp_mem/sim/blk_dpp_mem.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_bd/ipshared/4b41/hdl/AXI_DPP_BRam_v1_0_M00_AXIS.vhd" \
"../../../bd/pynq_bd/ipshared/4b41/hdl/AXI_DPP_BRam_v1_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_AXI_DPP_BRam_0_0/sim/pynq_bd_AXI_DPP_BRam_0_0.vhd" \
"../../../bd/pynq_bd/ipshared/6c0e/hdl/AXI_Data_Stream_v1_0_M00_AXIS.vhd" \
"../../../bd/pynq_bd/ipshared/6c0e/hdl/AXI_Data_Stream_v1_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_AXI_Data_Stream_0_0/sim/pynq_bd_AXI_Data_Stream_0_0.vhd" \

vcom -work lib_pkg_v1_0_2  -93  \
"../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu  "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7  -93  \
"../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu  "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_16  -93  \
"../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/6c82/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2  -93  \
"../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2  -93  \
"../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_29  -93  \
"../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/2237/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_15  -93  \
"../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/751a/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_28  -93  \
"../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/70c4/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_bd/ip/pynq_bd_axi_dma_0_0/sim/pynq_bd_axi_dma_0_0.vhd" \
"../../../bd/pynq_bd/ip/pynq_bd_axi_dma_0_1/sim/pynq_bd_axi_dma_0_1.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93  \
"../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_bd/ip/pynq_bd_rst_ps7_0_100M_0/sim/pynq_bd_rst_ps7_0_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu  "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27  -incr -mfcu  "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_26  -incr -mfcu  "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_28  -incr -mfcu  "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_xbar_0/sim/pynq_bd_xbar_0.v" \
"../../../bd/pynq_bd/ip/pynq_bd_xbar_1/sim/pynq_bd_xbar_1.v" \

vlog -work xlslice_v1_0_2  -incr -mfcu  "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_xlslice_0_0/sim/pynq_bd_xlslice_0_0.v" \

vlog -work axi_protocol_converter_v2_1_27  -incr -mfcu  "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_auto_pc_0/sim/pynq_bd_auto_pc_0.v" \

vlog -work axi_clock_converter_v2_1_26  -incr -mfcu  "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/b8be/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work axi_dwidth_converter_v2_1_27  -incr -mfcu  "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/4675/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl" "+incdir+../../../../DPP_Counter_Full.gen/sources_1/bd/pynq_bd/ipshared/7698" "+incdir+D:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/pynq_bd/ip/pynq_bd_auto_us_0/sim/pynq_bd_auto_us_0.v" \
"../../../bd/pynq_bd/ip/pynq_bd_auto_us_1/sim/pynq_bd_auto_us_1.v" \
"../../../bd/pynq_bd/ip/pynq_bd_auto_pc_1/sim/pynq_bd_auto_pc_1.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/pynq_bd/sim/pynq_bd.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

