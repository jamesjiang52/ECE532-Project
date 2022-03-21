vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/microblaze_v11_0_0
vlib modelsim_lib/msim/lmb_v10_v3_0_9
vlib modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_15
vlib modelsim_lib/msim/blk_mem_gen_v8_4_2
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_18
vlib modelsim_lib/msim/fifo_generator_v13_2_3
vlib modelsim_lib/msim/axi_data_fifo_v2_1_17
vlib modelsim_lib/msim/axi_crossbar_v2_1_19
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/axi_intc_v4_1_12
vlib modelsim_lib/msim/xlconcat_v2_1_1
vlib modelsim_lib/msim/mdm_v3_2_15
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/mii_to_rmii_v2_0_20
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_2
vlib modelsim_lib/msim/axi_uartlite_v2_0_22
vlib modelsim_lib/msim/lib_bmg_v1_0_11
vlib modelsim_lib/msim/lib_fifo_v1_0_12
vlib modelsim_lib/msim/axi_ethernetlite_v3_0_16
vlib modelsim_lib/msim/axi_timer_v2_0_20
vlib modelsim_lib/msim/xlconstant_v1_1_5
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_18
vlib modelsim_lib/msim/axi_clock_converter_v2_1_17

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap microblaze_v11_0_0 modelsim_lib/msim/microblaze_v11_0_0
vmap lmb_v10_v3_0_9 modelsim_lib/msim/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_15 modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_15
vmap blk_mem_gen_v8_4_2 modelsim_lib/msim/blk_mem_gen_v8_4_2
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_18 modelsim_lib/msim/axi_register_slice_v2_1_18
vmap fifo_generator_v13_2_3 modelsim_lib/msim/fifo_generator_v13_2_3
vmap axi_data_fifo_v2_1_17 modelsim_lib/msim/axi_data_fifo_v2_1_17
vmap axi_crossbar_v2_1_19 modelsim_lib/msim/axi_crossbar_v2_1_19
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_12 modelsim_lib/msim/axi_intc_v4_1_12
vmap xlconcat_v2_1_1 modelsim_lib/msim/xlconcat_v2_1_1
vmap mdm_v3_2_15 modelsim_lib/msim/mdm_v3_2_15
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap mii_to_rmii_v2_0_20 modelsim_lib/msim/mii_to_rmii_v2_0_20
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 modelsim_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_22 modelsim_lib/msim/axi_uartlite_v2_0_22
vmap lib_bmg_v1_0_11 modelsim_lib/msim/lib_bmg_v1_0_11
vmap lib_fifo_v1_0_12 modelsim_lib/msim/lib_fifo_v1_0_12
vmap axi_ethernetlite_v3_0_16 modelsim_lib/msim/axi_ethernetlite_v3_0_16
vmap axi_timer_v2_0_20 modelsim_lib/msim/axi_timer_v2_0_20
vmap xlconstant_v1_1_5 modelsim_lib/msim/xlconstant_v1_1_5
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_protocol_converter_v2_1_18 modelsim_lib/msim/axi_protocol_converter_v2_1_18
vmap axi_clock_converter_v2_1_17 modelsim_lib/msim/axi_clock_converter_v2_1_17

vlog -work xilinx_vip -64 -incr -sv -L smartconnect_v1_0 "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_0 -64 -93 \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/2ed1/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_microblaze_0_0/sim/design_1_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_9 -64 -93 \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_dlmb_v10_0/sim/design_1_dlmb_v10_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_v10_0/sim/design_1_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_15 -64 -93 \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/sim/design_1_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/sim/design_1_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_2 -64 -incr "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_lmb_bram_0/sim/design_1_lmb_bram_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18 -64 -incr "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_3 -64 -incr "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -64 -93 \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3 -64 -incr "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_17 -64 -incr "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_19 -64 -incr "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_12 -64 -93 \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/31e4/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_microblaze_0_axi_intc_0/sim/design_1_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_1 -64 -incr "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_microblaze_0_xlconcat_0/sim/design_1_microblaze_0_xlconcat_0.v" \

vcom -work mdm_v3_2_15 -64 -93 \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/41ef/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_mdm_1_0/sim/design_1_mdm_1_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/sim/design_1_rst_clk_wiz_1_100M_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_addr_decode.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_read.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg_bank.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_write.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_ar_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_aw_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_b_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_arbiter.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_fsm.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_translator.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_incr_cmd.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_r_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_simple_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wrap_cmd.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wr_cmd_fsm.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_w_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_axic_register_slice.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_register_slice.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_upsizer.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_a_upsizer.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_and.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_and.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_or.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_or.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_command_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel_static.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_r_upsizer.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_w_upsizer.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_axi.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/design_1_mig_7series_0_1_mig_sim.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_1/design_1_mig_7series_0_1/user_design/rtl/design_1_mig_7series_0_1.v" \

vcom -work mii_to_rmii_v2_0_20 -64 -93 \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/90e9/hdl/mii_to_rmii_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_mii_to_rmii_0_0/sim/design_1_mii_to_rmii_0_0.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_22 -64 -93 \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7371/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_uartlite_0_0/sim/design_1_axi_uartlite_0_0.vhd" \

vcom -work lib_bmg_v1_0_11 -64 -93 \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/556c/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_12 -64 -93 \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/544a/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_ethernetlite_v3_0_16 -64 -93 \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/5576/hdl/axi_ethernetlite_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_ethernetlite_0_0/sim/design_1_axi_ethernetlite_0_0.vhd" \

vcom -work axi_timer_v2_0_20 -64 -93 \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/e9c1/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_timer_0_0/sim/design_1_axi_timer_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \

vlog -work xlconstant_v1_1_5 -64 -incr "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr0_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_psr_aclk_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_psr_aclk1_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_arsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_rsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_awsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_wsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_bsw_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/9ade/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_s00a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_13/sim/bd_afc3_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_14/sim/bd_afc3_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_15/sim/bd_afc3_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_16/sim/bd_afc3_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_17/sim/bd_afc3_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_18/sim/bd_afc3_s01mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_19/sim/bd_afc3_s01tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_20/sim/bd_afc3_s01sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_21/sim/bd_afc3_s01a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_22/sim/bd_afc3_sarn_1.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_23/sim/bd_afc3_srn_1.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_24/sim/bd_afc3_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_25/sim/bd_afc3_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_26/sim/bd_afc3_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_27/sim/bd_afc3_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_28/sim/bd_afc3_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_29/sim/bd_afc3_m00bn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_30/sim/bd_afc3_m00e_0.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rst_mig_7series_0_81M_0/sim/design_1_rst_mig_7series_0_81M_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/sim/design_1.v" \
"../../../bd/design_1/ipshared/d201/src/fifo.v" \
"../../../bd/design_1/ipshared/d201/src/hash_func_S_AXI.v" \
"../../../bd/design_1/ipshared/d201/src/hash_func_pipe.v" \
"../../../bd/design_1/ipshared/d201/src/md5.v" \
"../../../bd/design_1/ipshared/d201/src/mur3.v" \
"../../../bd/design_1/ipshared/d201/src/hash_func_top.v" \
"../../../bd/design_1/ip/design_1_hash_func_top_0_2/sim/design_1_hash_func_top_0_2.v" \
"../../../bd/design_1/ip/design_1_ila_0_0/sim/design_1_ila_0_0.v" \
"../../../bd/design_1/ip/design_1_spam_detection_infer_0_0/src/fifo_generator_0/sim/fifo_generator_0.v" \
"../../../bd/design_1/ipshared/f011/src/except.v" \
"../../../bd/design_1/ipshared/f011/src/fcmp.v" \
"../../../bd/design_1/ipshared/f011/src/fpu.v" \
"../../../bd/design_1/ipshared/f011/src/post_norm.v" \
"../../../bd/design_1/ipshared/f011/src/pre_norm.v" \
"../../../bd/design_1/ipshared/f011/src/pre_norm_fmul.v" \
"../../../bd/design_1/ipshared/f011/src/primitives.v" \
"../../../bd/design_1/ipshared/f011/hdl/spam_detection_inference_v1_0_S00_AXI.v" \
"../../../bd/design_1/ipshared/f011/hdl/spam_detection_inference_v1_0.v" \
"../../../bd/design_1/ipshared/f011/src/spam_detection_controller.v" \
"../../../bd/design_1/ip/design_1_spam_detection_infer_0_0/sim/design_1_spam_detection_infer_0_0.v" \

vlog -work axi_protocol_converter_v2_1_18 -64 -incr "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vlog -work axi_clock_converter_v2_1_17 -64 -incr "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/693a/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/979d/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../client_proj.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_cc_0/sim/design_1_auto_cc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

