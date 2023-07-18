// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of mesh_transmission
//        bit 31~0 - mesh_transmission[31:0] (Read/Write)
// 0x14 : Data signal of mesh_transmission
//        bit 31~0 - mesh_transmission[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of screen_transmission
//        bit 31~0 - screen_transmission[31:0] (Read/Write)
// 0x20 : Data signal of screen_transmission
//        bit 31~0 - screen_transmission[63:32] (Read/Write)
// 0x24 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XTHREED_RENDER_HLS_CONTROL_ADDR_MESH_TRANSMISSION_DATA   0x10
#define XTHREED_RENDER_HLS_CONTROL_BITS_MESH_TRANSMISSION_DATA   64
#define XTHREED_RENDER_HLS_CONTROL_ADDR_SCREEN_TRANSMISSION_DATA 0x1c
#define XTHREED_RENDER_HLS_CONTROL_BITS_SCREEN_TRANSMISSION_DATA 64

// threed_render_hls_io
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of triangle_number
//        bit 7~0 - triangle_number[7:0] (Read/Write)
//        others  - reserved
// 0x14 : reserved
// 0x18 : Data signal of screen_height
//        bit 7~0 - screen_height[7:0] (Read/Write)
//        others  - reserved
// 0x1c : reserved
// 0x20 : Data signal of screen_width
//        bit 7~0 - screen_width[7:0] (Read/Write)
//        others  - reserved
// 0x24 : reserved
// 0x28 : Data signal of rotation_x_theta
//        bit 31~0 - rotation_x_theta[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of rotation_y_theta
//        bit 31~0 - rotation_y_theta[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of rotation_z_theta
//        bit 31~0 - rotation_z_theta[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of distance_transmission
//        bit 31~0 - distance_transmission[31:0] (Read/Write)
// 0x44 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_AP_CTRL                    0x00
#define XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_GIE                        0x04
#define XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_IER                        0x08
#define XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_ISR                        0x0c
#define XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_TRIANGLE_NUMBER_DATA       0x10
#define XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_BITS_TRIANGLE_NUMBER_DATA       8
#define XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_SCREEN_HEIGHT_DATA         0x18
#define XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_BITS_SCREEN_HEIGHT_DATA         8
#define XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_SCREEN_WIDTH_DATA          0x20
#define XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_BITS_SCREEN_WIDTH_DATA          8
#define XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_ROTATION_X_THETA_DATA      0x28
#define XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_BITS_ROTATION_X_THETA_DATA      32
#define XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_ROTATION_Y_THETA_DATA      0x30
#define XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_BITS_ROTATION_Y_THETA_DATA      32
#define XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_ROTATION_Z_THETA_DATA      0x38
#define XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_BITS_ROTATION_Z_THETA_DATA      32
#define XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_DISTANCE_TRANSMISSION_DATA 0x40
#define XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_BITS_DISTANCE_TRANSMISSION_DATA 32

