
`timescale 1 ns / 1 ps

	module tlast_generator_v1_0 #
	(
		// Users to add parameters here
       parameter MAX_PKT_LENGTH = 256*256,
		// User parameters ends
		// Do not modify the parameters beyond this line

		// Parameters of Axi Slave Bus Interface s_axis
	   parameter integer C_s_axis_TDATA_WIDTH	= 16,
		// Parameters of Axi Master Bus Interface m_axis
		parameter integer C_m_axis_TDATA_WIDTH	= 32,
		parameter integer C_m_axis_START_COUNT	= 32
	)
	( 
		// Users to add ports here
    input                   aclk,
    input                   resetn,
		// User ports ends
		// Do not modify the ports beyond this line
   // input [$clog2(MAX_PKT_LENGTH):0] pkt_length,
    input [15:0] pkt_length,


		// Ports of Axi Slave Bus Interface s_axis
//		input wire  s_axis_aclk,
//		input wire  s_axis_aresetn,
		output  s_axis_tready,
		input [C_s_axis_TDATA_WIDTH-1 : 0] s_axis_tdata,
//		input wire [(C_s_axis_TDATA_WIDTH/8)-1 : 0] s_axis_tstrb,
//		input wire  s_axis_tlast,
		input  s_axis_tvalid,

		// Ports of Axi Master Bus Interface m_axis
//		input wire  m_axis_aclk,
//		input wire  m_axis_aresetn,
		output   m_axis_tvalid,
		output [C_m_axis_TDATA_WIDTH-1 : 0] m_axis_tdata,
//		output wire [(C_m_axis_TDATA_WIDTH/8)-1 : 0] m_axis_tstrb,
		output   m_axis_tlast,
		input  m_axis_tready
	);
	
	
    // Internal signals
    wire                           new_sample;
    reg [15:0] cnt = 0;
    reg [15:0]		globalCounter; 
 
    // Pass through control signals
    assign s_axis_tready = m_axis_tready;
    assign m_axis_tvalid = s_axis_tvalid;
    
   
 //    assign m_axis_tdata[15:0]  = s_axis_tdata[15:0];

  //   assign m_axis_tdata[31:16]  = 16'b0000111100001111;
  // 	assign m_axis_tdata[31:16]  = globalCounter[15:0];

    // Count samples
    assign new_sample = s_axis_tvalid & s_axis_tready;
    always @ (posedge aclk) begin
        if (~resetn | (m_axis_tlast & new_sample))
            cnt <= 0;
        else
            if (new_sample)
                cnt <= cnt + 1'b1;
    end
    
    // Generate tlast
    
   //  assign m_axis_tdata[31:16] = 4'h0000;
    
     assign m_axis_tdata[15:0]  =  s_axis_tdata[15:0];
     
     assign m_axis_tdata[31:16]  = cnt[15:0];

    assign m_axis_tlast = (cnt == pkt_length-1)& new_sample ? 1:0;

endmodule




