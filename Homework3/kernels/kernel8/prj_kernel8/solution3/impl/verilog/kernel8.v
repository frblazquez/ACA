// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="kernel8,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160t-fbg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.674000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=12,HLS_SYN_FF=5198,HLS_SYN_LUT=3929,HLS_VERSION=2019_2}" *)

module kernel8 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        array_0_address0,
        array_0_ce0,
        array_0_we0,
        array_0_d0,
        array_0_q0,
        array_1_address0,
        array_1_ce0,
        array_1_we0,
        array_1_d0,
        array_1_q0,
        array_2_address0,
        array_2_ce0,
        array_2_we0,
        array_2_d0,
        array_2_q0,
        array_3_address0,
        array_3_ce0,
        array_3_we0,
        array_3_d0,
        array_3_q0,
        array_4_address0,
        array_4_ce0,
        array_4_we0,
        array_4_d0,
        array_4_q0,
        array_5_address0,
        array_5_ce0,
        array_5_we0,
        array_5_d0,
        array_5_q0,
        multiplier,
        offset
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_pp0_stage0 = 6'd2;
parameter    ap_ST_fsm_pp0_stage1 = 6'd4;
parameter    ap_ST_fsm_pp0_stage2 = 6'd8;
parameter    ap_ST_fsm_pp0_stage3 = 6'd16;
parameter    ap_ST_fsm_state41 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] array_0_address0;
output   array_0_ce0;
output   array_0_we0;
output  [31:0] array_0_d0;
input  [31:0] array_0_q0;
output  [7:0] array_1_address0;
output   array_1_ce0;
output   array_1_we0;
output  [31:0] array_1_d0;
input  [31:0] array_1_q0;
output  [7:0] array_2_address0;
output   array_2_ce0;
output   array_2_we0;
output  [31:0] array_2_d0;
input  [31:0] array_2_q0;
output  [7:0] array_3_address0;
output   array_3_ce0;
output   array_3_we0;
output  [31:0] array_3_d0;
input  [31:0] array_3_q0;
output  [7:0] array_4_address0;
output   array_4_ce0;
output   array_4_we0;
output  [31:0] array_4_d0;
input  [31:0] array_4_q0;
output  [7:0] array_5_address0;
output   array_5_ce0;
output   array_5_we0;
output  [31:0] array_5_d0;
input  [31:0] array_5_q0;
input  [31:0] multiplier;
input  [31:0] offset;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] array_0_address0;
reg array_0_ce0;
reg array_0_we0;
reg[7:0] array_1_address0;
reg array_1_ce0;
reg array_1_we0;
reg[7:0] array_2_address0;
reg array_2_ce0;
reg array_2_we0;
reg[7:0] array_3_address0;
reg array_3_ce0;
reg array_3_we0;
reg[7:0] array_4_address0;
reg array_4_ce0;
reg array_4_we0;
reg[7:0] array_5_address0;
reg array_5_ce0;
reg array_5_we0;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [30:0] i_0_reg_230;
reg   [30:0] i_0_reg_230_pp0_iter1_reg;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state6_pp0_stage0_iter1;
wire    ap_block_state10_pp0_stage0_iter2;
wire    ap_block_state14_pp0_stage0_iter3;
wire    ap_block_state18_pp0_stage0_iter4;
wire    ap_block_state22_pp0_stage0_iter5;
wire    ap_block_state26_pp0_stage0_iter6;
wire    ap_block_state30_pp0_stage0_iter7;
wire    ap_block_state34_pp0_stage0_iter8;
wire    ap_block_state38_pp0_stage0_iter9;
wire    ap_block_pp0_stage0_11001;
reg   [30:0] i_0_reg_230_pp0_iter2_reg;
reg   [30:0] i_0_reg_230_pp0_iter3_reg;
reg   [30:0] i_0_reg_230_pp0_iter4_reg;
reg   [30:0] i_0_reg_230_pp0_iter5_reg;
reg   [30:0] i_0_reg_230_pp0_iter6_reg;
reg   [30:0] i_0_reg_230_pp0_iter7_reg;
reg   [30:0] i_0_reg_230_pp0_iter8_reg;
wire   [31:0] sub_ln5_fu_259_p2;
reg   [31:0] sub_ln5_reg_380;
wire   [0:0] icmp_ln5_fu_269_p2;
reg   [0:0] icmp_ln5_reg_385;
reg   [0:0] icmp_ln5_reg_385_pp0_iter1_reg;
reg   [0:0] icmp_ln5_reg_385_pp0_iter2_reg;
reg   [0:0] icmp_ln5_reg_385_pp0_iter3_reg;
reg   [0:0] icmp_ln5_reg_385_pp0_iter4_reg;
reg   [0:0] icmp_ln5_reg_385_pp0_iter5_reg;
reg   [0:0] icmp_ln5_reg_385_pp0_iter6_reg;
reg   [0:0] icmp_ln5_reg_385_pp0_iter7_reg;
reg   [0:0] icmp_ln5_reg_385_pp0_iter8_reg;
wire   [31:0] add_ln6_1_fu_284_p2;
reg   [31:0] add_ln6_1_reg_389;
reg   [31:0] add_ln6_1_reg_389_pp0_iter1_reg;
reg   [31:0] add_ln6_1_reg_389_pp0_iter2_reg;
reg   [31:0] add_ln6_1_reg_389_pp0_iter3_reg;
reg   [31:0] add_ln6_1_reg_389_pp0_iter4_reg;
reg   [31:0] add_ln6_1_reg_389_pp0_iter5_reg;
reg   [31:0] add_ln6_1_reg_389_pp0_iter6_reg;
reg   [31:0] add_ln6_1_reg_389_pp0_iter7_reg;
reg   [31:0] add_ln6_1_reg_389_pp0_iter8_reg;
wire   [30:0] i_fu_301_p2;
reg   [30:0] i_reg_395;
wire    ap_CS_fsm_pp0_stage3;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_state5_pp0_stage3_iter0;
wire    ap_block_state9_pp0_stage3_iter1;
wire    ap_block_state13_pp0_stage3_iter2;
wire    ap_block_state17_pp0_stage3_iter3;
wire    ap_block_state21_pp0_stage3_iter4;
wire    ap_block_state25_pp0_stage3_iter5;
wire    ap_block_state29_pp0_stage3_iter6;
wire    ap_block_state33_pp0_stage3_iter7;
wire    ap_block_state37_pp0_stage3_iter8;
wire    ap_block_pp0_stage3_11001;
reg   [24:0] tmp_1_reg_400;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state3_pp0_stage1_iter0;
wire    ap_block_state7_pp0_stage1_iter1;
wire    ap_block_state11_pp0_stage1_iter2;
wire    ap_block_state15_pp0_stage1_iter3;
wire    ap_block_state19_pp0_stage1_iter4;
wire    ap_block_state23_pp0_stage1_iter5;
wire    ap_block_state27_pp0_stage1_iter6;
wire    ap_block_state31_pp0_stage1_iter7;
wire    ap_block_state35_pp0_stage1_iter8;
wire    ap_block_state39_pp0_stage1_iter9;
wire    ap_block_pp0_stage1_11001;
wire   [30:0] grp_fu_295_p2;
reg   [30:0] urem_ln6_1_reg_434;
reg    ap_enable_reg_pp0_iter9;
reg   [23:0] tmp_2_reg_469;
wire   [31:0] mul_ln6_fu_356_p2;
reg   [31:0] mul_ln6_reg_473;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_state4_pp0_stage2_iter0;
wire    ap_block_state8_pp0_stage2_iter1;
wire    ap_block_state12_pp0_stage2_iter2;
wire    ap_block_state16_pp0_stage2_iter3;
wire    ap_block_state20_pp0_stage2_iter4;
wire    ap_block_state24_pp0_stage2_iter5;
wire    ap_block_state28_pp0_stage2_iter6;
wire    ap_block_state32_pp0_stage2_iter7;
wire    ap_block_state36_pp0_stage2_iter8;
wire    ap_block_state40_pp0_stage2_iter9;
wire    ap_block_pp0_stage2_subdone;
wire    ap_CS_fsm_pp0_stage2;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg   [30:0] ap_phi_mux_i_0_phi_fu_234_p4;
wire    ap_block_pp0_stage0;
wire  signed [31:0] ap_phi_reg_pp0_iter0_phi_ln6_reg_242;
reg  signed [31:0] ap_phi_reg_pp0_iter1_phi_ln6_reg_242;
reg  signed [31:0] ap_phi_reg_pp0_iter2_phi_ln6_reg_242;
reg  signed [31:0] ap_phi_reg_pp0_iter3_phi_ln6_reg_242;
reg  signed [31:0] ap_phi_reg_pp0_iter4_phi_ln6_reg_242;
reg  signed [31:0] ap_phi_reg_pp0_iter5_phi_ln6_reg_242;
reg  signed [31:0] ap_phi_reg_pp0_iter6_phi_ln6_reg_242;
reg  signed [31:0] ap_phi_reg_pp0_iter7_phi_ln6_reg_242;
reg  signed [31:0] ap_phi_reg_pp0_iter8_phi_ln6_reg_242;
reg  signed [31:0] ap_phi_reg_pp0_iter9_phi_ln6_reg_242;
wire   [63:0] zext_ln6_fu_326_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln6_1_fu_361_p1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] zext_ln5_fu_265_p1;
wire   [30:0] add_ln6_fu_274_p2;
wire   [31:0] zext_ln6_2_fu_280_p1;
wire   [31:0] grp_fu_289_p0;
wire   [8:0] grp_fu_289_p1;
wire   [8:0] grp_fu_295_p1;
wire    ap_block_pp0_stage1;
wire   [31:0] mul_ln6_1_fu_310_p0;
wire   [64:0] mul_ln6_1_fu_310_p2;
wire   [31:0] grp_fu_289_p2;
wire   [30:0] mul_ln6_2_fu_340_p0;
wire   [62:0] mul_ln6_2_fu_340_p2;
wire  signed [31:0] mul_ln6_fu_356_p0;
wire    ap_CS_fsm_state41;
reg   [5:0] ap_NS_fsm;
wire    ap_block_pp0_stage1_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [64:0] mul_ln6_1_fu_310_p00;
wire   [62:0] mul_ln6_2_fu_340_p00;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
end

kernel8_urem_32nsbkb #(
    .ID( 1 ),
    .NUM_STAGE( 36 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 32 ))
kernel8_urem_32nsbkb_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_289_p0),
    .din1(grp_fu_289_p1),
    .ce(1'b1),
    .dout(grp_fu_289_p2)
);

kernel8_urem_31nscud #(
    .ID( 1 ),
    .NUM_STAGE( 35 ),
    .din0_WIDTH( 31 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 31 ))
kernel8_urem_31nscud_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(i_0_reg_230),
    .din1(grp_fu_295_p1),
    .ce(1'b1),
    .dout(grp_fu_295_p2)
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
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter9 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~(tmp_1_reg_400 == 25'd0) & ~(tmp_1_reg_400 == 25'd1) & ~(tmp_1_reg_400 == 25'd2) & ~(tmp_1_reg_400 == 25'd3) & ~(tmp_1_reg_400 == 25'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln5_reg_385_pp0_iter8_reg == 1'd1))) begin
        ap_phi_reg_pp0_iter9_phi_ln6_reg_242 <= array_5_q0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (tmp_1_reg_400 == 25'd4) & (icmp_ln5_reg_385_pp0_iter8_reg == 1'd1))) begin
        ap_phi_reg_pp0_iter9_phi_ln6_reg_242 <= array_4_q0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (tmp_1_reg_400 == 25'd3) & (icmp_ln5_reg_385_pp0_iter8_reg == 1'd1))) begin
        ap_phi_reg_pp0_iter9_phi_ln6_reg_242 <= array_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (tmp_1_reg_400 == 25'd2) & (icmp_ln5_reg_385_pp0_iter8_reg == 1'd1))) begin
        ap_phi_reg_pp0_iter9_phi_ln6_reg_242 <= array_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (tmp_1_reg_400 == 25'd1) & (icmp_ln5_reg_385_pp0_iter8_reg == 1'd1))) begin
        ap_phi_reg_pp0_iter9_phi_ln6_reg_242 <= array_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (tmp_1_reg_400 == 25'd0) & (icmp_ln5_reg_385_pp0_iter8_reg == 1'd1))) begin
        ap_phi_reg_pp0_iter9_phi_ln6_reg_242 <= array_0_q0;
    end else if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_phi_reg_pp0_iter9_phi_ln6_reg_242 <= ap_phi_reg_pp0_iter8_phi_ln6_reg_242;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln5_reg_385 == 1'd1))) begin
        i_0_reg_230 <= i_reg_395;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_reg_230 <= 31'd6;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln5_fu_269_p2 == 1'd1))) begin
        add_ln6_1_reg_389 <= add_ln6_1_fu_284_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln6_1_reg_389_pp0_iter1_reg <= add_ln6_1_reg_389;
        add_ln6_1_reg_389_pp0_iter2_reg <= add_ln6_1_reg_389_pp0_iter1_reg;
        add_ln6_1_reg_389_pp0_iter3_reg <= add_ln6_1_reg_389_pp0_iter2_reg;
        add_ln6_1_reg_389_pp0_iter4_reg <= add_ln6_1_reg_389_pp0_iter3_reg;
        add_ln6_1_reg_389_pp0_iter5_reg <= add_ln6_1_reg_389_pp0_iter4_reg;
        add_ln6_1_reg_389_pp0_iter6_reg <= add_ln6_1_reg_389_pp0_iter5_reg;
        add_ln6_1_reg_389_pp0_iter7_reg <= add_ln6_1_reg_389_pp0_iter6_reg;
        add_ln6_1_reg_389_pp0_iter8_reg <= add_ln6_1_reg_389_pp0_iter7_reg;
        i_0_reg_230_pp0_iter1_reg <= i_0_reg_230;
        i_0_reg_230_pp0_iter2_reg <= i_0_reg_230_pp0_iter1_reg;
        i_0_reg_230_pp0_iter3_reg <= i_0_reg_230_pp0_iter2_reg;
        i_0_reg_230_pp0_iter4_reg <= i_0_reg_230_pp0_iter3_reg;
        i_0_reg_230_pp0_iter5_reg <= i_0_reg_230_pp0_iter4_reg;
        i_0_reg_230_pp0_iter6_reg <= i_0_reg_230_pp0_iter5_reg;
        i_0_reg_230_pp0_iter7_reg <= i_0_reg_230_pp0_iter6_reg;
        i_0_reg_230_pp0_iter8_reg <= i_0_reg_230_pp0_iter7_reg;
        icmp_ln5_reg_385 <= icmp_ln5_fu_269_p2;
        icmp_ln5_reg_385_pp0_iter1_reg <= icmp_ln5_reg_385;
        icmp_ln5_reg_385_pp0_iter2_reg <= icmp_ln5_reg_385_pp0_iter1_reg;
        icmp_ln5_reg_385_pp0_iter3_reg <= icmp_ln5_reg_385_pp0_iter2_reg;
        icmp_ln5_reg_385_pp0_iter4_reg <= icmp_ln5_reg_385_pp0_iter3_reg;
        icmp_ln5_reg_385_pp0_iter5_reg <= icmp_ln5_reg_385_pp0_iter4_reg;
        icmp_ln5_reg_385_pp0_iter6_reg <= icmp_ln5_reg_385_pp0_iter5_reg;
        icmp_ln5_reg_385_pp0_iter7_reg <= icmp_ln5_reg_385_pp0_iter6_reg;
        icmp_ln5_reg_385_pp0_iter8_reg <= icmp_ln5_reg_385_pp0_iter7_reg;
        tmp_2_reg_469 <= {{mul_ln6_2_fu_340_p2[62:39]}};
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_phi_reg_pp0_iter1_phi_ln6_reg_242 <= ap_phi_reg_pp0_iter0_phi_ln6_reg_242;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_phi_reg_pp0_iter2_phi_ln6_reg_242 <= ap_phi_reg_pp0_iter1_phi_ln6_reg_242;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_phi_reg_pp0_iter3_phi_ln6_reg_242 <= ap_phi_reg_pp0_iter2_phi_ln6_reg_242;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_phi_reg_pp0_iter4_phi_ln6_reg_242 <= ap_phi_reg_pp0_iter3_phi_ln6_reg_242;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_phi_reg_pp0_iter5_phi_ln6_reg_242 <= ap_phi_reg_pp0_iter4_phi_ln6_reg_242;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_phi_reg_pp0_iter6_phi_ln6_reg_242 <= ap_phi_reg_pp0_iter5_phi_ln6_reg_242;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_phi_reg_pp0_iter7_phi_ln6_reg_242 <= ap_phi_reg_pp0_iter6_phi_ln6_reg_242;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_phi_reg_pp0_iter8_phi_ln6_reg_242 <= ap_phi_reg_pp0_iter7_phi_ln6_reg_242;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln5_reg_385 == 1'd1))) begin
        i_reg_395 <= i_fu_301_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        mul_ln6_reg_473 <= mul_ln6_fu_356_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        sub_ln5_reg_380 <= sub_ln5_fu_259_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln5_reg_385_pp0_iter8_reg == 1'd1))) begin
        tmp_1_reg_400 <= {{mul_ln6_1_fu_310_p2[64:40]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        urem_ln6_1_reg_434 <= grp_fu_295_p2;
    end
end

always @ (*) begin
    if ((icmp_ln5_fu_269_p2 == 1'd0)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
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
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln5_reg_385 == 1'd1))) begin
        ap_phi_mux_i_0_phi_fu_234_p4 = i_reg_395;
    end else begin
        ap_phi_mux_i_0_phi_fu_234_p4 = i_0_reg_230;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        array_0_address0 = zext_ln6_1_fu_361_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        array_0_address0 = zext_ln6_fu_326_p1;
    end else begin
        array_0_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)))) begin
        array_0_ce0 = 1'b1;
    end else begin
        array_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (tmp_2_reg_469 == 24'd0) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        array_0_we0 = 1'b1;
    end else begin
        array_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        array_1_address0 = zext_ln6_1_fu_361_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        array_1_address0 = zext_ln6_fu_326_p1;
    end else begin
        array_1_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)))) begin
        array_1_ce0 = 1'b1;
    end else begin
        array_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (tmp_2_reg_469 == 24'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        array_1_we0 = 1'b1;
    end else begin
        array_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        array_2_address0 = zext_ln6_1_fu_361_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        array_2_address0 = zext_ln6_fu_326_p1;
    end else begin
        array_2_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)))) begin
        array_2_ce0 = 1'b1;
    end else begin
        array_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (tmp_2_reg_469 == 24'd2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        array_2_we0 = 1'b1;
    end else begin
        array_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        array_3_address0 = zext_ln6_1_fu_361_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        array_3_address0 = zext_ln6_fu_326_p1;
    end else begin
        array_3_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)))) begin
        array_3_ce0 = 1'b1;
    end else begin
        array_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (tmp_2_reg_469 == 24'd3) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        array_3_we0 = 1'b1;
    end else begin
        array_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        array_4_address0 = zext_ln6_1_fu_361_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        array_4_address0 = zext_ln6_fu_326_p1;
    end else begin
        array_4_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)))) begin
        array_4_ce0 = 1'b1;
    end else begin
        array_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (tmp_2_reg_469 == 24'd4) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        array_4_we0 = 1'b1;
    end else begin
        array_4_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        array_5_address0 = zext_ln6_1_fu_361_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        array_5_address0 = zext_ln6_fu_326_p1;
    end else begin
        array_5_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)))) begin
        array_5_ce0 = 1'b1;
    end else begin
        array_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~(tmp_2_reg_469 == 24'd0) & ~(tmp_2_reg_469 == 24'd1) & ~(tmp_2_reg_469 == 24'd2) & ~(tmp_2_reg_469 == 24'd3) & ~(tmp_2_reg_469 == 24'd4) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        array_5_we0 = 1'b1;
    end else begin
        array_5_we0 = 1'b0;
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
            if ((~((ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln5_fu_269_p2 == 1'd0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln5_fu_269_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state41;
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
            if ((~((ap_enable_reg_pp0_iter8 == 1'b0) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1)) & (1'b0 == ap_block_pp0_stage2_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else if (((ap_enable_reg_pp0_iter8 == 1'b0) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state41;
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
        ap_ST_fsm_state41 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln6_1_fu_284_p2 = (offset + zext_ln6_2_fu_280_p1);

assign add_ln6_fu_274_p2 = ($signed(ap_phi_mux_i_0_phi_fu_234_p4) + $signed(31'd2147483642));

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state41 = ap_CS_fsm[32'd5];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage1_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage2_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage3_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage1_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage2_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage3_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage1_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage2_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage3_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage1_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage2_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state25_pp0_stage3_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state26_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state27_pp0_stage1_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state28_pp0_stage2_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state29_pp0_stage3_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state30_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state31_pp0_stage1_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state32_pp0_stage2_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state33_pp0_stage3_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state34_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_block_state35_pp0_stage1_iter8 = ~(1'b1 == 1'b1);

assign ap_block_state36_pp0_stage2_iter8 = ~(1'b1 == 1'b1);

assign ap_block_state37_pp0_stage3_iter8 = ~(1'b1 == 1'b1);

assign ap_block_state38_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state39_pp0_stage1_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state40_pp0_stage2_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage3_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage2_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage3_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_phi_reg_pp0_iter0_phi_ln6_reg_242 = 'bx;

assign array_0_d0 = mul_ln6_reg_473;

assign array_1_d0 = mul_ln6_reg_473;

assign array_2_d0 = mul_ln6_reg_473;

assign array_3_d0 = mul_ln6_reg_473;

assign array_4_d0 = mul_ln6_reg_473;

assign array_5_d0 = mul_ln6_reg_473;

assign grp_fu_289_p0 = (offset + zext_ln6_2_fu_280_p1);

assign grp_fu_289_p1 = 32'd171;

assign grp_fu_295_p1 = 31'd171;

assign i_fu_301_p2 = (i_0_reg_230 + 31'd1);

assign icmp_ln5_fu_269_p2 = (($signed(zext_ln5_fu_265_p1) < $signed(sub_ln5_reg_380)) ? 1'b1 : 1'b0);

assign mul_ln6_1_fu_310_p0 = mul_ln6_1_fu_310_p00;

assign mul_ln6_1_fu_310_p00 = add_ln6_1_reg_389_pp0_iter8_reg;

assign mul_ln6_1_fu_310_p2 = (mul_ln6_1_fu_310_p0 * $signed(65'h17F405FD1));

assign mul_ln6_2_fu_340_p0 = mul_ln6_2_fu_340_p00;

assign mul_ln6_2_fu_340_p00 = i_0_reg_230_pp0_iter8_reg;

assign mul_ln6_2_fu_340_p2 = (mul_ln6_2_fu_340_p0 * ('hBFA02FE9));

assign mul_ln6_fu_356_p0 = multiplier;

assign mul_ln6_fu_356_p2 = ($signed(mul_ln6_fu_356_p0) * $signed(ap_phi_reg_pp0_iter9_phi_ln6_reg_242));

assign sub_ln5_fu_259_p2 = (32'd1023 - offset);

assign zext_ln5_fu_265_p1 = ap_phi_mux_i_0_phi_fu_234_p4;

assign zext_ln6_1_fu_361_p1 = urem_ln6_1_reg_434;

assign zext_ln6_2_fu_280_p1 = add_ln6_fu_274_p2;

assign zext_ln6_fu_326_p1 = grp_fu_289_p2;

endmodule //kernel8
