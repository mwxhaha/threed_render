// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __threed_render_hls_mul_mul_15ns_15s_30_4_1__HH__
#define __threed_render_hls_mul_mul_15ns_15s_30_4_1__HH__
#include "threed_render_hls_mul_mul_15ns_15s_30_4_1_DSP48_1.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(threed_render_hls_mul_mul_15ns_15s_30_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    threed_render_hls_mul_mul_15ns_15s_30_4_1_DSP48_1 threed_render_hls_mul_mul_15ns_15s_30_4_1_DSP48_1_U;

    SC_CTOR(threed_render_hls_mul_mul_15ns_15s_30_4_1):  threed_render_hls_mul_mul_15ns_15s_30_4_1_DSP48_1_U ("threed_render_hls_mul_mul_15ns_15s_30_4_1_DSP48_1_U") {
        threed_render_hls_mul_mul_15ns_15s_30_4_1_DSP48_1_U.clk(clk);
        threed_render_hls_mul_mul_15ns_15s_30_4_1_DSP48_1_U.rst(reset);
        threed_render_hls_mul_mul_15ns_15s_30_4_1_DSP48_1_U.ce(ce);
        threed_render_hls_mul_mul_15ns_15s_30_4_1_DSP48_1_U.a(din0);
        threed_render_hls_mul_mul_15ns_15s_30_4_1_DSP48_1_U.b(din1);
        threed_render_hls_mul_mul_15ns_15s_30_4_1_DSP48_1_U.p(dout);

    }

};

#endif //
