onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+pr_region_2 -L xil_defaultlib -L xpm -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_18 -L fifo_generator_v13_2_3 -L axi_data_fifo_v2_1_17 -L axi_crossbar_v2_1_19 -L xbip_utils_v3_0_9 -L axi_utils_v2_0_5 -L xbip_pipe_v3_0_5 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_5 -L xbip_dsp48_multadd_v3_0_5 -L xbip_bram18k_v3_0_5 -L mult_gen_v12_0_14 -L floating_point_v7_1_7 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L axi_protocol_converter_v2_1_18 -L axi_clock_converter_v2_1_17 -L blk_mem_gen_v8_4_2 -L axi_dwidth_converter_v2_1_18 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.pr_region_2 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {pr_region_2.udo}

run -all

endsim

quit -force
