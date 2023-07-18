// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XTHREED_RENDER_HLS_H
#define XTHREED_RENDER_HLS_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xthreed_render_hls_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
    u64 Threed_render_hls_io_BaseAddress;
} XThreed_render_hls_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u64 Threed_render_hls_io_BaseAddress;
    u32 IsReady;
} XThreed_render_hls;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XThreed_render_hls_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XThreed_render_hls_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XThreed_render_hls_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XThreed_render_hls_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XThreed_render_hls_Initialize(XThreed_render_hls *InstancePtr, u16 DeviceId);
XThreed_render_hls_Config* XThreed_render_hls_LookupConfig(u16 DeviceId);
int XThreed_render_hls_CfgInitialize(XThreed_render_hls *InstancePtr, XThreed_render_hls_Config *ConfigPtr);
#else
int XThreed_render_hls_Initialize(XThreed_render_hls *InstancePtr, const char* InstanceName);
int XThreed_render_hls_Release(XThreed_render_hls *InstancePtr);
#endif

void XThreed_render_hls_Start(XThreed_render_hls *InstancePtr);
u32 XThreed_render_hls_IsDone(XThreed_render_hls *InstancePtr);
u32 XThreed_render_hls_IsIdle(XThreed_render_hls *InstancePtr);
u32 XThreed_render_hls_IsReady(XThreed_render_hls *InstancePtr);
void XThreed_render_hls_EnableAutoRestart(XThreed_render_hls *InstancePtr);
void XThreed_render_hls_DisableAutoRestart(XThreed_render_hls *InstancePtr);

void XThreed_render_hls_Set_mesh_transmission(XThreed_render_hls *InstancePtr, u64 Data);
u64 XThreed_render_hls_Get_mesh_transmission(XThreed_render_hls *InstancePtr);
void XThreed_render_hls_Set_screen_transmission(XThreed_render_hls *InstancePtr, u64 Data);
u64 XThreed_render_hls_Get_screen_transmission(XThreed_render_hls *InstancePtr);
void XThreed_render_hls_Set_triangle_number(XThreed_render_hls *InstancePtr, u32 Data);
u32 XThreed_render_hls_Get_triangle_number(XThreed_render_hls *InstancePtr);
void XThreed_render_hls_Set_screen_height(XThreed_render_hls *InstancePtr, u32 Data);
u32 XThreed_render_hls_Get_screen_height(XThreed_render_hls *InstancePtr);
void XThreed_render_hls_Set_screen_width(XThreed_render_hls *InstancePtr, u32 Data);
u32 XThreed_render_hls_Get_screen_width(XThreed_render_hls *InstancePtr);
void XThreed_render_hls_Set_rotation_x_theta(XThreed_render_hls *InstancePtr, u32 Data);
u32 XThreed_render_hls_Get_rotation_x_theta(XThreed_render_hls *InstancePtr);
void XThreed_render_hls_Set_rotation_y_theta(XThreed_render_hls *InstancePtr, u32 Data);
u32 XThreed_render_hls_Get_rotation_y_theta(XThreed_render_hls *InstancePtr);
void XThreed_render_hls_Set_rotation_z_theta(XThreed_render_hls *InstancePtr, u32 Data);
u32 XThreed_render_hls_Get_rotation_z_theta(XThreed_render_hls *InstancePtr);
void XThreed_render_hls_Set_distance_transmission(XThreed_render_hls *InstancePtr, u32 Data);
u32 XThreed_render_hls_Get_distance_transmission(XThreed_render_hls *InstancePtr);

void XThreed_render_hls_InterruptGlobalEnable(XThreed_render_hls *InstancePtr);
void XThreed_render_hls_InterruptGlobalDisable(XThreed_render_hls *InstancePtr);
void XThreed_render_hls_InterruptEnable(XThreed_render_hls *InstancePtr, u32 Mask);
void XThreed_render_hls_InterruptDisable(XThreed_render_hls *InstancePtr, u32 Mask);
void XThreed_render_hls_InterruptClear(XThreed_render_hls *InstancePtr, u32 Mask);
u32 XThreed_render_hls_InterruptGetEnabled(XThreed_render_hls *InstancePtr);
u32 XThreed_render_hls_InterruptGetStatus(XThreed_render_hls *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
