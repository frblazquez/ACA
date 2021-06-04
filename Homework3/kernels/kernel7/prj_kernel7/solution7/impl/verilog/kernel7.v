// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="kernel7,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160t-fbg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.533600,HLS_SYN_LAT=4106,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=4,HLS_SYN_FF=1094,HLS_SYN_LUT=1183,HLS_VERSION=2019_2}" *)

module kernel7 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a_address0,
        a_ce0,
        a_q0,
        a_address1,
        a_ce1,
        a_q1,
        b_address0,
        b_ce0,
        b_q0,
        b_address1,
        b_ce1,
        b_q1,
        ap_return
);

parameter    ap_ST_fsm_state1 = 24'd1;
parameter    ap_ST_fsm_state2 = 24'd2;
parameter    ap_ST_fsm_state3 = 24'd4;
parameter    ap_ST_fsm_state4 = 24'd8;
parameter    ap_ST_fsm_state5 = 24'd16;
parameter    ap_ST_fsm_state6 = 24'd32;
parameter    ap_ST_fsm_state7 = 24'd64;
parameter    ap_ST_fsm_state8 = 24'd128;
parameter    ap_ST_fsm_pp0_stage0 = 24'd256;
parameter    ap_ST_fsm_pp0_stage1 = 24'd512;
parameter    ap_ST_fsm_pp0_stage2 = 24'd1024;
parameter    ap_ST_fsm_pp0_stage3 = 24'd2048;
parameter    ap_ST_fsm_state16 = 24'd4096;
parameter    ap_ST_fsm_state17 = 24'd8192;
parameter    ap_ST_fsm_state18 = 24'd16384;
parameter    ap_ST_fsm_state19 = 24'd32768;
parameter    ap_ST_fsm_state20 = 24'd65536;
parameter    ap_ST_fsm_state21 = 24'd131072;
parameter    ap_ST_fsm_state22 = 24'd262144;
parameter    ap_ST_fsm_state23 = 24'd524288;
parameter    ap_ST_fsm_state24 = 24'd1048576;
parameter    ap_ST_fsm_state25 = 24'd2097152;
parameter    ap_ST_fsm_state26 = 24'd4194304;
parameter    ap_ST_fsm_state27 = 24'd8388608;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] a_address0;
output   a_ce0;
input  [31:0] a_q0;
output  [9:0] a_address1;
output   a_ce1;
input  [31:0] a_q1;
output  [9:0] b_address0;
output   b_ce0;
input  [31:0] b_q0;
output  [9:0] b_address1;
output   b_ce1;
input  [31:0] b_q1;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] a_address0;
reg a_ce0;
reg[9:0] a_address1;
reg a_ce1;
reg[9:0] b_address0;
reg b_ce0;
reg[9:0] b_address1;
reg b_ce1;

(* fsm_encoding = "none" *) reg   [23:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [10:0] i_0_reg_144;
reg   [31:0] diff1_1_reg_156;
reg   [31:0] diff1_0_reg_166;
reg   [31:0] sum_0_reg_177;
reg   [31:0] diff2_1_reg_189;
reg   [31:0] reg_220;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_pp0_stage1;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_state10_pp0_stage1_iter0;
wire    ap_block_state14_pp0_stage1_iter1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] icmp_ln12_reg_501;
reg   [31:0] reg_226;
reg   [31:0] a_load_1_reg_466;
wire    ap_CS_fsm_state3;
reg   [31:0] b_load_1_reg_471;
reg   [31:0] a_load_2_reg_476;
reg   [31:0] b_load_2_reg_481;
wire   [31:0] grp_fu_200_p2;
reg   [31:0] diff1_reg_486;
wire    ap_CS_fsm_state6;
reg   [31:0] diff2_reg_491;
wire    ap_CS_fsm_state7;
wire   [31:0] grp_fu_204_p2;
reg   [31:0] diff3_reg_496;
wire   [0:0] icmp_ln12_fu_232_p2;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state9_pp0_stage0_iter0;
wire    ap_block_state13_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln12_reg_501_pp0_iter1_reg;
wire   [0:0] icmp_ln16_fu_262_p2;
reg   [0:0] icmp_ln16_reg_515;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_state12_pp0_stage3_iter0;
wire    ap_block_pp0_stage3_11001;
wire   [0:0] icmp_ln16_1_fu_268_p2;
reg   [0:0] icmp_ln16_1_reg_520;
wire   [10:0] i_fu_274_p2;
reg   [10:0] i_reg_525;
wire   [0:0] grp_fu_212_p2;
reg   [0:0] tmp_8_reg_530;
reg    ap_enable_reg_pp0_iter1;
reg   [31:0] diff4_reg_535;
wire   [31:0] sum_7_fu_289_p3;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_state11_pp0_stage2_iter0;
wire    ap_block_state15_pp0_stage2_iter1;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] icmp_ln22_fu_315_p2;
reg   [0:0] icmp_ln22_reg_545;
wire    ap_CS_fsm_state16;
wire   [0:0] icmp_ln22_1_fu_321_p2;
reg   [0:0] icmp_ln22_1_reg_550;
reg   [0:0] tmp_1_reg_555;
wire    ap_CS_fsm_state17;
wire   [31:0] sum_1_fu_336_p3;
reg   [31:0] sum_1_reg_560;
wire    ap_CS_fsm_state19;
wire   [0:0] icmp_ln24_fu_362_p2;
reg   [0:0] icmp_ln24_reg_566;
wire    ap_CS_fsm_state20;
wire   [0:0] icmp_ln24_1_fu_368_p2;
reg   [0:0] icmp_ln24_1_reg_571;
reg   [0:0] tmp_4_reg_576;
wire    ap_CS_fsm_state21;
wire   [31:0] sum_3_fu_383_p3;
reg   [31:0] sum_3_reg_581;
wire    ap_CS_fsm_state23;
wire   [0:0] icmp_ln26_fu_408_p2;
reg   [0:0] icmp_ln26_reg_587;
wire    ap_CS_fsm_state24;
wire   [0:0] icmp_ln26_1_fu_414_p2;
reg   [0:0] icmp_ln26_1_reg_592;
reg   [0:0] tmp_6_reg_597;
wire    ap_CS_fsm_state25;
wire    ap_CS_fsm_state8;
wire    ap_block_pp0_stage2_subdone;
reg    ap_condition_pp0_exit_iter0_state11;
wire    ap_block_pp0_stage3_subdone;
reg   [10:0] ap_phi_mux_i_0_phi_fu_148_p4;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_fu_238_p1;
reg   [31:0] grp_fu_200_p0;
reg   [31:0] grp_fu_200_p1;
wire    ap_CS_fsm_state4;
wire    ap_block_pp0_stage3;
reg   [31:0] grp_fu_212_p0;
wire   [31:0] bitcast_ln16_fu_244_p1;
wire   [7:0] tmp_7_fu_248_p4;
wire   [22:0] trunc_ln16_fu_258_p1;
wire   [0:0] or_ln16_fu_280_p2;
wire   [0:0] and_ln16_fu_284_p2;
wire   [31:0] bitcast_ln22_fu_297_p1;
wire   [7:0] tmp_fu_301_p4;
wire   [22:0] trunc_ln22_fu_311_p1;
wire   [0:0] or_ln22_fu_327_p2;
wire   [0:0] and_ln22_fu_331_p2;
wire   [31:0] bitcast_ln24_fu_344_p1;
wire   [7:0] tmp_3_fu_348_p4;
wire   [22:0] trunc_ln24_fu_358_p1;
wire   [0:0] or_ln24_fu_374_p2;
wire   [0:0] and_ln24_fu_378_p2;
wire   [31:0] bitcast_ln26_fu_390_p1;
wire   [7:0] tmp_5_fu_394_p4;
wire   [22:0] trunc_ln26_fu_404_p1;
wire    ap_CS_fsm_state27;
wire   [0:0] or_ln26_fu_420_p2;
wire   [0:0] and_ln26_fu_424_p2;
reg   [1:0] grp_fu_200_opcode;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage2_00001;
reg   [23:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage1_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 24'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

kernel7_faddfsub_bkb #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
kernel7_faddfsub_bkb_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_200_p0),
    .din1(grp_fu_200_p1),
    .opcode(grp_fu_200_opcode),
    .ce(1'b1),
    .dout(grp_fu_200_p2)
);

kernel7_fsub_32nscud #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
kernel7_fsub_32nscud_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(a_load_2_reg_476),
    .din1(b_load_2_reg_481),
    .ce(1'b1),
    .dout(grp_fu_204_p2)
);

kernel7_fcmp_32nsdEe #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
kernel7_fcmp_32nsdEe_U3(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_212_p0),
    .din1(32'd0),
    .ce(1'b1),
    .opcode(5'd2),
    .dout(grp_fu_212_p2)
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state11) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state8)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((1'b1 == ap_CS_fsm_state8)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln12_reg_501_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        diff1_0_reg_166 <= diff1_1_reg_156;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        diff1_0_reg_166 <= diff1_reg_486;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln12_reg_501_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        diff1_1_reg_156 <= diff2_1_reg_189;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        diff1_1_reg_156 <= diff2_reg_491;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln12_reg_501_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        diff2_1_reg_189 <= diff4_reg_535;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        diff2_1_reg_189 <= diff3_reg_496;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln12_reg_501 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_0_reg_144 <= i_reg_525;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        i_0_reg_144 <= 11'd3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln12_reg_501 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_220 <= a_q1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        reg_220 <= a_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln12_reg_501 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_226 <= b_q1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        reg_226 <= b_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln12_reg_501_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        sum_0_reg_177 <= sum_7_fu_289_p3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_0_reg_177 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        a_load_1_reg_466 <= a_q0;
        a_load_2_reg_476 <= a_q1;
        b_load_1_reg_471 <= b_q0;
        b_load_2_reg_481 <= b_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        diff1_reg_486 <= grp_fu_200_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        diff2_reg_491 <= grp_fu_200_p2;
        diff3_reg_496 <= grp_fu_204_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln12_reg_501_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        diff4_reg_535 <= grp_fu_200_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln12_reg_501 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        i_reg_525 <= i_fu_274_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln12_reg_501 <= icmp_ln12_fu_232_p2;
        icmp_ln12_reg_501_pp0_iter1_reg <= icmp_ln12_reg_501;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln12_reg_501 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        icmp_ln16_1_reg_520 <= icmp_ln16_1_fu_268_p2;
        icmp_ln16_reg_515 <= icmp_ln16_fu_262_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        icmp_ln22_1_reg_550 <= icmp_ln22_1_fu_321_p2;
        icmp_ln22_reg_545 <= icmp_ln22_fu_315_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        icmp_ln24_1_reg_571 <= icmp_ln24_1_fu_368_p2;
        icmp_ln24_reg_566 <= icmp_ln24_fu_362_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        icmp_ln26_1_reg_592 <= icmp_ln26_1_fu_414_p2;
        icmp_ln26_reg_587 <= icmp_ln26_fu_408_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        sum_1_reg_560 <= sum_1_fu_336_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        sum_3_reg_581 <= sum_3_fu_383_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        tmp_1_reg_555 <= grp_fu_212_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        tmp_4_reg_576 <= grp_fu_212_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        tmp_6_reg_597 <= grp_fu_212_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln12_reg_501 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_8_reg_530 <= grp_fu_212_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        a_address0 = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        a_address0 = 64'd0;
    end else begin
        a_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_address1 = zext_ln14_fu_238_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_address1 = 64'd2;
    end else begin
        a_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        a_ce0 = 1'b1;
    end else begin
        a_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        a_ce1 = 1'b1;
    end else begin
        a_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln12_reg_501 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state11 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state11 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
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
    if (((icmp_ln12_reg_501 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_i_0_phi_fu_148_p4 = i_reg_525;
    end else begin
        ap_phi_mux_i_0_phi_fu_148_p4 = i_0_reg_144;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        b_address0 = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        b_address0 = 64'd0;
    end else begin
        b_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_address1 = zext_ln14_fu_238_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        b_address1 = 64'd2;
    end else begin
        b_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        b_ce0 = 1'b1;
    end else begin
        b_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        b_ce1 = 1'b1;
    end else begin
        b_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((icmp_ln12_reg_501 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_200_opcode = 2'd1;
    end else if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state16) | ((icmp_ln12_reg_501 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_200_opcode = 2'd0;
    end else begin
        grp_fu_200_opcode = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_200_p0 = sum_3_reg_581;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_200_p0 = sum_1_reg_560;
    end else if (((1'b1 == ap_CS_fsm_state16) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_200_p0 = sum_0_reg_177;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_200_p0 = a_load_1_reg_466;
    end else if (((1'b1 == ap_CS_fsm_state3) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_200_p0 = reg_220;
    end else begin
        grp_fu_200_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_200_p1 = diff2_1_reg_189;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_200_p1 = diff1_1_reg_156;
    end else if (((1'b1 == ap_CS_fsm_state16) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_200_p1 = diff1_0_reg_166;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_200_p1 = b_load_1_reg_471;
    end else if (((1'b1 == ap_CS_fsm_state3) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_200_p1 = reg_226;
    end else begin
        grp_fu_200_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_212_p0 = diff2_1_reg_189;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_212_p0 = diff1_1_reg_156;
    end else if (((1'b1 == ap_CS_fsm_state16) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_212_p0 = diff1_0_reg_166;
    end else begin
        grp_fu_212_p0 = 'bx;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((~((icmp_ln12_reg_501 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) & (1'b0 == ap_block_pp0_stage2_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else if (((icmp_ln12_reg_501 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign and_ln16_fu_284_p2 = (tmp_8_reg_530 & or_ln16_fu_280_p2);

assign and_ln22_fu_331_p2 = (tmp_1_reg_555 & or_ln22_fu_327_p2);

assign and_ln24_fu_378_p2 = (tmp_4_reg_576 & or_ln24_fu_374_p2);

assign and_ln26_fu_424_p2 = (tmp_6_reg_597 & or_ln26_fu_420_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd8];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state23 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state24 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_state25 = ap_CS_fsm[32'd21];

assign ap_CS_fsm_state27 = ap_CS_fsm[32'd23];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage3_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage2_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_return = ((and_ln26_fu_424_p2[0:0] === 1'b1) ? grp_fu_200_p2 : sum_3_reg_581);

assign bitcast_ln16_fu_244_p1 = diff1_0_reg_166;

assign bitcast_ln22_fu_297_p1 = diff1_0_reg_166;

assign bitcast_ln24_fu_344_p1 = diff1_1_reg_156;

assign bitcast_ln26_fu_390_p1 = diff2_1_reg_189;

assign i_fu_274_p2 = (11'd1 + i_0_reg_144);

assign icmp_ln12_fu_232_p2 = ((ap_phi_mux_i_0_phi_fu_148_p4 == 11'd1024) ? 1'b1 : 1'b0);

assign icmp_ln16_1_fu_268_p2 = ((trunc_ln16_fu_258_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln16_fu_262_p2 = ((tmp_7_fu_248_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln22_1_fu_321_p2 = ((trunc_ln22_fu_311_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln22_fu_315_p2 = ((tmp_fu_301_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln24_1_fu_368_p2 = ((trunc_ln24_fu_358_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln24_fu_362_p2 = ((tmp_3_fu_348_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln26_1_fu_414_p2 = ((trunc_ln26_fu_404_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln26_fu_408_p2 = ((tmp_5_fu_394_p4 != 8'd255) ? 1'b1 : 1'b0);

assign or_ln16_fu_280_p2 = (icmp_ln16_reg_515 | icmp_ln16_1_reg_520);

assign or_ln22_fu_327_p2 = (icmp_ln22_reg_545 | icmp_ln22_1_reg_550);

assign or_ln24_fu_374_p2 = (icmp_ln24_reg_566 | icmp_ln24_1_reg_571);

assign or_ln26_fu_420_p2 = (icmp_ln26_reg_587 | icmp_ln26_1_reg_592);

assign sum_1_fu_336_p3 = ((and_ln22_fu_331_p2[0:0] === 1'b1) ? grp_fu_200_p2 : sum_0_reg_177);

assign sum_3_fu_383_p3 = ((and_ln24_fu_378_p2[0:0] === 1'b1) ? grp_fu_200_p2 : sum_1_reg_560);

assign sum_7_fu_289_p3 = ((and_ln16_fu_284_p2[0:0] === 1'b1) ? grp_fu_200_p2 : sum_0_reg_177);

assign tmp_3_fu_348_p4 = {{bitcast_ln24_fu_344_p1[30:23]}};

assign tmp_5_fu_394_p4 = {{bitcast_ln26_fu_390_p1[30:23]}};

assign tmp_7_fu_248_p4 = {{bitcast_ln16_fu_244_p1[30:23]}};

assign tmp_fu_301_p4 = {{bitcast_ln22_fu_297_p1[30:23]}};

assign trunc_ln16_fu_258_p1 = bitcast_ln16_fu_244_p1[22:0];

assign trunc_ln22_fu_311_p1 = bitcast_ln22_fu_297_p1[22:0];

assign trunc_ln24_fu_358_p1 = bitcast_ln24_fu_344_p1[22:0];

assign trunc_ln26_fu_404_p1 = bitcast_ln26_fu_390_p1[22:0];

assign zext_ln14_fu_238_p1 = ap_phi_mux_i_0_phi_fu_148_p4;

endmodule //kernel7