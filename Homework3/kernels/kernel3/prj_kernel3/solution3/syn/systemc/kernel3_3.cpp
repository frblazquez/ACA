#include "kernel3.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void kernel3::thread_hdltv_gen() {
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
        mHdltvoutHandle << " , " <<  " \"hist_address0\" :  \"" << hist_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"hist_ce0\" :  \"" << hist_ce0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"hist_we0\" :  \"" << hist_we0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"hist_d0\" :  \"" << hist_d0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"hist_q0\" :  \"" << hist_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"weight_address0\" :  \"" << weight_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"weight_ce0\" :  \"" << weight_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"weight_q0\" :  \"" << weight_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"index_address0\" :  \"" << index_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"index_ce0\" :  \"" << index_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"index_q0\" :  \"" << index_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"index_address1\" :  \"" << index_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"index_ce1\" :  \"" << index_ce1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"index_q1\" :  \"" << index_q1.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

