# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xcvu095-ffvc1517-2-e

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.cache/wt [current_project]
set_property parent.project_path D:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  d:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/ocl_ips
  d:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/hls_proj/conv_proj/solution1/impl/ip
  d:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/hls_proj/fc_proj/solution1/impl/ip
} [current_project]
update_ip_catalog
set_property ip_output_repo d:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib D:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.srcs/sources_1/bd/pr_region_2/hdl/pr_region_2_wrapper.v
add_files D:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.srcs/sources_1/bd/pr_region_2/pr_region_2.bd
set_property used_in_implementation false [get_files -all d:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_xbar_0/pr_region_2_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_xbar_1/pr_region_2_xbar_1_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_conv_layer_0_0/constraints/conv_layer_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_fc_layer_0_0/constraints/fc_layer_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_proc_sys_reset_0_0/pr_region_2_proc_sys_reset_0_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_proc_sys_reset_0_0/pr_region_2_proc_sys_reset_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_proc_sys_reset_0_0/pr_region_2_proc_sys_reset_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_s00_regslice_0/pr_region_2_s00_regslice_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_s00_regslice_0/pr_region_2_s00_regslice_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all d:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_auto_us_0/pr_region_2_auto_us_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_auto_us_0/pr_region_2_auto_us_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_auto_us_0/pr_region_2_auto_us_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_auto_rs_0/pr_region_2_auto_rs_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_auto_rs_0/pr_region_2_auto_rs_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_auto_rs_w_0/pr_region_2_auto_rs_w_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_auto_rs_w_0/pr_region_2_auto_rs_w_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all d:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_auto_us_1/pr_region_2_auto_us_1_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_auto_us_1/pr_region_2_auto_us_1_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_auto_us_1/pr_region_2_auto_us_1_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_auto_rs_1/pr_region_2_auto_rs_1_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_auto_rs_1/pr_region_2_auto_rs_1_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_auto_rs_w_1/pr_region_2_auto_rs_w_1_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_auto_rs_w_1/pr_region_2_auto_rs_w_1_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_m00_regslice_0/pr_region_2_m00_regslice_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_m00_regslice_0/pr_region_2_m00_regslice_0_ooc.xdc]
set_property used_in_implementation false [get_files -all D:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.srcs/sources_1/bd/pr_region_2/pr_region_2_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top pr_region_2_wrapper -part xcvu095-ffvc1517-2-e


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef pr_region_2_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file pr_region_2_wrapper_utilization_synth.rpt -pb pr_region_2_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
