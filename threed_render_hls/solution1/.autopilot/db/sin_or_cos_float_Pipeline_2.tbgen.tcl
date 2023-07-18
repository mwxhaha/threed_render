set moduleName sin_or_cos_float_Pipeline_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {sin_or_cos<float>_Pipeline_2}
set C_modelType { int 1 }
set C_modelArgList {
	{ result_V int 29 regular  }
	{ c_1_022_reload int 32 regular  }
	{ c_0_023_reload int 32 regular  }
	{ shift_out int 32 regular {pointer 1}  }
	{ in_shift_V_1_cast_out int 28 regular {pointer 1}  }
	{ shift_1_out int 32 regular {pointer 1}  }
	{ trunc_ln10_out int 28 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "result_V", "interface" : "wire", "bitwidth" : 29, "direction" : "READONLY"} , 
 	{ "Name" : "c_1_022_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_0_023_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "shift_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_shift_V_1_cast_out", "interface" : "wire", "bitwidth" : 28, "direction" : "WRITEONLY"} , 
 	{ "Name" : "shift_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trunc_ln10_out", "interface" : "wire", "bitwidth" : 28, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ result_V sc_in sc_lv 29 signal 0 } 
	{ c_1_022_reload sc_in sc_lv 32 signal 1 } 
	{ c_0_023_reload sc_in sc_lv 32 signal 2 } 
	{ shift_out sc_out sc_lv 32 signal 3 } 
	{ shift_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ in_shift_V_1_cast_out sc_out sc_lv 28 signal 4 } 
	{ in_shift_V_1_cast_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ shift_1_out sc_out sc_lv 32 signal 5 } 
	{ shift_1_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ trunc_ln10_out sc_out sc_lv 28 signal 6 } 
	{ trunc_ln10_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "result_V", "direction": "in", "datatype": "sc_lv", "bitwidth":29, "type": "signal", "bundle":{"name": "result_V", "role": "default" }} , 
 	{ "name": "c_1_022_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_1_022_reload", "role": "default" }} , 
 	{ "name": "c_0_023_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_0_023_reload", "role": "default" }} , 
 	{ "name": "shift_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shift_out", "role": "default" }} , 
 	{ "name": "shift_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "shift_out", "role": "ap_vld" }} , 
 	{ "name": "in_shift_V_1_cast_out", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "in_shift_V_1_cast_out", "role": "default" }} , 
 	{ "name": "in_shift_V_1_cast_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "in_shift_V_1_cast_out", "role": "ap_vld" }} , 
 	{ "name": "shift_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shift_1_out", "role": "default" }} , 
 	{ "name": "shift_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "shift_1_out", "role": "ap_vld" }} , 
 	{ "name": "trunc_ln10_out", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "trunc_ln10_out", "role": "default" }} , 
 	{ "name": "trunc_ln10_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "trunc_ln10_out", "role": "ap_vld" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "sin_or_cos_float_Pipeline_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "result_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1_022_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0_023_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "shift_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "in_shift_V_1_cast_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "shift_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "trunc_ln10_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sin_or_cos_float_Pipeline_2 {
		result_V {Type I LastRead 0 FirstWrite -1}
		c_1_022_reload {Type I LastRead 0 FirstWrite -1}
		c_0_023_reload {Type I LastRead 0 FirstWrite -1}
		shift_out {Type O LastRead -1 FirstWrite 1}
		in_shift_V_1_cast_out {Type O LastRead -1 FirstWrite 1}
		shift_1_out {Type O LastRead -1 FirstWrite 1}
		trunc_ln10_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "5"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	result_V { ap_none {  { result_V in_data 0 29 } } }
	c_1_022_reload { ap_none {  { c_1_022_reload in_data 0 32 } } }
	c_0_023_reload { ap_none {  { c_0_023_reload in_data 0 32 } } }
	shift_out { ap_vld {  { shift_out out_data 1 32 }  { shift_out_ap_vld out_vld 1 1 } } }
	in_shift_V_1_cast_out { ap_vld {  { in_shift_V_1_cast_out out_data 1 28 }  { in_shift_V_1_cast_out_ap_vld out_vld 1 1 } } }
	shift_1_out { ap_vld {  { shift_1_out out_data 1 32 }  { shift_1_out_ap_vld out_vld 1 1 } } }
	trunc_ln10_out { ap_vld {  { trunc_ln10_out out_data 1 28 }  { trunc_ln10_out_ap_vld out_vld 1 1 } } }
}
