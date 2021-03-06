// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="kernel7,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160t-fbg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.348000,HLS_SYN_LAT=4104,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=2,HLS_SYN_FF=525,HLS_SYN_LUT=624,HLS_VERSION=2019_2}" *)

module kernel7 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a_0_address0,
        a_0_ce0,
        a_0_q0,
        a_1_address0,
        a_1_ce0,
        a_1_q0,
        a_2_address0,
        a_2_ce0,
        a_2_q0,
        a_3_address0,
        a_3_ce0,
        a_3_q0,
        b_0_address0,
        b_0_ce0,
        b_0_q0,
        b_1_address0,
        b_1_ce0,
        b_1_q0,
        b_2_address0,
        b_2_ce0,
        b_2_q0,
        b_3_address0,
        b_3_ce0,
        b_3_q0,
        ap_return
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_pp0_stage0 = 6'd2;
parameter    ap_ST_fsm_pp0_stage1 = 6'd4;
parameter    ap_ST_fsm_pp0_stage2 = 6'd8;
parameter    ap_ST_fsm_pp0_stage3 = 6'd16;
parameter    ap_ST_fsm_state13 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] a_0_address0;
output   a_0_ce0;
input  [31:0] a_0_q0;
output  [7:0] a_1_address0;
output   a_1_ce0;
input  [31:0] a_1_q0;
output  [7:0] a_2_address0;
output   a_2_ce0;
input  [31:0] a_2_q0;
output  [7:0] a_3_address0;
output   a_3_ce0;
input  [31:0] a_3_q0;
output  [7:0] b_0_address0;
output   b_0_ce0;
input  [31:0] b_0_q0;
output  [7:0] b_1_address0;
output   b_1_ce0;
input  [31:0] b_1_q0;
output  [7:0] b_2_address0;
output   b_2_ce0;
input  [31:0] b_2_q0;
output  [7:0] b_3_address0;
output   b_3_ce0;
input  [31:0] b_3_q0;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg a_0_ce0;
reg a_1_ce0;
reg a_2_ce0;
reg a_3_ce0;
reg b_0_ce0;
reg b_1_ce0;
reg b_2_ce0;
reg b_3_ce0;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] sum_0_reg_176;
reg   [10:0] i_0_reg_188;
wire   [0:0] icmp_ln6_fu_208_p2;
reg   [0:0] icmp_ln6_reg_361;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state6_pp0_stage0_iter1;
wire    ap_block_state10_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln6_reg_361_pp0_iter1_reg;
reg   [0:0] icmp_ln6_reg_361_pp0_iter2_reg;
wire   [10:0] i_fu_214_p2;
reg   [10:0] i_reg_365;
reg    ap_enable_reg_pp0_iter0;
wire   [1:0] trunc_ln8_fu_220_p1;
reg   [1:0] trunc_ln8_reg_370;
wire   [31:0] tmp_fu_249_p6;
reg   [31:0] tmp_reg_415;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state3_pp0_stage1_iter0;
wire    ap_block_state7_pp0_stage1_iter1;
wire    ap_block_state11_pp0_stage1_iter2;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] tmp_3_fu_263_p6;
reg   [31:0] tmp_3_reg_422;
wire   [0:0] icmp_ln8_fu_311_p2;
reg   [0:0] icmp_ln8_reg_429;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_state4_pp0_stage2_iter0;
wire    ap_block_state8_pp0_stage2_iter1;
wire    ap_block_state12_pp0_stage2_iter2;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] icmp_ln8_1_fu_317_p2;
reg   [0:0] icmp_ln8_1_reg_434;
wire   [0:0] icmp_ln8_2_fu_323_p2;
reg   [0:0] icmp_ln8_2_reg_439;
wire   [0:0] icmp_ln8_3_fu_329_p2;
reg   [0:0] icmp_ln8_3_reg_444;
wire   [0:0] grp_fu_204_p2;
reg   [0:0] tmp_6_reg_449;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_state5_pp0_stage3_iter0;
wire    ap_block_state9_pp0_stage3_iter1;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] grp_fu_199_p2;
reg   [31:0] tmp_1_reg_454;
reg    ap_enable_reg_pp0_iter1;
wire   [0:0] and_ln8_1_fu_349_p2;
reg   [0:0] and_ln8_1_reg_459;
wire   [31:0] sum_1_fu_354_p3;
reg    ap_enable_reg_pp0_iter2;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage2_subdone;
reg   [10:0] ap_phi_mux_i_0_phi_fu_192_p4;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln8_1_fu_234_p1;
reg   [31:0] grp_fu_199_p0;
reg   [31:0] grp_fu_199_p1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
wire   [8:0] lshr_ln8_fu_224_p4;
wire    ap_block_pp0_stage1;
wire   [31:0] zext_ln8_fu_246_p1;
wire   [31:0] bitcast_ln8_fu_277_p1;
wire   [31:0] bitcast_ln8_1_fu_294_p1;
wire   [7:0] tmp_4_fu_280_p4;
wire   [22:0] trunc_ln8_1_fu_290_p1;
wire   [7:0] tmp_5_fu_297_p4;
wire   [22:0] trunc_ln8_2_fu_307_p1;
wire   [0:0] or_ln8_fu_335_p2;
wire   [0:0] or_ln8_1_fu_339_p2;
wire   [0:0] and_ln8_fu_343_p2;
reg   [1:0] grp_fu_199_opcode;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_CS_fsm_state13;
reg   [5:0] ap_NS_fsm;
wire    ap_block_pp0_stage1_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
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
    .din0(grp_fu_199_p0),
    .din1(grp_fu_199_p1),
    .opcode(grp_fu_199_opcode),
    .ce(1'b1),
    .dout(grp_fu_199_p2)
);

kernel7_fcmp_32nscud #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
kernel7_fcmp_32nscud_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_reg_415),
    .din1(tmp_3_reg_422),
    .ce(1'b1),
    .opcode(5'd2),
    .dout(grp_fu_204_p2)
);

kernel7_mux_432_3dEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
kernel7_mux_432_3dEe_U3(
    .din0(a_0_q0),
    .din1(a_1_q0),
    .din2(a_2_q0),
    .din3(a_3_q0),
    .din4(zext_ln8_fu_246_p1),
    .dout(tmp_fu_249_p6)
);

kernel7_mux_432_3dEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
kernel7_mux_432_3dEe_U4(
    .din0(b_0_q0),
    .din1(b_1_q0),
    .din2(b_2_q0),
    .din3(b_3_q0),
    .din4(zext_ln8_fu_246_p1),
    .dout(tmp_3_fu_263_p6)
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
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
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln6_reg_361 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        i_0_reg_188 <= i_reg_365;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_reg_188 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln6_reg_361_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        sum_0_reg_176 <= sum_1_fu_354_p3;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        sum_0_reg_176 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln6_reg_361_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        and_ln8_1_reg_459 <= and_ln8_1_fu_349_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_365 <= i_fu_214_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln6_reg_361 <= icmp_ln6_fu_208_p2;
        icmp_ln6_reg_361_pp0_iter1_reg <= icmp_ln6_reg_361;
        icmp_ln6_reg_361_pp0_iter2_reg <= icmp_ln6_reg_361_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln6_reg_361 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        icmp_ln8_1_reg_434 <= icmp_ln8_1_fu_317_p2;
        icmp_ln8_2_reg_439 <= icmp_ln8_2_fu_323_p2;
        icmp_ln8_3_reg_444 <= icmp_ln8_3_fu_329_p2;
        icmp_ln8_reg_429 <= icmp_ln8_fu_311_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln6_reg_361_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        tmp_1_reg_454 <= grp_fu_199_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln6_reg_361 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        tmp_3_reg_422 <= tmp_3_fu_263_p6;
        tmp_reg_415 <= tmp_fu_249_p6;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln6_reg_361 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        tmp_6_reg_449 <= grp_fu_204_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln6_fu_208_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln8_reg_370 <= trunc_ln8_fu_220_p1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_0_ce0 = 1'b1;
    end else begin
        a_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_1_ce0 = 1'b1;
    end else begin
        a_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_2_ce0 = 1'b1;
    end else begin
        a_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_3_ce0 = 1'b1;
    end else begin
        a_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln6_fu_208_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
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
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln6_reg_361 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_mux_i_0_phi_fu_192_p4 = i_reg_365;
    end else begin
        ap_phi_mux_i_0_phi_fu_192_p4 = i_0_reg_188;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_0_ce0 = 1'b1;
    end else begin
        b_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_1_ce0 = 1'b1;
    end else begin
        b_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_2_ce0 = 1'b1;
    end else begin
        b_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_3_ce0 = 1'b1;
    end else begin
        b_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln6_reg_361 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_199_opcode = 2'd1;
    end else if (((icmp_ln6_reg_361_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'd1 == and_ln8_1_reg_459))) begin
        grp_fu_199_opcode = 2'd0;
    end else begin
        grp_fu_199_opcode = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_199_p0 = sum_0_reg_176;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_199_p0 = tmp_reg_415;
    end else begin
        grp_fu_199_p0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_199_p1 = tmp_1_reg_454;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_199_p1 = tmp_3_reg_422;
    end else begin
        grp_fu_199_p1 = 'bx;
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
            if ((~((icmp_ln6_fu_208_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((icmp_ln6_fu_208_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
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
            if ((~((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b0)) & (1'b0 == ap_block_pp0_stage2_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
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
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_0_address0 = zext_ln8_1_fu_234_p1;

assign a_1_address0 = zext_ln8_1_fu_234_p1;

assign a_2_address0 = zext_ln8_1_fu_234_p1;

assign a_3_address0 = zext_ln8_1_fu_234_p1;

assign and_ln8_1_fu_349_p2 = (tmp_6_reg_449 & and_ln8_fu_343_p2);

assign and_ln8_fu_343_p2 = (or_ln8_fu_335_p2 & or_ln8_1_fu_339_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd5];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

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

assign ap_block_state10_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage1_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage2_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage3_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage2_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage3_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_return = sum_0_reg_176;

assign b_0_address0 = zext_ln8_1_fu_234_p1;

assign b_1_address0 = zext_ln8_1_fu_234_p1;

assign b_2_address0 = zext_ln8_1_fu_234_p1;

assign b_3_address0 = zext_ln8_1_fu_234_p1;

assign bitcast_ln8_1_fu_294_p1 = tmp_3_reg_422;

assign bitcast_ln8_fu_277_p1 = tmp_reg_415;

assign i_fu_214_p2 = (ap_phi_mux_i_0_phi_fu_192_p4 + 11'd1);

assign icmp_ln6_fu_208_p2 = ((ap_phi_mux_i_0_phi_fu_192_p4 == 11'd1024) ? 1'b1 : 1'b0);

assign icmp_ln8_1_fu_317_p2 = ((trunc_ln8_1_fu_290_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln8_2_fu_323_p2 = ((tmp_5_fu_297_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln8_3_fu_329_p2 = ((trunc_ln8_2_fu_307_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln8_fu_311_p2 = ((tmp_4_fu_280_p4 != 8'd255) ? 1'b1 : 1'b0);

assign lshr_ln8_fu_224_p4 = {{ap_phi_mux_i_0_phi_fu_192_p4[10:2]}};

assign or_ln8_1_fu_339_p2 = (icmp_ln8_3_reg_444 | icmp_ln8_2_reg_439);

assign or_ln8_fu_335_p2 = (icmp_ln8_reg_429 | icmp_ln8_1_reg_434);

assign sum_1_fu_354_p3 = ((and_ln8_1_reg_459[0:0] === 1'b1) ? grp_fu_199_p2 : sum_0_reg_176);

assign tmp_4_fu_280_p4 = {{bitcast_ln8_fu_277_p1[30:23]}};

assign tmp_5_fu_297_p4 = {{bitcast_ln8_1_fu_294_p1[30:23]}};

assign trunc_ln8_1_fu_290_p1 = bitcast_ln8_fu_277_p1[22:0];

assign trunc_ln8_2_fu_307_p1 = bitcast_ln8_1_fu_294_p1[22:0];

assign trunc_ln8_fu_220_p1 = ap_phi_mux_i_0_phi_fu_192_p4[1:0];

assign zext_ln8_1_fu_234_p1 = lshr_ln8_fu_224_p4;

assign zext_ln8_fu_246_p1 = trunc_ln8_reg_370;

endmodule //kernel7
