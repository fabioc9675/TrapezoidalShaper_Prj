-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../Xadc_No_Dma_HR.gen/sources_1/bd/pynq_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_13 -sv \
  "../../../../Xadc_No_Dma_HR.gen/sources_1/bd/pynq_bd/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_15 -sv \
  "../../../../Xadc_No_Dma_HR.gen/sources_1/bd/pynq_bd/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq_bd/ip/pynq_bd_processing_system7_0_0/sim/pynq_bd_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq_bd/ip/pynq_bd_xadc_wiz_0_0/pynq_bd_xadc_wiz_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq_bd/ip/pynq_bd_clk_wiz_0_0/pynq_bd_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/pynq_bd/ip/pynq_bd_clk_wiz_0_0/pynq_bd_clk_wiz_0_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../Xadc_No_Dma_HR.gen/sources_1/bd/pynq_bd/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../Xadc_No_Dma_HR.gen/sources_1/bd/pynq_bd/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq_bd/ip/pynq_bd_rst_clk_wiz_0_104M_0/sim/pynq_bd_rst_clk_wiz_0_104M_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../Xadc_No_Dma_HR.gen/sources_1/bd/pynq_bd/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_27 \
  "../../../../Xadc_No_Dma_HR.gen/sources_1/bd/pynq_bd/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../Xadc_No_Dma_HR.gen/sources_1/bd/pynq_bd/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../Xadc_No_Dma_HR.gen/sources_1/bd/pynq_bd/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../Xadc_No_Dma_HR.gen/sources_1/bd/pynq_bd/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_26 \
  "../../../../Xadc_No_Dma_HR.gen/sources_1/bd/pynq_bd/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_28 \
  "../../../../Xadc_No_Dma_HR.gen/sources_1/bd/pynq_bd/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq_bd/ip/pynq_bd_xbar_0/sim/pynq_bd_xbar_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq_bd/ip/pynq_bd_rst_ps7_0_100M_1/sim/pynq_bd_rst_ps7_0_100M_1.vhd" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../Xadc_No_Dma_HR.gen/sources_1/bd/pynq_bd/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../Xadc_No_Dma_HR.gen/sources_1/bd/pynq_bd/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_29 \
  "../../../../Xadc_No_Dma_HR.gen/sources_1/bd/pynq_bd/ipshared/6219/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq_bd/ip/pynq_bd_axi_gpio_0_0/sim/pynq_bd_axi_gpio_0_0.vhd" \
  "../../../bd/pynq_bd/ip/pynq_bd_leds_0_0/sim/pynq_bd_leds_0_0.vhd" \
-endlib
-makelib xcelium_lib/xlslice_v1_0_2 \
  "../../../../Xadc_No_Dma_HR.gen/sources_1/bd/pynq_bd/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq_bd/ip/pynq_bd_xlslice_0_0/sim/pynq_bd_xlslice_0_0.v" \
  "../../../bd/pynq_bd/ip/pynq_bd_xlslice_0_1/sim/pynq_bd_xlslice_0_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq_bd/ip/pynq_bd_ila_0_0/sim/pynq_bd_ila_0_0.vhd" \
  "../../../bd/pynq_bd/ip/pynq_bd_dpp_leds_0_0/sim/pynq_bd_dpp_leds_0_0.vhd" \
  "../../../bd/pynq_bd/ip/pynq_bd_fir_fab_0_0/sim/pynq_bd_fir_fab_0_0.vhd" \
  "../../../bd/pynq_bd/ip/pynq_bd_trapz_klm_0_0/sim/pynq_bd_trapz_klm_0_0.vhd" \
  "../../../bd/pynq_bd/ip/pynq_bd_xadc_buffer_0_0/sim/pynq_bd_xadc_buffer_0_0.vhd" \
  "../../../bd/pynq_bd/ip/pynq_bd_inv_sw_0_0/sim/pynq_bd_inv_sw_0_0.vhd" \
  "../../../bd/pynq_bd/ip/pynq_bd_dpp_counter_0_0/sim/pynq_bd_dpp_counter_0_0.vhd" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_27 \
  "../../../../Xadc_No_Dma_HR.gen/sources_1/bd/pynq_bd/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq_bd/ip/pynq_bd_auto_pc_0/sim/pynq_bd_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/pynq_bd/sim/pynq_bd.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

