
`include "dump_file_agent.svh"
`include "csv_file_dump.svh"
`include "sample_agent.svh"
`include "loop_sample_agent.svh"
`include "sample_manager.svh"
`include "nodf_module_interface.svh"
`include "nodf_module_monitor.svh"
`include "seq_loop_interface.svh"
`include "seq_loop_monitor.svh"
`include "upc_loop_interface.svh"
`include "upc_loop_monitor.svh"
`timescale 1ns/1ps

// top module for dataflow related monitors
module dataflow_monitor(
input logic clock,
input logic reset,
input logic finish
);




    nodf_module_intf module_intf_1(clock,reset);
    assign module_intf_1.ap_start = AESL_inst_threed_render_hls.ap_start;
    assign module_intf_1.ap_ready = AESL_inst_threed_render_hls.ap_ready;
    assign module_intf_1.ap_done = AESL_inst_threed_render_hls.ap_done;
    assign module_intf_1.ap_continue = 1'b1;
    assign module_intf_1.finish = finish;
    csv_file_dump mstatus_csv_dumper_1;
    nodf_module_monitor module_monitor_1;
    nodf_module_intf module_intf_2(clock,reset);
    assign module_intf_2.ap_start = AESL_inst_threed_render_hls.grp_rotation_matrix_initial_fu_840.ap_start;
    assign module_intf_2.ap_ready = AESL_inst_threed_render_hls.grp_rotation_matrix_initial_fu_840.ap_ready;
    assign module_intf_2.ap_done = AESL_inst_threed_render_hls.grp_rotation_matrix_initial_fu_840.ap_done;
    assign module_intf_2.ap_continue = 1'b1;
    assign module_intf_2.finish = finish;
    csv_file_dump mstatus_csv_dumper_2;
    nodf_module_monitor module_monitor_2;
    nodf_module_intf module_intf_3(clock,reset);
    assign module_intf_3.ap_start = AESL_inst_threed_render_hls.grp_rotation_matrix_initial_fu_840.grp_sin_or_cos_float_s_fu_88.ap_start;
    assign module_intf_3.ap_ready = AESL_inst_threed_render_hls.grp_rotation_matrix_initial_fu_840.grp_sin_or_cos_float_s_fu_88.ap_ready;
    assign module_intf_3.ap_done = AESL_inst_threed_render_hls.grp_rotation_matrix_initial_fu_840.grp_sin_or_cos_float_s_fu_88.ap_done;
    assign module_intf_3.ap_continue = 1'b1;
    assign module_intf_3.finish = finish;
    csv_file_dump mstatus_csv_dumper_3;
    nodf_module_monitor module_monitor_3;
    nodf_module_intf module_intf_4(clock,reset);
    assign module_intf_4.ap_start = AESL_inst_threed_render_hls.grp_rotation_matrix_initial_fu_840.grp_sin_or_cos_float_s_fu_88.grp_sin_or_cos_float_Pipeline_1_fu_268.ap_start;
    assign module_intf_4.ap_ready = AESL_inst_threed_render_hls.grp_rotation_matrix_initial_fu_840.grp_sin_or_cos_float_s_fu_88.grp_sin_or_cos_float_Pipeline_1_fu_268.ap_ready;
    assign module_intf_4.ap_done = AESL_inst_threed_render_hls.grp_rotation_matrix_initial_fu_840.grp_sin_or_cos_float_s_fu_88.grp_sin_or_cos_float_Pipeline_1_fu_268.ap_done;
    assign module_intf_4.ap_continue = 1'b1;
    assign module_intf_4.finish = finish;
    csv_file_dump mstatus_csv_dumper_4;
    nodf_module_monitor module_monitor_4;
    nodf_module_intf module_intf_5(clock,reset);
    assign module_intf_5.ap_start = AESL_inst_threed_render_hls.grp_rotation_matrix_initial_fu_840.grp_sin_or_cos_float_s_fu_88.grp_sin_or_cos_float_Pipeline_2_fu_276.ap_start;
    assign module_intf_5.ap_ready = AESL_inst_threed_render_hls.grp_rotation_matrix_initial_fu_840.grp_sin_or_cos_float_s_fu_88.grp_sin_or_cos_float_Pipeline_2_fu_276.ap_ready;
    assign module_intf_5.ap_done = AESL_inst_threed_render_hls.grp_rotation_matrix_initial_fu_840.grp_sin_or_cos_float_s_fu_88.grp_sin_or_cos_float_Pipeline_2_fu_276.ap_done;
    assign module_intf_5.ap_continue = 1'b1;
    assign module_intf_5.finish = finish;
    csv_file_dump mstatus_csv_dumper_5;
    nodf_module_monitor module_monitor_5;
    nodf_module_intf module_intf_6(clock,reset);
    assign module_intf_6.ap_start = AESL_inst_threed_render_hls.grp_matrix_mutiply_fu_905.ap_start;
    assign module_intf_6.ap_ready = AESL_inst_threed_render_hls.grp_matrix_mutiply_fu_905.ap_ready;
    assign module_intf_6.ap_done = AESL_inst_threed_render_hls.grp_matrix_mutiply_fu_905.ap_done;
    assign module_intf_6.ap_continue = 1'b1;
    assign module_intf_6.finish = finish;
    csv_file_dump mstatus_csv_dumper_6;
    nodf_module_monitor module_monitor_6;
    nodf_module_intf module_intf_7(clock,reset);
    assign module_intf_7.ap_start = AESL_inst_threed_render_hls.grp_matrix_mutiply_1_fu_933.ap_start;
    assign module_intf_7.ap_ready = AESL_inst_threed_render_hls.grp_matrix_mutiply_1_fu_933.ap_ready;
    assign module_intf_7.ap_done = AESL_inst_threed_render_hls.grp_matrix_mutiply_1_fu_933.ap_done;
    assign module_intf_7.ap_continue = 1'b1;
    assign module_intf_7.finish = finish;
    csv_file_dump mstatus_csv_dumper_7;
    nodf_module_monitor module_monitor_7;
    nodf_module_intf module_intf_8(clock,reset);
    assign module_intf_8.ap_start = AESL_inst_threed_render_hls.grp_matrix_mutiply_2_fu_976.ap_start;
    assign module_intf_8.ap_ready = AESL_inst_threed_render_hls.grp_matrix_mutiply_2_fu_976.ap_ready;
    assign module_intf_8.ap_done = AESL_inst_threed_render_hls.grp_matrix_mutiply_2_fu_976.ap_done;
    assign module_intf_8.ap_continue = 1'b1;
    assign module_intf_8.finish = finish;
    csv_file_dump mstatus_csv_dumper_8;
    nodf_module_monitor module_monitor_8;

    seq_loop_intf#(266) seq_loop_intf_1(clock,reset);
    assign seq_loop_intf_1.pre_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state10;
    assign seq_loop_intf_1.pre_states_valid = 1'b1;
    assign seq_loop_intf_1.post_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state10;
    assign seq_loop_intf_1.post_states_valid = 1'b1;
    assign seq_loop_intf_1.quit_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state11;
    assign seq_loop_intf_1.quit_states_valid = 1'b1;
    assign seq_loop_intf_1.cur_state = AESL_inst_threed_render_hls.ap_CS_fsm;
    assign seq_loop_intf_1.iter_start_state = AESL_inst_threed_render_hls.ap_ST_fsm_state11;
    assign seq_loop_intf_1.iter_end_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state18;
    assign seq_loop_intf_1.iter_end_states_valid = 1'b1;
    assign seq_loop_intf_1.one_state_loop = 1'b0;
    assign seq_loop_intf_1.one_state_block = 1'b0;
    assign seq_loop_intf_1.finish = finish;
    csv_file_dump seq_loop_csv_dumper_1;
    seq_loop_monitor #(266) seq_loop_monitor_1;
    seq_loop_intf#(266) seq_loop_intf_2(clock,reset);
    assign seq_loop_intf_2.pre_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state9;
    assign seq_loop_intf_2.pre_states_valid = 1'b1;
    assign seq_loop_intf_2.post_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state9;
    assign seq_loop_intf_2.post_states_valid = 1'b1;
    assign seq_loop_intf_2.quit_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state10;
    assign seq_loop_intf_2.quit_states_valid = 1'b1;
    assign seq_loop_intf_2.cur_state = AESL_inst_threed_render_hls.ap_CS_fsm;
    assign seq_loop_intf_2.iter_start_state = AESL_inst_threed_render_hls.ap_ST_fsm_state10;
    assign seq_loop_intf_2.iter_end_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state11;
    assign seq_loop_intf_2.iter_end_states_valid = 1'b1;
    assign seq_loop_intf_2.one_state_loop = 1'b0;
    assign seq_loop_intf_2.one_state_block = 1'b0;
    assign seq_loop_intf_2.finish = finish;
    csv_file_dump seq_loop_csv_dumper_2;
    seq_loop_monitor #(266) seq_loop_monitor_2;
    seq_loop_intf#(266) seq_loop_intf_3(clock,reset);
    assign seq_loop_intf_3.pre_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state8;
    assign seq_loop_intf_3.pre_states_valid = 1'b1;
    assign seq_loop_intf_3.post_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state19;
    assign seq_loop_intf_3.post_states_valid = 1'b1;
    assign seq_loop_intf_3.quit_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state9;
    assign seq_loop_intf_3.quit_states_valid = 1'b1;
    assign seq_loop_intf_3.cur_state = AESL_inst_threed_render_hls.ap_CS_fsm;
    assign seq_loop_intf_3.iter_start_state = AESL_inst_threed_render_hls.ap_ST_fsm_state9;
    assign seq_loop_intf_3.iter_end_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state10;
    assign seq_loop_intf_3.iter_end_states_valid = 1'b1;
    assign seq_loop_intf_3.one_state_loop = 1'b0;
    assign seq_loop_intf_3.one_state_block = 1'b0;
    assign seq_loop_intf_3.finish = finish;
    csv_file_dump seq_loop_csv_dumper_3;
    seq_loop_monitor #(266) seq_loop_monitor_3;
    seq_loop_intf#(266) seq_loop_intf_4(clock,reset);
    assign seq_loop_intf_4.pre_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state32;
    assign seq_loop_intf_4.pre_states_valid = 1'b1;
    assign seq_loop_intf_4.post_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state162;
    assign seq_loop_intf_4.post_states_valid = 1'b1;
    assign seq_loop_intf_4.quit_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state33;
    assign seq_loop_intf_4.quit_states_valid = 1'b1;
    assign seq_loop_intf_4.cur_state = AESL_inst_threed_render_hls.ap_CS_fsm;
    assign seq_loop_intf_4.iter_start_state = AESL_inst_threed_render_hls.ap_ST_fsm_state33;
    assign seq_loop_intf_4.iter_end_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state161;
    assign seq_loop_intf_4.iter_end_states_valid = 1'b1;
    assign seq_loop_intf_4.one_state_loop = 1'b0;
    assign seq_loop_intf_4.one_state_block = 1'b0;
    assign seq_loop_intf_4.finish = finish;
    csv_file_dump seq_loop_csv_dumper_4;
    seq_loop_monitor #(266) seq_loop_monitor_4;
    seq_loop_intf#(266) seq_loop_intf_5(clock,reset);
    assign seq_loop_intf_5.pre_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state162;
    assign seq_loop_intf_5.pre_states_valid = 1'b1;
    assign seq_loop_intf_5.post_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state162;
    assign seq_loop_intf_5.post_states_valid = 1'b1;
    assign seq_loop_intf_5.quit_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state163;
    assign seq_loop_intf_5.quit_states_valid = 1'b1;
    assign seq_loop_intf_5.cur_state = AESL_inst_threed_render_hls.ap_CS_fsm;
    assign seq_loop_intf_5.iter_start_state = AESL_inst_threed_render_hls.ap_ST_fsm_state163;
    assign seq_loop_intf_5.iter_end_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state163;
    assign seq_loop_intf_5.iter_end_states_valid = 1'b1;
    assign seq_loop_intf_5.one_state_loop = 1'b1;
    assign seq_loop_intf_5.one_state_block = AESL_inst_threed_render_hls.ap_ST_fsm_state163_blk;
    assign seq_loop_intf_5.finish = finish;
    csv_file_dump seq_loop_csv_dumper_5;
    seq_loop_monitor #(266) seq_loop_monitor_5;
    seq_loop_intf#(266) seq_loop_intf_6(clock,reset);
    assign seq_loop_intf_6.pre_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state33;
    assign seq_loop_intf_6.pre_states_valid = 1'b1;
    assign seq_loop_intf_6.post_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state164;
    assign seq_loop_intf_6.post_states_valid = 1'b1;
    assign seq_loop_intf_6.quit_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state162;
    assign seq_loop_intf_6.quit_states_valid = 1'b1;
    assign seq_loop_intf_6.cur_state = AESL_inst_threed_render_hls.ap_CS_fsm;
    assign seq_loop_intf_6.iter_start_state = AESL_inst_threed_render_hls.ap_ST_fsm_state162;
    assign seq_loop_intf_6.iter_end_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state163;
    assign seq_loop_intf_6.iter_end_states_valid = 1'b1;
    assign seq_loop_intf_6.one_state_loop = 1'b0;
    assign seq_loop_intf_6.one_state_block = 1'b0;
    assign seq_loop_intf_6.finish = finish;
    csv_file_dump seq_loop_csv_dumper_6;
    seq_loop_monitor #(266) seq_loop_monitor_6;
    seq_loop_intf#(266) seq_loop_intf_7(clock,reset);
    assign seq_loop_intf_7.pre_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state244;
    assign seq_loop_intf_7.pre_states_valid = 1'b1;
    assign seq_loop_intf_7.post_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state168;
    assign seq_loop_intf_7.post_states_valid = 1'b1;
    assign seq_loop_intf_7.quit_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state245;
    assign seq_loop_intf_7.quit_states_valid = 1'b1;
    assign seq_loop_intf_7.cur_state = AESL_inst_threed_render_hls.ap_CS_fsm;
    assign seq_loop_intf_7.iter_start_state = AESL_inst_threed_render_hls.ap_ST_fsm_state245;
    assign seq_loop_intf_7.iter_end_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state251;
    assign seq_loop_intf_7.iter_end_states_valid = 1'b1;
    assign seq_loop_intf_7.one_state_loop = 1'b0;
    assign seq_loop_intf_7.one_state_block = 1'b0;
    assign seq_loop_intf_7.finish = finish;
    csv_file_dump seq_loop_csv_dumper_7;
    seq_loop_monitor #(266) seq_loop_monitor_7;
    seq_loop_intf#(266) seq_loop_intf_8(clock,reset);
    assign seq_loop_intf_8.pre_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state167;
    assign seq_loop_intf_8.pre_states_valid = 1'b1;
    assign seq_loop_intf_8.post_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state164;
    assign seq_loop_intf_8.post_states_valid = 1'b1;
    assign seq_loop_intf_8.quit_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state206;
    assign seq_loop_intf_8.quit_states_valid = 1'b1;
    assign seq_loop_intf_8.cur_state = AESL_inst_threed_render_hls.ap_CS_fsm;
    assign seq_loop_intf_8.iter_start_state = AESL_inst_threed_render_hls.ap_ST_fsm_state168;
    assign seq_loop_intf_8.iter_end_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state245;
    assign seq_loop_intf_8.iter_end_states_valid = 1'b1;
    assign seq_loop_intf_8.one_state_loop = 1'b0;
    assign seq_loop_intf_8.one_state_block = 1'b0;
    assign seq_loop_intf_8.finish = finish;
    csv_file_dump seq_loop_csv_dumper_8;
    seq_loop_monitor #(266) seq_loop_monitor_8;
    seq_loop_intf#(266) seq_loop_intf_9(clock,reset);
    assign seq_loop_intf_9.pre_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state162;
    assign seq_loop_intf_9.pre_states_valid = 1'b1;
    assign seq_loop_intf_9.post_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state252;
    assign seq_loop_intf_9.post_states_valid = 1'b1;
    assign seq_loop_intf_9.quit_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state164;
    assign seq_loop_intf_9.quit_states_valid = 1'b1;
    assign seq_loop_intf_9.cur_state = AESL_inst_threed_render_hls.ap_CS_fsm;
    assign seq_loop_intf_9.iter_start_state = AESL_inst_threed_render_hls.ap_ST_fsm_state164;
    assign seq_loop_intf_9.iter_end_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state206;
    assign seq_loop_intf_9.iter_end_states_valid = 1'b1;
    assign seq_loop_intf_9.one_state_loop = 1'b0;
    assign seq_loop_intf_9.one_state_block = 1'b0;
    assign seq_loop_intf_9.finish = finish;
    csv_file_dump seq_loop_csv_dumper_9;
    seq_loop_monitor #(266) seq_loop_monitor_9;
    seq_loop_intf#(266) seq_loop_intf_10(clock,reset);
    assign seq_loop_intf_10.pre_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state254;
    assign seq_loop_intf_10.pre_states_valid = 1'b1;
    assign seq_loop_intf_10.post_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state254;
    assign seq_loop_intf_10.post_states_valid = 1'b1;
    assign seq_loop_intf_10.quit_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state255;
    assign seq_loop_intf_10.quit_states_valid = 1'b1;
    assign seq_loop_intf_10.cur_state = AESL_inst_threed_render_hls.ap_CS_fsm;
    assign seq_loop_intf_10.iter_start_state = AESL_inst_threed_render_hls.ap_ST_fsm_state255;
    assign seq_loop_intf_10.iter_end_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state261;
    assign seq_loop_intf_10.iter_end_states_valid = 1'b1;
    assign seq_loop_intf_10.one_state_loop = 1'b0;
    assign seq_loop_intf_10.one_state_block = 1'b0;
    assign seq_loop_intf_10.finish = finish;
    csv_file_dump seq_loop_csv_dumper_10;
    seq_loop_monitor #(266) seq_loop_monitor_10;
    seq_loop_intf#(266) seq_loop_intf_11(clock,reset);
    assign seq_loop_intf_11.pre_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state253;
    assign seq_loop_intf_11.pre_states_valid = 1'b1;
    assign seq_loop_intf_11.post_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state262;
    assign seq_loop_intf_11.post_states_valid = 1'b1;
    assign seq_loop_intf_11.quit_loop_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state254;
    assign seq_loop_intf_11.quit_states_valid = 1'b1;
    assign seq_loop_intf_11.cur_state = AESL_inst_threed_render_hls.ap_CS_fsm;
    assign seq_loop_intf_11.iter_start_state = AESL_inst_threed_render_hls.ap_ST_fsm_state254;
    assign seq_loop_intf_11.iter_end_state0 = AESL_inst_threed_render_hls.ap_ST_fsm_state255;
    assign seq_loop_intf_11.iter_end_states_valid = 1'b1;
    assign seq_loop_intf_11.one_state_loop = 1'b0;
    assign seq_loop_intf_11.one_state_block = 1'b0;
    assign seq_loop_intf_11.finish = finish;
    csv_file_dump seq_loop_csv_dumper_11;
    seq_loop_monitor #(266) seq_loop_monitor_11;
    upc_loop_intf#(1) upc_loop_intf_1(clock,reset);
    assign upc_loop_intf_1.cur_state = AESL_inst_threed_render_hls.grp_rotation_matrix_initial_fu_840.grp_sin_or_cos_float_s_fu_88.grp_sin_or_cos_float_Pipeline_2_fu_276.ap_CS_fsm;
    assign upc_loop_intf_1.iter_start_state = AESL_inst_threed_render_hls.grp_rotation_matrix_initial_fu_840.grp_sin_or_cos_float_s_fu_88.grp_sin_or_cos_float_Pipeline_2_fu_276.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_1.iter_end_state = AESL_inst_threed_render_hls.grp_rotation_matrix_initial_fu_840.grp_sin_or_cos_float_s_fu_88.grp_sin_or_cos_float_Pipeline_2_fu_276.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_1.quit_state = AESL_inst_threed_render_hls.grp_rotation_matrix_initial_fu_840.grp_sin_or_cos_float_s_fu_88.grp_sin_or_cos_float_Pipeline_2_fu_276.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_1.iter_start_block = AESL_inst_threed_render_hls.grp_rotation_matrix_initial_fu_840.grp_sin_or_cos_float_s_fu_88.grp_sin_or_cos_float_Pipeline_2_fu_276.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_1.iter_end_block = AESL_inst_threed_render_hls.grp_rotation_matrix_initial_fu_840.grp_sin_or_cos_float_s_fu_88.grp_sin_or_cos_float_Pipeline_2_fu_276.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_1.quit_block = AESL_inst_threed_render_hls.grp_rotation_matrix_initial_fu_840.grp_sin_or_cos_float_s_fu_88.grp_sin_or_cos_float_Pipeline_2_fu_276.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_1.iter_start_enable = AESL_inst_threed_render_hls.grp_rotation_matrix_initial_fu_840.grp_sin_or_cos_float_s_fu_88.grp_sin_or_cos_float_Pipeline_2_fu_276.ap_enable_reg_pp0_iter0;
    assign upc_loop_intf_1.iter_end_enable = AESL_inst_threed_render_hls.grp_rotation_matrix_initial_fu_840.grp_sin_or_cos_float_s_fu_88.grp_sin_or_cos_float_Pipeline_2_fu_276.ap_enable_reg_pp0_iter1;
    assign upc_loop_intf_1.quit_enable = AESL_inst_threed_render_hls.grp_rotation_matrix_initial_fu_840.grp_sin_or_cos_float_s_fu_88.grp_sin_or_cos_float_Pipeline_2_fu_276.ap_enable_reg_pp0_iter1;
    assign upc_loop_intf_1.loop_start = AESL_inst_threed_render_hls.grp_rotation_matrix_initial_fu_840.grp_sin_or_cos_float_s_fu_88.grp_sin_or_cos_float_Pipeline_2_fu_276.ap_start;
    assign upc_loop_intf_1.loop_ready = AESL_inst_threed_render_hls.grp_rotation_matrix_initial_fu_840.grp_sin_or_cos_float_s_fu_88.grp_sin_or_cos_float_Pipeline_2_fu_276.ap_ready;
    assign upc_loop_intf_1.loop_done = AESL_inst_threed_render_hls.grp_rotation_matrix_initial_fu_840.grp_sin_or_cos_float_s_fu_88.grp_sin_or_cos_float_Pipeline_2_fu_276.ap_done_int;
    assign upc_loop_intf_1.loop_continue = 1'b1;
    assign upc_loop_intf_1.quit_at_end = 1'b1;
    assign upc_loop_intf_1.finish = finish;
    csv_file_dump upc_loop_csv_dumper_1;
    upc_loop_monitor #(1) upc_loop_monitor_1;

    sample_manager sample_manager_inst;

initial begin
    sample_manager_inst = new;



    mstatus_csv_dumper_1 = new("./module_status1.csv");
    module_monitor_1 = new(module_intf_1,mstatus_csv_dumper_1);
    mstatus_csv_dumper_2 = new("./module_status2.csv");
    module_monitor_2 = new(module_intf_2,mstatus_csv_dumper_2);
    mstatus_csv_dumper_3 = new("./module_status3.csv");
    module_monitor_3 = new(module_intf_3,mstatus_csv_dumper_3);
    mstatus_csv_dumper_4 = new("./module_status4.csv");
    module_monitor_4 = new(module_intf_4,mstatus_csv_dumper_4);
    mstatus_csv_dumper_5 = new("./module_status5.csv");
    module_monitor_5 = new(module_intf_5,mstatus_csv_dumper_5);
    mstatus_csv_dumper_6 = new("./module_status6.csv");
    module_monitor_6 = new(module_intf_6,mstatus_csv_dumper_6);
    mstatus_csv_dumper_7 = new("./module_status7.csv");
    module_monitor_7 = new(module_intf_7,mstatus_csv_dumper_7);
    mstatus_csv_dumper_8 = new("./module_status8.csv");
    module_monitor_8 = new(module_intf_8,mstatus_csv_dumper_8);



    seq_loop_csv_dumper_1 = new("./seq_loop_status1.csv");
    seq_loop_monitor_1 = new(seq_loop_intf_1,seq_loop_csv_dumper_1);
    seq_loop_csv_dumper_2 = new("./seq_loop_status2.csv");
    seq_loop_monitor_2 = new(seq_loop_intf_2,seq_loop_csv_dumper_2);
    seq_loop_csv_dumper_3 = new("./seq_loop_status3.csv");
    seq_loop_monitor_3 = new(seq_loop_intf_3,seq_loop_csv_dumper_3);
    seq_loop_csv_dumper_4 = new("./seq_loop_status4.csv");
    seq_loop_monitor_4 = new(seq_loop_intf_4,seq_loop_csv_dumper_4);
    seq_loop_csv_dumper_5 = new("./seq_loop_status5.csv");
    seq_loop_monitor_5 = new(seq_loop_intf_5,seq_loop_csv_dumper_5);
    seq_loop_csv_dumper_6 = new("./seq_loop_status6.csv");
    seq_loop_monitor_6 = new(seq_loop_intf_6,seq_loop_csv_dumper_6);
    seq_loop_csv_dumper_7 = new("./seq_loop_status7.csv");
    seq_loop_monitor_7 = new(seq_loop_intf_7,seq_loop_csv_dumper_7);
    seq_loop_csv_dumper_8 = new("./seq_loop_status8.csv");
    seq_loop_monitor_8 = new(seq_loop_intf_8,seq_loop_csv_dumper_8);
    seq_loop_csv_dumper_9 = new("./seq_loop_status9.csv");
    seq_loop_monitor_9 = new(seq_loop_intf_9,seq_loop_csv_dumper_9);
    seq_loop_csv_dumper_10 = new("./seq_loop_status10.csv");
    seq_loop_monitor_10 = new(seq_loop_intf_10,seq_loop_csv_dumper_10);
    seq_loop_csv_dumper_11 = new("./seq_loop_status11.csv");
    seq_loop_monitor_11 = new(seq_loop_intf_11,seq_loop_csv_dumper_11);

    upc_loop_csv_dumper_1 = new("./upc_loop_status1.csv");
    upc_loop_monitor_1 = new(upc_loop_intf_1,upc_loop_csv_dumper_1);

    sample_manager_inst.add_one_monitor(module_monitor_1);
    sample_manager_inst.add_one_monitor(module_monitor_2);
    sample_manager_inst.add_one_monitor(module_monitor_3);
    sample_manager_inst.add_one_monitor(module_monitor_4);
    sample_manager_inst.add_one_monitor(module_monitor_5);
    sample_manager_inst.add_one_monitor(module_monitor_6);
    sample_manager_inst.add_one_monitor(module_monitor_7);
    sample_manager_inst.add_one_monitor(module_monitor_8);
    sample_manager_inst.add_one_monitor(seq_loop_monitor_1);
    sample_manager_inst.add_one_monitor(seq_loop_monitor_2);
    sample_manager_inst.add_one_monitor(seq_loop_monitor_3);
    sample_manager_inst.add_one_monitor(seq_loop_monitor_4);
    sample_manager_inst.add_one_monitor(seq_loop_monitor_5);
    sample_manager_inst.add_one_monitor(seq_loop_monitor_6);
    sample_manager_inst.add_one_monitor(seq_loop_monitor_7);
    sample_manager_inst.add_one_monitor(seq_loop_monitor_8);
    sample_manager_inst.add_one_monitor(seq_loop_monitor_9);
    sample_manager_inst.add_one_monitor(seq_loop_monitor_10);
    sample_manager_inst.add_one_monitor(seq_loop_monitor_11);
    sample_manager_inst.add_one_monitor(upc_loop_monitor_1);
    
    fork
        sample_manager_inst.start_monitor();
        last_transaction_done;
    join
    disable fork;

    sample_manager_inst.start_dump();
end

    task last_transaction_done();
        wait(reset == 0);
        while(1) begin
            if (finish == 1'b1) begin
                @(negedge clock);
                break;
            end
            else
                @(posedge clock);
        end
    endtask


endmodule
