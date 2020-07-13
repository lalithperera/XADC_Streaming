`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/11/2020 07:09:39 PM
// Design Name: 
// Module Name: tlast_generator_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tlast_generator_tb();

  reg aclk;
  reg fifo_full_in;
  wire fifo_full_out;
  reg freset;
  reg resetn;

reg   [19:0] pkt_length;
wire    m_axis_tlast;
reg    m_axis_tready;
wire     m_axis_tvalid;
wire    s_axis_tready;
reg    s_axis_tvalid;
reg    [15:0] s_axis_tdata;
wire    [31:0] m_axis_tdata;

  
  initial begin
    fifo_full_in=0;
    #200 fifo_full_in=1;
    #20 fifo_full_in=0;
    #500 fifo_full_in=1;
    #20 fifo_full_in=0;
 end
 
  initial begin
    #10 resetn=1;
    #50 resetn=0;
    #6 resetn=1;
  end

 initial begin
    #10 resetn=1;
   #400 freset=0;
   #20 freset=1;   
end
  
     
initial begin
    pkt_length=10;
    s_axis_tdata=43775;
end

 
initial begin
	   #10 m_axis_tready = 0;
	   #500 m_axis_tready=1;
	   #2000 m_axis_tready=0;
	   #200 m_axis_tready=1;
 end
 
 initial begin
	   #10  s_axis_tvalid=0;
	   #60 s_axis_tvalid=1;
	   #1000 s_axis_tvalid=0;
 end
 
initial begin
	aclk=0; 
	forever #5 aclk=~aclk;
end



design_1_wrapper dut (
        .aclk(aclk),
        .fifo_full_in(fifo_full_in),
        .fifo_full_out(fifo_full_out),
        .freset(freset),
        .resetn(resetn),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tvalid(s_axis_tvalid),
        .s_axis_tready(s_axis_tready),
        .pkt_length(pkt_length),
        .s_axis_tdata(s_axis_tdata),   
        .m_axis_tdata(m_axis_tdata));        
endmodule