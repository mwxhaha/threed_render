// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Version: 2022.2.2
// Copyright (C) Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module threed_render_hls_matrix_mutiply_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        p_read,
        p_read1,
        p_read2,
        p_read3,
        p_read4,
        p_read5,
        p_read6,
        p_read7,
        p_read8,
        input_vector_offset,
        p_read9,
        output_vector_address0,
        output_vector_ce0,
        output_vector_we0,
        output_vector_d0,
        output_vector_address1,
        output_vector_ce1,
        output_vector_we1,
        output_vector_d1,
        output_vector_offset,
        output_vector_offset2
);

parameter    ap_ST_fsm_state1 = 82'd1;
parameter    ap_ST_fsm_state2 = 82'd2;
parameter    ap_ST_fsm_state3 = 82'd4;
parameter    ap_ST_fsm_state4 = 82'd8;
parameter    ap_ST_fsm_state5 = 82'd16;
parameter    ap_ST_fsm_state6 = 82'd32;
parameter    ap_ST_fsm_state7 = 82'd64;
parameter    ap_ST_fsm_state8 = 82'd128;
parameter    ap_ST_fsm_state9 = 82'd256;
parameter    ap_ST_fsm_state10 = 82'd512;
parameter    ap_ST_fsm_state11 = 82'd1024;
parameter    ap_ST_fsm_state12 = 82'd2048;
parameter    ap_ST_fsm_state13 = 82'd4096;
parameter    ap_ST_fsm_state14 = 82'd8192;
parameter    ap_ST_fsm_state15 = 82'd16384;
parameter    ap_ST_fsm_state16 = 82'd32768;
parameter    ap_ST_fsm_state17 = 82'd65536;
parameter    ap_ST_fsm_state18 = 82'd131072;
parameter    ap_ST_fsm_state19 = 82'd262144;
parameter    ap_ST_fsm_state20 = 82'd524288;
parameter    ap_ST_fsm_state21 = 82'd1048576;
parameter    ap_ST_fsm_state22 = 82'd2097152;
parameter    ap_ST_fsm_state23 = 82'd4194304;
parameter    ap_ST_fsm_state24 = 82'd8388608;
parameter    ap_ST_fsm_state25 = 82'd16777216;
parameter    ap_ST_fsm_state26 = 82'd33554432;
parameter    ap_ST_fsm_state27 = 82'd67108864;
parameter    ap_ST_fsm_state28 = 82'd134217728;
parameter    ap_ST_fsm_state29 = 82'd268435456;
parameter    ap_ST_fsm_state30 = 82'd536870912;
parameter    ap_ST_fsm_state31 = 82'd1073741824;
parameter    ap_ST_fsm_state32 = 82'd2147483648;
parameter    ap_ST_fsm_state33 = 82'd4294967296;
parameter    ap_ST_fsm_state34 = 82'd8589934592;
parameter    ap_ST_fsm_state35 = 82'd17179869184;
parameter    ap_ST_fsm_state36 = 82'd34359738368;
parameter    ap_ST_fsm_state37 = 82'd68719476736;
parameter    ap_ST_fsm_state38 = 82'd137438953472;
parameter    ap_ST_fsm_state39 = 82'd274877906944;
parameter    ap_ST_fsm_state40 = 82'd549755813888;
parameter    ap_ST_fsm_state41 = 82'd1099511627776;
parameter    ap_ST_fsm_state42 = 82'd2199023255552;
parameter    ap_ST_fsm_state43 = 82'd4398046511104;
parameter    ap_ST_fsm_state44 = 82'd8796093022208;
parameter    ap_ST_fsm_state45 = 82'd17592186044416;
parameter    ap_ST_fsm_state46 = 82'd35184372088832;
parameter    ap_ST_fsm_state47 = 82'd70368744177664;
parameter    ap_ST_fsm_state48 = 82'd140737488355328;
parameter    ap_ST_fsm_state49 = 82'd281474976710656;
parameter    ap_ST_fsm_state50 = 82'd562949953421312;
parameter    ap_ST_fsm_state51 = 82'd1125899906842624;
parameter    ap_ST_fsm_state52 = 82'd2251799813685248;
parameter    ap_ST_fsm_state53 = 82'd4503599627370496;
parameter    ap_ST_fsm_state54 = 82'd9007199254740992;
parameter    ap_ST_fsm_state55 = 82'd18014398509481984;
parameter    ap_ST_fsm_state56 = 82'd36028797018963968;
parameter    ap_ST_fsm_state57 = 82'd72057594037927936;
parameter    ap_ST_fsm_state58 = 82'd144115188075855872;
parameter    ap_ST_fsm_state59 = 82'd288230376151711744;
parameter    ap_ST_fsm_state60 = 82'd576460752303423488;
parameter    ap_ST_fsm_state61 = 82'd1152921504606846976;
parameter    ap_ST_fsm_state62 = 82'd2305843009213693952;
parameter    ap_ST_fsm_state63 = 82'd4611686018427387904;
parameter    ap_ST_fsm_state64 = 82'd9223372036854775808;
parameter    ap_ST_fsm_state65 = 82'd18446744073709551616;
parameter    ap_ST_fsm_state66 = 82'd36893488147419103232;
parameter    ap_ST_fsm_state67 = 82'd73786976294838206464;
parameter    ap_ST_fsm_state68 = 82'd147573952589676412928;
parameter    ap_ST_fsm_state69 = 82'd295147905179352825856;
parameter    ap_ST_fsm_state70 = 82'd590295810358705651712;
parameter    ap_ST_fsm_state71 = 82'd1180591620717411303424;
parameter    ap_ST_fsm_state72 = 82'd2361183241434822606848;
parameter    ap_ST_fsm_state73 = 82'd4722366482869645213696;
parameter    ap_ST_fsm_state74 = 82'd9444732965739290427392;
parameter    ap_ST_fsm_state75 = 82'd18889465931478580854784;
parameter    ap_ST_fsm_state76 = 82'd37778931862957161709568;
parameter    ap_ST_fsm_state77 = 82'd75557863725914323419136;
parameter    ap_ST_fsm_state78 = 82'd151115727451828646838272;
parameter    ap_ST_fsm_state79 = 82'd302231454903657293676544;
parameter    ap_ST_fsm_state80 = 82'd604462909807314587353088;
parameter    ap_ST_fsm_state81 = 82'd1208925819614629174706176;
parameter    ap_ST_fsm_state82 = 82'd2417851639229258349412352;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [39:0] p_read;
input  [39:0] p_read1;
input  [39:0] p_read2;
input  [39:0] p_read3;
input  [39:0] p_read4;
input  [39:0] p_read5;
input  [39:0] p_read6;
input  [39:0] p_read7;
input  [39:0] p_read8;
input  [1:0] input_vector_offset;
input  [39:0] p_read9;
output  [9:0] output_vector_address0;
output   output_vector_ce0;
output   output_vector_we0;
output  [39:0] output_vector_d0;
output  [9:0] output_vector_address1;
output   output_vector_ce1;
output   output_vector_we1;
output  [39:0] output_vector_d1;
input  [6:0] output_vector_offset;
input  [1:0] output_vector_offset2;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] output_vector_address0;
reg output_vector_ce0;
reg output_vector_we0;
reg[39:0] output_vector_d0;
reg output_vector_ce1;
reg output_vector_we1;

(* fsm_encoding = "none" *) reg   [81:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [39:0] r_V_fu_175_p5;
reg  signed [39:0] r_V_reg_407;
wire   [39:0] r_V_40_fu_187_p5;
reg  signed [39:0] r_V_40_reg_412;
wire   [39:0] r_V_44_fu_199_p5;
reg  signed [39:0] r_V_44_reg_417;
wire    ap_CS_fsm_state2;
wire  signed [72:0] sext_ln1270_8_fu_227_p1;
reg  signed [72:0] sext_ln1270_8_reg_437;
reg   [39:0] tmp_s_reg_445;
wire    ap_CS_fsm_state3;
reg   [39:0] tmp_17_reg_450;
wire   [72:0] grp_fu_236_p2;
reg   [72:0] r_V_43_reg_455;
wire    ap_CS_fsm_state4;
reg   [39:0] tmp_18_reg_470;
wire    ap_CS_fsm_state5;
wire   [9:0] sub_ln16_1_fu_365_p2;
reg   [9:0] sub_ln16_1_reg_480;
wire    ap_CS_fsm_state80;
wire   [39:0] grp_fu_291_p2;
reg   [39:0] sdiv_ln1303_reg_487;
wire   [39:0] grp_fu_296_p2;
reg   [39:0] sdiv_ln1303_1_reg_492;
wire   [39:0] grp_fu_308_p2;
reg   [39:0] sdiv_ln1303_2_reg_497;
wire    ap_CS_fsm_state81;
wire   [63:0] zext_ln16_2_fu_371_p1;
wire   [63:0] zext_ln13_fu_380_p1;
wire   [63:0] zext_ln14_fu_398_p1;
wire    ap_CS_fsm_state82;
wire   [39:0] trunc_ln813_1_fu_389_p1;
wire   [39:0] trunc_ln813_2_fu_403_p1;
wire   [33:0] grp_fu_230_p1;
wire   [34:0] grp_fu_236_p1;
wire   [72:0] grp_fu_218_p2;
wire   [72:0] grp_fu_230_p2;
wire   [72:0] ret_V_fu_276_p2;
wire   [72:0] grp_fu_291_p0;
wire  signed [39:0] grp_fu_291_p1;
wire   [72:0] grp_fu_296_p0;
wire  signed [39:0] grp_fu_296_p1;
wire   [72:0] grp_fu_308_p0;
wire  signed [39:0] grp_fu_308_p1;
wire   [8:0] tmp_fu_321_p3;
wire   [9:0] zext_ln16_1_fu_329_p1;
wire   [9:0] zext_ln16_fu_317_p1;
wire   [9:0] sub_ln16_fu_333_p2;
wire  signed [10:0] sext_ln16_fu_339_p1;
wire   [10:0] output_vector_offset2_cast3_fu_313_p1;
wire   [10:0] add_ln16_fu_343_p2;
wire   [7:0] trunc_ln16_1_fu_353_p1;
wire   [9:0] p_shl_fu_357_p3;
wire   [9:0] trunc_ln16_fu_349_p1;
wire   [9:0] add_ln13_fu_375_p2;
wire   [9:0] add_ln14_fu_393_p2;
reg    grp_fu_291_ap_start;
wire    grp_fu_291_ap_done;
reg    grp_fu_296_ap_start;
wire    grp_fu_296_ap_done;
reg    grp_fu_308_ap_start;
wire    grp_fu_308_ap_done;
reg   [81:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
wire    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
wire    ap_ST_fsm_state25_blk;
wire    ap_ST_fsm_state26_blk;
wire    ap_ST_fsm_state27_blk;
wire    ap_ST_fsm_state28_blk;
wire    ap_ST_fsm_state29_blk;
wire    ap_ST_fsm_state30_blk;
wire    ap_ST_fsm_state31_blk;
wire    ap_ST_fsm_state32_blk;
wire    ap_ST_fsm_state33_blk;
wire    ap_ST_fsm_state34_blk;
wire    ap_ST_fsm_state35_blk;
wire    ap_ST_fsm_state36_blk;
wire    ap_ST_fsm_state37_blk;
wire    ap_ST_fsm_state38_blk;
wire    ap_ST_fsm_state39_blk;
wire    ap_ST_fsm_state40_blk;
wire    ap_ST_fsm_state41_blk;
wire    ap_ST_fsm_state42_blk;
wire    ap_ST_fsm_state43_blk;
wire    ap_ST_fsm_state44_blk;
wire    ap_ST_fsm_state45_blk;
wire    ap_ST_fsm_state46_blk;
wire    ap_ST_fsm_state47_blk;
wire    ap_ST_fsm_state48_blk;
wire    ap_ST_fsm_state49_blk;
wire    ap_ST_fsm_state50_blk;
wire    ap_ST_fsm_state51_blk;
wire    ap_ST_fsm_state52_blk;
wire    ap_ST_fsm_state53_blk;
wire    ap_ST_fsm_state54_blk;
wire    ap_ST_fsm_state55_blk;
wire    ap_ST_fsm_state56_blk;
wire    ap_ST_fsm_state57_blk;
wire    ap_ST_fsm_state58_blk;
wire    ap_ST_fsm_state59_blk;
wire    ap_ST_fsm_state60_blk;
wire    ap_ST_fsm_state61_blk;
wire    ap_ST_fsm_state62_blk;
wire    ap_ST_fsm_state63_blk;
wire    ap_ST_fsm_state64_blk;
wire    ap_ST_fsm_state65_blk;
wire    ap_ST_fsm_state66_blk;
wire    ap_ST_fsm_state67_blk;
wire    ap_ST_fsm_state68_blk;
wire    ap_ST_fsm_state69_blk;
wire    ap_ST_fsm_state70_blk;
wire    ap_ST_fsm_state71_blk;
wire    ap_ST_fsm_state72_blk;
wire    ap_ST_fsm_state73_blk;
wire    ap_ST_fsm_state74_blk;
wire    ap_ST_fsm_state75_blk;
wire    ap_ST_fsm_state76_blk;
wire    ap_ST_fsm_state77_blk;
wire    ap_ST_fsm_state78_blk;
wire    ap_ST_fsm_state79_blk;
wire    ap_ST_fsm_state80_blk;
wire    ap_ST_fsm_state81_blk;
wire    ap_ST_fsm_state82_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 82'd1;
end

threed_render_hls_mux_32_40_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 40 ),
    .din1_WIDTH( 40 ),
    .din2_WIDTH( 40 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 40 ))
mux_32_40_1_1_U101(
    .din0(p_read),
    .din1(p_read1),
    .din2(p_read2),
    .din3(input_vector_offset),
    .dout(r_V_fu_175_p5)
);

threed_render_hls_mux_32_40_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 40 ),
    .din1_WIDTH( 40 ),
    .din2_WIDTH( 40 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 40 ))
mux_32_40_1_1_U102(
    .din0(p_read3),
    .din1(p_read4),
    .din2(p_read5),
    .din3(input_vector_offset),
    .dout(r_V_40_fu_187_p5)
);

threed_render_hls_mux_32_40_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 40 ),
    .din1_WIDTH( 40 ),
    .din2_WIDTH( 40 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 40 ))
mux_32_40_1_1_U103(
    .din0(p_read6),
    .din1(p_read7),
    .din2(p_read8),
    .din3(input_vector_offset),
    .dout(r_V_44_fu_199_p5)
);

threed_render_hls_mul_40s_40s_73_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 40 ),
    .din1_WIDTH( 40 ),
    .dout_WIDTH( 73 ))
mul_40s_40s_73_2_1_U104(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_read9),
    .din1(r_V_reg_407),
    .ce(1'b1),
    .dout(grp_fu_218_p2)
);

threed_render_hls_mul_40s_34ns_73_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 40 ),
    .din1_WIDTH( 34 ),
    .dout_WIDTH( 73 ))
mul_40s_34ns_73_2_1_U105(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(r_V_40_reg_412),
    .din1(grp_fu_230_p1),
    .ce(1'b1),
    .dout(grp_fu_230_p2)
);

threed_render_hls_mul_40s_35ns_73_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 40 ),
    .din1_WIDTH( 35 ),
    .dout_WIDTH( 73 ))
mul_40s_35ns_73_2_1_U106(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(r_V_44_reg_417),
    .din1(grp_fu_236_p1),
    .ce(1'b1),
    .dout(grp_fu_236_p2)
);

threed_render_hls_sdiv_73ns_40s_40_77_seq_1 #(
    .ID( 1 ),
    .NUM_STAGE( 77 ),
    .din0_WIDTH( 73 ),
    .din1_WIDTH( 40 ),
    .dout_WIDTH( 40 ))
sdiv_73ns_40s_40_77_seq_1_U107(
    .clk(ap_clk),
    .reset(ap_rst),
    .start(grp_fu_291_ap_start),
    .done(grp_fu_291_ap_done),
    .din0(grp_fu_291_p0),
    .din1(grp_fu_291_p1),
    .ce(1'b1),
    .dout(grp_fu_291_p2)
);

threed_render_hls_sdiv_73ns_40s_40_77_seq_1 #(
    .ID( 1 ),
    .NUM_STAGE( 77 ),
    .din0_WIDTH( 73 ),
    .din1_WIDTH( 40 ),
    .dout_WIDTH( 40 ))
sdiv_73ns_40s_40_77_seq_1_U108(
    .clk(ap_clk),
    .reset(ap_rst),
    .start(grp_fu_296_ap_start),
    .done(grp_fu_296_ap_done),
    .din0(grp_fu_296_p0),
    .din1(grp_fu_296_p1),
    .ce(1'b1),
    .dout(grp_fu_296_p2)
);

threed_render_hls_sdiv_73ns_40s_40_77_seq_1 #(
    .ID( 1 ),
    .NUM_STAGE( 77 ),
    .din0_WIDTH( 73 ),
    .din1_WIDTH( 40 ),
    .dout_WIDTH( 40 ))
sdiv_73ns_40s_40_77_seq_1_U109(
    .clk(ap_clk),
    .reset(ap_rst),
    .start(grp_fu_308_ap_start),
    .done(grp_fu_308_ap_done),
    .din0(grp_fu_308_p0),
    .din1(grp_fu_308_p1),
    .ce(1'b1),
    .dout(grp_fu_308_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        r_V_40_reg_412 <= r_V_40_fu_187_p5;
        r_V_44_reg_417 <= r_V_44_fu_199_p5;
        r_V_reg_407 <= r_V_fu_175_p5;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        r_V_43_reg_455 <= grp_fu_236_p2;
        tmp_17_reg_450 <= {{grp_fu_230_p2[72:33]}};
        tmp_s_reg_445 <= {{grp_fu_218_p2[72:33]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state80)) begin
        sdiv_ln1303_1_reg_492 <= grp_fu_296_p2;
        sdiv_ln1303_reg_487 <= grp_fu_291_p2;
        sub_ln16_1_reg_480 <= sub_ln16_1_fu_365_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state81)) begin
        sdiv_ln1303_2_reg_497 <= grp_fu_308_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        sext_ln1270_8_reg_437 <= sext_ln1270_8_fu_227_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_18_reg_470 <= {{ret_V_fu_276_p2[72:33]}};
    end
end

assign ap_ST_fsm_state10_blk = 1'b0;

assign ap_ST_fsm_state11_blk = 1'b0;

assign ap_ST_fsm_state12_blk = 1'b0;

assign ap_ST_fsm_state13_blk = 1'b0;

assign ap_ST_fsm_state14_blk = 1'b0;

assign ap_ST_fsm_state15_blk = 1'b0;

assign ap_ST_fsm_state16_blk = 1'b0;

assign ap_ST_fsm_state17_blk = 1'b0;

assign ap_ST_fsm_state18_blk = 1'b0;

assign ap_ST_fsm_state19_blk = 1'b0;

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state20_blk = 1'b0;

assign ap_ST_fsm_state21_blk = 1'b0;

assign ap_ST_fsm_state22_blk = 1'b0;

assign ap_ST_fsm_state23_blk = 1'b0;

assign ap_ST_fsm_state24_blk = 1'b0;

assign ap_ST_fsm_state25_blk = 1'b0;

assign ap_ST_fsm_state26_blk = 1'b0;

assign ap_ST_fsm_state27_blk = 1'b0;

assign ap_ST_fsm_state28_blk = 1'b0;

assign ap_ST_fsm_state29_blk = 1'b0;

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state30_blk = 1'b0;

assign ap_ST_fsm_state31_blk = 1'b0;

assign ap_ST_fsm_state32_blk = 1'b0;

assign ap_ST_fsm_state33_blk = 1'b0;

assign ap_ST_fsm_state34_blk = 1'b0;

assign ap_ST_fsm_state35_blk = 1'b0;

assign ap_ST_fsm_state36_blk = 1'b0;

assign ap_ST_fsm_state37_blk = 1'b0;

assign ap_ST_fsm_state38_blk = 1'b0;

assign ap_ST_fsm_state39_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state40_blk = 1'b0;

assign ap_ST_fsm_state41_blk = 1'b0;

assign ap_ST_fsm_state42_blk = 1'b0;

assign ap_ST_fsm_state43_blk = 1'b0;

assign ap_ST_fsm_state44_blk = 1'b0;

assign ap_ST_fsm_state45_blk = 1'b0;

assign ap_ST_fsm_state46_blk = 1'b0;

assign ap_ST_fsm_state47_blk = 1'b0;

assign ap_ST_fsm_state48_blk = 1'b0;

assign ap_ST_fsm_state49_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state50_blk = 1'b0;

assign ap_ST_fsm_state51_blk = 1'b0;

assign ap_ST_fsm_state52_blk = 1'b0;

assign ap_ST_fsm_state53_blk = 1'b0;

assign ap_ST_fsm_state54_blk = 1'b0;

assign ap_ST_fsm_state55_blk = 1'b0;

assign ap_ST_fsm_state56_blk = 1'b0;

assign ap_ST_fsm_state57_blk = 1'b0;

assign ap_ST_fsm_state58_blk = 1'b0;

assign ap_ST_fsm_state59_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state60_blk = 1'b0;

assign ap_ST_fsm_state61_blk = 1'b0;

assign ap_ST_fsm_state62_blk = 1'b0;

assign ap_ST_fsm_state63_blk = 1'b0;

assign ap_ST_fsm_state64_blk = 1'b0;

assign ap_ST_fsm_state65_blk = 1'b0;

assign ap_ST_fsm_state66_blk = 1'b0;

assign ap_ST_fsm_state67_blk = 1'b0;

assign ap_ST_fsm_state68_blk = 1'b0;

assign ap_ST_fsm_state69_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state70_blk = 1'b0;

assign ap_ST_fsm_state71_blk = 1'b0;

assign ap_ST_fsm_state72_blk = 1'b0;

assign ap_ST_fsm_state73_blk = 1'b0;

assign ap_ST_fsm_state74_blk = 1'b0;

assign ap_ST_fsm_state75_blk = 1'b0;

assign ap_ST_fsm_state76_blk = 1'b0;

assign ap_ST_fsm_state77_blk = 1'b0;

assign ap_ST_fsm_state78_blk = 1'b0;

assign ap_ST_fsm_state79_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state80_blk = 1'b0;

assign ap_ST_fsm_state81_blk = 1'b0;

assign ap_ST_fsm_state82_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state82) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state82)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_291_ap_start = 1'b1;
    end else begin
        grp_fu_291_ap_start = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_296_ap_start = 1'b1;
    end else begin
        grp_fu_296_ap_start = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_308_ap_start = 1'b1;
    end else begin
        grp_fu_308_ap_start = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state82)) begin
        output_vector_address0 = zext_ln14_fu_398_p1;
    end else if ((1'b1 == ap_CS_fsm_state81)) begin
        output_vector_address0 = zext_ln13_fu_380_p1;
    end else begin
        output_vector_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state82) | (1'b1 == ap_CS_fsm_state81))) begin
        output_vector_ce0 = 1'b1;
    end else begin
        output_vector_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state81)) begin
        output_vector_ce1 = 1'b1;
    end else begin
        output_vector_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state82)) begin
        output_vector_d0 = trunc_ln813_2_fu_403_p1;
    end else if ((1'b1 == ap_CS_fsm_state81)) begin
        output_vector_d0 = trunc_ln813_1_fu_389_p1;
    end else begin
        output_vector_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state82) | (1'b1 == ap_CS_fsm_state81))) begin
        output_vector_we0 = 1'b1;
    end else begin
        output_vector_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state81)) begin
        output_vector_we1 = 1'b1;
    end else begin
        output_vector_we1 = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            ap_NS_fsm = ap_ST_fsm_state38;
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            ap_NS_fsm = ap_ST_fsm_state40;
        end
        ap_ST_fsm_state40 : begin
            ap_NS_fsm = ap_ST_fsm_state41;
        end
        ap_ST_fsm_state41 : begin
            ap_NS_fsm = ap_ST_fsm_state42;
        end
        ap_ST_fsm_state42 : begin
            ap_NS_fsm = ap_ST_fsm_state43;
        end
        ap_ST_fsm_state43 : begin
            ap_NS_fsm = ap_ST_fsm_state44;
        end
        ap_ST_fsm_state44 : begin
            ap_NS_fsm = ap_ST_fsm_state45;
        end
        ap_ST_fsm_state45 : begin
            ap_NS_fsm = ap_ST_fsm_state46;
        end
        ap_ST_fsm_state46 : begin
            ap_NS_fsm = ap_ST_fsm_state47;
        end
        ap_ST_fsm_state47 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        ap_ST_fsm_state48 : begin
            ap_NS_fsm = ap_ST_fsm_state49;
        end
        ap_ST_fsm_state49 : begin
            ap_NS_fsm = ap_ST_fsm_state50;
        end
        ap_ST_fsm_state50 : begin
            ap_NS_fsm = ap_ST_fsm_state51;
        end
        ap_ST_fsm_state51 : begin
            ap_NS_fsm = ap_ST_fsm_state52;
        end
        ap_ST_fsm_state52 : begin
            ap_NS_fsm = ap_ST_fsm_state53;
        end
        ap_ST_fsm_state53 : begin
            ap_NS_fsm = ap_ST_fsm_state54;
        end
        ap_ST_fsm_state54 : begin
            ap_NS_fsm = ap_ST_fsm_state55;
        end
        ap_ST_fsm_state55 : begin
            ap_NS_fsm = ap_ST_fsm_state56;
        end
        ap_ST_fsm_state56 : begin
            ap_NS_fsm = ap_ST_fsm_state57;
        end
        ap_ST_fsm_state57 : begin
            ap_NS_fsm = ap_ST_fsm_state58;
        end
        ap_ST_fsm_state58 : begin
            ap_NS_fsm = ap_ST_fsm_state59;
        end
        ap_ST_fsm_state59 : begin
            ap_NS_fsm = ap_ST_fsm_state60;
        end
        ap_ST_fsm_state60 : begin
            ap_NS_fsm = ap_ST_fsm_state61;
        end
        ap_ST_fsm_state61 : begin
            ap_NS_fsm = ap_ST_fsm_state62;
        end
        ap_ST_fsm_state62 : begin
            ap_NS_fsm = ap_ST_fsm_state63;
        end
        ap_ST_fsm_state63 : begin
            ap_NS_fsm = ap_ST_fsm_state64;
        end
        ap_ST_fsm_state64 : begin
            ap_NS_fsm = ap_ST_fsm_state65;
        end
        ap_ST_fsm_state65 : begin
            ap_NS_fsm = ap_ST_fsm_state66;
        end
        ap_ST_fsm_state66 : begin
            ap_NS_fsm = ap_ST_fsm_state67;
        end
        ap_ST_fsm_state67 : begin
            ap_NS_fsm = ap_ST_fsm_state68;
        end
        ap_ST_fsm_state68 : begin
            ap_NS_fsm = ap_ST_fsm_state69;
        end
        ap_ST_fsm_state69 : begin
            ap_NS_fsm = ap_ST_fsm_state70;
        end
        ap_ST_fsm_state70 : begin
            ap_NS_fsm = ap_ST_fsm_state71;
        end
        ap_ST_fsm_state71 : begin
            ap_NS_fsm = ap_ST_fsm_state72;
        end
        ap_ST_fsm_state72 : begin
            ap_NS_fsm = ap_ST_fsm_state73;
        end
        ap_ST_fsm_state73 : begin
            ap_NS_fsm = ap_ST_fsm_state74;
        end
        ap_ST_fsm_state74 : begin
            ap_NS_fsm = ap_ST_fsm_state75;
        end
        ap_ST_fsm_state75 : begin
            ap_NS_fsm = ap_ST_fsm_state76;
        end
        ap_ST_fsm_state76 : begin
            ap_NS_fsm = ap_ST_fsm_state77;
        end
        ap_ST_fsm_state77 : begin
            ap_NS_fsm = ap_ST_fsm_state78;
        end
        ap_ST_fsm_state78 : begin
            ap_NS_fsm = ap_ST_fsm_state79;
        end
        ap_ST_fsm_state79 : begin
            ap_NS_fsm = ap_ST_fsm_state80;
        end
        ap_ST_fsm_state80 : begin
            ap_NS_fsm = ap_ST_fsm_state81;
        end
        ap_ST_fsm_state81 : begin
            ap_NS_fsm = ap_ST_fsm_state82;
        end
        ap_ST_fsm_state82 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln13_fu_375_p2 = (sub_ln16_1_reg_480 + 10'd1);

assign add_ln14_fu_393_p2 = (sub_ln16_1_reg_480 + 10'd2);

assign add_ln16_fu_343_p2 = ($signed(sext_ln16_fu_339_p1) + $signed(output_vector_offset2_cast3_fu_313_p1));

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state80 = ap_CS_fsm[32'd79];

assign ap_CS_fsm_state81 = ap_CS_fsm[32'd80];

assign ap_CS_fsm_state82 = ap_CS_fsm[32'd81];

assign grp_fu_230_p1 = 73'd8589934216;

assign grp_fu_236_p1 = 73'd8607148889;

assign grp_fu_291_p0 = {{tmp_s_reg_445}, {33'd0}};

assign grp_fu_291_p1 = sext_ln1270_8_reg_437;

assign grp_fu_296_p0 = {{tmp_17_reg_450}, {33'd0}};

assign grp_fu_296_p1 = sext_ln1270_8_reg_437;

assign grp_fu_308_p0 = {{tmp_18_reg_470}, {33'd0}};

assign grp_fu_308_p1 = sext_ln1270_8_reg_437;

assign output_vector_address1 = zext_ln16_2_fu_371_p1;

assign output_vector_d1 = sdiv_ln1303_reg_487[39:0];

assign output_vector_offset2_cast3_fu_313_p1 = output_vector_offset2;

assign p_shl_fu_357_p3 = {{trunc_ln16_1_fu_353_p1}, {2'd0}};

assign ret_V_fu_276_p2 = ($signed(r_V_43_reg_455) + $signed(73'd9437339481140419887104));

assign sext_ln1270_8_fu_227_p1 = r_V_44_reg_417;

assign sext_ln16_fu_339_p1 = $signed(sub_ln16_fu_333_p2);

assign sub_ln16_1_fu_365_p2 = (p_shl_fu_357_p3 - trunc_ln16_fu_349_p1);

assign sub_ln16_fu_333_p2 = (zext_ln16_1_fu_329_p1 - zext_ln16_fu_317_p1);

assign tmp_fu_321_p3 = {{output_vector_offset}, {2'd0}};

assign trunc_ln16_1_fu_353_p1 = add_ln16_fu_343_p2[7:0];

assign trunc_ln16_fu_349_p1 = add_ln16_fu_343_p2[9:0];

assign trunc_ln813_1_fu_389_p1 = sdiv_ln1303_1_reg_492[39:0];

assign trunc_ln813_2_fu_403_p1 = sdiv_ln1303_2_reg_497[39:0];

assign zext_ln13_fu_380_p1 = add_ln13_fu_375_p2;

assign zext_ln14_fu_398_p1 = add_ln14_fu_393_p2;

assign zext_ln16_1_fu_329_p1 = tmp_fu_321_p3;

assign zext_ln16_2_fu_371_p1 = sub_ln16_1_reg_480;

assign zext_ln16_fu_317_p1 = output_vector_offset;

endmodule //threed_render_hls_matrix_mutiply_2