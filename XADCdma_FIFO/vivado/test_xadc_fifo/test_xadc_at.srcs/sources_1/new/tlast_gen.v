`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:        Xilinx
// Engineer:       bwiec
// Create Date:    Mon Jun 05 07:43:03 MDT 2015
// Design Name:    dma_controller
// Module Name:    tlast_gen
// Project Name:   DMA Controller
// Target Devices: All
// Tool Versions:  2015.1
// Description:    Generate tlast based on configured packet length
// 
// Dependencies:   None
// 
// Revision:
//   - Rev 0.20 - Behavior verified in hardware testcase
//   - Rev 0.10 - Behavior verified in behavioral simulation
//   - Rev 0.01 - File created
//
// Known Issues:
//   - Rev 0.20 - None
//   - Rev 0.10 - None
//   - Rev 0.01 - None
//
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module tlast_gen
#(
    parameter TDATA_WIDTH    = 16,
    parameter MAX_PKT_LENGTH = 256
)
(
    // Clocks and resets
    input                            aclk,
    input                            resetn,
    
    // Control signals
    input [$clog2(MAX_PKT_LENGTH):0] pkt_length,
    
    // Slave interface
    input                            s_axis_tvalid,
    output                           s_axis_tready,
    input  [TDATA_WIDTH-1:0]         s_axis_tdata,
    
    // Master interface
    output                           m_axis_tvalid,
    input                            m_axis_tready,
    output                           m_axis_tlast,
    output [TDATA_WIDTH-1:0]         m_axis_tdata
);

    // Internal signals
    wire                           new_sample;
    reg [$clog2(MAX_PKT_LENGTH):0] cnt = 0;

    // Pass through control signals
    assign s_axis_tready = m_axis_tready;
    assign m_axis_tvalid = s_axis_tvalid;
    assign m_axis_tdata  = s_axis_tdata;

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
    assign m_axis_tlast = (cnt == pkt_length-1);

endmodule

