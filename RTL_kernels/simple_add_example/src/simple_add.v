// This is a generated file. Use and modify at your own risk.
//////////////////////////////////////////////////////////////////////////////// 
// default_nettype of none prevents implicit wire declaration.
`default_nettype none
`timescale 1 ns / 1 ps
// Top level of the kernel. Do not modify module name, parameters or ports.
module simple_add #(
  parameter integer C_S_AXI_CONTROL_ADDR_WIDTH = 12 ,
  parameter integer C_S_AXI_CONTROL_DATA_WIDTH = 32 ,
  parameter integer C_AXIS_M_TDATA_WIDTH       = 512,
  parameter integer C_AXIS_S_TDATA_WIDTH       = 512
)
(
  // System Signals
  input  wire                                    ap_clk               ,
  //  Note: A minimum subset of AXI4 memory mapped signals are declared.  AXI
  // signals omitted from these interfaces are automatically inferred with the
  // optimal values for Xilinx accleration platforms.  This allows Xilinx AXI4 Interconnects
  // within the system to be optimized by removing logic for AXI4 protocol
  // features that are not necessary. When adapting AXI4 masters within the RTL
  // kernel that have signals not declared below, it is suitable to add the
  // signals to the declarations below to connect them to the AXI4 Master.
  // 
  // List of ommited signals - effect
  // -------------------------------
  // ID - Transaction ID are used for multithreading and out of order
  // transactions.  This increases complexity. This saves logic and increases Fmax
  // in the system when ommited.
  // SIZE - Default value is log2(data width in bytes). Needed for subsize bursts.
  // This saves logic and increases Fmax in the system when ommited.
  // BURST - Default value (0b01) is incremental.  Wrap and fixed bursts are not
  // recommended. This saves logic and increases Fmax in the system when ommited.
  // LOCK - Not supported in AXI4
  // CACHE - Default value (0b0011) allows modifiable transactions. No benefit to
  // changing this.
  // PROT - Has no effect in current acceleration platforms.
  // QOS - Has no effect in current acceleration platforms.
  // REGION - Has no effect in current acceleration platforms.
  // USER - Has no effect in current acceleration platforms.
  // RESP - Not useful in most acceleration platforms.
  // 
  // AXI4-Stream (master) interface axis_M
  output wire                                    axis_M_tvalid        ,
  input  wire                                    axis_M_tready        ,
  output wire [C_AXIS_M_TDATA_WIDTH-1:0]         axis_M_tdata         ,
  output wire [C_AXIS_M_TDATA_WIDTH/8-1:0]       axis_M_tkeep         ,
  output wire                                    axis_M_tlast         ,
  output wire [15:0]                             axis_M_tdest         ,
  // AXI4-Stream (slave) interface axis_S
  input  wire                                    axis_S_tvalid        ,
  output wire                                    axis_S_tready        ,
  input  wire [C_AXIS_S_TDATA_WIDTH-1:0]         axis_S_tdata         ,
  input  wire [C_AXIS_S_TDATA_WIDTH/8-1:0]       axis_S_tkeep         ,
  input  wire                                    axis_S_tlast         ,
  input  wire [15:0]                             axis_S_tdest         ,
  // AXI4-Lite slave interface
  input  wire                                    s_axi_control_awvalid,
  output wire                                    s_axi_control_awready,
  input  wire [C_S_AXI_CONTROL_ADDR_WIDTH-1:0]   s_axi_control_awaddr ,
  input  wire                                    s_axi_control_wvalid ,
  output wire                                    s_axi_control_wready ,
  input  wire [C_S_AXI_CONTROL_DATA_WIDTH-1:0]   s_axi_control_wdata  ,
  input  wire [C_S_AXI_CONTROL_DATA_WIDTH/8-1:0] s_axi_control_wstrb  ,
  input  wire                                    s_axi_control_arvalid,
  output wire                                    s_axi_control_arready,
  input  wire [C_S_AXI_CONTROL_ADDR_WIDTH-1:0]   s_axi_control_araddr ,
  output wire                                    s_axi_control_rvalid ,
  input  wire                                    s_axi_control_rready ,
  output wire [C_S_AXI_CONTROL_DATA_WIDTH-1:0]   s_axi_control_rdata  ,
  output wire [2-1:0]                            s_axi_control_rresp  ,
  output wire                                    s_axi_control_bvalid ,
  input  wire                                    s_axi_control_bready ,
  output wire [2-1:0]                            s_axi_control_bresp  
);

///////////////////////////////////////////////////////////////////////////////
// Local Parameters
///////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////
// Wires and Variables
///////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////
// Begin control interface RTL.  Modifying not recommended.
///////////////////////////////////////////////////////////////////////////////


// AXI4-Lite slave interface
simple_add_control_s_axi #(
  .C_S_AXI_ADDR_WIDTH ( C_S_AXI_CONTROL_ADDR_WIDTH ),
  .C_S_AXI_DATA_WIDTH ( C_S_AXI_CONTROL_DATA_WIDTH )
)
inst_control_s_axi (
  .ACLK    ( ap_clk                ),
  .ARESET  ( 1'b0                  ),
  .ACLK_EN ( 1'b1                  ),
  .AWVALID ( s_axi_control_awvalid ),
  .AWREADY ( s_axi_control_awready ),
  .AWADDR  ( s_axi_control_awaddr  ),
  .WVALID  ( s_axi_control_wvalid  ),
  .WREADY  ( s_axi_control_wready  ),
  .WDATA   ( s_axi_control_wdata   ),
  .WSTRB   ( s_axi_control_wstrb   ),
  .ARVALID ( s_axi_control_arvalid ),
  .ARREADY ( s_axi_control_arready ),
  .ARADDR  ( s_axi_control_araddr  ),
  .RVALID  ( s_axi_control_rvalid  ),
  .RREADY  ( s_axi_control_rready  ),
  .RDATA   ( s_axi_control_rdata   ),
  .RRESP   ( s_axi_control_rresp   ),
  .BVALID  ( s_axi_control_bvalid  ),
  .BREADY  ( s_axi_control_bready  ),
  .BRESP   ( s_axi_control_bresp   )
);

///////////////////////////////////////////////////////////////////////////////
// Add kernel logic here.  Modify/remove example code as necessary.
///////////////////////////////////////////////////////////////////////////////

// Example RTL block.  Remove to insert custom logic.
simple_add_example #(
  .C_AXIS_M_TDATA_WIDTH ( C_AXIS_M_TDATA_WIDTH ),
  .C_AXIS_S_TDATA_WIDTH ( C_AXIS_S_TDATA_WIDTH )
)
inst_example (
  .ap_clk        ( ap_clk        ),
  .ap_rst_n      ( 1'b1          ),
  .axis_M_tvalid ( axis_M_tvalid ),
  .axis_M_tready ( axis_M_tready ),
  .axis_M_tdata  ( axis_M_tdata  ),
  .axis_M_tkeep  ( axis_M_tkeep  ),
  .axis_M_tlast  ( axis_M_tlast  ),
  .axis_M_tdest  ( axis_M_tdest  ),
  .axis_S_tvalid ( axis_S_tvalid ),
  .axis_S_tready ( axis_S_tready ),
  .axis_S_tdata  ( axis_S_tdata  ),
  .axis_S_tkeep  ( axis_S_tkeep  ),
  .axis_S_tlast  ( axis_S_tlast  ),
  .axis_S_tdest  ( axis_S_tdest  )
);

endmodule
`default_nettype wire
