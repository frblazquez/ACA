############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project prj_kernel3
set_top kernel3
add_files kernel3.cpp
add_files -tb kernel3_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution4"
set_part {xc7k160t-fbg484-1}
create_clock -period 10 -name default
source "./prj_kernel3/solution4/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog
