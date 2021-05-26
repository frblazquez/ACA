// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dct_1d2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        src_address0,
        src_ce0,
        src_q0,
        src_offset,
        dst_address0,
        dst_ce0,
        dst_we0,
        dst_d0,
        dst_offset
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state6 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] src_address0;
output   src_ce0;
input  [15:0] src_q0;
input  [3:0] src_offset;
output  [5:0] dst_address0;
output   dst_ce0;
output   dst_we0;
output  [15:0] dst_d0;
input  [3:0] dst_offset;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg src_ce0;
reg dst_ce0;
reg dst_we0;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [5:0] dct_coeff_table_address0;
reg    dct_coeff_table_ce0;
wire   [14:0] dct_coeff_table_q0;
reg   [3:0] n_0_reg_117;
reg   [31:0] tmp_0_reg_128;
wire   [7:0] zext_ln61_fu_148_p1;
reg   [7:0] zext_ln61_reg_273;
wire   [7:0] zext_ln48_fu_160_p1;
reg   [7:0] zext_ln48_reg_278;
wire   [0:0] icmp_ln55_fu_164_p2;
wire    ap_CS_fsm_state2;
wire   [3:0] k_fu_170_p2;
reg   [3:0] k_reg_287;
wire   [7:0] zext_ln63_fu_188_p1;
reg   [7:0] zext_ln63_reg_292;
reg   [5:0] dst_addr_reg_297;
wire   [0:0] icmp_ln57_fu_202_p2;
reg   [0:0] icmp_ln57_reg_302;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state3_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln57_reg_302_pp0_iter1_reg;
wire   [3:0] n_fu_208_p2;
reg    ap_enable_reg_pp0_iter0;
reg  signed [14:0] dct_coeff_table_load_reg_321;
reg  signed [15:0] src_load_reg_326;
wire  signed [31:0] grp_fu_265_p3;
reg    ap_enable_reg_pp0_iter2;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg    ap_enable_reg_pp0_iter1;
reg   [3:0] k_0_reg_106;
wire    ap_CS_fsm_state6;
wire   [63:0] zext_ln63_1_fu_197_p1;
wire   [63:0] zext_ln60_2_fu_223_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln61_1_fu_233_p1;
wire   [6:0] tmp_4_fu_140_p3;
wire   [6:0] tmp_5_fu_152_p3;
wire   [6:0] tmp_8_fu_180_p3;
wire   [7:0] zext_ln60_fu_176_p1;
wire   [7:0] add_ln63_1_fu_192_p2;
wire   [7:0] zext_ln60_1_fu_214_p1;
wire   [7:0] add_ln60_fu_218_p2;
wire   [7:0] add_ln61_fu_228_p2;
wire   [28:0] trunc_ln57_fu_244_p1;
wire   [28:0] add_ln63_fu_248_p2;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

dct_1d2_dct_coeffbkb #(
    .DataWidth( 15 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
dct_coeff_table_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_coeff_table_address0),
    .ce0(dct_coeff_table_ce0),
    .q0(dct_coeff_table_q0)
);

dct_mac_muladd_15cud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 15 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
dct_mac_muladd_15cud_U1(
    .din0(dct_coeff_table_load_reg_321),
    .din1(src_load_reg_326),
    .din2(tmp_0_reg_128),
    .dout(grp_fu_265_p3)
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
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((icmp_ln55_fu_164_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state3)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((icmp_ln55_fu_164_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        k_0_reg_106 <= k_reg_287;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        k_0_reg_106 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln57_fu_202_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        n_0_reg_117 <= n_fu_208_p2;
    end else if (((icmp_ln55_fu_164_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        n_0_reg_117 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln57_reg_302_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        tmp_0_reg_128 <= grp_fu_265_p3;
    end else if (((icmp_ln55_fu_164_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_0_reg_128 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln57_reg_302 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dct_coeff_table_load_reg_321 <= dct_coeff_table_q0;
        src_load_reg_326 <= src_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln55_fu_164_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        dst_addr_reg_297 <= zext_ln63_1_fu_197_p1;
        zext_ln63_reg_292[6 : 3] <= zext_ln63_fu_188_p1[6 : 3];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln57_reg_302 <= icmp_ln57_fu_202_p2;
        icmp_ln57_reg_302_pp0_iter1_reg <= icmp_ln57_reg_302;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        k_reg_287 <= k_fu_170_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        zext_ln48_reg_278[6 : 3] <= zext_ln48_fu_160_p1[6 : 3];
        zext_ln61_reg_273[6 : 3] <= zext_ln61_fu_148_p1[6 : 3];
    end
end

always @ (*) begin
    if ((icmp_ln57_fu_202_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln55_fu_164_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln55_fu_164_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dct_coeff_table_ce0 = 1'b1;
    end else begin
        dct_coeff_table_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        dst_ce0 = 1'b1;
    end else begin
        dst_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        dst_we0 = 1'b1;
    end else begin
        dst_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        src_ce0 = 1'b1;
    end else begin
        src_ce0 = 1'b0;
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
            if (((icmp_ln55_fu_164_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((icmp_ln57_fu_202_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) & ~((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((icmp_ln57_fu_202_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln60_fu_218_p2 = (zext_ln63_reg_292 + zext_ln60_1_fu_214_p1);

assign add_ln61_fu_228_p2 = (zext_ln48_reg_278 + zext_ln60_1_fu_214_p1);

assign add_ln63_1_fu_192_p2 = (zext_ln60_fu_176_p1 + zext_ln61_reg_273);

assign add_ln63_fu_248_p2 = (29'd4096 + trunc_ln57_fu_244_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign dct_coeff_table_address0 = zext_ln60_2_fu_223_p1;

assign dst_address0 = dst_addr_reg_297;

assign dst_d0 = {{add_ln63_fu_248_p2[28:13]}};

assign icmp_ln55_fu_164_p2 = ((k_0_reg_106 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln57_fu_202_p2 = ((n_0_reg_117 == 4'd8) ? 1'b1 : 1'b0);

assign k_fu_170_p2 = (k_0_reg_106 + 4'd1);

assign n_fu_208_p2 = (n_0_reg_117 + 4'd1);

assign src_address0 = zext_ln61_1_fu_233_p1;

assign tmp_4_fu_140_p3 = {{dst_offset}, {3'd0}};

assign tmp_5_fu_152_p3 = {{src_offset}, {3'd0}};

assign tmp_8_fu_180_p3 = {{k_0_reg_106}, {3'd0}};

assign trunc_ln57_fu_244_p1 = tmp_0_reg_128[28:0];

assign zext_ln48_fu_160_p1 = tmp_5_fu_152_p3;

assign zext_ln60_1_fu_214_p1 = n_0_reg_117;

assign zext_ln60_2_fu_223_p1 = add_ln60_fu_218_p2;

assign zext_ln60_fu_176_p1 = k_0_reg_106;

assign zext_ln61_1_fu_233_p1 = add_ln61_fu_228_p2;

assign zext_ln61_fu_148_p1 = tmp_4_fu_140_p3;

assign zext_ln63_1_fu_197_p1 = add_ln63_1_fu_192_p2;

assign zext_ln63_fu_188_p1 = tmp_8_fu_180_p3;

always @ (posedge ap_clk) begin
    zext_ln61_reg_273[2:0] <= 3'b000;
    zext_ln61_reg_273[7] <= 1'b0;
    zext_ln48_reg_278[2:0] <= 3'b000;
    zext_ln48_reg_278[7] <= 1'b0;
    zext_ln63_reg_292[2:0] <= 3'b000;
    zext_ln63_reg_292[7] <= 1'b0;
end

endmodule //dct_1d2
