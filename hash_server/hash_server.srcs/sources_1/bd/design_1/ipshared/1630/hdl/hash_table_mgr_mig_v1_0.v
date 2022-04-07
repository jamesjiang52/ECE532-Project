
`timescale 1 ns / 1 ps

	module hash_table_mgr_mig_v1_0 #
	(
		// Users to add parameters here
        parameter integer HASH_TABLE_ADDR_WIDTH = 16,  // hash table key
        parameter integer HASH_TABLE_DATA_WIDTH = 64,  // data in hash table, should match AXI data width
        parameter integer HASH_TABLE_KEY_WIDTH = 256,
        parameter integer HASH_TABLE_OP_WIDTH   = 2,   // hash table operation
        parameter integer HASH_TABLE_OTYPE_WIDTH= 1,   // hash table output type (data/ack)
        parameter integer BUFFER_SIZE = 32,  // size of input and output queues
        parameter integer NUM_LOCKS = 32,  // number of locks for hash table; each lock provides mutual exclusion for num_elements/num_locks elements of the hash table
		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Master Bus Interface M00_AXI
		parameter  C_M00_AXI_TARGET_SLAVE_BASE_ADDR	= 32'h80000000,
		parameter integer C_M00_AXI_ADDR_WIDTH	= 32,
		parameter integer C_M00_AXI_DATA_WIDTH	= 32
	)
	(
		// Users to add ports here
        output [HASH_TABLE_ADDR_WIDTH-1:0]  o_ht_output_addr,
        output [HASH_TABLE_DATA_WIDTH-1:0]  o_ht_output_data,
        output [HASH_TABLE_KEY_WIDTH-1:0]   o_ht_output_key,
        output [HASH_TABLE_OTYPE_WIDTH-1:0] o_ht_output_type,
        output [0:0]                        o_ht_output_client,
        output                              o_ht_output_valid,
        input                             i_ht_output_ready,
        input [HASH_TABLE_ADDR_WIDTH-1:0] i_ht_input_addr,
        input [HASH_TABLE_DATA_WIDTH-1:0] i_ht_input_data,
        input [HASH_TABLE_KEY_WIDTH-1:0]  i_ht_input_key,
        input [HASH_TABLE_OP_WIDTH-1:0]   i_ht_input_op,
        input [0:0]                       i_ht_input_client,
        input                             i_ht_input_valid,
		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Master Bus Interface M00_AXI
		input wire  m00_axi_aclk,
		input wire  m00_axi_aresetn,
		output wire [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_awaddr,
		output wire [2 : 0] m00_axi_awprot,
		output wire  m00_axi_awvalid,
		input wire  m00_axi_awready,
		output wire [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_wdata,
		output wire [C_M00_AXI_DATA_WIDTH/8-1 : 0] m00_axi_wstrb,
		output wire  m00_axi_wvalid,
		input wire  m00_axi_wready,
		input wire [1 : 0] m00_axi_bresp,
		input wire  m00_axi_bvalid,
		output wire  m00_axi_bready,
		output wire [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_araddr,
		output wire [2 : 0] m00_axi_arprot,
		output wire  m00_axi_arvalid,
		input wire  m00_axi_arready,
		input wire [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_rdata,
		input wire [1 : 0] m00_axi_rresp,
		input wire  m00_axi_rvalid,
		output wire  m00_axi_rready
	);
// Instantiation of Axi Bus Interface M00_AXI
	hash_table_mgr_mig_v1_0_M00_AXI #( 
	    .HASH_TABLE_ADDR_WIDTH(HASH_TABLE_ADDR_WIDTH),
	    .HASH_TABLE_DATA_WIDTH(HASH_TABLE_DATA_WIDTH),
	    .HASH_TABLE_KEY_WIDTH(HASH_TABLE_KEY_WIDTH),
	    .HASH_TABLE_OP_WIDTH(HASH_TABLE_OP_WIDTH),
	    .BUFFER_SIZE(BUFFER_SIZE),
	    .NUM_LOCKS(NUM_LOCKS),
		.C_M_TARGET_SLAVE_BASE_ADDR(C_M00_AXI_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_ADDR_WIDTH(C_M00_AXI_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH(C_M00_AXI_DATA_WIDTH)
	) hash_table_mgr_mig_v1_0_M00_AXI_inst (
		.ht_input_addr(i_ht_input_addr),
	    .ht_input_data(i_ht_input_data),
	    .ht_input_key(i_ht_input_key),
	    .ht_input_op(i_ht_input_op),
	    .ht_input_client(i_ht_input_client),
	    .ht_input_valid(i_ht_input_valid),
	    .ht_output_ready(i_ht_output_ready),
	    .ht_output_addr(o_ht_output_addr),
	    .ht_output_data(o_ht_output_data),
	    .ht_output_key(o_ht_output_key),
	    .ht_output_type(o_ht_output_type),
	    .ht_output_client(o_ht_output_client),
	    .ht_output_valid(o_ht_output_valid),
		.M_AXI_ACLK(m00_axi_aclk),
		.M_AXI_ARESETN(m00_axi_aresetn),
		.M_AXI_AWADDR(m00_axi_awaddr),
		.M_AXI_AWPROT(m00_axi_awprot),
		.M_AXI_AWVALID(m00_axi_awvalid),
		.M_AXI_AWREADY(m00_axi_awready),
		.M_AXI_WDATA(m00_axi_wdata),
		.M_AXI_WSTRB(m00_axi_wstrb),
		.M_AXI_WVALID(m00_axi_wvalid),
		.M_AXI_WREADY(m00_axi_wready),
		.M_AXI_BRESP(m00_axi_bresp),
		.M_AXI_BVALID(m00_axi_bvalid),
		.M_AXI_BREADY(m00_axi_bready),
		.M_AXI_ARADDR(m00_axi_araddr),
		.M_AXI_ARPROT(m00_axi_arprot),
		.M_AXI_ARVALID(m00_axi_arvalid),
		.M_AXI_ARREADY(m00_axi_arready),
		.M_AXI_RDATA(m00_axi_rdata),
		.M_AXI_RRESP(m00_axi_rresp),
		.M_AXI_RVALID(m00_axi_rvalid),
		.M_AXI_RREADY(m00_axi_rready)
	);

	// Add user logic here

	// User logic ends

	endmodule
