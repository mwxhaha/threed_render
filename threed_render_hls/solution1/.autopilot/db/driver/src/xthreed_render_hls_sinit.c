// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xthreed_render_hls.h"

extern XThreed_render_hls_Config XThreed_render_hls_ConfigTable[];

XThreed_render_hls_Config *XThreed_render_hls_LookupConfig(u16 DeviceId) {
	XThreed_render_hls_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XTHREED_RENDER_HLS_NUM_INSTANCES; Index++) {
		if (XThreed_render_hls_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XThreed_render_hls_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XThreed_render_hls_Initialize(XThreed_render_hls *InstancePtr, u16 DeviceId) {
	XThreed_render_hls_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XThreed_render_hls_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XThreed_render_hls_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

