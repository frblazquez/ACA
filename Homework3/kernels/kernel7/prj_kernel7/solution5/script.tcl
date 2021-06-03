############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project prj_kernel7
set_top kernel7
add_files kernel7.cpp
add_files -tb kernel7_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution5"
set_part {xc7k160t-fbg484-1}
create_clock -period 10 -name default
source "./prj_kernel7/solution5/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog
