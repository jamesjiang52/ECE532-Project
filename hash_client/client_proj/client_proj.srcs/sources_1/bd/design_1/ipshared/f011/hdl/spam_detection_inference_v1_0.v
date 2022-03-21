
`timescale 1 ns / 1 ps

	module spam_detection_inference_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 6
	)
	(
		// Users to add ports here
		output wire result,
		// User ports ends
		// Do not modify the ports beyond this line
        

		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready
	);
	
	wire [31:0] spam_fifo_din;
	wire spam_fifo_wr_en;
	wire spam_write_done;
    wire [31:0] spam_prob;
    wire spam_data_valid;
    
    wire [31:0] ham_fifo_din;
	wire ham_fifo_wr_en;
	wire ham_write_done;
    wire [31:0] ham_prob;
    wire ham_data_valid;
    
    wire altb;
    wire blta;
    wire aeqb;
    //wire result;
	
// Instantiation of Axi Bus Interface S00_AXI
	spam_detection_inference_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) spam_detection_inference_v1_0_S00_AXI_inst (
	    .spam_din(spam_fifo_din),
        .spam_wr_en(spam_fifo_wr_en),
        .spam_out(spam_prob),
        .ham_din(ham_fifo_din),
        .ham_wr_en(ham_fifo_wr_en),
        .ham_out(ham_prob),
        .spam_write_done(spam_write_done),
        .ham_write_done(ham_write_done),
        .spam_data_valid(spam_data_valid),
        .ham_data_valid(ham_data_valid),
        .result(result), // 0: ham; 1: spam
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready)
	);
    
	// Add user logic here
    
    spam_detection_controller spam_controller (
        .clock(s00_axi_aclk),
        .resetn(s00_axi_aresetn),
        .write_done(spam_write_done),
        .fifo_din(spam_fifo_din),
        .fifo_wr_en(spam_fifo_wr_en),
        .prob_out(spam_prob),
        .data_valid(spam_data_valid)
    );
    
    spam_detection_controller ham_controller (
        .clock(s00_axi_aclk),
        .resetn(s00_axi_aresetn),
        .write_done(ham_write_done),
        .fifo_din(ham_fifo_din),
        .fifo_wr_en(ham_fifo_wr_en),
        .prob_out(ham_prob),
        .data_valid(ham_data_valid)
    );

    fcmp conparator (.opa(spam_prob), .opb(ham_prob), 
        .unordered(), .altb(altb), .blta(blta), .aeqb(aeqb), .inf(), .zero());
 
    assign result = altb ? 1'b1 : 1'b0;
    
	// User logic ends
	
	endmodule
