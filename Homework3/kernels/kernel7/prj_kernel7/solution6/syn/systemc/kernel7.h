// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _kernel7_HH_
#define _kernel7_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "kernel7_faddfsub_bkb.h"
#include "kernel7_fcmp_32nscud.h"
#include "kernel7_mux_432_3dEe.h"

namespace ap_rtl {

struct kernel7 : public sc_module {
    // Port declarations 31
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<8> > a_0_address0;
    sc_out< sc_logic > a_0_ce0;
    sc_in< sc_lv<32> > a_0_q0;
    sc_out< sc_lv<8> > a_1_address0;
    sc_out< sc_logic > a_1_ce0;
    sc_in< sc_lv<32> > a_1_q0;
    sc_out< sc_lv<8> > a_2_address0;
    sc_out< sc_logic > a_2_ce0;
    sc_in< sc_lv<32> > a_2_q0;
    sc_out< sc_lv<8> > a_3_address0;
    sc_out< sc_logic > a_3_ce0;
    sc_in< sc_lv<32> > a_3_q0;
    sc_out< sc_lv<8> > b_0_address0;
    sc_out< sc_logic > b_0_ce0;
    sc_in< sc_lv<32> > b_0_q0;
    sc_out< sc_lv<8> > b_1_address0;
    sc_out< sc_logic > b_1_ce0;
    sc_in< sc_lv<32> > b_1_q0;
    sc_out< sc_lv<8> > b_2_address0;
    sc_out< sc_logic > b_2_ce0;
    sc_in< sc_lv<32> > b_2_q0;
    sc_out< sc_lv<8> > b_3_address0;
    sc_out< sc_logic > b_3_ce0;
    sc_in< sc_lv<32> > b_3_q0;
    sc_out< sc_lv<32> > ap_return;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_lv<5> > ap_var_for_const1;


    // Module declarations
    kernel7(sc_module_name name);
    SC_HAS_PROCESS(kernel7);

    ~kernel7();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    kernel7_faddfsub_bkb<1,4,32,32,32>* kernel7_faddfsub_bkb_U1;
    kernel7_fcmp_32nscud<1,2,32,32,1>* kernel7_fcmp_32nscud_U2;
    kernel7_mux_432_3dEe<1,1,32,32,32,32,32,32>* kernel7_mux_432_3dEe_U3;
    kernel7_mux_432_3dEe<1,1,32,32,32,32,32,32>* kernel7_mux_432_3dEe_U4;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > sum_0_reg_176;
    sc_signal< sc_lv<11> > i_0_reg_188;
    sc_signal< sc_lv<1> > icmp_ln6_fu_208_p2;
    sc_signal< sc_lv<1> > icmp_ln6_reg_361;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state10_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln6_reg_361_pp0_iter1_reg;
    sc_signal< sc_lv<1> > icmp_ln6_reg_361_pp0_iter2_reg;
    sc_signal< sc_lv<11> > i_fu_214_p2;
    sc_signal< sc_lv<11> > i_reg_365;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<2> > trunc_ln8_fu_220_p1;
    sc_signal< sc_lv<2> > trunc_ln8_reg_370;
    sc_signal< sc_lv<32> > tmp_fu_249_p6;
    sc_signal< sc_lv<32> > tmp_reg_415;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< bool > ap_block_state3_pp0_stage1_iter0;
    sc_signal< bool > ap_block_state7_pp0_stage1_iter1;
    sc_signal< bool > ap_block_state11_pp0_stage1_iter2;
    sc_signal< bool > ap_block_pp0_stage1_11001;
    sc_signal< sc_lv<32> > tmp_3_fu_263_p6;
    sc_signal< sc_lv<32> > tmp_3_reg_422;
    sc_signal< sc_lv<1> > icmp_ln8_fu_311_p2;
    sc_signal< sc_lv<1> > icmp_ln8_reg_429;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage2;
    sc_signal< bool > ap_block_state4_pp0_stage2_iter0;
    sc_signal< bool > ap_block_state8_pp0_stage2_iter1;
    sc_signal< bool > ap_block_state12_pp0_stage2_iter2;
    sc_signal< bool > ap_block_pp0_stage2_11001;
    sc_signal< sc_lv<1> > icmp_ln8_1_fu_317_p2;
    sc_signal< sc_lv<1> > icmp_ln8_1_reg_434;
    sc_signal< sc_lv<1> > icmp_ln8_2_fu_323_p2;
    sc_signal< sc_lv<1> > icmp_ln8_2_reg_439;
    sc_signal< sc_lv<1> > icmp_ln8_3_fu_329_p2;
    sc_signal< sc_lv<1> > icmp_ln8_3_reg_444;
    sc_signal< sc_lv<1> > grp_fu_204_p2;
    sc_signal< sc_lv<1> > tmp_6_reg_449;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage3;
    sc_signal< bool > ap_block_state5_pp0_stage3_iter0;
    sc_signal< bool > ap_block_state9_pp0_stage3_iter1;
    sc_signal< bool > ap_block_pp0_stage3_11001;
    sc_signal< sc_lv<32> > grp_fu_199_p2;
    sc_signal< sc_lv<32> > tmp_1_reg_454;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_lv<1> > and_ln8_1_fu_349_p2;
    sc_signal< sc_lv<1> > and_ln8_1_reg_459;
    sc_signal< sc_lv<32> > sum_1_fu_354_p3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< bool > ap_block_pp0_stage3_subdone;
    sc_signal< bool > ap_block_pp0_stage2_subdone;
    sc_signal< sc_lv<11> > ap_phi_mux_i_0_phi_fu_192_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<64> > zext_ln8_1_fu_234_p1;
    sc_signal< sc_lv<32> > grp_fu_199_p0;
    sc_signal< sc_lv<32> > grp_fu_199_p1;
    sc_signal< bool > ap_block_pp0_stage2;
    sc_signal< bool > ap_block_pp0_stage3;
    sc_signal< sc_lv<9> > lshr_ln8_fu_224_p4;
    sc_signal< bool > ap_block_pp0_stage1;
    sc_signal< sc_lv<32> > zext_ln8_fu_246_p1;
    sc_signal< sc_lv<32> > bitcast_ln8_fu_277_p1;
    sc_signal< sc_lv<32> > bitcast_ln8_1_fu_294_p1;
    sc_signal< sc_lv<8> > tmp_4_fu_280_p4;
    sc_signal< sc_lv<23> > trunc_ln8_1_fu_290_p1;
    sc_signal< sc_lv<8> > tmp_5_fu_297_p4;
    sc_signal< sc_lv<23> > trunc_ln8_2_fu_307_p1;
    sc_signal< sc_lv<1> > or_ln8_fu_335_p2;
    sc_signal< sc_lv<1> > or_ln8_1_fu_339_p2;
    sc_signal< sc_lv<1> > and_ln8_fu_343_p2;
    sc_signal< sc_lv<2> > grp_fu_199_opcode;
    sc_signal< bool > ap_block_pp0_stage3_00001;
    sc_signal< bool > ap_block_pp0_stage2_00001;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    sc_signal< bool > ap_block_pp0_stage1_subdone;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_pp0_stage0;
    static const sc_lv<6> ap_ST_fsm_pp0_stage1;
    static const sc_lv<6> ap_ST_fsm_pp0_stage2;
    static const sc_lv<6> ap_ST_fsm_pp0_stage3;
    static const sc_lv<6> ap_ST_fsm_state13;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<11> ap_const_lv11_400;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<23> ap_const_lv23_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<5> ap_const_lv5_2;
    static const sc_lv<32> ap_const_lv32_5;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_clk_no_reset_();
    void thread_a_0_address0();
    void thread_a_0_ce0();
    void thread_a_1_address0();
    void thread_a_1_ce0();
    void thread_a_2_address0();
    void thread_a_2_ce0();
    void thread_a_3_address0();
    void thread_a_3_ce0();
    void thread_and_ln8_1_fu_349_p2();
    void thread_and_ln8_fu_343_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_pp0_stage2();
    void thread_ap_CS_fsm_pp0_stage3();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state13();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp0_stage1();
    void thread_ap_block_pp0_stage1_11001();
    void thread_ap_block_pp0_stage1_subdone();
    void thread_ap_block_pp0_stage2();
    void thread_ap_block_pp0_stage2_00001();
    void thread_ap_block_pp0_stage2_11001();
    void thread_ap_block_pp0_stage2_subdone();
    void thread_ap_block_pp0_stage3();
    void thread_ap_block_pp0_stage3_00001();
    void thread_ap_block_pp0_stage3_11001();
    void thread_ap_block_pp0_stage3_subdone();
    void thread_ap_block_state10_pp0_stage0_iter2();
    void thread_ap_block_state11_pp0_stage1_iter2();
    void thread_ap_block_state12_pp0_stage2_iter2();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage1_iter0();
    void thread_ap_block_state4_pp0_stage2_iter0();
    void thread_ap_block_state5_pp0_stage3_iter0();
    void thread_ap_block_state6_pp0_stage0_iter1();
    void thread_ap_block_state7_pp0_stage1_iter1();
    void thread_ap_block_state8_pp0_stage2_iter1();
    void thread_ap_block_state9_pp0_stage3_iter1();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_i_0_phi_fu_192_p4();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_b_0_address0();
    void thread_b_0_ce0();
    void thread_b_1_address0();
    void thread_b_1_ce0();
    void thread_b_2_address0();
    void thread_b_2_ce0();
    void thread_b_3_address0();
    void thread_b_3_ce0();
    void thread_bitcast_ln8_1_fu_294_p1();
    void thread_bitcast_ln8_fu_277_p1();
    void thread_grp_fu_199_opcode();
    void thread_grp_fu_199_p0();
    void thread_grp_fu_199_p1();
    void thread_i_fu_214_p2();
    void thread_icmp_ln6_fu_208_p2();
    void thread_icmp_ln8_1_fu_317_p2();
    void thread_icmp_ln8_2_fu_323_p2();
    void thread_icmp_ln8_3_fu_329_p2();
    void thread_icmp_ln8_fu_311_p2();
    void thread_lshr_ln8_fu_224_p4();
    void thread_or_ln8_1_fu_339_p2();
    void thread_or_ln8_fu_335_p2();
    void thread_sum_1_fu_354_p3();
    void thread_tmp_4_fu_280_p4();
    void thread_tmp_5_fu_297_p4();
    void thread_trunc_ln8_1_fu_290_p1();
    void thread_trunc_ln8_2_fu_307_p1();
    void thread_trunc_ln8_fu_220_p1();
    void thread_zext_ln8_1_fu_234_p1();
    void thread_zext_ln8_fu_246_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif