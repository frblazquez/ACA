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

namespace ap_rtl {

struct kernel7 : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<10> > a_address0;
    sc_out< sc_logic > a_ce0;
    sc_in< sc_lv<32> > a_q0;
    sc_out< sc_lv<10> > b_address0;
    sc_out< sc_logic > b_ce0;
    sc_in< sc_lv<32> > b_q0;
    sc_out< sc_lv<32> > ap_return;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_lv<32> > ap_var_for_const1;
    sc_signal< sc_lv<5> > ap_var_for_const2;


    // Module declarations
    kernel7(sc_module_name name);
    SC_HAS_PROCESS(kernel7);

    ~kernel7();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    kernel7_faddfsub_bkb<1,4,32,32,32>* kernel7_faddfsub_bkb_U1;
    kernel7_fcmp_32nscud<1,2,32,32,1>* kernel7_fcmp_32nscud_U2;
    sc_signal< sc_lv<11> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<11> > i_fu_99_p2;
    sc_signal< sc_lv<11> > i_reg_160;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln6_fu_93_p2;
    sc_signal< sc_lv<32> > a_load_reg_175;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<32> > b_load_reg_180;
    sc_signal< sc_lv<32> > grp_fu_83_p2;
    sc_signal< sc_lv<32> > diff_reg_185;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<1> > icmp_ln9_fu_128_p2;
    sc_signal< sc_lv<1> > icmp_ln9_reg_192;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<1> > icmp_ln9_1_fu_134_p2;
    sc_signal< sc_lv<1> > icmp_ln9_1_reg_197;
    sc_signal< sc_lv<1> > grp_fu_88_p2;
    sc_signal< sc_lv<1> > tmp_1_reg_202;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<32> > sum_1_fu_149_p3;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<32> > sum_0_reg_60;
    sc_signal< sc_lv<11> > i_0_reg_72;
    sc_signal< sc_lv<64> > zext_ln8_fu_105_p1;
    sc_signal< sc_lv<32> > grp_fu_83_p0;
    sc_signal< sc_lv<32> > grp_fu_83_p1;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<32> > bitcast_ln9_fu_111_p1;
    sc_signal< sc_lv<8> > tmp_fu_114_p4;
    sc_signal< sc_lv<23> > trunc_ln9_fu_124_p1;
    sc_signal< sc_lv<1> > or_ln9_fu_140_p2;
    sc_signal< sc_lv<1> > and_ln9_fu_144_p2;
    sc_signal< sc_lv<2> > grp_fu_83_opcode;
    sc_signal< sc_lv<11> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<11> ap_ST_fsm_state1;
    static const sc_lv<11> ap_ST_fsm_state2;
    static const sc_lv<11> ap_ST_fsm_state3;
    static const sc_lv<11> ap_ST_fsm_state4;
    static const sc_lv<11> ap_ST_fsm_state5;
    static const sc_lv<11> ap_ST_fsm_state6;
    static const sc_lv<11> ap_ST_fsm_state7;
    static const sc_lv<11> ap_ST_fsm_state8;
    static const sc_lv<11> ap_ST_fsm_state9;
    static const sc_lv<11> ap_ST_fsm_state10;
    static const sc_lv<11> ap_ST_fsm_state11;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<11> ap_const_lv11_400;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<23> ap_const_lv23_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<5> ap_const_lv5_2;
    static const sc_lv<1> ap_const_lv1_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const2();
    void thread_ap_clk_no_reset_();
    void thread_a_address0();
    void thread_a_ce0();
    void thread_and_ln9_fu_144_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_b_address0();
    void thread_b_ce0();
    void thread_bitcast_ln9_fu_111_p1();
    void thread_grp_fu_83_opcode();
    void thread_grp_fu_83_p0();
    void thread_grp_fu_83_p1();
    void thread_i_fu_99_p2();
    void thread_icmp_ln6_fu_93_p2();
    void thread_icmp_ln9_1_fu_134_p2();
    void thread_icmp_ln9_fu_128_p2();
    void thread_or_ln9_fu_140_p2();
    void thread_sum_1_fu_149_p3();
    void thread_tmp_fu_114_p4();
    void thread_trunc_ln9_fu_124_p1();
    void thread_zext_ln8_fu_105_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
