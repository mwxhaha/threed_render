set moduleName matrix_mutiply_2
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
set C_modelName {matrix_mutiply.2}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_read int 40 regular  }
	{ p_read1 int 40 regular  }
	{ p_read2 int 40 regular  }
	{ p_read3 int 40 regular  }
	{ p_read4 int 40 regular  }
	{ p_read5 int 40 regular  }
	{ p_read6 int 40 regular  }
	{ p_read7 int 40 regular  }
	{ p_read8 int 40 regular  }
	{ input_vector_offset int 2 regular  }
	{ p_read9 int 40 regular  }
	{ output_vector int 40 regular {array 990 { 0 0 } 0 1 }  }
	{ output_vector_offset int 7 regular  }
	{ output_vector_offset2 int 2 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 40, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 40, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 40, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 40, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 40, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 40, "direction" : "READONLY"} , 
 	{ "Name" : "p_read6", "interface" : "wire", "bitwidth" : 40, "direction" : "READONLY"} , 
 	{ "Name" : "p_read7", "interface" : "wire", "bitwidth" : 40, "direction" : "READONLY"} , 
 	{ "Name" : "p_read8", "interface" : "wire", "bitwidth" : 40, "direction" : "READONLY"} , 
 	{ "Name" : "input_vector_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "p_read9", "interface" : "wire", "bitwidth" : 40, "direction" : "READONLY"} , 
 	{ "Name" : "output_vector", "interface" : "memory", "bitwidth" : 40, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_vector_offset", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "output_vector_offset2", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read sc_in sc_lv 40 signal 0 } 
	{ p_read1 sc_in sc_lv 40 signal 1 } 
	{ p_read2 sc_in sc_lv 40 signal 2 } 
	{ p_read3 sc_in sc_lv 40 signal 3 } 
	{ p_read4 sc_in sc_lv 40 signal 4 } 
	{ p_read5 sc_in sc_lv 40 signal 5 } 
	{ p_read6 sc_in sc_lv 40 signal 6 } 
	{ p_read7 sc_in sc_lv 40 signal 7 } 
	{ p_read8 sc_in sc_lv 40 signal 8 } 
	{ input_vector_offset sc_in sc_lv 2 signal 9 } 
	{ p_read9 sc_in sc_lv 40 signal 10 } 
	{ output_vector_address0 sc_out sc_lv 10 signal 11 } 
	{ output_vector_ce0 sc_out sc_logic 1 signal 11 } 
	{ output_vector_we0 sc_out sc_logic 1 signal 11 } 
	{ output_vector_d0 sc_out sc_lv 40 signal 11 } 
	{ output_vector_address1 sc_out sc_lv 10 signal 11 } 
	{ output_vector_ce1 sc_out sc_logic 1 signal 11 } 
	{ output_vector_we1 sc_out sc_logic 1 signal 11 } 
	{ output_vector_d1 sc_out sc_lv 40 signal 11 } 
	{ output_vector_offset sc_in sc_lv 7 signal 12 } 
	{ output_vector_offset2 sc_in sc_lv 2 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "p_read6", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "p_read6", "role": "default" }} , 
 	{ "name": "p_read7", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "p_read7", "role": "default" }} , 
 	{ "name": "p_read8", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "p_read8", "role": "default" }} , 
 	{ "name": "input_vector_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_vector_offset", "role": "default" }} , 
 	{ "name": "p_read9", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "p_read9", "role": "default" }} , 
 	{ "name": "output_vector_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_vector", "role": "address0" }} , 
 	{ "name": "output_vector_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_vector", "role": "ce0" }} , 
 	{ "name": "output_vector_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_vector", "role": "we0" }} , 
 	{ "name": "output_vector_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "output_vector", "role": "d0" }} , 
 	{ "name": "output_vector_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_vector", "role": "address1" }} , 
 	{ "name": "output_vector_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_vector", "role": "ce1" }} , 
 	{ "name": "output_vector_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_vector", "role": "we1" }} , 
 	{ "name": "output_vector_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "output_vector", "role": "d1" }} , 
 	{ "name": "output_vector_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "output_vector_offset", "role": "default" }} , 
 	{ "name": "output_vector_offset2", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_vector_offset2", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "matrix_mutiply_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "81", "EstimateLatencyMax" : "81",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_vector_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_vector", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_vector_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_vector_offset2", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_40_1_1_U101", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_40_1_1_U102", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_40_1_1_U103", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_40s_40s_73_2_1_U104", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_40s_34ns_73_2_1_U105", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_40s_35ns_73_2_1_U106", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_73ns_40s_40_77_seq_1_U107", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_73ns_40s_40_77_seq_1_U108", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_73ns_40s_40_77_seq_1_U109", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matrix_mutiply_2 {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		input_vector_offset {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 1 FirstWrite -1}
		output_vector {Type O LastRead -1 FirstWrite 80}
		output_vector_offset {Type I LastRead 79 FirstWrite -1}
		output_vector_offset2 {Type I LastRead 79 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "81", "Max" : "81"}
	, {"Name" : "Interval", "Min" : "81", "Max" : "81"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 40 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 40 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 40 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 40 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 40 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 40 } } }
	p_read6 { ap_none {  { p_read6 in_data 0 40 } } }
	p_read7 { ap_none {  { p_read7 in_data 0 40 } } }
	p_read8 { ap_none {  { p_read8 in_data 0 40 } } }
	input_vector_offset { ap_none {  { input_vector_offset in_data 0 2 } } }
	p_read9 { ap_none {  { p_read9 in_data 0 40 } } }
	output_vector { ap_memory {  { output_vector_address0 mem_address 1 10 }  { output_vector_ce0 mem_ce 1 1 }  { output_vector_we0 mem_we 1 1 }  { output_vector_d0 mem_din 1 40 }  { output_vector_address1 MemPortADDR2 1 10 }  { output_vector_ce1 MemPortCE2 1 1 }  { output_vector_we1 MemPortWE2 1 1 }  { output_vector_d1 MemPortDIN2 1 40 } } }
	output_vector_offset { ap_none {  { output_vector_offset in_data 0 7 } } }
	output_vector_offset2 { ap_none {  { output_vector_offset2 in_data 0 2 } } }
}
