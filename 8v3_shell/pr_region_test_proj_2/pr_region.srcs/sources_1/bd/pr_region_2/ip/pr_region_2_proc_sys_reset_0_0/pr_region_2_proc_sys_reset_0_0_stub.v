// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Feb 23 18:20:36 2021
// Host        : DESKTOP-LQQCJP4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Documents/ECE1373/lab2/ECE1373_assignment2-2021/8v3_shell/pr_region_test_proj_2/pr_region.srcs/sources_1/bd/pr_region_2/ip/pr_region_2_proc_sys_reset_0_0/pr_region_2_proc_sys_reset_0_0_stub.v
// Design      : pr_region_2_proc_sys_reset_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu095-ffvc1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "proc_sys_reset,Vivado 2018.3" *)
module pr_region_2_proc_sys_reset_0_0(slowest_sync_clk, ext_reset_in, aux_reset_in, 
  mb_debug_sys_rst, dcm_locked, mb_reset, bus_struct_reset, peripheral_reset, 
  interconnect_aresetn, peripheral_aresetn)
/* synthesis syn_black_box black_box_pad_pin="slowest_sync_clk,ext_reset_in,aux_reset_in,mb_debug_sys_rst,dcm_locked,mb_reset,bus_struct_reset[0:0],peripheral_reset[0:0],interconnect_aresetn[0:0],peripheral_aresetn[0:0]" */;
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;
endmodule