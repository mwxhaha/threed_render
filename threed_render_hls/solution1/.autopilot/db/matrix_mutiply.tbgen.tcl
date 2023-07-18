set moduleName matrix_mutiply
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {matrix_mutiply}
set C_modelType { int 360 }
set C_modelArgList {
	{ input_vector int 40 regular {array 990 { 1 1 } 1 1 }  }
	{ input_vector_offset int 7 regular  }
	{ input_vector_offset1 int 2 regular  }
	{ p_read5 int 40 regular  }
	{ p_read6 int 40 regular  }
	{ p_read9 int 40 regular  }
	{ p_read10 int 40 regular  }
	{ p_read int 40 regular  }
	{ p_read1 int 40 regular  }
	{ p_read2 int 40 regular  }
	{ p_read3 int 40 regular  }
	{ p_read4 int 40 regular  }
	{ p_read7 int 40 regular  }
	{ p_read8 int 40 regular  }
	{ p_read11 int 40 regular  }
	{ p_read12 int 40 regular  }
	{ output_vector_offset int 2 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_vector", "interface" : "memory", "bitwidth" : 40, "direction" : "READONLY"} , 
 	{ "Name" : "input_vector_offset", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "input_vector_offset1", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 40, "direction" : "READONLY"} , 
 	{ "Name" : "p_read6", "interface" : "wire", "bitwidth" : 40, "direction" : "READONLY"} , 
 	{ "Name" : "p_read9", "interface" : "wire", "bitwidth" : 40, "direction" : "READONLY"} , 
 	{ "Name" : "p_read10", "interface" : "wire", "bitwidth" : 40, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 40, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 40, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 40, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 40, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 40, "direction" : "READONLY"} , 
 	{ "Name" : "p_read7", "interface" : "wire", "bitwidth" : 40, "direction" : "READONLY"} , 
 	{ "Name" : "p_read8", "interface" : "wire", "bitwidth" : 40, "direction" : "READONLY"} , 
 	{ "Name" : "p_read11", "interface" : "wire", "bitwidth" : 40, "direction" : "READONLY"} , 
 	{ "Name" : "p_read12", "interface" : "wire", "bitwidth" : 40, "direction" : "READONLY"} , 
 	{ "Name" : "output_vector_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 360} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_vector_address0 sc_out sc_lv 10 signal 0 } 
	{ input_vector_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_vector_q0 sc_in sc_lv 40 signal 0 } 
	{ input_vector_address1 sc_out sc_lv 10 signal 0 } 
	{ input_vector_ce1 sc_out sc_logic 1 signal 0 } 
	{ input_vector_q1 sc_in sc_lv 40 signal 0 } 
	{ input_vector_offset sc_in sc_lv 7 signal 1 } 
	{ input_vector_offset1 sc_in sc_lv 2 signal 2 } 
	{ p_read5 sc_in sc_lv 40 signal 3 } 
	{ p_read6 sc_in sc_lv 40 signal 4 } 
	{ p_read9 sc_in sc_lv 40 signal 5 } 
	{ p_read10 sc_in sc_lv 40 signal 6 } 
	{ p_read sc_in sc_lv 40 signal 7 } 
	{ p_read1 sc_in sc_lv 40 signal 8 } 
	{ p_read2 sc_in sc_lv 40 signal 9 } 
	{ p_read3 sc_in sc_lv 40 signal 10 } 
	{ p_read4 sc_in sc_lv 40 signal 11 } 
	{ p_read7 sc_in sc_lv 40 signal 12 } 
	{ p_read8 sc_in sc_lv 40 signal 13 } 
	{ p_read11 sc_in sc_lv 40 signal 14 } 
	{ p_read12 sc_in sc_lv 40 signal 15 } 
	{ output_vector_offset sc_in sc_lv 2 signal 16 } 
	{ ap_return_0 sc_out sc_lv 40 signal -1 } 
	{ ap_return_1 sc_out sc_lv 40 signal -1 } 
	{ ap_return_2 sc_out sc_lv 40 signal -1 } 
	{ ap_return_3 sc_out sc_lv 40 signal -1 } 
	{ ap_return_4 sc_out sc_lv 40 signal -1 } 
	{ ap_return_5 sc_out sc_lv 40 signal -1 } 
	{ ap_return_6 sc_out sc_lv 40 signal -1 } 
	{ ap_return_7 sc_out sc_lv 40 signal -1 } 
	{ ap_return_8 sc_out sc_lv 40 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_vector_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "input_vector", "role": "address0" }} , 
 	{ "name": "input_vector_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_vector", "role": "ce0" }} , 
 	{ "name": "input_vector_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "input_vector", "role": "q0" }} , 
 	{ "name": "input_vector_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "input_vector", "role": "address1" }} , 
 	{ "name": "input_vector_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_vector", "role": "ce1" }} , 
 	{ "name": "input_vector_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "input_vector", "role": "q1" }} , 
 	{ "name": "input_vector_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_vector_offset", "role": "default" }} , 
 	{ "name": "input_vector_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_vector_offset1", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "p_read6", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "p_read6", "role": "default" }} , 
 	{ "name": "p_read9", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "p_read9", "role": "default" }} , 
 	{ "name": "p_read10", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "p_read10", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "p_read7", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "p_read7", "role": "default" }} , 
 	{ "name": "p_read8", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "p_read8", "role": "default" }} , 
 	{ "name": "p_read11", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "p_read11", "role": "default" }} , 
 	{ "name": "p_read12", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "p_read12", "role": "default" }} , 
 	{ "name": "output_vector_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_vector_offset", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }} , 
 	{ "name": "ap_return_8", "direction": "out", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "ap_return_8", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "matrix_mutiply",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_vector", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_vector_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_vector_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_vector_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_40s_40s_73_2_1_U41", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_40s_40s_73_2_1_U42", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_40s_40s_73_2_1_U43", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_40s_40s_73_2_1_U44", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matrix_mutiply {
		input_vector {Type I LastRead 4 FirstWrite -1}
		input_vector_offset {Type I LastRead 0 FirstWrite -1}
		input_vector_offset1 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 3 FirstWrite -1}
		p_read6 {Type I LastRead 3 FirstWrite -1}
		p_read9 {Type I LastRead 3 FirstWrite -1}
		p_read10 {Type I LastRead 3 FirstWrite -1}
		p_read {Type I LastRead 5 FirstWrite -1}
		p_read1 {Type I LastRead 5 FirstWrite -1}
		p_read2 {Type I LastRead 5 FirstWrite -1}
		p_read3 {Type I LastRead 5 FirstWrite -1}
		p_read4 {Type I LastRead 5 FirstWrite -1}
		p_read7 {Type I LastRead 5 FirstWrite -1}
		p_read8 {Type I LastRead 5 FirstWrite -1}
		p_read11 {Type I LastRead 5 FirstWrite -1}
		p_read12 {Type I LastRead 5 FirstWrite -1}
		output_vector_offset {Type I LastRead 5 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "5"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_vector { ap_memory {  { input_vector_address0 mem_address 1 10 }  { input_vector_ce0 mem_ce 1 1 }  { input_vector_q0 in_data 0 40 }  { input_vector_address1 MemPortADDR2 1 10 }  { input_vector_ce1 MemPortCE2 1 1 }  { input_vector_q1 MemPortDOUT2 0 40 } } }
	input_vector_offset { ap_none {  { input_vector_offset in_data 0 7 } } }
	input_vector_offset1 { ap_none {  { input_vector_offset1 in_data 0 2 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 40 } } }
	p_read6 { ap_none {  { p_read6 in_data 0 40 } } }
	p_read9 { ap_none {  { p_read9 in_data 0 40 } } }
	p_read10 { ap_none {  { p_read10 in_data 0 40 } } }
	p_read { ap_none {  { p_read in_data 0 40 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 40 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 40 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 40 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 40 } } }
	p_read7 { ap_none {  { p_read7 in_data 0 40 } } }
	p_read8 { ap_none {  { p_read8 in_data 0 40 } } }
	p_read11 { ap_none {  { p_read11 in_data 0 40 } } }
	p_read12 { ap_none {  { p_read12 in_data 0 40 } } }
	output_vector_offset { ap_none {  { output_vector_offset in_data 0 2 } } }
}
