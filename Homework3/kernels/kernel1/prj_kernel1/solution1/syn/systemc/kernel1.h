// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _kernel1_HH_
#define _kernel1_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct kernel1 : public sc_module {
    // Port declarations 11
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


    // Module declarations
    kernel1(sc_module_name name);
    SC_HAS_PROCESS(kernel1);

    ~kernel1();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<11> > i_fu_56_p2;
    sc_signal< sc_lv<11> > i_reg_83;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<10> > array_addr_reg_88;
    sc_signal< sc_lv<1> > icmp_ln6_fu_50_p2;
    sc_signal< sc_lv<11> > i_0_reg_39;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<64> > zext_ln7_fu_62_p1;
    sc_signal< sc_lv<32> > shl_ln7_fu_67_p2;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_state2;
    static const sc_lv<3> ap_ST_fsm_state3;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<11> ap_const_lv11_400;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_array_r_address0();
    void thread_array_r_ce0();
    void thread_array_r_d0();
    void thread_array_r_we0();
    void thread_i_fu_56_p2();
    void thread_icmp_ln6_fu_50_p2();
    void thread_shl_ln7_fu_67_p2();
    void thread_zext_ln7_fu_62_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
