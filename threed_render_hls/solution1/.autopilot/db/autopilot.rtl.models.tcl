set SynModuleInfo {
  {SRCNAME sin_or_cos<float>_Pipeline_1 MODELNAME sin_or_cos_float_Pipeline_1 RTLNAME threed_render_hls_sin_or_cos_float_Pipeline_1
    SUBMODULES {
      {MODELNAME threed_render_hls_flow_control_loop_pipe_sequential_init RTLNAME threed_render_hls_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME threed_render_hls_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME sin_or_cos<float>_Pipeline_2 MODELNAME sin_or_cos_float_Pipeline_2 RTLNAME threed_render_hls_sin_or_cos_float_Pipeline_2}
  {SRCNAME sin_or_cos<float> MODELNAME sin_or_cos_float_s RTLNAME threed_render_hls_sin_or_cos_float_s
    SUBMODULES {
      {MODELNAME threed_render_hls_mul_80s_24ns_80_5_1 RTLNAME threed_render_hls_mul_80s_24ns_80_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME threed_render_hls_mux_83_1_1_1 RTLNAME threed_render_hls_mux_83_1_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME threed_render_hls_mux_164_1_1_1 RTLNAME threed_render_hls_mux_164_1_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME threed_render_hls_mul_23s_22ns_45_1_1 RTLNAME threed_render_hls_mul_23s_22ns_45_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME threed_render_hls_mul_30s_29ns_58_2_1 RTLNAME threed_render_hls_mul_30s_29ns_58_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME threed_render_hls_mul_mul_15ns_15ns_30_4_1 RTLNAME threed_render_hls_mul_mul_15ns_15ns_30_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME threed_render_hls_mul_mul_15ns_15s_30_4_1 RTLNAME threed_render_hls_mul_mul_15ns_15s_30_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME threed_render_hls_sin_or_cos_float_s_ref_4oPi_table_100_V_ROM_1P_LUTRAM_1R RTLNAME threed_render_hls_sin_or_cos_float_s_ref_4oPi_table_100_V_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME threed_render_hls_sin_or_cos_float_s_second_order_float_sin_cos_K0_V_ROM_1P_LUTRAM_1R RTLNAME threed_render_hls_sin_or_cos_float_s_second_order_float_sin_cos_K0_V_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME threed_render_hls_sin_or_cos_float_s_second_order_float_sin_cos_K1_V_ROM_1P_LUTRAM_1R RTLNAME threed_render_hls_sin_or_cos_float_s_second_order_float_sin_cos_K1_V_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME threed_render_hls_sin_or_cos_float_s_second_order_float_sin_cos_K2_V_ROM_1P_LUTRAM_1R RTLNAME threed_render_hls_sin_or_cos_float_s_second_order_float_sin_cos_K2_V_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME rotation_matrix_initial MODELNAME rotation_matrix_initial RTLNAME threed_render_hls_rotation_matrix_initial
    SUBMODULES {
      {MODELNAME threed_render_hls_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME threed_render_hls_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME threed_render_hls_fdiv_32ns_32ns_32_16_no_dsp_1 RTLNAME threed_render_hls_fdiv_32ns_32ns_32_16_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 15 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME matrix_mutiply MODELNAME matrix_mutiply RTLNAME threed_render_hls_matrix_mutiply
    SUBMODULES {
      {MODELNAME threed_render_hls_mul_40s_40s_73_2_1 RTLNAME threed_render_hls_mul_40s_40s_73_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME matrix_mutiply.1 MODELNAME matrix_mutiply_1 RTLNAME threed_render_hls_matrix_mutiply_1
    SUBMODULES {
      {MODELNAME threed_render_hls_mux_32_40_1_1 RTLNAME threed_render_hls_mux_32_40_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME matrix_mutiply.2 MODELNAME matrix_mutiply_2 RTLNAME threed_render_hls_matrix_mutiply_2
    SUBMODULES {
      {MODELNAME threed_render_hls_mul_40s_34ns_73_2_1 RTLNAME threed_render_hls_mul_40s_34ns_73_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME threed_render_hls_mul_40s_35ns_73_2_1 RTLNAME threed_render_hls_mul_40s_35ns_73_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME threed_render_hls_sdiv_73ns_40s_40_77_seq_1 RTLNAME threed_render_hls_sdiv_73ns_40s_40_77_seq_1 BINDTYPE op TYPE sdiv IMPL auto_seq LATENCY 76 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME threed_render_hls MODELNAME threed_render_hls RTLNAME threed_render_hls IS_TOP 1
    SUBMODULES {
      {MODELNAME threed_render_hls_fpext_32ns_64_2_no_dsp_1 RTLNAME threed_render_hls_fpext_32ns_64_2_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME threed_render_hls_fsqrt_32ns_32ns_32_16_no_dsp_1 RTLNAME threed_render_hls_fsqrt_32ns_32ns_32_16_no_dsp_1 BINDTYPE op TYPE fsqrt IMPL fabric LATENCY 15 ALLOW_PRAGMA 1}
      {MODELNAME threed_render_hls_udiv_8ns_8ns_7_12_seq_1 RTLNAME threed_render_hls_udiv_8ns_8ns_7_12_seq_1 BINDTYPE op TYPE udiv IMPL auto_seq LATENCY 11 ALLOW_PRAGMA 1}
      {MODELNAME threed_render_hls_mul_42s_44ns_85_5_1 RTLNAME threed_render_hls_mul_42s_44ns_85_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME threed_render_hls_mul_40s_40s_80_2_1 RTLNAME threed_render_hls_mul_40s_40s_80_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME threed_render_hls_sdiv_73ns_40s_73_77_seq_1 RTLNAME threed_render_hls_sdiv_73ns_40s_73_77_seq_1 BINDTYPE op TYPE sdiv IMPL auto_seq LATENCY 76 ALLOW_PRAGMA 1}
      {MODELNAME threed_render_hls_udiv_35s_8ns_35_39_seq_1 RTLNAME threed_render_hls_udiv_35s_8ns_35_39_seq_1 BINDTYPE op TYPE udiv IMPL auto_seq LATENCY 38 ALLOW_PRAGMA 1}
      {MODELNAME threed_render_hls_mul_41s_41s_73_2_1 RTLNAME threed_render_hls_mul_41s_41s_73_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME threed_render_hls_mul_8ns_8ns_16_1_1 RTLNAME threed_render_hls_mul_8ns_8ns_16_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME threed_render_hls_mesh_V_RAM_AUTO_1R1W RTLNAME threed_render_hls_mesh_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME threed_render_hls_color_V_RAM_AUTO_1R1W RTLNAME threed_render_hls_color_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME threed_render_hls_mesh_after_projection_V_RAM_AUTO_1R1W RTLNAME threed_render_hls_mesh_after_projection_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME threed_render_hls_screen_V_RAM_AUTO_1R1W RTLNAME threed_render_hls_screen_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME threed_render_hls_gmem_m_axi RTLNAME threed_render_hls_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME threed_render_hls_control_s_axi RTLNAME threed_render_hls_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME threed_render_hls_threed_render_hls_io_s_axi RTLNAME threed_render_hls_threed_render_hls_io_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
