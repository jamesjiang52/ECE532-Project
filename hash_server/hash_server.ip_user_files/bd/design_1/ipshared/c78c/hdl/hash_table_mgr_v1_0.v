
`timescale 1 ns / 1 ps

	module hash_table_mgr_v1_0 #
	(
		// Users to add parameters here
        parameter integer HASH_TABLE_ADDR_WIDTH = 16,  // hash table key
        parameter integer HASH_TABLE_DATA_WIDTH = 64,  // data in hash table
        parameter integer HASH_TABLE_KEY_WIDTH  = 256,
        parameter integer HASH_TABLE_OP_WIDTH   = 2,   // hash table operation
        parameter integer HASH_TABLE_OTYPE_WIDTH= 1,   // hash table output type (data/ack)
		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 7
	)
	(
		// Users to add ports here
        input [HASH_TABLE_ADDR_WIDTH-1:0]  i_ht_output_addr,
        input [HASH_TABLE_DATA_WIDTH-1:0]  i_ht_output_data,
        input [HASH_TABLE_KEY_WIDTH-1:0]   i_ht_output_key,
        input [HASH_TABLE_OTYPE_WIDTH-1:0] i_ht_output_type,
        input                              i_ht_output_valid,
        output                             o_ht_output_ready,
        output [HASH_TABLE_ADDR_WIDTH-1:0] o_ht_input_addr,
        output [HASH_TABLE_DATA_WIDTH-1:0] o_ht_input_data,
        output [HASH_TABLE_KEY_WIDTH-1:0]  o_ht_input_key,
        output [HASH_TABLE_OP_WIDTH-1:0]   o_ht_input_op,
        output                             o_ht_input_valid,
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
// Instantiation of Axi Bus Interface S00_AXI
	hash_table_mgr_v1_0_S00_AXI # (
	    .HASH_TABLE_ADDR_WIDTH(HASH_TABLE_ADDR_WIDTH),
	    .HASH_TABLE_DATA_WIDTH(HASH_TABLE_DATA_WIDTH),
	    .HASH_TABLE_KEY_WIDTH(HASH_TABLE_KEY_WIDTH),
	    .HASH_TABLE_OP_WIDTH(HASH_TABLE_OP_WIDTH),
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) hash_table_mgr_v1_0_S00_AXI_inst (
	    .ht_input_addr(o_ht_input_addr),
	    .ht_input_data(o_ht_input_data),
	    .ht_input_key(o_ht_input_key),
	    .ht_input_op(o_ht_input_op),
	    .ht_input_valid(o_ht_input_valid),
	    .ht_output_ready(o_ht_output_ready),
	    .ht_output_addr(i_ht_output_addr),
	    .ht_output_data(i_ht_output_data),
	    .ht_output_key(i_ht_output_key),
	    .ht_output_type(i_ht_output_type),
	    .ht_output_valid(i_ht_output_valid),
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

	// User logic ends

	endmodule
