// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "kernel4.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic kernel4::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic kernel4::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<6> kernel4::ap_ST_fsm_state1 = "1";
const sc_lv<6> kernel4::ap_ST_fsm_state2 = "10";
const sc_lv<6> kernel4::ap_ST_fsm_state3 = "100";
const sc_lv<6> kernel4::ap_ST_fsm_state4 = "1000";
const sc_lv<6> kernel4::ap_ST_fsm_state5 = "10000";
const sc_lv<6> kernel4::ap_ST_fsm_state6 = "100000";
const sc_lv<32> kernel4::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> kernel4::ap_const_lv32_2 = "10";
const sc_lv<32> kernel4::ap_const_lv32_3 = "11";
const sc_lv<32> kernel4::ap_const_lv32_1 = "1";
const sc_lv<1> kernel4::ap_const_lv1_1 = "1";
const sc_lv<32> kernel4::ap_const_lv32_4 = "100";
const sc_lv<32> kernel4::ap_const_lv32_3FF = "1111111111";
const sc_lv<32> kernel4::ap_const_lv32_5 = "101";
const bool kernel4::ap_const_boolean_1 = true;

kernel4::kernel4(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln6_fu_125_p2);
    sensitive << ( i_0_in_reg_89 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_array_r_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( array_addr_reg_161 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( sext_ln6_1_fu_119_p1 );

    SC_METHOD(thread_array_r_address1);
    sensitive << ( array_addr_reg_161 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( sext_ln6_2_fu_131_p1 );

    SC_METHOD(thread_array_r_ce0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_array_r_ce1);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_array_r_d1);
    sensitive << ( mul_ln6_1_reg_206 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( sub_ln6_fu_145_p2 );

    SC_METHOD(thread_array_r_we1);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_i_fu_107_p2);
    sensitive << ( i_0_in_reg_89 );

    SC_METHOD(thread_icmp_ln5_fu_113_p2);
    sensitive << ( i_fu_107_p2 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_index_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( sext_ln6_1_fu_119_p1 );

    SC_METHOD(thread_index_ce0);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_mul_ln6_1_fu_141_p2);
    sensitive << ( index_load_reg_190 );
    sensitive << ( array_load_2_reg_196 );

    SC_METHOD(thread_mul_ln6_fu_136_p2);
    sensitive << ( reg_98 );
    sensitive << ( index_load_reg_190 );

    SC_METHOD(thread_sext_ln6_1_fu_119_p1);
    sensitive << ( i_fu_107_p2 );

    SC_METHOD(thread_sext_ln6_2_fu_131_p1);
    sensitive << ( add_ln6_fu_125_p2 );

    SC_METHOD(thread_sext_ln6_fu_102_p0);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( offset );

    SC_METHOD(thread_sext_ln6_fu_102_p1);
    sensitive << ( sext_ln6_fu_102_p0 );

    SC_METHOD(thread_sub_ln6_fu_145_p0);
    sensitive << ( reg_98 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_sub_ln6_fu_145_p2);
    sensitive << ( mul_ln6_reg_201 );
    sensitive << ( sub_ln6_fu_145_p0 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln5_fu_113_p2 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "kernel4_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, array_r_address0, "(port)array_r_address0");
    sc_trace(mVcdFile, array_r_ce0, "(port)array_r_ce0");
    sc_trace(mVcdFile, array_r_q0, "(port)array_r_q0");
    sc_trace(mVcdFile, array_r_address1, "(port)array_r_address1");
    sc_trace(mVcdFile, array_r_ce1, "(port)array_r_ce1");
    sc_trace(mVcdFile, array_r_we1, "(port)array_r_we1");
    sc_trace(mVcdFile, array_r_d1, "(port)array_r_d1");
    sc_trace(mVcdFile, array_r_q1, "(port)array_r_q1");
    sc_trace(mVcdFile, index_address0, "(port)index_address0");
    sc_trace(mVcdFile, index_ce0, "(port)index_ce0");
    sc_trace(mVcdFile, index_q0, "(port)index_q0");
    sc_trace(mVcdFile, offset, "(port)offset");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, reg_98, "reg_98");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, array_addr_reg_161, "array_addr_reg_161");
    sc_trace(mVcdFile, i_fu_107_p2, "i_fu_107_p2");
    sc_trace(mVcdFile, i_reg_167, "i_reg_167");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, icmp_ln5_fu_113_p2, "icmp_ln5_fu_113_p2");
    sc_trace(mVcdFile, index_load_reg_190, "index_load_reg_190");
    sc_trace(mVcdFile, array_load_2_reg_196, "array_load_2_reg_196");
    sc_trace(mVcdFile, mul_ln6_fu_136_p2, "mul_ln6_fu_136_p2");
    sc_trace(mVcdFile, mul_ln6_reg_201, "mul_ln6_reg_201");
    sc_trace(mVcdFile, mul_ln6_1_fu_141_p2, "mul_ln6_1_fu_141_p2");
    sc_trace(mVcdFile, mul_ln6_1_reg_206, "mul_ln6_1_reg_206");
    sc_trace(mVcdFile, i_0_in_reg_89, "i_0_in_reg_89");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, sext_ln6_fu_102_p1, "sext_ln6_fu_102_p1");
    sc_trace(mVcdFile, sext_ln6_1_fu_119_p1, "sext_ln6_1_fu_119_p1");
    sc_trace(mVcdFile, sext_ln6_2_fu_131_p1, "sext_ln6_2_fu_131_p1");
    sc_trace(mVcdFile, sext_ln6_fu_102_p0, "sext_ln6_fu_102_p0");
    sc_trace(mVcdFile, add_ln6_fu_125_p2, "add_ln6_fu_125_p2");
    sc_trace(mVcdFile, sub_ln6_fu_145_p0, "sub_ln6_fu_145_p0");
    sc_trace(mVcdFile, sub_ln6_fu_145_p2, "sub_ln6_fu_145_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("kernel4.hdltvin.dat");
    mHdltvoutHandle.open("kernel4.hdltvout.dat");
}

kernel4::~kernel4() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
}

void kernel4::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        i_0_in_reg_89 = i_reg_167.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_0_in_reg_89 = offset.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        array_addr_reg_161 =  (sc_lv<10>) (sext_ln6_fu_102_p1.read());
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        array_load_2_reg_196 = array_r_q1.read();
        index_load_reg_190 = index_q0.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_reg_167 = i_fu_107_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        mul_ln6_1_reg_206 = mul_ln6_1_fu_141_p2.read();
        mul_ln6_reg_201 = mul_ln6_fu_136_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        reg_98 = array_r_q0.read();
    }
}

void kernel4::thread_add_ln6_fu_125_p2() {
    add_ln6_fu_125_p2 = (!i_0_in_reg_89.read().is_01() || !ap_const_lv32_2.is_01())? sc_lv<32>(): (sc_biguint<32>(i_0_in_reg_89.read()) + sc_biguint<32>(ap_const_lv32_2));
}

void kernel4::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void kernel4::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void kernel4::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void kernel4::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void kernel4::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void kernel4::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void kernel4::thread_ap_done() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void kernel4::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void kernel4::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void kernel4::thread_array_r_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        array_r_address0 = array_addr_reg_161.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        array_r_address0 =  (sc_lv<10>) (sext_ln6_1_fu_119_p1.read());
    } else {
        array_r_address0 = "XXXXXXXXXX";
    }
}

void kernel4::thread_array_r_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        array_r_address1 = array_addr_reg_161.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        array_r_address1 =  (sc_lv<10>) (sext_ln6_2_fu_131_p1.read());
    } else {
        array_r_address1 = "XXXXXXXXXX";
    }
}

void kernel4::thread_array_r_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        array_r_ce0 = ap_const_logic_1;
    } else {
        array_r_ce0 = ap_const_logic_0;
    }
}

void kernel4::thread_array_r_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        array_r_ce1 = ap_const_logic_1;
    } else {
        array_r_ce1 = ap_const_logic_0;
    }
}

void kernel4::thread_array_r_d1() {
    array_r_d1 = (!sub_ln6_fu_145_p2.read().is_01() || !mul_ln6_1_reg_206.read().is_01())? sc_lv<32>(): (sc_biguint<32>(sub_ln6_fu_145_p2.read()) + sc_biguint<32>(mul_ln6_1_reg_206.read()));
}

void kernel4::thread_array_r_we1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        array_r_we1 = ap_const_logic_1;
    } else {
        array_r_we1 = ap_const_logic_0;
    }
}

void kernel4::thread_i_fu_107_p2() {
    i_fu_107_p2 = (!i_0_in_reg_89.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_biguint<32>(i_0_in_reg_89.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void kernel4::thread_icmp_ln5_fu_113_p2() {
    icmp_ln5_fu_113_p2 = (!i_fu_107_p2.read().is_01() || !ap_const_lv32_3FF.is_01())? sc_lv<1>(): (sc_bigint<32>(i_fu_107_p2.read()) < sc_bigint<32>(ap_const_lv32_3FF));
}

void kernel4::thread_index_address0() {
    index_address0 =  (sc_lv<10>) (sext_ln6_1_fu_119_p1.read());
}

void kernel4::thread_index_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        index_ce0 = ap_const_logic_1;
    } else {
        index_ce0 = ap_const_logic_0;
    }
}

void kernel4::thread_mul_ln6_1_fu_141_p2() {
    mul_ln6_1_fu_141_p2 = (!array_load_2_reg_196.read().is_01() || !index_load_reg_190.read().is_01())? sc_lv<32>(): sc_bigint<32>(array_load_2_reg_196.read()) * sc_bigint<32>(index_load_reg_190.read());
}

void kernel4::thread_mul_ln6_fu_136_p2() {
    mul_ln6_fu_136_p2 = (!reg_98.read().is_01() || !index_load_reg_190.read().is_01())? sc_lv<32>(): sc_bigint<32>(reg_98.read()) * sc_bigint<32>(index_load_reg_190.read());
}

void kernel4::thread_sext_ln6_1_fu_119_p1() {
    sext_ln6_1_fu_119_p1 = esl_sext<64,32>(i_fu_107_p2.read());
}

void kernel4::thread_sext_ln6_2_fu_131_p1() {
    sext_ln6_2_fu_131_p1 = esl_sext<64,32>(add_ln6_fu_125_p2.read());
}

void kernel4::thread_sext_ln6_fu_102_p0() {
    sext_ln6_fu_102_p0 = offset.read();
}

void kernel4::thread_sext_ln6_fu_102_p1() {
    sext_ln6_fu_102_p1 = esl_sext<64,32>(sext_ln6_fu_102_p0.read());
}

void kernel4::thread_sub_ln6_fu_145_p0() {
    sub_ln6_fu_145_p0 = reg_98.read();
}

void kernel4::thread_sub_ln6_fu_145_p2() {
    sub_ln6_fu_145_p2 = (!sub_ln6_fu_145_p0.read().is_01() || !mul_ln6_reg_201.read().is_01())? sc_lv<32>(): (sc_biguint<32>(sub_ln6_fu_145_p0.read()) - sc_biguint<32>(mul_ln6_reg_201.read()));
}

void kernel4::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln5_fu_113_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state6;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<6>) ("XXXXXX");
            break;
    }
}

void kernel4::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"array_r_address0\" :  \"" << array_r_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"array_r_ce0\" :  \"" << array_r_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"array_r_q0\" :  \"" << array_r_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"array_r_address1\" :  \"" << array_r_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"array_r_ce1\" :  \"" << array_r_ce1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"array_r_we1\" :  \"" << array_r_we1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"array_r_d1\" :  \"" << array_r_d1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"array_r_q1\" :  \"" << array_r_q1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"index_address0\" :  \"" << index_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"index_ce0\" :  \"" << index_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"index_q0\" :  \"" << index_q0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"offset\" :  \"" << offset.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}
