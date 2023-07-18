// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Version: 2022.2.2
// Copyright (C) Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module threed_render_hls_matrix_mutiply (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        input_vector_address0,
        input_vector_ce0,
        input_vector_q0,
        input_vector_address1,
        input_vector_ce1,
        input_vector_q1,
        input_vector_offset,
        input_vector_offset1,
        p_read5,
        p_read6,
        p_read9,
        p_read10,
        p_read,
        p_read1,
        p_read2,
        p_read3,
        p_read4,
        p_read7,
        p_read8,
        p_read11,
        p_read12,
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

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] input_vector_address0;
output   input_vector_ce0;
input  [39:0] input_vector_q0;
output  [9:0] input_vector_address1;
output   input_vector_ce1;
input  [39:0] input_vector_q1;
input  [6:0] input_vector_offset;
input  [1:0] input_vector_offset1;
input  [39:0] p_read5;
input  [39:0] p_read6;
input  [39:0] p_read9;
input  [39:0] p_read10;
input  [39:0] p_read;
input  [39:0] p_read1;
input  [39:0] p_read2;
input  [39:0] p_read3;
input  [39:0] p_read4;
input  [39:0] p_read7;
input  [39:0] p_read8;
input  [39:0] p_read11;
input  [39:0] p_read12;
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
reg[9:0] input_vector_address0;
reg input_vector_ce0;
reg input_vector_ce1;
reg[39:0] ap_return_0;
reg[39:0] ap_return_1;
reg[39:0] ap_return_2;
reg[39:0] ap_return_3;
reg[39:0] ap_return_4;
reg[39:0] ap_return_5;
reg[39:0] ap_return_6;
reg[39:0] ap_return_7;
reg[39:0] ap_return_8;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [9:0] sub_ln1271_1_fu_370_p2;
reg   [9:0] sub_ln1271_1_reg_579;
wire    ap_CS_fsm_state2;
reg   [39:0] r_V_reg_596;
wire    ap_CS_fsm_state3;
reg   [39:0] r_V_54_reg_601;
wire  signed [72:0] sext_ln1270_fu_396_p1;
wire    ap_CS_fsm_state4;
wire  signed [72:0] sext_ln1270_11_fu_399_p1;
wire    ap_CS_fsm_state5;
wire   [72:0] grp_fu_406_p2;
reg   [72:0] r_V_55_reg_643;
wire   [72:0] grp_fu_416_p2;
reg   [72:0] r_V_56_reg_648;
wire   [72:0] grp_fu_426_p2;
reg   [72:0] r_V_57_reg_653;
wire   [72:0] grp_fu_436_p2;
reg   [72:0] r_V_58_reg_658;
reg   [0:0] ap_phi_mux_write_flag8_0_phi_fu_198_p6;
wire    ap_CS_fsm_state6;
wire   [1:0] output_vector_offset_read_read_fu_102_p2;
reg   [0:0] ap_phi_mux_write_flag4_0_phi_fu_212_p6;
reg   [0:0] ap_phi_mux_write_flag_0_phi_fu_226_p6;
reg   [0:0] ap_phi_mux_write_flag11_0_phi_fu_240_p6;
reg   [0:0] ap_phi_mux_write_flag14_0_phi_fu_254_p6;
reg   [0:0] ap_phi_mux_write_flag17_0_phi_fu_268_p6;
reg   [39:0] ap_phi_mux_phi_ln19_phi_fu_282_p6;
reg   [39:0] ap_phi_mux_phi_ln19_3_phi_fu_295_p6;
reg   [39:0] ap_phi_mux_phi_ln19_4_phi_fu_308_p6;
wire   [63:0] zext_ln1271_4_fu_381_p1;
wire   [63:0] zext_ln1271_5_fu_391_p1;
wire   [63:0] zext_ln1271_3_fu_442_p1;
wire   [8:0] tmp_fu_326_p3;
wire   [9:0] zext_ln1271_2_fu_334_p1;
wire   [9:0] zext_ln1271_fu_322_p1;
wire   [9:0] sub_ln1271_fu_338_p2;
wire  signed [10:0] sext_ln1271_fu_344_p1;
wire   [10:0] input_vector_offset1_cast3_fu_318_p1;
wire   [10:0] add_ln1271_fu_348_p2;
wire   [7:0] trunc_ln1271_1_fu_358_p1;
wire   [9:0] p_shl_fu_362_p3;
wire   [9:0] trunc_ln1271_fu_354_p1;
wire   [9:0] add_ln1271_1_fu_376_p2;
wire   [9:0] add_ln1271_2_fu_386_p2;
wire  signed [39:0] grp_fu_406_p1;
wire  signed [39:0] grp_fu_416_p1;
wire  signed [39:0] grp_fu_426_p1;
wire  signed [39:0] grp_fu_436_p1;
wire   [72:0] ret_V_fu_446_p2;
wire   [72:0] ret_V_38_fu_460_p2;
wire   [39:0] trunc_ln_fu_450_p4;
wire   [39:0] select_ln19_fu_477_p3;
wire   [39:0] select_ln19_6_fu_485_p3;
wire   [39:0] select_ln19_7_fu_493_p3;
wire   [39:0] select_ln19_8_fu_501_p3;
wire   [39:0] select_ln19_9_fu_509_p3;
wire   [39:0] select_ln19_10_fu_517_p3;
reg   [39:0] ap_return_0_preg;
reg   [39:0] ap_return_1_preg;
reg   [39:0] ap_return_2_preg;
reg   [39:0] ap_return_3_preg;
reg   [39:0] ap_return_4_preg;
reg   [39:0] ap_return_5_preg;
reg   [39:0] ap_return_6_preg;
reg   [39:0] ap_return_7_preg;
reg   [39:0] ap_return_8_preg;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
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

threed_render_hls_mul_40s_40s_73_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 40 ),
    .din1_WIDTH( 40 ),
    .dout_WIDTH( 73 ))
mul_40s_40s_73_2_1_U41(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_read5),
    .din1(grp_fu_406_p1),
    .ce(1'b1),
    .dout(grp_fu_406_p2)
);

threed_render_hls_mul_40s_40s_73_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 40 ),
    .din1_WIDTH( 40 ),
    .dout_WIDTH( 73 ))
mul_40s_40s_73_2_1_U42(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_read9),
    .din1(grp_fu_416_p1),
    .ce(1'b1),
    .dout(grp_fu_416_p2)
);

threed_render_hls_mul_40s_40s_73_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 40 ),
    .din1_WIDTH( 40 ),
    .dout_WIDTH( 73 ))
mul_40s_40s_73_2_1_U43(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_read6),
    .din1(grp_fu_426_p1),
    .ce(1'b1),
    .dout(grp_fu_426_p2)
);

threed_render_hls_mul_40s_40s_73_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 40 ),
    .din1_WIDTH( 40 ),
    .dout_WIDTH( 73 ))
mul_40s_40s_73_2_1_U44(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_read10),
    .din1(grp_fu_436_p1),
    .ce(1'b1),
    .dout(grp_fu_436_p2)
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
        if ((1'b1 == ap_CS_fsm_state6)) begin
            ap_return_0_preg <= select_ln19_fu_477_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_1_preg <= 40'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            ap_return_1_preg <= select_ln19_6_fu_485_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_2_preg <= 40'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            ap_return_2_preg <= select_ln19_7_fu_493_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_3_preg <= 40'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            ap_return_3_preg <= select_ln19_8_fu_501_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_4_preg <= 40'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            ap_return_4_preg <= select_ln19_9_fu_509_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_5_preg <= 40'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            ap_return_5_preg <= select_ln19_10_fu_517_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_6_preg <= 40'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            ap_return_6_preg <= ap_phi_mux_phi_ln19_phi_fu_282_p6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_7_preg <= 40'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            ap_return_7_preg <= ap_phi_mux_phi_ln19_3_phi_fu_295_p6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_8_preg <= 40'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            ap_return_8_preg <= ap_phi_mux_phi_ln19_4_phi_fu_308_p6;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        r_V_54_reg_601 <= input_vector_q0;
        r_V_reg_596 <= input_vector_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        r_V_55_reg_643 <= grp_fu_406_p2;
        r_V_56_reg_648 <= grp_fu_416_p2;
        r_V_57_reg_653 <= grp_fu_426_p2;
        r_V_58_reg_658 <= grp_fu_436_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        sub_ln1271_1_reg_579 <= sub_ln1271_1_fu_370_p2;
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

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (output_vector_offset_read_read_fu_102_p2 == 2'd1))) begin
        ap_phi_mux_phi_ln19_3_phi_fu_295_p6 = {{ret_V_38_fu_460_p2[72:33]}};
    end else if (((~(output_vector_offset_read_read_fu_102_p2 == 2'd1) & ~(output_vector_offset_read_read_fu_102_p2 == 2'd0) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_CS_fsm_state6) & (output_vector_offset_read_read_fu_102_p2 == 2'd0)))) begin
        ap_phi_mux_phi_ln19_3_phi_fu_295_p6 = p_read11;
    end else begin
        ap_phi_mux_phi_ln19_3_phi_fu_295_p6 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state6) & (output_vector_offset_read_read_fu_102_p2 == 2'd1)) | ((1'b1 == ap_CS_fsm_state6) & (output_vector_offset_read_read_fu_102_p2 == 2'd0)))) begin
        ap_phi_mux_phi_ln19_4_phi_fu_308_p6 = p_read12;
    end else if ((~(output_vector_offset_read_read_fu_102_p2 == 2'd1) & ~(output_vector_offset_read_read_fu_102_p2 == 2'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_phi_mux_phi_ln19_4_phi_fu_308_p6 = {{ret_V_38_fu_460_p2[72:33]}};
    end else begin
        ap_phi_mux_phi_ln19_4_phi_fu_308_p6 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (output_vector_offset_read_read_fu_102_p2 == 2'd0))) begin
        ap_phi_mux_phi_ln19_phi_fu_282_p6 = {{ret_V_38_fu_460_p2[72:33]}};
    end else if (((~(output_vector_offset_read_read_fu_102_p2 == 2'd1) & ~(output_vector_offset_read_read_fu_102_p2 == 2'd0) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_CS_fsm_state6) & (output_vector_offset_read_read_fu_102_p2 == 2'd1)))) begin
        ap_phi_mux_phi_ln19_phi_fu_282_p6 = p_read8;
    end else begin
        ap_phi_mux_phi_ln19_phi_fu_282_p6 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (output_vector_offset_read_read_fu_102_p2 == 2'd0))) begin
        ap_phi_mux_write_flag11_0_phi_fu_240_p6 = 1'd1;
    end else if (((~(output_vector_offset_read_read_fu_102_p2 == 2'd1) & ~(output_vector_offset_read_read_fu_102_p2 == 2'd0) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_CS_fsm_state6) & (output_vector_offset_read_read_fu_102_p2 == 2'd1)))) begin
        ap_phi_mux_write_flag11_0_phi_fu_240_p6 = 1'd0;
    end else begin
        ap_phi_mux_write_flag11_0_phi_fu_240_p6 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (output_vector_offset_read_read_fu_102_p2 == 2'd1))) begin
        ap_phi_mux_write_flag14_0_phi_fu_254_p6 = 1'd1;
    end else if (((~(output_vector_offset_read_read_fu_102_p2 == 2'd1) & ~(output_vector_offset_read_read_fu_102_p2 == 2'd0) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_CS_fsm_state6) & (output_vector_offset_read_read_fu_102_p2 == 2'd0)))) begin
        ap_phi_mux_write_flag14_0_phi_fu_254_p6 = 1'd0;
    end else begin
        ap_phi_mux_write_flag14_0_phi_fu_254_p6 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state6) & (output_vector_offset_read_read_fu_102_p2 == 2'd1)) | ((1'b1 == ap_CS_fsm_state6) & (output_vector_offset_read_read_fu_102_p2 == 2'd0)))) begin
        ap_phi_mux_write_flag17_0_phi_fu_268_p6 = 1'd0;
    end else if ((~(output_vector_offset_read_read_fu_102_p2 == 2'd1) & ~(output_vector_offset_read_read_fu_102_p2 == 2'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_phi_mux_write_flag17_0_phi_fu_268_p6 = 1'd1;
    end else begin
        ap_phi_mux_write_flag17_0_phi_fu_268_p6 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (output_vector_offset_read_read_fu_102_p2 == 2'd1))) begin
        ap_phi_mux_write_flag4_0_phi_fu_212_p6 = 1'd1;
    end else if (((~(output_vector_offset_read_read_fu_102_p2 == 2'd1) & ~(output_vector_offset_read_read_fu_102_p2 == 2'd0) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_CS_fsm_state6) & (output_vector_offset_read_read_fu_102_p2 == 2'd0)))) begin
        ap_phi_mux_write_flag4_0_phi_fu_212_p6 = 1'd0;
    end else begin
        ap_phi_mux_write_flag4_0_phi_fu_212_p6 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state6) & (output_vector_offset_read_read_fu_102_p2 == 2'd1)) | ((1'b1 == ap_CS_fsm_state6) & (output_vector_offset_read_read_fu_102_p2 == 2'd0)))) begin
        ap_phi_mux_write_flag8_0_phi_fu_198_p6 = 1'd0;
    end else if ((~(output_vector_offset_read_read_fu_102_p2 == 2'd1) & ~(output_vector_offset_read_read_fu_102_p2 == 2'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_phi_mux_write_flag8_0_phi_fu_198_p6 = 1'd1;
    end else begin
        ap_phi_mux_write_flag8_0_phi_fu_198_p6 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (output_vector_offset_read_read_fu_102_p2 == 2'd0))) begin
        ap_phi_mux_write_flag_0_phi_fu_226_p6 = 1'd1;
    end else if (((~(output_vector_offset_read_read_fu_102_p2 == 2'd1) & ~(output_vector_offset_read_read_fu_102_p2 == 2'd0) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_CS_fsm_state6) & (output_vector_offset_read_read_fu_102_p2 == 2'd1)))) begin
        ap_phi_mux_write_flag_0_phi_fu_226_p6 = 1'd0;
    end else begin
        ap_phi_mux_write_flag_0_phi_fu_226_p6 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_return_0 = select_ln19_fu_477_p3;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_return_1 = select_ln19_6_fu_485_p3;
    end else begin
        ap_return_1 = ap_return_1_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_return_2 = select_ln19_7_fu_493_p3;
    end else begin
        ap_return_2 = ap_return_2_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_return_3 = select_ln19_8_fu_501_p3;
    end else begin
        ap_return_3 = ap_return_3_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_return_4 = select_ln19_9_fu_509_p3;
    end else begin
        ap_return_4 = ap_return_4_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_return_5 = select_ln19_10_fu_517_p3;
    end else begin
        ap_return_5 = ap_return_5_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_return_6 = ap_phi_mux_phi_ln19_phi_fu_282_p6;
    end else begin
        ap_return_6 = ap_return_6_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_return_7 = ap_phi_mux_phi_ln19_3_phi_fu_295_p6;
    end else begin
        ap_return_7 = ap_return_7_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_return_8 = ap_phi_mux_phi_ln19_4_phi_fu_308_p6;
    end else begin
        ap_return_8 = ap_return_8_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        input_vector_address0 = zext_ln1271_3_fu_442_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_vector_address0 = zext_ln1271_5_fu_391_p1;
    end else begin
        input_vector_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        input_vector_ce0 = 1'b1;
    end else begin
        input_vector_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        input_vector_ce1 = 1'b1;
    end else begin
        input_vector_ce1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
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
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln1271_1_fu_376_p2 = (sub_ln1271_1_reg_579 + 10'd1);

assign add_ln1271_2_fu_386_p2 = (sub_ln1271_1_reg_579 + 10'd2);

assign add_ln1271_fu_348_p2 = ($signed(sext_ln1271_fu_344_p1) + $signed(input_vector_offset1_cast3_fu_318_p1));

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign grp_fu_406_p1 = sext_ln1270_fu_396_p1;

assign grp_fu_416_p1 = sext_ln1270_11_fu_399_p1;

assign grp_fu_426_p1 = sext_ln1270_fu_396_p1;

assign grp_fu_436_p1 = sext_ln1270_11_fu_399_p1;

assign input_vector_address1 = zext_ln1271_4_fu_381_p1;

assign input_vector_offset1_cast3_fu_318_p1 = input_vector_offset1;

assign output_vector_offset_read_read_fu_102_p2 = output_vector_offset;

assign p_shl_fu_362_p3 = {{trunc_ln1271_1_fu_358_p1}, {2'd0}};

assign ret_V_38_fu_460_p2 = (r_V_57_reg_653 + r_V_58_reg_658);

assign ret_V_fu_446_p2 = (r_V_55_reg_643 + r_V_56_reg_648);

assign select_ln19_10_fu_517_p3 = ((ap_phi_mux_write_flag17_0_phi_fu_268_p6[0:0] == 1'b1) ? trunc_ln_fu_450_p4 : p_read7);

assign select_ln19_6_fu_485_p3 = ((ap_phi_mux_write_flag4_0_phi_fu_212_p6[0:0] == 1'b1) ? input_vector_q0 : p_read1);

assign select_ln19_7_fu_493_p3 = ((ap_phi_mux_write_flag8_0_phi_fu_198_p6[0:0] == 1'b1) ? input_vector_q0 : p_read2);

assign select_ln19_8_fu_501_p3 = ((ap_phi_mux_write_flag11_0_phi_fu_240_p6[0:0] == 1'b1) ? trunc_ln_fu_450_p4 : p_read3);

assign select_ln19_9_fu_509_p3 = ((ap_phi_mux_write_flag14_0_phi_fu_254_p6[0:0] == 1'b1) ? trunc_ln_fu_450_p4 : p_read4);

assign select_ln19_fu_477_p3 = ((ap_phi_mux_write_flag_0_phi_fu_226_p6[0:0] == 1'b1) ? input_vector_q0 : p_read);

assign sext_ln1270_11_fu_399_p1 = $signed(r_V_54_reg_601);

assign sext_ln1270_fu_396_p1 = $signed(r_V_reg_596);

assign sext_ln1271_fu_344_p1 = $signed(sub_ln1271_fu_338_p2);

assign sub_ln1271_1_fu_370_p2 = (p_shl_fu_362_p3 - trunc_ln1271_fu_354_p1);

assign sub_ln1271_fu_338_p2 = (zext_ln1271_2_fu_334_p1 - zext_ln1271_fu_322_p1);

assign tmp_fu_326_p3 = {{input_vector_offset}, {2'd0}};

assign trunc_ln1271_1_fu_358_p1 = add_ln1271_fu_348_p2[7:0];

assign trunc_ln1271_fu_354_p1 = add_ln1271_fu_348_p2[9:0];

assign trunc_ln_fu_450_p4 = {{ret_V_fu_446_p2[72:33]}};

assign zext_ln1271_2_fu_334_p1 = tmp_fu_326_p3;

assign zext_ln1271_3_fu_442_p1 = sub_ln1271_1_reg_579;

assign zext_ln1271_4_fu_381_p1 = add_ln1271_1_fu_376_p2;

assign zext_ln1271_5_fu_391_p1 = add_ln1271_2_fu_386_p2;

assign zext_ln1271_fu_322_p1 = input_vector_offset;

endmodule //threed_render_hls_matrix_mutiply