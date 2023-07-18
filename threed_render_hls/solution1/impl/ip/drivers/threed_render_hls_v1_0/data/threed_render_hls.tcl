# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
# Tool Version Limit: 2019.12
# Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
# ==============================================================
proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "XThreed_render_hls" \
        "NUM_INSTANCES" \
        "DEVICE_ID" \
        "C_S_AXI_CONTROL_BASEADDR" \
        "C_S_AXI_CONTROL_HIGHADDR" \
        "C_S_AXI_THREED_RENDER_HLS_IO_BASEADDR" \
        "C_S_AXI_THREED_RENDER_HLS_IO_HIGHADDR"

    xdefine_config_file $drv_handle "xthreed_render_hls_g.c" "XThreed_render_hls" \
        "DEVICE_ID" \
        "C_S_AXI_CONTROL_BASEADDR" \
        "C_S_AXI_THREED_RENDER_HLS_IO_BASEADDR"

    xdefine_canonical_xpars $drv_handle "xparameters.h" "XThreed_render_hls" \
        "DEVICE_ID" \
        "C_S_AXI_CONTROL_BASEADDR" \
        "C_S_AXI_CONTROL_HIGHADDR" \
        "C_S_AXI_THREED_RENDER_HLS_IO_BASEADDR" \
        "C_S_AXI_THREED_RENDER_HLS_IO_HIGHADDR"
}

