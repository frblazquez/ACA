// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="dct,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160t-fbg484-1,HLS_INPUT_CLOCK=8.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.018000,HLS_SYN_LAT=1851,HLS_SYN_TPT=none,HLS_SYN_MEM=5,HLS_SYN_DSP=1,HLS_SYN_FF=256,HLS_SYN_LUT=1266,HLS_VERSION=2019_2}" *)

module dct (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        input_r_address0,
        input_r_ce0,
        input_r_q0,
        output_r_address0,
        output_r_ce0,
        output_r_we0,
        output_r_d0
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_pp0_stage0 = 6'd2;
parameter    ap_ST_fsm_state4 = 6'd4;
parameter    ap_ST_fsm_state5 = 6'd8;
parameter    ap_ST_fsm_pp1_stage0 = 6'd16;
parameter    ap_ST_fsm_state8 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] input_r_address0;
output   input_r_ce0;
input  [15:0] input_r_q0;
output  [5:0] output_r_address0;
output   output_r_ce0;
output   output_r_we0;
output  [15:0] output_r_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg input_r_ce0;
reg output_r_ce0;
reg output_r_we0;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [6:0] indvar_flatten_reg_124;
reg   [3:0] r_0_i_reg_135;
reg   [3:0] c_0_i_reg_146;
reg   [6:0] indvar_flatten11_reg_157;
reg   [3:0] r_0_i2_reg_168;
reg   [3:0] c_0_i4_reg_179;
wire   [0:0] icmp_ln103_fu_198_p2;
reg   [0:0] icmp_ln103_reg_395;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [6:0] add_ln103_fu_204_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [3:0] select_ln103_fu_222_p3;
reg   [3:0] select_ln103_reg_404;
wire   [3:0] select_ln103_1_fu_230_p3;
reg   [3:0] select_ln103_1_reg_409;
wire   [3:0] c_fu_265_p2;
wire   [0:0] icmp_ln115_fu_296_p2;
reg   [0:0] icmp_ln115_reg_425;
wire    ap_CS_fsm_pp1_stage0;
wire    ap_block_state6_pp1_stage0_iter0;
wire    ap_block_state7_pp1_stage0_iter1;
wire    ap_block_pp1_stage0_11001;
wire   [6:0] add_ln115_fu_302_p2;
reg    ap_enable_reg_pp1_iter0;
wire   [3:0] select_ln115_1_fu_328_p3;
reg   [3:0] select_ln115_1_reg_434;
wire   [5:0] add_ln118_fu_379_p2;
reg   [5:0] add_ln118_reg_444;
wire   [3:0] c_1_fu_385_p2;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
wire    ap_CS_fsm_state5;
wire    grp_dct_2d_fu_190_ap_ready;
wire    grp_dct_2d_fu_190_ap_done;
wire    ap_block_pp1_stage0_subdone;
reg    ap_condition_pp1_exit_iter0_state6;
reg    ap_enable_reg_pp1_iter1;
reg   [5:0] buf_2d_in_address0;
reg    buf_2d_in_ce0;
reg    buf_2d_in_we0;
wire   [15:0] buf_2d_in_q0;
reg   [5:0] buf_2d_out_address0;
reg    buf_2d_out_ce0;
reg    buf_2d_out_we0;
wire   [15:0] buf_2d_out_q0;
wire    grp_dct_2d_fu_190_ap_start;
wire    grp_dct_2d_fu_190_ap_idle;
wire   [5:0] grp_dct_2d_fu_190_in_block_address0;
wire    grp_dct_2d_fu_190_in_block_ce0;
wire   [5:0] grp_dct_2d_fu_190_out_block_address0;
wire    grp_dct_2d_fu_190_out_block_ce0;
wire    grp_dct_2d_fu_190_out_block_we0;
wire   [15:0] grp_dct_2d_fu_190_out_block_d0;
reg   [3:0] ap_phi_mux_r_0_i_phi_fu_139_p4;
wire    ap_block_pp0_stage0;
reg   [3:0] ap_phi_mux_r_0_i2_phi_fu_172_p4;
wire    ap_block_pp1_stage0;
reg    grp_dct_2d_fu_190_ap_start_reg;
wire    ap_CS_fsm_state4;
wire   [63:0] zext_ln106_fu_260_p1;
wire   [63:0] zext_ln106_2_fu_291_p1;
wire   [63:0] zext_ln118_1_fu_374_p1;
wire   [63:0] zext_ln118_2_fu_391_p1;
wire   [0:0] icmp_ln105_fu_216_p2;
wire   [3:0] r_fu_210_p2;
wire   [2:0] trunc_ln103_fu_238_p1;
wire   [5:0] zext_ln105_fu_250_p1;
wire   [5:0] shl_ln106_mid2_fu_242_p3;
wire   [5:0] add_ln106_fu_254_p2;
wire   [6:0] tmp_9_fu_271_p3;
wire   [7:0] zext_ln105_1_fu_278_p1;
wire   [7:0] zext_ln106_1_fu_282_p1;
wire   [7:0] add_ln106_1_fu_285_p2;
wire   [0:0] icmp_ln117_fu_314_p2;
wire   [3:0] r_1_fu_308_p2;
wire   [6:0] tmp_s_fu_336_p3;
wire   [2:0] trunc_ln115_fu_348_p1;
wire   [3:0] select_ln115_fu_320_p3;
wire   [7:0] zext_ln115_fu_344_p1;
wire   [7:0] zext_ln118_fu_364_p1;
wire   [7:0] add_ln118_1_fu_368_p2;
wire   [5:0] zext_ln117_fu_360_p1;
wire   [5:0] shl_ln118_mid2_fu_352_p3;
wire    ap_CS_fsm_state8;
reg   [5:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_idle_pp1;
wire    ap_enable_pp1;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
#0 grp_dct_2d_fu_190_ap_start_reg = 1'b0;
end

dct_2d_row_outbuf #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
buf_2d_in_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buf_2d_in_address0),
    .ce0(buf_2d_in_ce0),
    .we0(buf_2d_in_we0),
    .d0(input_r_q0),
    .q0(buf_2d_in_q0)
);

dct_2d_row_outbuf #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
buf_2d_out_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buf_2d_out_address0),
    .ce0(buf_2d_out_ce0),
    .we0(buf_2d_out_we0),
    .d0(grp_dct_2d_fu_190_out_block_d0),
    .q0(buf_2d_out_q0)
);

dct_2d grp_dct_2d_fu_190(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_dct_2d_fu_190_ap_start),
    .ap_done(grp_dct_2d_fu_190_ap_done),
    .ap_idle(grp_dct_2d_fu_190_ap_idle),
    .ap_ready(grp_dct_2d_fu_190_ap_ready),
    .in_block_address0(grp_dct_2d_fu_190_in_block_address0),
    .in_block_ce0(grp_dct_2d_fu_190_in_block_ce0),
    .in_block_q0(buf_2d_in_q0),
    .out_block_address0(grp_dct_2d_fu_190_out_block_address0),
    .out_block_ce0(grp_dct_2d_fu_190_out_block_ce0),
    .out_block_we0(grp_dct_2d_fu_190_out_block_we0),
    .out_block_d0(grp_dct_2d_fu_190_out_block_d0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp1_stage0) & (1'b1 == ap_condition_pp1_exit_iter0_state6) & (1'b0 == ap_block_pp1_stage0_subdone))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state5) & (grp_dct_2d_fu_190_ap_done == 1'b1))) begin
            ap_enable_reg_pp1_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp1_exit_iter0_state6) & (1'b0 == ap_block_pp1_stage0_subdone))) begin
            ap_enable_reg_pp1_iter1 <= (1'b1 ^ ap_condition_pp1_exit_iter0_state6);
        end else if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
        end else if (((1'b1 == ap_CS_fsm_state5) & (grp_dct_2d_fu_190_ap_done == 1'b1))) begin
            ap_enable_reg_pp1_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dct_2d_fu_190_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_dct_2d_fu_190_ap_start_reg <= 1'b1;
        end else if ((grp_dct_2d_fu_190_ap_ready == 1'b1)) begin
            grp_dct_2d_fu_190_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (icmp_ln115_fu_296_p2 == 1'd0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        c_0_i4_reg_179 <= c_1_fu_385_p2;
    end else if (((1'b1 == ap_CS_fsm_state5) & (grp_dct_2d_fu_190_ap_done == 1'b1))) begin
        c_0_i4_reg_179 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln103_fu_198_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c_0_i_reg_146 <= c_fu_265_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        c_0_i_reg_146 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (icmp_ln115_fu_296_p2 == 1'd0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        indvar_flatten11_reg_157 <= add_ln115_fu_302_p2;
    end else if (((1'b1 == ap_CS_fsm_state5) & (grp_dct_2d_fu_190_ap_done == 1'b1))) begin
        indvar_flatten11_reg_157 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln103_fu_198_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_reg_124 <= add_ln103_fu_204_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        indvar_flatten_reg_124 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (icmp_ln115_reg_425 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1))) begin
        r_0_i2_reg_168 <= select_ln115_1_reg_434;
    end else if (((1'b1 == ap_CS_fsm_state5) & (grp_dct_2d_fu_190_ap_done == 1'b1))) begin
        r_0_i2_reg_168 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln103_reg_395 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        r_0_i_reg_135 <= select_ln103_1_reg_409;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        r_0_i_reg_135 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (icmp_ln115_fu_296_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        add_ln118_reg_444 <= add_ln118_fu_379_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln103_reg_395 <= icmp_ln103_fu_198_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        icmp_ln115_reg_425 <= icmp_ln115_fu_296_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln103_fu_198_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln103_1_reg_409 <= select_ln103_1_fu_230_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln103_fu_198_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln103_reg_404 <= select_ln103_fu_222_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (icmp_ln115_fu_296_p2 == 1'd0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        select_ln115_1_reg_434 <= select_ln115_1_fu_328_p3;
    end
end

always @ (*) begin
    if ((icmp_ln103_fu_198_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln115_fu_296_p2 == 1'd1)) begin
        ap_condition_pp1_exit_iter0_state6 = 1'b1;
    end else begin
        ap_condition_pp1_exit_iter0_state6 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter0 == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b0))) begin
        ap_idle_pp1 = 1'b1;
    end else begin
        ap_idle_pp1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln115_reg_425 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1))) begin
        ap_phi_mux_r_0_i2_phi_fu_172_p4 = select_ln115_1_reg_434;
    end else begin
        ap_phi_mux_r_0_i2_phi_fu_172_p4 = r_0_i2_reg_168;
    end
end

always @ (*) begin
    if (((icmp_ln103_reg_395 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_r_0_i_phi_fu_139_p4 = select_ln103_1_reg_409;
    end else begin
        ap_phi_mux_r_0_i_phi_fu_139_p4 = r_0_i_reg_135;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        buf_2d_in_address0 = zext_ln106_2_fu_291_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_2d_in_address0 = grp_dct_2d_fu_190_in_block_address0;
    end else begin
        buf_2d_in_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        buf_2d_in_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_2d_in_ce0 = grp_dct_2d_fu_190_in_block_ce0;
    end else begin
        buf_2d_in_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln103_reg_395 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        buf_2d_in_we0 = 1'b1;
    end else begin
        buf_2d_in_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        buf_2d_out_address0 = zext_ln118_1_fu_374_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_2d_out_address0 = grp_dct_2d_fu_190_out_block_address0;
    end else begin
        buf_2d_out_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        buf_2d_out_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_2d_out_ce0 = grp_dct_2d_fu_190_out_block_ce0;
    end else begin
        buf_2d_out_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_2d_out_we0 = grp_dct_2d_fu_190_out_block_we0;
    end else begin
        buf_2d_out_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_r_ce0 = 1'b1;
    end else begin
        input_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1))) begin
        output_r_ce0 = 1'b1;
    end else begin
        output_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (icmp_ln115_reg_425 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1))) begin
        output_r_we0 = 1'b1;
    end else begin
        output_r_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((icmp_ln103_fu_198_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((icmp_ln103_fu_198_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (grp_dct_2d_fu_190_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_pp1_stage0 : begin
            if (~((icmp_ln115_fu_296_p2 == 1'd1) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else if (((icmp_ln115_fu_296_p2 == 1'd1) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln103_fu_204_p2 = (indvar_flatten_reg_124 + 7'd1);

assign add_ln106_1_fu_285_p2 = (zext_ln105_1_fu_278_p1 + zext_ln106_1_fu_282_p1);

assign add_ln106_fu_254_p2 = (zext_ln105_fu_250_p1 + shl_ln106_mid2_fu_242_p3);

assign add_ln115_fu_302_p2 = (indvar_flatten11_reg_157 + 7'd1);

assign add_ln118_1_fu_368_p2 = (zext_ln115_fu_344_p1 + zext_ln118_fu_364_p1);

assign add_ln118_fu_379_p2 = (zext_ln117_fu_360_p1 + shl_ln118_mid2_fu_352_p3);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp1_stage0 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd5];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp1_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

assign c_1_fu_385_p2 = (4'd1 + select_ln115_fu_320_p3);

assign c_fu_265_p2 = (4'd1 + select_ln103_fu_222_p3);

assign grp_dct_2d_fu_190_ap_start = grp_dct_2d_fu_190_ap_start_reg;

assign icmp_ln103_fu_198_p2 = ((indvar_flatten_reg_124 == 7'd64) ? 1'b1 : 1'b0);

assign icmp_ln105_fu_216_p2 = ((c_0_i_reg_146 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln115_fu_296_p2 = ((indvar_flatten11_reg_157 == 7'd64) ? 1'b1 : 1'b0);

assign icmp_ln117_fu_314_p2 = ((c_0_i4_reg_179 == 4'd8) ? 1'b1 : 1'b0);

assign input_r_address0 = zext_ln106_fu_260_p1;

assign output_r_address0 = zext_ln118_2_fu_391_p1;

assign output_r_d0 = buf_2d_out_q0;

assign r_1_fu_308_p2 = (4'd1 + ap_phi_mux_r_0_i2_phi_fu_172_p4);

assign r_fu_210_p2 = (4'd1 + ap_phi_mux_r_0_i_phi_fu_139_p4);

assign select_ln103_1_fu_230_p3 = ((icmp_ln105_fu_216_p2[0:0] === 1'b1) ? r_fu_210_p2 : ap_phi_mux_r_0_i_phi_fu_139_p4);

assign select_ln103_fu_222_p3 = ((icmp_ln105_fu_216_p2[0:0] === 1'b1) ? 4'd0 : c_0_i_reg_146);

assign select_ln115_1_fu_328_p3 = ((icmp_ln117_fu_314_p2[0:0] === 1'b1) ? r_1_fu_308_p2 : ap_phi_mux_r_0_i2_phi_fu_172_p4);

assign select_ln115_fu_320_p3 = ((icmp_ln117_fu_314_p2[0:0] === 1'b1) ? 4'd0 : c_0_i4_reg_179);

assign shl_ln106_mid2_fu_242_p3 = {{trunc_ln103_fu_238_p1}, {3'd0}};

assign shl_ln118_mid2_fu_352_p3 = {{trunc_ln115_fu_348_p1}, {3'd0}};

assign tmp_9_fu_271_p3 = {{select_ln103_1_reg_409}, {3'd0}};

assign tmp_s_fu_336_p3 = {{select_ln115_1_fu_328_p3}, {3'd0}};

assign trunc_ln103_fu_238_p1 = select_ln103_1_fu_230_p3[2:0];

assign trunc_ln115_fu_348_p1 = select_ln115_1_fu_328_p3[2:0];

assign zext_ln105_1_fu_278_p1 = tmp_9_fu_271_p3;

assign zext_ln105_fu_250_p1 = select_ln103_fu_222_p3;

assign zext_ln106_1_fu_282_p1 = select_ln103_reg_404;

assign zext_ln106_2_fu_291_p1 = add_ln106_1_fu_285_p2;

assign zext_ln106_fu_260_p1 = add_ln106_fu_254_p2;

assign zext_ln115_fu_344_p1 = tmp_s_fu_336_p3;

assign zext_ln117_fu_360_p1 = select_ln115_fu_320_p3;

assign zext_ln118_1_fu_374_p1 = add_ln118_1_fu_368_p2;

assign zext_ln118_2_fu_391_p1 = add_ln118_reg_444;

assign zext_ln118_fu_364_p1 = select_ln115_fu_320_p3;

endmodule //dct
