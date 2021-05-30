// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _kernel3_HH_
#define _kernel3_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "kernel3_fadd_32nsbkb.h"

namespace ap_rtl {

struct kernel3 : public sc_module {
    // Port declarations 17
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<10> > hist_address0;
    sc_out< sc_logic > hist_ce0;
    sc_out< sc_logic > hist_we0;
    sc_out< sc_lv<32> > hist_d0;
    sc_in< sc_lv<32> > hist_q0;
    sc_out< sc_lv<10> > weight_address0;
    sc_out< sc_logic > weight_ce0;
    sc_in< sc_lv<32> > weight_q0;
    sc_out< sc_lv<10> > index_address0;
    sc_out< sc_logic > index_ce0;
    sc_in< sc_lv<32> > index_q0;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    kernel3(sc_module_name name);
    SC_HAS_PROCESS(kernel3);

    ~kernel3();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    kernel3_fadd_32nsbkb<1,4,32,32,32>* kernel3_fadd_32nsbkb_U1;
    sc_signal< sc_lv<9> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<11> > i_0_reg_81;
    sc_signal< sc_lv<1> > icmp_ln5_fu_96_p2;
    sc_signal< sc_lv<1> > icmp_ln5_reg_119;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state9_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<11> > i_fu_102_p2;
    sc_signal< sc_lv<11> > i_reg_123;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<10> > hist_addr_reg_138;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< bool > ap_block_state3_pp0_stage1_iter0;
    sc_signal< bool > ap_block_pp0_stage1_11001;
    sc_signal< sc_lv<32> > weight_load_reg_143;
    sc_signal< sc_lv<32> > hist_load_reg_148;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage2;
    sc_signal< bool > ap_block_state4_pp0_stage2_iter0;
    sc_signal< bool > ap_block_pp0_stage2_11001;
    sc_signal< sc_lv<32> > grp_fu_92_p2;
    sc_signal< sc_lv<32> > tmp_reg_153;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage6;
    sc_signal< bool > ap_block_state8_pp0_stage6_iter0;
    sc_signal< bool > ap_block_pp0_stage6_11001;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage6_subdone;
    sc_signal< sc_lv<11> > ap_phi_mux_i_0_phi_fu_85_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<64> > zext_ln6_fu_108_p1;
    sc_signal< sc_lv<64> > sext_ln6_fu_114_p1;
    sc_signal< bool > ap_block_pp0_stage1;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage3;
    sc_signal< bool > ap_block_pp0_stage3;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<9> > ap_NS_fsm;
    sc_signal< bool > ap_block_pp0_stage1_subdone;
    sc_signal< bool > ap_block_pp0_stage2_subdone;
    sc_signal< bool > ap_block_state5_pp0_stage3_iter0;
    sc_signal< bool > ap_block_pp0_stage3_subdone;
    sc_signal< bool > ap_block_pp0_stage3_11001;
    sc_signal< bool > ap_block_state6_pp0_stage4_iter0;
    sc_signal< bool > ap_block_pp0_stage4_subdone;
    sc_signal< bool > ap_block_pp0_stage4_11001;
    sc_signal< bool > ap_block_state7_pp0_stage5_iter0;
    sc_signal< bool > ap_block_pp0_stage5_subdone;
    sc_signal< bool > ap_block_pp0_stage5_11001;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<9> ap_ST_fsm_state1;
    static const sc_lv<9> ap_ST_fsm_pp0_stage0;
    static const sc_lv<9> ap_ST_fsm_pp0_stage1;
    static const sc_lv<9> ap_ST_fsm_pp0_stage2;
    static const sc_lv<9> ap_ST_fsm_pp0_stage3;
    static const sc_lv<9> ap_ST_fsm_pp0_stage4;
    static const sc_lv<9> ap_ST_fsm_pp0_stage5;
    static const sc_lv<9> ap_ST_fsm_pp0_stage6;
    static const sc_lv<9> ap_ST_fsm_state10;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<11> ap_const_lv11_400;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<32> ap_const_lv32_8;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_pp0_stage2();
    void thread_ap_CS_fsm_pp0_stage3();
    void thread_ap_CS_fsm_pp0_stage6();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp0_stage1();
    void thread_ap_block_pp0_stage1_11001();
    void thread_ap_block_pp0_stage1_subdone();
    void thread_ap_block_pp0_stage2_11001();
    void thread_ap_block_pp0_stage2_subdone();
    void thread_ap_block_pp0_stage3();
    void thread_ap_block_pp0_stage3_11001();
    void thread_ap_block_pp0_stage3_subdone();
    void thread_ap_block_pp0_stage4_11001();
    void thread_ap_block_pp0_stage4_subdone();
    void thread_ap_block_pp0_stage5_11001();
    void thread_ap_block_pp0_stage5_subdone();
    void thread_ap_block_pp0_stage6_11001();
    void thread_ap_block_pp0_stage6_subdone();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage1_iter0();
    void thread_ap_block_state4_pp0_stage2_iter0();
    void thread_ap_block_state5_pp0_stage3_iter0();
    void thread_ap_block_state6_pp0_stage4_iter0();
    void thread_ap_block_state7_pp0_stage5_iter0();
    void thread_ap_block_state8_pp0_stage6_iter0();
    void thread_ap_block_state9_pp0_stage0_iter1();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_i_0_phi_fu_85_p4();
    void thread_ap_ready();
    void thread_hist_address0();
    void thread_hist_ce0();
    void thread_hist_d0();
    void thread_hist_we0();
    void thread_i_fu_102_p2();
    void thread_icmp_ln5_fu_96_p2();
    void thread_index_address0();
    void thread_index_ce0();
    void thread_sext_ln6_fu_114_p1();
    void thread_weight_address0();
    void thread_weight_ce0();
    void thread_zext_ln6_fu_108_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
