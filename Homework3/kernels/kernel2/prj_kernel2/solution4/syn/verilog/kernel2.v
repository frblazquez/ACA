// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="kernel2,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160t-fbg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.113000,HLS_SYN_LAT=2045,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=3,HLS_SYN_FF=112,HLS_SYN_LUT=190,HLS_VERSION=2019_2}" *)

module kernel2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        array_r_address0,
        array_r_ce0,
        array_r_q0,
        array_r_address1,
        array_r_ce1,
        array_r_we1,
        array_r_d1,
        array_r_q1
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] array_r_address0;
output   array_r_ce0;
input  [31:0] array_r_q0;
output  [9:0] array_r_address1;
output   array_r_ce1;
output   array_r_we1;
output  [31:0] array_r_d1;
input  [31:0] array_r_q1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] array_r_address0;
reg array_r_ce0;
reg[9:0] array_r_address1;
reg array_r_ce1;
reg array_r_we1;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln9_fu_117_p2;
wire   [31:0] mul_ln11_fu_134_p2;
reg   [31:0] mul_ln11_reg_185;
wire    ap_CS_fsm_state4;
wire   [10:0] i_fu_151_p2;
reg  signed [31:0] aux3_1_reg_85;
reg   [10:0] i_0_reg_95;
reg  signed [31:0] aux3_0_reg_107;
wire   [63:0] zext_ln10_fu_129_p1;
wire   [63:0] zext_ln11_fu_146_p1;
wire   [10:0] add_ln10_fu_123_p2;
wire    ap_CS_fsm_state5;
reg   [4:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        aux3_0_reg_107 <= aux3_1_reg_85;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        aux3_0_reg_107 <= array_r_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_0_reg_95 <= i_fu_151_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        i_0_reg_95 <= 11'd3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2))) begin
        aux3_1_reg_85 <= array_r_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln9_fu_117_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        mul_ln11_reg_185 <= mul_ln11_fu_134_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
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
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        array_r_address0 = zext_ln10_fu_129_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        array_r_address0 = 64'd1;
    end else begin
        array_r_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        array_r_address1 = zext_ln11_fu_146_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        array_r_address1 = 64'd0;
    end else begin
        array_r_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        array_r_ce0 = 1'b1;
    end else begin
        array_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        array_r_ce1 = 1'b1;
    end else begin
        array_r_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        array_r_we1 = 1'b1;
    end else begin
        array_r_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln9_fu_117_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln10_fu_123_p2 = ($signed(i_0_reg_95) + $signed(11'd2047));

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign array_r_d1 = (array_r_q0 + mul_ln11_reg_185);

assign i_fu_151_p2 = (i_0_reg_95 + 11'd1);

assign icmp_ln9_fu_117_p2 = ((i_0_reg_95 == 11'd1024) ? 1'b1 : 1'b0);

assign mul_ln11_fu_134_p2 = ($signed(aux3_1_reg_85) * $signed(aux3_0_reg_107));

assign zext_ln10_fu_129_p1 = add_ln10_fu_123_p2;

assign zext_ln11_fu_146_p1 = i_0_reg_95;

endmodule //kernel2
