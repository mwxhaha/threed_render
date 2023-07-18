// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
// Date        : Mon Jul 17 19:54:30 2023
// Host        : LAPTOP-KMQA6IKR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ threed_render_hw_threed_render_hls_0_0_stub.v
// Design      : threed_render_hw_threed_render_hls_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "threed_render_hls,Vivado 2022.2.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_threed_render_hls_io_AWADDR, 
  s_axi_threed_render_hls_io_AWVALID, s_axi_threed_render_hls_io_AWREADY, 
  s_axi_threed_render_hls_io_WDATA, s_axi_threed_render_hls_io_WSTRB, 
  s_axi_threed_render_hls_io_WVALID, s_axi_threed_render_hls_io_WREADY, 
  s_axi_threed_render_hls_io_BRESP, s_axi_threed_render_hls_io_BVALID, 
  s_axi_threed_render_hls_io_BREADY, s_axi_threed_render_hls_io_ARADDR, 
  s_axi_threed_render_hls_io_ARVALID, s_axi_threed_render_hls_io_ARREADY, 
  s_axi_threed_render_hls_io_RDATA, s_axi_threed_render_hls_io_RRESP, 
  s_axi_threed_render_hls_io_RVALID, s_axi_threed_render_hls_io_RREADY, 
  s_axi_threed_render_io_AWADDR, s_axi_threed_render_io_AWVALID, 
  s_axi_threed_render_io_AWREADY, s_axi_threed_render_io_WDATA, 
  s_axi_threed_render_io_WSTRB, s_axi_threed_render_io_WVALID, 
  s_axi_threed_render_io_WREADY, s_axi_threed_render_io_BRESP, 
  s_axi_threed_render_io_BVALID, s_axi_threed_render_io_BREADY, 
  s_axi_threed_render_io_ARADDR, s_axi_threed_render_io_ARVALID, 
  s_axi_threed_render_io_ARREADY, s_axi_threed_render_io_RDATA, 
  s_axi_threed_render_io_RRESP, s_axi_threed_render_io_RVALID, 
  s_axi_threed_render_io_RREADY, ap_clk, ap_rst_n, interrupt, m_axi_gmem_AWID, 
  m_axi_gmem_AWADDR, m_axi_gmem_AWLEN, m_axi_gmem_AWSIZE, m_axi_gmem_AWBURST, 
  m_axi_gmem_AWLOCK, m_axi_gmem_AWREGION, m_axi_gmem_AWCACHE, m_axi_gmem_AWPROT, 
  m_axi_gmem_AWQOS, m_axi_gmem_AWVALID, m_axi_gmem_AWREADY, m_axi_gmem_WID, 
  m_axi_gmem_WDATA, m_axi_gmem_WSTRB, m_axi_gmem_WLAST, m_axi_gmem_WVALID, 
  m_axi_gmem_WREADY, m_axi_gmem_BID, m_axi_gmem_BRESP, m_axi_gmem_BVALID, 
  m_axi_gmem_BREADY, m_axi_gmem_ARID, m_axi_gmem_ARADDR, m_axi_gmem_ARLEN, 
  m_axi_gmem_ARSIZE, m_axi_gmem_ARBURST, m_axi_gmem_ARLOCK, m_axi_gmem_ARREGION, 
  m_axi_gmem_ARCACHE, m_axi_gmem_ARPROT, m_axi_gmem_ARQOS, m_axi_gmem_ARVALID, 
  m_axi_gmem_ARREADY, m_axi_gmem_RID, m_axi_gmem_RDATA, m_axi_gmem_RRESP, m_axi_gmem_RLAST, 
  m_axi_gmem_RVALID, m_axi_gmem_RREADY)
/* synthesis syn_black_box black_box_pad_pin="s_axi_threed_render_hls_io_AWADDR[5:0],s_axi_threed_render_hls_io_AWVALID,s_axi_threed_render_hls_io_AWREADY,s_axi_threed_render_hls_io_WDATA[31:0],s_axi_threed_render_hls_io_WSTRB[3:0],s_axi_threed_render_hls_io_WVALID,s_axi_threed_render_hls_io_WREADY,s_axi_threed_render_hls_io_BRESP[1:0],s_axi_threed_render_hls_io_BVALID,s_axi_threed_render_hls_io_BREADY,s_axi_threed_render_hls_io_ARADDR[5:0],s_axi_threed_render_hls_io_ARVALID,s_axi_threed_render_hls_io_ARREADY,s_axi_threed_render_hls_io_RDATA[31:0],s_axi_threed_render_hls_io_RRESP[1:0],s_axi_threed_render_hls_io_RVALID,s_axi_threed_render_hls_io_RREADY,s_axi_threed_render_io_AWADDR[5:0],s_axi_threed_render_io_AWVALID,s_axi_threed_render_io_AWREADY,s_axi_threed_render_io_WDATA[31:0],s_axi_threed_render_io_WSTRB[3:0],s_axi_threed_render_io_WVALID,s_axi_threed_render_io_WREADY,s_axi_threed_render_io_BRESP[1:0],s_axi_threed_render_io_BVALID,s_axi_threed_render_io_BREADY,s_axi_threed_render_io_ARADDR[5:0],s_axi_threed_render_io_ARVALID,s_axi_threed_render_io_ARREADY,s_axi_threed_render_io_RDATA[31:0],s_axi_threed_render_io_RRESP[1:0],s_axi_threed_render_io_RVALID,s_axi_threed_render_io_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_gmem_AWID[0:0],m_axi_gmem_AWADDR[63:0],m_axi_gmem_AWLEN[7:0],m_axi_gmem_AWSIZE[2:0],m_axi_gmem_AWBURST[1:0],m_axi_gmem_AWLOCK[1:0],m_axi_gmem_AWREGION[3:0],m_axi_gmem_AWCACHE[3:0],m_axi_gmem_AWPROT[2:0],m_axi_gmem_AWQOS[3:0],m_axi_gmem_AWVALID,m_axi_gmem_AWREADY,m_axi_gmem_WID[0:0],m_axi_gmem_WDATA[31:0],m_axi_gmem_WSTRB[3:0],m_axi_gmem_WLAST,m_axi_gmem_WVALID,m_axi_gmem_WREADY,m_axi_gmem_BID[0:0],m_axi_gmem_BRESP[1:0],m_axi_gmem_BVALID,m_axi_gmem_BREADY,m_axi_gmem_ARID[0:0],m_axi_gmem_ARADDR[63:0],m_axi_gmem_ARLEN[7:0],m_axi_gmem_ARSIZE[2:0],m_axi_gmem_ARBURST[1:0],m_axi_gmem_ARLOCK[1:0],m_axi_gmem_ARREGION[3:0],m_axi_gmem_ARCACHE[3:0],m_axi_gmem_ARPROT[2:0],m_axi_gmem_ARQOS[3:0],m_axi_gmem_ARVALID,m_axi_gmem_ARREADY,m_axi_gmem_RID[0:0],m_axi_gmem_RDATA[31:0],m_axi_gmem_RRESP[1:0],m_axi_gmem_RLAST,m_axi_gmem_RVALID,m_axi_gmem_RREADY" */;
  input [5:0]s_axi_threed_render_hls_io_AWADDR;
  input s_axi_threed_render_hls_io_AWVALID;
  output s_axi_threed_render_hls_io_AWREADY;
  input [31:0]s_axi_threed_render_hls_io_WDATA;
  input [3:0]s_axi_threed_render_hls_io_WSTRB;
  input s_axi_threed_render_hls_io_WVALID;
  output s_axi_threed_render_hls_io_WREADY;
  output [1:0]s_axi_threed_render_hls_io_BRESP;
  output s_axi_threed_render_hls_io_BVALID;
  input s_axi_threed_render_hls_io_BREADY;
  input [5:0]s_axi_threed_render_hls_io_ARADDR;
  input s_axi_threed_render_hls_io_ARVALID;
  output s_axi_threed_render_hls_io_ARREADY;
  output [31:0]s_axi_threed_render_hls_io_RDATA;
  output [1:0]s_axi_threed_render_hls_io_RRESP;
  output s_axi_threed_render_hls_io_RVALID;
  input s_axi_threed_render_hls_io_RREADY;
  input [5:0]s_axi_threed_render_io_AWADDR;
  input s_axi_threed_render_io_AWVALID;
  output s_axi_threed_render_io_AWREADY;
  input [31:0]s_axi_threed_render_io_WDATA;
  input [3:0]s_axi_threed_render_io_WSTRB;
  input s_axi_threed_render_io_WVALID;
  output s_axi_threed_render_io_WREADY;
  output [1:0]s_axi_threed_render_io_BRESP;
  output s_axi_threed_render_io_BVALID;
  input s_axi_threed_render_io_BREADY;
  input [5:0]s_axi_threed_render_io_ARADDR;
  input s_axi_threed_render_io_ARVALID;
  output s_axi_threed_render_io_ARREADY;
  output [31:0]s_axi_threed_render_io_RDATA;
  output [1:0]s_axi_threed_render_io_RRESP;
  output s_axi_threed_render_io_RVALID;
  input s_axi_threed_render_io_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output [0:0]m_axi_gmem_AWID;
  output [63:0]m_axi_gmem_AWADDR;
  output [7:0]m_axi_gmem_AWLEN;
  output [2:0]m_axi_gmem_AWSIZE;
  output [1:0]m_axi_gmem_AWBURST;
  output [1:0]m_axi_gmem_AWLOCK;
  output [3:0]m_axi_gmem_AWREGION;
  output [3:0]m_axi_gmem_AWCACHE;
  output [2:0]m_axi_gmem_AWPROT;
  output [3:0]m_axi_gmem_AWQOS;
  output m_axi_gmem_AWVALID;
  input m_axi_gmem_AWREADY;
  output [0:0]m_axi_gmem_WID;
  output [31:0]m_axi_gmem_WDATA;
  output [3:0]m_axi_gmem_WSTRB;
  output m_axi_gmem_WLAST;
  output m_axi_gmem_WVALID;
  input m_axi_gmem_WREADY;
  input [0:0]m_axi_gmem_BID;
  input [1:0]m_axi_gmem_BRESP;
  input m_axi_gmem_BVALID;
  output m_axi_gmem_BREADY;
  output [0:0]m_axi_gmem_ARID;
  output [63:0]m_axi_gmem_ARADDR;
  output [7:0]m_axi_gmem_ARLEN;
  output [2:0]m_axi_gmem_ARSIZE;
  output [1:0]m_axi_gmem_ARBURST;
  output [1:0]m_axi_gmem_ARLOCK;
  output [3:0]m_axi_gmem_ARREGION;
  output [3:0]m_axi_gmem_ARCACHE;
  output [2:0]m_axi_gmem_ARPROT;
  output [3:0]m_axi_gmem_ARQOS;
  output m_axi_gmem_ARVALID;
  input m_axi_gmem_ARREADY;
  input [0:0]m_axi_gmem_RID;
  input [31:0]m_axi_gmem_RDATA;
  input [1:0]m_axi_gmem_RRESP;
  input m_axi_gmem_RLAST;
  input m_axi_gmem_RVALID;
  output m_axi_gmem_RREADY;
endmodule
