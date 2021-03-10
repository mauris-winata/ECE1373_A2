vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_18
vlib riviera/fifo_generator_v13_2_3
vlib riviera/axi_data_fifo_v2_1_17
vlib riviera/axi_crossbar_v2_1_19
vlib riviera/xbip_utils_v3_0_9
vlib riviera/axi_utils_v2_0_5
vlib riviera/xbip_pipe_v3_0_5
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_dsp48_addsub_v3_0_5
vlib riviera/xbip_dsp48_multadd_v3_0_5
vlib riviera/xbip_bram18k_v3_0_5
vlib riviera/mult_gen_v12_0_14
vlib riviera/floating_point_v7_1_7
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/axi_protocol_converter_v2_1_18
vlib riviera/axi_clock_converter_v2_1_17
vlib riviera/blk_mem_gen_v8_4_2
vlib riviera/axi_dwidth_converter_v2_1_18

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_18 riviera/axi_register_slice_v2_1_18
vmap fifo_generator_v13_2_3 riviera/fifo_generator_v13_2_3
vmap axi_data_fifo_v2_1_17 riviera/axi_data_fifo_v2_1_17
vmap axi_crossbar_v2_1_19 riviera/axi_crossbar_v2_1_19
vmap xbip_utils_v3_0_9 riviera/xbip_utils_v3_0_9
vmap axi_utils_v2_0_5 riviera/axi_utils_v2_0_5
vmap xbip_pipe_v3_0_5 riviera/xbip_pipe_v3_0_5
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_5 riviera/xbip_dsp48_addsub_v3_0_5
vmap xbip_dsp48_multadd_v3_0_5 riviera/xbip_dsp48_multadd_v3_0_5
vmap xbip_bram18k_v3_0_5 riviera/xbip_bram18k_v3_0_5
vmap mult_gen_v12_0_14 riviera/mult_gen_v12_0_14
vmap floating_point_v7_1_7 riviera/floating_point_v7_1_7
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap axi_protocol_converter_v2_1_18 riviera/axi_protocol_converter_v2_1_18
vmap axi_clock_converter_v2_1_17 riviera/axi_clock_converter_v2_1_17
vmap blk_mem_gen_v8_4_2 riviera/blk_mem_gen_v8_4_2
vmap axi_dwidth_converter_v2_1_18 riviera/axi_dwidth_converter_v2_1_18

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/ec67/hdl" \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/ec67/hdl" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/ec67/hdl" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18  -v2k5 "+incdir+../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/ec67/hdl" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/ec67/hdl" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -93 \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/ec67/hdl" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_17  -v2k5 "+incdir+../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/ec67/hdl" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_19  -v2k5 "+incdir+../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/ec67/hdl" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/ec67/hdl" \
"../../../bd/pr_region_2/ip/pr_region_2_xbar_0/sim/pr_region_2_xbar_0.v" \
"../../../bd/pr_region_2/ip/pr_region_2_xbar_1/sim/pr_region_2_xbar_1.v" \

vcom -work xbip_utils_v3_0_9 -93 \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/0da8/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_5 -93 \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/ec8e/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_5 -93 \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/442e/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_5 -93 \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/a04b/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_5 -93 \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/b226/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_5 -93 \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/c08f/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_14 -93 \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/6bb5/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_7 -93 \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/c63e/hdl/floating_point_v7_1_vh_rfs.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/ec67/hdl" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/129c/hdl/verilog/conv_layer_CTRL_BUS_s_axi.v" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/129c/hdl/verilog/conv_layer_fadd_3bkb.v" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/129c/hdl/verilog/conv_layer_fcmp_3eOg.v" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/129c/hdl/verilog/conv_layer_fmul_3cud.v" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/129c/hdl/verilog/conv_layer_mem_m_axi.v" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/129c/hdl/verilog/conv_layer_mul_2ng8j.v" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/129c/hdl/verilog/conv_layer_mul_32fYi.v" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/129c/hdl/verilog/conv_layer_mul_32hbi.v" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/129c/hdl/verilog/conv_layer_mul_32kbM.v" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/129c/hdl/verilog/conv_layer_mul_64ibs.v" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/129c/hdl/verilog/conv_layer_mul_96jbC.v" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/129c/hdl/verilog/conv_layer_sitofpdEe.v" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/129c/hdl/verilog/p_hls_fptosi_float_i.v" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/129c/hdl/verilog/conv_layer.v" \

vcom -work xil_defaultlib -93 \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/129c/hdl/ip/conv_layer_ap_fadd_7_full_dsp_32.vhd" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/129c/hdl/ip/conv_layer_ap_fcmp_0_no_dsp_32.vhd" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/129c/hdl/ip/conv_layer_ap_fmul_3_max_dsp_32.vhd" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/129c/hdl/ip/conv_layer_ap_sitofp_4_no_dsp_32.vhd" \
"../../../bd/pr_region_2/ip/pr_region_2_conv_layer_0_0/sim/pr_region_2_conv_layer_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/ec67/hdl" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/2471/hdl/verilog/fc_layer_CTRL_BUS_s_axi.v" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/2471/hdl/verilog/fc_layer_fadd_32nbkb.v" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/2471/hdl/verilog/fc_layer_fcmp_32ndEe.v" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/2471/hdl/verilog/fc_layer_fmul_32ncud.v" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/2471/hdl/verilog/fc_layer_mem_m_axi.v" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/2471/hdl/verilog/fc_layer_mul_32s_eOg.v" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/2471/hdl/verilog/fc_layer.v" \

vcom -work xil_defaultlib -93 \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/2471/hdl/ip/fc_layer_ap_fadd_7_full_dsp_32.vhd" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/2471/hdl/ip/fc_layer_ap_fcmp_0_no_dsp_32.vhd" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/2471/hdl/ip/fc_layer_ap_fmul_3_max_dsp_32.vhd" \
"../../../bd/pr_region_2/ip/pr_region_2_fc_layer_0_0/sim/pr_region_2_fc_layer_0_0.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/pr_region_2/ip/pr_region_2_proc_sys_reset_0_0/sim/pr_region_2_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/ec67/hdl" \
"../../../bd/pr_region_2/sim/pr_region_2.v" \
"../../../bd/pr_region_2/ip/pr_region_2_s00_regslice_0/sim/pr_region_2_s00_regslice_0.v" \

vlog -work axi_protocol_converter_v2_1_18  -v2k5 "+incdir+../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/ec67/hdl" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_17  -v2k5 "+incdir+../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/ec67/hdl" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/693a/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_2  -v2k5 "+incdir+../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/ec67/hdl" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_18  -v2k5 "+incdir+../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/ec67/hdl" \
"../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/0815/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pr_region.srcs/sources_1/bd/pr_region_2/ipshared/ec67/hdl" \
"../../../bd/pr_region_2/ip/pr_region_2_auto_us_0/sim/pr_region_2_auto_us_0.v" \
"../../../bd/pr_region_2/ip/pr_region_2_auto_rs_0/sim/pr_region_2_auto_rs_0.v" \
"../../../bd/pr_region_2/ip/pr_region_2_auto_rs_w_0/sim/pr_region_2_auto_rs_w_0.v" \
"../../../bd/pr_region_2/ip/pr_region_2_auto_us_1/sim/pr_region_2_auto_us_1.v" \
"../../../bd/pr_region_2/ip/pr_region_2_auto_rs_1/sim/pr_region_2_auto_rs_1.v" \
"../../../bd/pr_region_2/ip/pr_region_2_auto_rs_w_1/sim/pr_region_2_auto_rs_w_1.v" \
"../../../bd/pr_region_2/ip/pr_region_2_m00_regslice_0/sim/pr_region_2_m00_regslice_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

