// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _kernel8_HH_
#define _kernel8_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct kernel8 : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<10> > array_r_address0;
    sc_out< sc_logic > array_r_ce0;
    sc_out< sc_logic > array_r_we0;
    sc_out< sc_lv<32> > array_r_d0;
    sc_in< sc_lv<32> > array_r_q0;
    sc_in< sc_lv<32> > multiplier;
    sc_in< sc_lv<32> > offset;


    // Module declarations
    kernel8(sc_module_name name);
    SC_HAS_PROCESS(kernel8);

    ~kernel8();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > sub_ln5_fu_87_p2;
    sc_signal< sc_lv<32> > sub_ln5_reg_147;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln5_fu_97_p2;
    sc_signal< sc_lv<32> > array_load_reg_160;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<32> > mul_ln6_fu_122_p2;
    sc_signal< sc_lv<32> > mul_ln6_reg_165;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<31> > i_fu_131_p2;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<31> > i_0_reg_75;
    sc_signal< sc_lv<64> > sext_ln6_fu_117_p1;
    sc_signal< sc_lv<64> > zext_ln6_fu_126_p1;
    sc_signal< sc_lv<32> > zext_ln5_fu_93_p1;
    sc_signal< sc_lv<31> > add_ln6_fu_102_p2;
    sc_signal< sc_lv<32> > zext_ln6_1_fu_108_p1;
    sc_signal< sc_lv<32> > add_ln6_1_fu_112_p2;
    sc_signal< sc_lv<32> > mul_ln6_fu_122_p1;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_state2;
    static const sc_lv<6> ap_ST_fsm_state3;
    static const sc_lv<6> ap_ST_fsm_state4;
    static const sc_lv<6> ap_ST_fsm_state5;
    static const sc_lv<6> ap_ST_fsm_state6;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<31> ap_const_lv31_6;
    static const sc_lv<32> ap_const_lv32_3FF;
    static const sc_lv<31> ap_const_lv31_7FFFFFFA;
    static const sc_lv<31> ap_const_lv31_1;
    static const sc_lv<32> ap_const_lv32_5;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln6_1_fu_112_p2();
    void thread_add_ln6_fu_102_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_array_r_address0();
    void thread_array_r_ce0();
    void thread_array_r_d0();
    void thread_array_r_we0();
    void thread_i_fu_131_p2();
    void thread_icmp_ln5_fu_97_p2();
    void thread_mul_ln6_fu_122_p1();
    void thread_mul_ln6_fu_122_p2();
    void thread_sext_ln6_fu_117_p1();
    void thread_sub_ln5_fu_87_p2();
    void thread_zext_ln5_fu_93_p1();
    void thread_zext_ln6_1_fu_108_p1();
    void thread_zext_ln6_fu_126_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
