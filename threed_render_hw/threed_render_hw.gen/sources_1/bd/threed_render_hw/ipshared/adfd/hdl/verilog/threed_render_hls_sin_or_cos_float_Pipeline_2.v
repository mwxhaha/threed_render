// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Version: 2022.2.2
// Copyright (C) Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module threed_render_hls_sin_or_cos_float_Pipeline_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        result_V,
        c_1_022_reload,
        c_0_023_reload,
        shift_out,
        shift_out_ap_vld,
        in_shift_V_1_cast_out,
        in_shift_V_1_cast_out_ap_vld,
        shift_1_out,
        shift_1_out_ap_vld,
        trunc_ln10_out,
        trunc_ln10_out_ap_vld,
        ap_return
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [28:0] result_V;
input  [31:0] c_1_022_reload;
input  [31:0] c_0_023_reload;
output  [31:0] shift_out;
output   shift_out_ap_vld;
output  [27:0] in_shift_V_1_cast_out;
output   in_shift_V_1_cast_out_ap_vld;
output  [31:0] shift_1_out;
output   shift_1_out_ap_vld;
output  [27:0] trunc_ln10_out;
output   trunc_ln10_out_ap_vld;
output  [0:0] ap_return;

reg ap_idle;
reg[31:0] shift_out;
reg shift_out_ap_vld;
reg in_shift_V_1_cast_out_ap_vld;
reg shift_1_out_ap_vld;
reg trunc_ln10_out_ap_vld;
reg[0:0] ap_return;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln321_fu_179_p2;
wire   [0:0] icmp_ln318_fu_141_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln318_reg_281;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] select_ln319_fu_157_p3;
reg   [31:0] select_ln319_reg_285;
reg   [0:0] isNeg_reg_291;
wire   [31:0] sub_ln1512_fu_173_p2;
reg   [31:0] sub_ln1512_reg_297;
reg   [0:0] icmp_ln321_reg_302;
reg   [0:0] ap_phi_mux_UnifiedRetVal_phi_fu_115_p4;
wire    ap_block_pp0_stage0;
reg   [28:0] in_shift_V_fu_54;
wire   [28:0] in_shift_V_2_fu_236_p1;
wire    ap_loop_init;
reg   [31:0] shift_fu_58;
wire   [31:0] shift_1_fu_202_p2;
wire   [31:0] shift_load_1_load_fu_255_p1;
reg   [1:0] i_3_fu_62;
wire   [1:0] add_ln318_fu_147_p2;
reg   [1:0] ap_sig_allocacmp_i;
wire    ap_block_pp0_stage0_01001;
wire   [0:0] trunc_ln319_fu_153_p1;
wire   [31:0] zext_ln1488_fu_213_p1;
wire   [31:0] ush_fu_208_p3;
wire   [31:0] lshr_ln1488_fu_217_p2;
wire   [31:0] shl_ln1454_fu_223_p2;
wire   [31:0] select_ln1513_fu_229_p3;
reg   [0:0] ap_return_preg;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_86;
reg    ap_condition_239;
reg    ap_condition_242;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_return_preg = 1'd0;
#0 ap_done_reg = 1'b0;
end

threed_render_hls_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 1'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln321_reg_302 == 1'd0) | (icmp_ln318_reg_281 == 1'd1)))) begin
            ap_return_preg <= ap_phi_mux_UnifiedRetVal_phi_fu_115_p4;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if (((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
            ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((1'b1 == ap_condition_239)) begin
            i_3_fu_62 <= add_ln318_fu_147_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_3_fu_62 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            in_shift_V_fu_54 <= result_V;
        end else if ((1'b1 == ap_condition_242)) begin
            in_shift_V_fu_54 <= in_shift_V_2_fu_236_p1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            shift_fu_58 <= 32'd0;
        end else if ((1'b1 == ap_condition_242)) begin
            shift_fu_58 <= shift_1_fu_202_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln318_reg_281 <= icmp_ln318_fu_141_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln318_fu_141_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln321_reg_302 <= icmp_ln321_fu_179_p2;
        isNeg_reg_291 <= select_ln319_fu_157_p3[32'd31];
        select_ln319_reg_285 <= select_ln319_fu_157_p3;
        sub_ln1512_reg_297 <= sub_ln1512_fu_173_p2;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln318_fu_141_p2 == 1'd1) | (icmp_ln321_fu_179_p2 == 1'd0)))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_86)) begin
        if (((icmp_ln321_reg_302 == 1'd0) & (icmp_ln318_reg_281 == 1'd0))) begin
            ap_phi_mux_UnifiedRetVal_phi_fu_115_p4 = 1'd0;
        end else if ((icmp_ln318_reg_281 == 1'd1)) begin
            ap_phi_mux_UnifiedRetVal_phi_fu_115_p4 = 1'd1;
        end else begin
            ap_phi_mux_UnifiedRetVal_phi_fu_115_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_UnifiedRetVal_phi_fu_115_p4 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln321_reg_302 == 1'd0) | (icmp_ln318_reg_281 == 1'd1)))) begin
        ap_return = ap_phi_mux_UnifiedRetVal_phi_fu_115_p4;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i = 2'd0;
    end else begin
        ap_sig_allocacmp_i = i_3_fu_62;
    end
end

always @ (*) begin
    if ((((icmp_ln321_reg_302 == 1'd0) & (icmp_ln318_reg_281 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln318_reg_281 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        in_shift_V_1_cast_out_ap_vld = 1'b1;
    end else begin
        in_shift_V_1_cast_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln321_reg_302 == 1'd0) & (icmp_ln318_reg_281 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        shift_1_out_ap_vld = 1'b1;
    end else begin
        shift_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((icmp_ln318_reg_281 == 1'd1)) begin
            shift_out = shift_load_1_load_fu_255_p1;
        end else if (((icmp_ln321_reg_302 == 1'd0) & (icmp_ln318_reg_281 == 1'd0))) begin
            shift_out = shift_fu_58;
        end else begin
            shift_out = 'bx;
        end
    end else begin
        shift_out = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln321_reg_302 == 1'd0) & (icmp_ln318_reg_281 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln318_reg_281 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        shift_out_ap_vld = 1'b1;
    end else begin
        shift_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln321_reg_302 == 1'd0) & (icmp_ln318_reg_281 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln10_out_ap_vld = 1'b1;
    end else begin
        trunc_ln10_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln318_fu_147_p2 = (ap_sig_allocacmp_i + 2'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_239 = ((icmp_ln318_fu_141_p2 == 1'd0) & (icmp_ln321_fu_179_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_condition_242 = ((icmp_ln321_reg_302 == 1'd1) & (icmp_ln318_reg_281 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_condition_86 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln318_fu_141_p2 = ((ap_sig_allocacmp_i == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln321_fu_179_p2 = ((select_ln319_fu_157_p3 == 32'd16) ? 1'b1 : 1'b0);

assign in_shift_V_1_cast_out = in_shift_V_fu_54[27:0];

assign in_shift_V_2_fu_236_p1 = select_ln1513_fu_229_p3[28:0];

assign lshr_ln1488_fu_217_p2 = zext_ln1488_fu_213_p1 >> ush_fu_208_p3;

assign select_ln1513_fu_229_p3 = ((isNeg_reg_291[0:0] == 1'b1) ? lshr_ln1488_fu_217_p2 : shl_ln1454_fu_223_p2);

assign select_ln319_fu_157_p3 = ((trunc_ln319_fu_153_p1[0:0] == 1'b1) ? c_1_022_reload : c_0_023_reload);

assign shift_1_fu_202_p2 = (select_ln319_reg_285 + shift_fu_58);

assign shift_1_out = (select_ln319_reg_285 + shift_fu_58);

assign shift_load_1_load_fu_255_p1 = shift_fu_58;

assign shl_ln1454_fu_223_p2 = zext_ln1488_fu_213_p1 << ush_fu_208_p3;

assign sub_ln1512_fu_173_p2 = (32'd0 - select_ln319_fu_157_p3);

assign trunc_ln10_out = select_ln1513_fu_229_p3[27:0];

assign trunc_ln319_fu_153_p1 = ap_sig_allocacmp_i[0:0];

assign ush_fu_208_p3 = ((isNeg_reg_291[0:0] == 1'b1) ? sub_ln1512_reg_297 : select_ln319_reg_285);

assign zext_ln1488_fu_213_p1 = in_shift_V_fu_54;

endmodule //threed_render_hls_sin_or_cos_float_Pipeline_2
