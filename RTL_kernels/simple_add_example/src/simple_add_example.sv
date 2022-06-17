// This is a generated file. Use and modify at your own risk.
//////////////////////////////////////////////////////////////////////////////// 
// default_nettype of none prevents implicit wire declaration.
`default_nettype none
module simple_add_example #(
  parameter integer C_AXIS_M_TDATA_WIDTH = 512,
  parameter integer C_AXIS_S_TDATA_WIDTH = 512
)
(
  // System Signals
  input  wire                              ap_clk       ,
  input  wire                              ap_rst_n     ,
  // Pipe (AXI4-Stream host) interface axis_M
  output wire                              axis_M_tvalid,
  input  wire                              axis_M_tready,
  output wire [C_AXIS_M_TDATA_WIDTH-1:0]   axis_M_tdata ,
  output wire [C_AXIS_M_TDATA_WIDTH/8-1:0] axis_M_tkeep ,
  output wire                              axis_M_tlast ,
  output wire [15:0]                       axis_M_tdest ,
  // Pipe (AXI4-Stream host) interface axis_S
  input  wire                              axis_S_tvalid,
  output wire                              axis_S_tready,
  input  wire [C_AXIS_S_TDATA_WIDTH-1:0]   axis_S_tdata ,
  input  wire [C_AXIS_S_TDATA_WIDTH/8-1:0] axis_S_tkeep ,
  input  wire                              axis_S_tlast ,
  input  wire [15:0]                       axis_S_tdest 
);


timeunit 1ps;
timeprecision 1ps;

///////////////////////////////////////////////////////////////////////////////
// Local Parameters
///////////////////////////////////////////////////////////////////////////////
// Large enough for interesting traffic.
localparam integer  LP_DEFAULT_LENGTH_IN_BYTES = 16384;
localparam integer  LP_NUM_EXAMPLES    = 1;

///////////////////////////////////////////////////////////////////////////////
// Wires and Variables
///////////////////////////////////////////////////////////////////////////////
(* KEEP = "yes" *)
logic                                areset                         = 1'b0;
logic [32-1:0]                       ctrl_xfer_size_in_bytes        = LP_DEFAULT_LENGTH_IN_BYTES;
logic [32-1:0]                       ctrl_constant                  = 32'd3;    // vector add a constant

///////////////////////////////////////////////////////////////////////////////
// Begin RTL
///////////////////////////////////////////////////////////////////////////////

// Register and invert reset signal.
always @(posedge ap_clk) begin
  areset <= ~ap_rst_n;
end

// Vadd stream example
simple_add_example_vadd_axis #(
  .C_S_AXIS_TDATA_WIDTH ( C_AXIS_M_TDATA_WIDTH       ),
  .C_M_AXIS_TDATA_WIDTH ( C_AXIS_M_TDATA_WIDTH       ),
  .C_ADDER_BIT_WIDTH    ( 32                         ),
  .C_NUM_CLOCKS         ( 1                          ),
  .C_GEN_S_AXIS_DATA    ( 0                          ),
  .C_LENGTH_IN_BYTES    ( LP_DEFAULT_LENGTH_IN_BYTES )
)
inst_example_vadd__axis_S_to_axis_M (
  .aclk          ( ap_clk        ),
  .areset        ( areset        ),
  .kernel_clk    ( ap_clk        ),
  .kernel_rst    ( areset        ),
  .s_axis_tvalid ( axis_S_tvalid ),
  .s_axis_tready ( axis_S_tready ),
  .s_axis_tdata  ( axis_S_tdata  ),
  .s_axis_tkeep  ( axis_S_tkeep  ),
  .s_axis_tlast  ( axis_S_tlast  ),
  .s_axis_tdest  ( axis_S_tdest  ),
  .m_axis_tvalid ( axis_M_tvalid ),
  .m_axis_tready ( axis_M_tready ),
  .m_axis_tdata  ( axis_M_tdata  ),
  .m_axis_tkeep  ( axis_M_tkeep  ),
  .m_axis_tlast  ( axis_M_tlast  ),
  .m_axis_tdest  ( axis_M_tdest  ),
  .ctrl_constant ( 32'b1         )
);

endmodule : simple_add_example
`default_nettype wire
