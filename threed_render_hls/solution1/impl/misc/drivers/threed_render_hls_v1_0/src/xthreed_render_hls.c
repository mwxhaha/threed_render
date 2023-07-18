// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xthreed_render_hls.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XThreed_render_hls_CfgInitialize(XThreed_render_hls *InstancePtr, XThreed_render_hls_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->Threed_render_hls_io_BaseAddress = ConfigPtr->Threed_render_hls_io_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XThreed_render_hls_Start(XThreed_render_hls *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThreed_render_hls_ReadReg(InstancePtr->Threed_render_hls_io_BaseAddress, XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_AP_CTRL) & 0x80;
    XThreed_render_hls_WriteReg(InstancePtr->Threed_render_hls_io_BaseAddress, XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_AP_CTRL, Data | 0x01);
}

u32 XThreed_render_hls_IsDone(XThreed_render_hls *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThreed_render_hls_ReadReg(InstancePtr->Threed_render_hls_io_BaseAddress, XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XThreed_render_hls_IsIdle(XThreed_render_hls *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThreed_render_hls_ReadReg(InstancePtr->Threed_render_hls_io_BaseAddress, XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XThreed_render_hls_IsReady(XThreed_render_hls *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThreed_render_hls_ReadReg(InstancePtr->Threed_render_hls_io_BaseAddress, XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XThreed_render_hls_EnableAutoRestart(XThreed_render_hls *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThreed_render_hls_WriteReg(InstancePtr->Threed_render_hls_io_BaseAddress, XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_AP_CTRL, 0x80);
}

void XThreed_render_hls_DisableAutoRestart(XThreed_render_hls *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThreed_render_hls_WriteReg(InstancePtr->Threed_render_hls_io_BaseAddress, XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_AP_CTRL, 0);
}

void XThreed_render_hls_Set_mesh_transmission(XThreed_render_hls *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThreed_render_hls_WriteReg(InstancePtr->Control_BaseAddress, XTHREED_RENDER_HLS_CONTROL_ADDR_MESH_TRANSMISSION_DATA, (u32)(Data));
    XThreed_render_hls_WriteReg(InstancePtr->Control_BaseAddress, XTHREED_RENDER_HLS_CONTROL_ADDR_MESH_TRANSMISSION_DATA + 4, (u32)(Data >> 32));
}

u64 XThreed_render_hls_Get_mesh_transmission(XThreed_render_hls *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThreed_render_hls_ReadReg(InstancePtr->Control_BaseAddress, XTHREED_RENDER_HLS_CONTROL_ADDR_MESH_TRANSMISSION_DATA);
    Data += (u64)XThreed_render_hls_ReadReg(InstancePtr->Control_BaseAddress, XTHREED_RENDER_HLS_CONTROL_ADDR_MESH_TRANSMISSION_DATA + 4) << 32;
    return Data;
}

void XThreed_render_hls_Set_screen_transmission(XThreed_render_hls *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThreed_render_hls_WriteReg(InstancePtr->Control_BaseAddress, XTHREED_RENDER_HLS_CONTROL_ADDR_SCREEN_TRANSMISSION_DATA, (u32)(Data));
    XThreed_render_hls_WriteReg(InstancePtr->Control_BaseAddress, XTHREED_RENDER_HLS_CONTROL_ADDR_SCREEN_TRANSMISSION_DATA + 4, (u32)(Data >> 32));
}

u64 XThreed_render_hls_Get_screen_transmission(XThreed_render_hls *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThreed_render_hls_ReadReg(InstancePtr->Control_BaseAddress, XTHREED_RENDER_HLS_CONTROL_ADDR_SCREEN_TRANSMISSION_DATA);
    Data += (u64)XThreed_render_hls_ReadReg(InstancePtr->Control_BaseAddress, XTHREED_RENDER_HLS_CONTROL_ADDR_SCREEN_TRANSMISSION_DATA + 4) << 32;
    return Data;
}

void XThreed_render_hls_Set_triangle_number(XThreed_render_hls *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThreed_render_hls_WriteReg(InstancePtr->Threed_render_hls_io_BaseAddress, XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_TRIANGLE_NUMBER_DATA, Data);
}

u32 XThreed_render_hls_Get_triangle_number(XThreed_render_hls *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThreed_render_hls_ReadReg(InstancePtr->Threed_render_hls_io_BaseAddress, XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_TRIANGLE_NUMBER_DATA);
    return Data;
}

void XThreed_render_hls_Set_screen_height(XThreed_render_hls *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThreed_render_hls_WriteReg(InstancePtr->Threed_render_hls_io_BaseAddress, XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_SCREEN_HEIGHT_DATA, Data);
}

u32 XThreed_render_hls_Get_screen_height(XThreed_render_hls *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThreed_render_hls_ReadReg(InstancePtr->Threed_render_hls_io_BaseAddress, XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_SCREEN_HEIGHT_DATA);
    return Data;
}

void XThreed_render_hls_Set_screen_width(XThreed_render_hls *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThreed_render_hls_WriteReg(InstancePtr->Threed_render_hls_io_BaseAddress, XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_SCREEN_WIDTH_DATA, Data);
}

u32 XThreed_render_hls_Get_screen_width(XThreed_render_hls *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThreed_render_hls_ReadReg(InstancePtr->Threed_render_hls_io_BaseAddress, XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_SCREEN_WIDTH_DATA);
    return Data;
}

void XThreed_render_hls_Set_rotation_x_theta(XThreed_render_hls *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThreed_render_hls_WriteReg(InstancePtr->Threed_render_hls_io_BaseAddress, XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_ROTATION_X_THETA_DATA, Data);
}

u32 XThreed_render_hls_Get_rotation_x_theta(XThreed_render_hls *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThreed_render_hls_ReadReg(InstancePtr->Threed_render_hls_io_BaseAddress, XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_ROTATION_X_THETA_DATA);
    return Data;
}

void XThreed_render_hls_Set_rotation_y_theta(XThreed_render_hls *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThreed_render_hls_WriteReg(InstancePtr->Threed_render_hls_io_BaseAddress, XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_ROTATION_Y_THETA_DATA, Data);
}

u32 XThreed_render_hls_Get_rotation_y_theta(XThreed_render_hls *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThreed_render_hls_ReadReg(InstancePtr->Threed_render_hls_io_BaseAddress, XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_ROTATION_Y_THETA_DATA);
    return Data;
}

void XThreed_render_hls_Set_rotation_z_theta(XThreed_render_hls *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThreed_render_hls_WriteReg(InstancePtr->Threed_render_hls_io_BaseAddress, XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_ROTATION_Z_THETA_DATA, Data);
}

u32 XThreed_render_hls_Get_rotation_z_theta(XThreed_render_hls *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThreed_render_hls_ReadReg(InstancePtr->Threed_render_hls_io_BaseAddress, XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_ROTATION_Z_THETA_DATA);
    return Data;
}

void XThreed_render_hls_Set_distance_transmission(XThreed_render_hls *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThreed_render_hls_WriteReg(InstancePtr->Threed_render_hls_io_BaseAddress, XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_DISTANCE_TRANSMISSION_DATA, Data);
}

u32 XThreed_render_hls_Get_distance_transmission(XThreed_render_hls *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThreed_render_hls_ReadReg(InstancePtr->Threed_render_hls_io_BaseAddress, XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_DISTANCE_TRANSMISSION_DATA);
    return Data;
}

void XThreed_render_hls_InterruptGlobalEnable(XThreed_render_hls *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThreed_render_hls_WriteReg(InstancePtr->Threed_render_hls_io_BaseAddress, XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_GIE, 1);
}

void XThreed_render_hls_InterruptGlobalDisable(XThreed_render_hls *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThreed_render_hls_WriteReg(InstancePtr->Threed_render_hls_io_BaseAddress, XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_GIE, 0);
}

void XThreed_render_hls_InterruptEnable(XThreed_render_hls *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XThreed_render_hls_ReadReg(InstancePtr->Threed_render_hls_io_BaseAddress, XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_IER);
    XThreed_render_hls_WriteReg(InstancePtr->Threed_render_hls_io_BaseAddress, XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_IER, Register | Mask);
}

void XThreed_render_hls_InterruptDisable(XThreed_render_hls *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XThreed_render_hls_ReadReg(InstancePtr->Threed_render_hls_io_BaseAddress, XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_IER);
    XThreed_render_hls_WriteReg(InstancePtr->Threed_render_hls_io_BaseAddress, XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_IER, Register & (~Mask));
}

void XThreed_render_hls_InterruptClear(XThreed_render_hls *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThreed_render_hls_WriteReg(InstancePtr->Threed_render_hls_io_BaseAddress, XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_ISR, Mask);
}

u32 XThreed_render_hls_InterruptGetEnabled(XThreed_render_hls *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XThreed_render_hls_ReadReg(InstancePtr->Threed_render_hls_io_BaseAddress, XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_IER);
}

u32 XThreed_render_hls_InterruptGetStatus(XThreed_render_hls *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XThreed_render_hls_ReadReg(InstancePtr->Threed_render_hls_io_BaseAddress, XTHREED_RENDER_HLS_THREED_RENDER_HLS_IO_ADDR_ISR);
}

