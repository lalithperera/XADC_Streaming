
`timescale 1 ns / 1 ps

	module tlast_generator_v1_0 #
	(
		// Users to add parameters here
        parameter integer MAX_PKT_LENGTH=256,
		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S_AXIS
		parameter integer C_S_AXIS_TDATA_WIDTH	= 16,

		// Parameters of Axi Master Bus Interface M_AXIS
		parameter integer C_M_AXIS_TDATA_WIDTH	= 32,
		parameter integer C_M_AXIS_START_COUNT	= 32
	)
	(
		// Users to add ports here
		
		input wire [7:0] pkt_length,
	    output wire [7:0] o_cnt,
		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S_AXIS
		input   s_axis_aclk,
		input   s_axis_aresetn,
		output   s_axis_tready,
		input  [C_S_AXIS_TDATA_WIDTH-1 : 0] s_axis_tdata,
		input  [(C_S_AXIS_TDATA_WIDTH/8)-1 : 0] s_axis_tstrb,
		input   s_axis_tlast,
		input   s_axis_tvalid,

		// Ports of Axi Master Bus Interface M_AXIS
		input   m_axis_aclk,
		input   m_axis_aresetn,
		output   m_axis_tvalid,
		output  [C_M_AXIS_TDATA_WIDTH-1 : 0] m_axis_tdata,
		output  [(C_M_AXIS_TDATA_WIDTH/8)-1 : 0] m_axis_tstrb,
		output   m_axis_tlast,
		input   m_axis_tready
	);
	
	wire new_sample;
    reg [$clog2(MAX_PKT_LENGTH):0] cnt;
    
    initial begin
        cnt = 0;
    end
  
     assign  m_axis_tdata = {{16{1'b0}},{s_axis_tdata[15:0]}} ;
    assign  m_axis_tdata = {{16'b0000000000000000},{s_axis_tdata[15:0]}} ;
	 assign  m_axis_tstrb = s_axis_tstrb;
	 assign  m_axis_tvalid = s_axis_tvalid;
	 assign  s_axis_tready = m_axis_tready;

    // Count samples
    assign new_sample =  m_axis_tvalid & m_axis_tready ;
    
    always @ (posedge m_axis_aclk) begin
        if (~m_axis_aresetn)
            cnt <= 0;
        else begin
            if ( new_sample) begin
                if (m_axis_tlast ) begin
                    cnt <= 1'b1;
                end
                else begin
                cnt <= cnt + 1'b1;
                end
            end        
        end
    end
    
    // Generate tlast
    assign  m_axis_tlast = (cnt == pkt_length)& new_sample  ? 1:0;
//	& new_sample;
    assign o_cnt = cnt;
    
    endmodule
	
/*
// Instantiation of Axi Bus Interface S_AXIS
	tlast_generator_v1_0_S_AXIS # ( 
		.C_S_AXIS_TDATA_WIDTH(C_S_AXIS_TDATA_WIDTH)
	) tlast_generator_v1_0_S_AXIS_inst (
		.S_AXIS_ACLK(s_axis_aclk),
		.S_AXIS_ARESETN(s_axis_aresetn),
		.S_AXIS_TREADY(s_axis_tready),
		.S_AXIS_TDATA(s_axis_tdata),
		.S_AXIS_TSTRB(s_axis_tstrb),
//		.S_AXIS_TLAST(s_axis_tlast),
		.S_AXIS_TVALID(s_axis_tvalid)
	);

// Instantiation of Axi Bus Interface M_AXIS
	tlast_generator_v1_0_M_AXIS # ( 
		.C_M_AXIS_TDATA_WIDTH(C_M_AXIS_TDATA_WIDTH),
		.C_M_START_COUNT(C_M_AXIS_START_COUNT)
	) tlast_generator_v1_0_M_AXIS_inst (
		.M_AXIS_ACLK(m_axis_aclk),
		.M_AXIS_ARESETN(m_axis_aresetn),
		.M_AXIS_TVALID(m_axis_tvalid),
		.M_AXIS_TDATA(m_axis_tdata),
		.M_AXIS_TSTRB(m_axis_tstrb),
		.M_AXIS_TLAST(m_axis_tlast),
		.M_AXIS_TREADY(m_axis_tready)
	);

	// Add user logic here

	// User logic ends

	endmodule
*/
