// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Version: 2022.2.2
// Copyright (C) Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module threed_render_hls_matrix_mutiply_1 (
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
        p_read1_offset,
        p_read210,
        p_read4_offset,
        p_read5_offset,
        p_read811,
        p_read10,
        p_read11,
        p_read12,
        p_read13,
        p_read14,
        p_read15,
        p_read16,
        p_read17,
        p_read18,
        p_read19,
        output_vector_offset,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4,
        ap_return_5,
        ap_return_6,
        ap_return_7,
        ap_return_8
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

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
input  [39:0] p_read1_offset;
input  [39:0] p_read210;
input  [39:0] p_read4_offset;
input  [39:0] p_read5_offset;
input  [39:0] p_read811;
input  [39:0] p_read10;
input  [39:0] p_read11;
input  [39:0] p_read12;
input  [39:0] p_read13;
input  [39:0] p_read14;
input  [39:0] p_read15;
input  [39:0] p_read16;
input  [39:0] p_read17;
input  [39:0] p_read18;
input  [39:0] p_read19;
input  [1:0] output_vector_offset;
output  [39:0] ap_return_0;
output  [39:0] ap_return_1;
output  [39:0] ap_return_2;
output  [39:0] ap_return_3;
output  [39:0] ap_return_4;
output  [39:0] ap_return_5;
output  [39:0] ap_return_6;
output  [39:0] ap_return_7;
output  [39:0] ap_return_8;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[39:0] ap_return_0;
reg[39:0] ap_return_1;
reg[39:0] ap_return_2;
reg[39:0] ap_return_3;
reg[39:0] ap_return_4;
reg[39:0] ap_return_5;
reg[39:0] ap_return_6;
reg[39:0] ap_return_7;
reg[39:0] ap_return_8;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [39:0] r_V_fu_361_p5;
reg   [39:0] r_V_reg_628;
wire   [39:0] r_V_46_fu_373_p5;
reg   [39:0] r_V_46_reg_633;
wire   [39:0] r_V_48_fu_385_p5;
reg   [39:0] r_V_48_reg_638;
wire  signed [72:0] sext_ln1270_fu_397_p1;
wire    ap_CS_fsm_state2;
wire  signed [72:0] sext_ln1270_9_fu_410_p1;
wire  signed [72:0] sext_ln1270_10_fu_423_p1;
wire   [72:0] grp_fu_404_p2;
reg   [72:0] r_V_45_reg_697;
wire    ap_CS_fsm_state3;
wire   [72:0] grp_fu_417_p2;
reg   [72:0] r_V_47_reg_702;
wire   [72:0] grp_fu_430_p2;
reg   [72:0] r_V_49_reg_707;
wire   [72:0] grp_fu_440_p2;
reg   [72:0] r_V_50_reg_712;
wire   [72:0] grp_fu_450_p2;
reg   [72:0] r_V_51_reg_717;
wire   [72:0] grp_fu_460_p2;
reg   [72:0] r_V_52_reg_722;
wire   [72:0] grp_fu_470_p2;
reg   [72:0] r_V_53_reg_727;
reg   [0:0] ap_phi_mux_write_flag17_0_phi_fu_241_p6;
wire    ap_CS_fsm_state4;
wire   [1:0] output_vector_offset_read_read_fu_178_p2;
reg   [0:0] ap_phi_mux_write_flag14_0_phi_fu_255_p6;
reg   [0:0] ap_phi_mux_write_flag_0_phi_fu_269_p6;
reg   [0:0] ap_phi_mux_write_flag20_0_phi_fu_283_p6;
reg   [0:0] ap_phi_mux_write_flag23_0_phi_fu_297_p6;
reg   [0:0] ap_phi_mux_write_flag26_0_phi_fu_311_p6;
reg   [39:0] ap_phi_mux_phi_ln19_phi_fu_325_p6;
reg   [39:0] ap_phi_mux_phi_ln19_1_phi_fu_338_p6;
reg   [39:0] ap_phi_mux_phi_ln19_2_phi_fu_351_p6;
wire  signed [39:0] grp_fu_404_p1;
wire  signed [39:0] grp_fu_417_p1;
wire  signed [39:0] grp_fu_430_p1;
wire  signed [39:0] grp_fu_440_p1;
wire  signed [39:0] grp_fu_450_p1;
wire  signed [39:0] grp_fu_460_p1;
wire  signed [39:0] grp_fu_470_p1;
wire   [72:0] ret_V_fu_476_p2;
wire   [72:0] ret_V_35_fu_480_p2;
wire   [72:0] ret_V_36_fu_495_p2;
wire   [72:0] ret_V_37_fu_509_p2;
wire   [39:0] trunc_ln_fu_485_p4;
wire   [39:0] trunc_ln818_5_fu_499_p4;
wire   [39:0] select_ln19_fu_526_p3;
wire   [39:0] select_ln19_1_fu_534_p3;
wire   [39:0] select_ln19_2_fu_542_p3;
wire   [39:0] select_ln19_3_fu_550_p3;
wire   [39:0] select_ln19_4_fu_558_p3;
wire   [39:0] select_ln19_5_fu_566_p3;
reg   [39:0] ap_return_0_preg;
reg   [39:0] ap_return_1_preg;
reg   [39:0] ap_return_2_preg;
reg   [39:0] ap_return_3_preg;
reg   [39:0] ap_return_4_preg;
reg   [39:0] ap_return_5_preg;
reg   [39:0] ap_return_6_preg;
reg   [39:0] ap_return_7_preg;
reg   [39:0] ap_return_8_preg;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_return_0_preg = 40'd0;
#0 ap_return_1_preg = 40'd0;
#0 ap_return_2_preg = 40'd0;
#0 ap_return_3_preg = 40'd0;
#0 ap_return_4_preg = 40'd0;
#0 ap_return_5_preg = 40'd0;
#0 ap_return_6_preg = 40'd0;
#0 ap_return_7_preg = 40'd0;
#0 ap_return_8_preg = 40'd0;
end

threed_render_hls_mux_32_40_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 40 ),
    .din1_WIDTH( 40 ),
    .din2_WIDTH( 40 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 40 ))
mux_32_40_1_1_U63(
    .din0(p_read),
    .din1(p_read1),
    .din2(p_read2),
    .din3(input_vector_offset),
    .dout(r_V_fu_361_p5)
);

threed_render_hls_mux_32_40_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 40 ),
    .din1_WIDTH( 40 ),
    .din2_WIDTH( 40 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 40 ))
mux_32_40_1_1_U64(
    .din0(p_read3),
    .din1(p_read4),
    .din2(p_read5),
    .din3(input_vector_offset),
    .dout(r_V_46_fu_373_p5)
);

threed_render_hls_mux_32_40_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 40 ),
    .din1_WIDTH( 40 ),
    .din2_WIDTH( 40 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 40 ))
mux_32_40_1_1_U65(
    .din0(p_read6),
    .din1(p_read7),
    .din2(p_read8),
    .din3(input_vector_offset),
    .dout(r_V_48_fu_385_p5)
);

threed_render_hls_mul_40s_40s_73_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 40 ),
    .din1_WIDTH( 40 ),
    .dout_WIDTH( 73 ))
mul_40s_40s_73_2_1_U66(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_read9),
    .din1(grp_fu_404_p1),
    .ce(1'b1),
    .dout(grp_fu_404_p2)
);

threed_render_hls_mul_40s_40s_73_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 40 ),
    .din1_WIDTH( 40 ),
    .dout_WIDTH( 73 ))
mul_40s_40s_73_2_1_U67(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_read4_offset),
    .din1(grp_fu_417_p1),
    .ce(1'b1),
    .dout(grp_fu_417_p2)
);

threed_render_hls_mul_40s_40s_73_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 40 ),
    .din1_WIDTH( 40 ),
    .dout_WIDTH( 73 ))
mul_40s_40s_73_2_1_U68(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_read811),
    .din1(grp_fu_430_p1),
    .ce(1'b1),
    .dout(grp_fu_430_p2)
);

threed_render_hls_mul_40s_40s_73_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 40 ),
    .din1_WIDTH( 40 ),
    .dout_WIDTH( 73 ))
mul_40s_40s_73_2_1_U69(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_read1_offset),
    .din1(grp_fu_440_p1),
    .ce(1'b1),
    .dout(grp_fu_440_p2)
);

threed_render_hls_mul_40s_40s_73_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 40 ),
    .din1_WIDTH( 40 ),
    .dout_WIDTH( 73 ))
mul_40s_40s_73_2_1_U70(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_read5_offset),
    .din1(grp_fu_450_p1),
    .ce(1'b1),
    .dout(grp_fu_450_p2)
);

threed_render_hls_mul_40s_40s_73_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 40 ),
    .din1_WIDTH( 40 ),
    .dout_WIDTH( 73 ))
mul_40s_40s_73_2_1_U71(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_read210),
    .din1(grp_fu_460_p1),
    .ce(1'b1),
    .dout(grp_fu_460_p2)
);

threed_render_hls_mul_40s_40s_73_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 40 ),
    .din1_WIDTH( 40 ),
    .dout_WIDTH( 73 ))
mul_40s_40s_73_2_1_U72(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_read10),
    .din1(grp_fu_470_p1),
    .ce(1'b1),
    .dout(grp_fu_470_p2)
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
        ap_return_0_preg <= 40'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_return_0_preg <= select_ln19_fu_526_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_1_preg <= 40'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_return_1_preg <= select_ln19_1_fu_534_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_2_preg <= 40'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_return_2_preg <= select_ln19_2_fu_542_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_3_preg <= 40'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_return_3_preg <= select_ln19_3_fu_550_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_4_preg <= 40'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_return_4_preg <= select_ln19_4_fu_558_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_5_preg <= 40'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_return_5_preg <= select_ln19_5_fu_566_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_6_preg <= 40'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_return_6_preg <= ap_phi_mux_phi_ln19_phi_fu_325_p6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_7_preg <= 40'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_return_7_preg <= ap_phi_mux_phi_ln19_1_phi_fu_338_p6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_8_preg <= 40'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_return_8_preg <= ap_phi_mux_phi_ln19_2_phi_fu_351_p6;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        r_V_45_reg_697 <= grp_fu_404_p2;
        r_V_47_reg_702 <= grp_fu_417_p2;
        r_V_49_reg_707 <= grp_fu_430_p2;
        r_V_50_reg_712 <= grp_fu_440_p2;
        r_V_51_reg_717 <= grp_fu_450_p2;
        r_V_52_reg_722 <= grp_fu_460_p2;
        r_V_53_reg_727 <= grp_fu_470_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        r_V_46_reg_633 <= r_V_46_fu_373_p5;
        r_V_48_reg_638 <= r_V_48_fu_385_p5;
        r_V_reg_628 <= r_V_fu_361_p5;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state4) & (output_vector_offset_read_read_fu_178_p2 == 2'd1))) begin
        ap_phi_mux_phi_ln19_1_phi_fu_338_p6 = {{ret_V_37_fu_509_p2[72:33]}};
    end else if (((~(output_vector_offset_read_read_fu_178_p2 == 2'd1) & ~(output_vector_offset_read_read_fu_178_p2 == 2'd0) & (1'b1 == ap_CS_fsm_state4)) | ((1'b1 == ap_CS_fsm_state4) & (output_vector_offset_read_read_fu_178_p2 == 2'd0)))) begin
        ap_phi_mux_phi_ln19_1_phi_fu_338_p6 = p_read18;
    end else begin
        ap_phi_mux_phi_ln19_1_phi_fu_338_p6 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state4) & (output_vector_offset_read_read_fu_178_p2 == 2'd1)) | ((1'b1 == ap_CS_fsm_state4) & (output_vector_offset_read_read_fu_178_p2 == 2'd0)))) begin
        ap_phi_mux_phi_ln19_2_phi_fu_351_p6 = p_read19;
    end else if ((~(output_vector_offset_read_read_fu_178_p2 == 2'd1) & ~(output_vector_offset_read_read_fu_178_p2 == 2'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_phi_mux_phi_ln19_2_phi_fu_351_p6 = {{ret_V_37_fu_509_p2[72:33]}};
    end else begin
        ap_phi_mux_phi_ln19_2_phi_fu_351_p6 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (output_vector_offset_read_read_fu_178_p2 == 2'd0))) begin
        ap_phi_mux_phi_ln19_phi_fu_325_p6 = {{ret_V_37_fu_509_p2[72:33]}};
    end else if (((~(output_vector_offset_read_read_fu_178_p2 == 2'd1) & ~(output_vector_offset_read_read_fu_178_p2 == 2'd0) & (1'b1 == ap_CS_fsm_state4)) | ((1'b1 == ap_CS_fsm_state4) & (output_vector_offset_read_read_fu_178_p2 == 2'd1)))) begin
        ap_phi_mux_phi_ln19_phi_fu_325_p6 = p_read17;
    end else begin
        ap_phi_mux_phi_ln19_phi_fu_325_p6 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (output_vector_offset_read_read_fu_178_p2 == 2'd1))) begin
        ap_phi_mux_write_flag14_0_phi_fu_255_p6 = 1'd1;
    end else if (((~(output_vector_offset_read_read_fu_178_p2 == 2'd1) & ~(output_vector_offset_read_read_fu_178_p2 == 2'd0) & (1'b1 == ap_CS_fsm_state4)) | ((1'b1 == ap_CS_fsm_state4) & (output_vector_offset_read_read_fu_178_p2 == 2'd0)))) begin
        ap_phi_mux_write_flag14_0_phi_fu_255_p6 = 1'd0;
    end else begin
        ap_phi_mux_write_flag14_0_phi_fu_255_p6 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state4) & (output_vector_offset_read_read_fu_178_p2 == 2'd1)) | ((1'b1 == ap_CS_fsm_state4) & (output_vector_offset_read_read_fu_178_p2 == 2'd0)))) begin
        ap_phi_mux_write_flag17_0_phi_fu_241_p6 = 1'd0;
    end else if ((~(output_vector_offset_read_read_fu_178_p2 == 2'd1) & ~(output_vector_offset_read_read_fu_178_p2 == 2'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_phi_mux_write_flag17_0_phi_fu_241_p6 = 1'd1;
    end else begin
        ap_phi_mux_write_flag17_0_phi_fu_241_p6 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (output_vector_offset_read_read_fu_178_p2 == 2'd0))) begin
        ap_phi_mux_write_flag20_0_phi_fu_283_p6 = 1'd1;
    end else if (((~(output_vector_offset_read_read_fu_178_p2 == 2'd1) & ~(output_vector_offset_read_read_fu_178_p2 == 2'd0) & (1'b1 == ap_CS_fsm_state4)) | ((1'b1 == ap_CS_fsm_state4) & (output_vector_offset_read_read_fu_178_p2 == 2'd1)))) begin
        ap_phi_mux_write_flag20_0_phi_fu_283_p6 = 1'd0;
    end else begin
        ap_phi_mux_write_flag20_0_phi_fu_283_p6 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (output_vector_offset_read_read_fu_178_p2 == 2'd1))) begin
        ap_phi_mux_write_flag23_0_phi_fu_297_p6 = 1'd1;
    end else if (((~(output_vector_offset_read_read_fu_178_p2 == 2'd1) & ~(output_vector_offset_read_read_fu_178_p2 == 2'd0) & (1'b1 == ap_CS_fsm_state4)) | ((1'b1 == ap_CS_fsm_state4) & (output_vector_offset_read_read_fu_178_p2 == 2'd0)))) begin
        ap_phi_mux_write_flag23_0_phi_fu_297_p6 = 1'd0;
    end else begin
        ap_phi_mux_write_flag23_0_phi_fu_297_p6 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state4) & (output_vector_offset_read_read_fu_178_p2 == 2'd1)) | ((1'b1 == ap_CS_fsm_state4) & (output_vector_offset_read_read_fu_178_p2 == 2'd0)))) begin
        ap_phi_mux_write_flag26_0_phi_fu_311_p6 = 1'd0;
    end else if ((~(output_vector_offset_read_read_fu_178_p2 == 2'd1) & ~(output_vector_offset_read_read_fu_178_p2 == 2'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_phi_mux_write_flag26_0_phi_fu_311_p6 = 1'd1;
    end else begin
        ap_phi_mux_write_flag26_0_phi_fu_311_p6 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (output_vector_offset_read_read_fu_178_p2 == 2'd0))) begin
        ap_phi_mux_write_flag_0_phi_fu_269_p6 = 1'd1;
    end else if (((~(output_vector_offset_read_read_fu_178_p2 == 2'd1) & ~(output_vector_offset_read_read_fu_178_p2 == 2'd0) & (1'b1 == ap_CS_fsm_state4)) | ((1'b1 == ap_CS_fsm_state4) & (output_vector_offset_read_read_fu_178_p2 == 2'd1)))) begin
        ap_phi_mux_write_flag_0_phi_fu_269_p6 = 1'd0;
    end else begin
        ap_phi_mux_write_flag_0_phi_fu_269_p6 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_return_0 = select_ln19_fu_526_p3;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_return_1 = select_ln19_1_fu_534_p3;
    end else begin
        ap_return_1 = ap_return_1_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_return_2 = select_ln19_2_fu_542_p3;
    end else begin
        ap_return_2 = ap_return_2_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_return_3 = select_ln19_3_fu_550_p3;
    end else begin
        ap_return_3 = ap_return_3_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_return_4 = select_ln19_4_fu_558_p3;
    end else begin
        ap_return_4 = ap_return_4_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_return_5 = select_ln19_5_fu_566_p3;
    end else begin
        ap_return_5 = ap_return_5_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_return_6 = ap_phi_mux_phi_ln19_phi_fu_325_p6;
    end else begin
        ap_return_6 = ap_return_6_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_return_7 = ap_phi_mux_phi_ln19_1_phi_fu_338_p6;
    end else begin
        ap_return_7 = ap_return_7_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_return_8 = ap_phi_mux_phi_ln19_2_phi_fu_351_p6;
    end else begin
        ap_return_8 = ap_return_8_preg;
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
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign grp_fu_404_p1 = sext_ln1270_fu_397_p1;

assign grp_fu_417_p1 = sext_ln1270_9_fu_410_p1;

assign grp_fu_430_p1 = sext_ln1270_10_fu_423_p1;

assign grp_fu_440_p1 = sext_ln1270_fu_397_p1;

assign grp_fu_450_p1 = sext_ln1270_9_fu_410_p1;

assign grp_fu_460_p1 = sext_ln1270_fu_397_p1;

assign grp_fu_470_p1 = sext_ln1270_10_fu_423_p1;

assign output_vector_offset_read_read_fu_178_p2 = output_vector_offset;

assign ret_V_35_fu_480_p2 = (ret_V_fu_476_p2 + r_V_49_reg_707);

assign ret_V_36_fu_495_p2 = (r_V_51_reg_717 + r_V_50_reg_712);

assign ret_V_37_fu_509_p2 = (r_V_52_reg_722 + r_V_53_reg_727);

assign ret_V_fu_476_p2 = (r_V_47_reg_702 + r_V_45_reg_697);

assign select_ln19_1_fu_534_p3 = ((ap_phi_mux_write_flag14_0_phi_fu_255_p6[0:0] == 1'b1) ? trunc_ln_fu_485_p4 : p_read12);

assign select_ln19_2_fu_542_p3 = ((ap_phi_mux_write_flag17_0_phi_fu_241_p6[0:0] == 1'b1) ? trunc_ln_fu_485_p4 : p_read13);

assign select_ln19_3_fu_550_p3 = ((ap_phi_mux_write_flag20_0_phi_fu_283_p6[0:0] == 1'b1) ? trunc_ln818_5_fu_499_p4 : p_read14);

assign select_ln19_4_fu_558_p3 = ((ap_phi_mux_write_flag23_0_phi_fu_297_p6[0:0] == 1'b1) ? trunc_ln818_5_fu_499_p4 : p_read15);

assign select_ln19_5_fu_566_p3 = ((ap_phi_mux_write_flag26_0_phi_fu_311_p6[0:0] == 1'b1) ? trunc_ln818_5_fu_499_p4 : p_read16);

assign select_ln19_fu_526_p3 = ((ap_phi_mux_write_flag_0_phi_fu_269_p6[0:0] == 1'b1) ? trunc_ln_fu_485_p4 : p_read11);

assign sext_ln1270_10_fu_423_p1 = $signed(r_V_48_reg_638);

assign sext_ln1270_9_fu_410_p1 = $signed(r_V_46_reg_633);

assign sext_ln1270_fu_397_p1 = $signed(r_V_reg_628);

assign trunc_ln818_5_fu_499_p4 = {{ret_V_36_fu_495_p2[72:33]}};

assign trunc_ln_fu_485_p4 = {{ret_V_35_fu_480_p2[72:33]}};

endmodule //threed_render_hls_matrix_mutiply_1
