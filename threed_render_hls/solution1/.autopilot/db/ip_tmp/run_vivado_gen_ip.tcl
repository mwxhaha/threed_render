create_project prj -part xc7z020-clg400-1 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "E:/fpga/fpgacamp2023/threed_render/threed_render_hls/solution1/syn/verilog/threed_render_hls_fdiv_32ns_32ns_32_16_no_dsp_1_ip.tcl"
source "E:/fpga/fpgacamp2023/threed_render/threed_render_hls/solution1/syn/verilog/threed_render_hls_fmul_32ns_32ns_32_4_max_dsp_1_ip.tcl"
source "E:/fpga/fpgacamp2023/threed_render/threed_render_hls/solution1/syn/verilog/threed_render_hls_fpext_32ns_64_2_no_dsp_1_ip.tcl"
source "E:/fpga/fpgacamp2023/threed_render/threed_render_hls/solution1/syn/verilog/threed_render_hls_fsqrt_32ns_32ns_32_16_no_dsp_1_ip.tcl"
