`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2022 05:01:30 PM
// Design Name: 
// Module Name: hash_function
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


module hash_function(
    input aclk,
    input aresetn,

// Ports of Axi Slave Bus Interface S00_AXI

		input wire [5 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [31 : 0] s00_axi_wdata,
		input wire [3 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [5 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [31 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready
/*
		// Ports of Axi Slave Bus Interface S_AXI_INTR
		input wire  s_axi_intr_aclk,
		input wire  s_axi_intr_aresetn,
		input wire [4 : 0] s_axi_intr_awaddr,
		input wire [2 : 0] s_axi_intr_awprot,
		input wire  s_axi_intr_awvalid,
		output wire  s_axi_intr_awready,
		input wire [31 : 0] s_axi_intr_wdata,
		input wire [3 : 0] s_axi_intr_wstrb,
		input wire  s_axi_intr_wvalid,
		output wire  s_axi_intr_wready,
		output wire [1 : 0] s_axi_intr_bresp,
		output wire  s_axi_intr_bvalid,
		input wire  s_axi_intr_bready,
		input wire [4 : 0] s_axi_intr_araddr,
		input wire [2 : 0] s_axi_intr_arprot,
		input wire  s_axi_intr_arvalid,
		output wire  s_axi_intr_arready,
		output wire [31 : 0] s_axi_intr_rdata,
		output wire [1 : 0] s_axi_intr_rresp,
		output wire  s_axi_intr_rvalid,
		input wire  s_axi_intr_rready,
		output wire  irq
*/
    );
    
    /*--------------------------------------------------------------------------*/
    //Instantiate slave interface here
    
    	// Parameters of Axi Slave Bus Interface S00_AXI
		localparam integer C_S00_AXI_DATA_WIDTH	= 32;
		localparam integer C_S00_AXI_ADDR_WIDTH	= 6;

		// Parameters of Axi Slave Bus Interface S_AXI_INTR
		localparam integer C_S_AXI_INTR_DATA_WIDTH	= 32;
		localparam integer C_S_AXI_INTR_ADDR_WIDTH	= 5;
		localparam integer C_NUM_OF_INTR	= 1;
		localparam  C_INTR_SENSITIVITY	= 32'hFFFFFFFF;
		localparam  C_INTR_ACTIVE_STATE	= 32'hFFFFFFFF;
		localparam integer C_IRQ_SENSITIVITY	= 1;
		localparam integer C_IRQ_ACTIVE_STATE	= 1;
    
        wire [415:0]w_data;
        wire [31:0] w_length;
        wire w_start_hash;
        wire [15:0] hash_key_final;
        wire w_done_hash;
    
        wire [127:0] partial_hash;
        wire w_start, w_done;
        wire [31:0] hash_key;
    
    	hash_func_S0_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) hash_func_S0_AXI_inst (
	
	    .o_data(w_data),
        .o_length(w_length),
        .o_start_hash(w_start_hash),
        
        .hash_key(hash_key_final),
        .hash_done(w_done),//w_done_hash),        

		.S_AXI_ACLK(aclk),
		.S_AXI_ARESETN(aresetn),
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
/*
// Instantiation of Axi Bus Interface S_AXI_INTR
	hash_func_S_AXI_INTR # ( 
		.C_S_AXI_DATA_WIDTH(C_S_AXI_INTR_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S_AXI_INTR_ADDR_WIDTH),
		.C_NUM_OF_INTR(C_NUM_OF_INTR),
		.C_INTR_SENSITIVITY(C_INTR_SENSITIVITY),
		.C_INTR_ACTIVE_STATE(C_INTR_ACTIVE_STATE),
		.C_IRQ_SENSITIVITY(C_IRQ_SENSITIVITY),
		.C_IRQ_ACTIVE_STATE(C_IRQ_ACTIVE_STATE)
	) hash_func_S_AXI_INTR_inst (
	    .i_hash_done(w_done_hash),
		.S_AXI_ACLK(s_axi_intr_aclk),
		.S_AXI_ARESETN(s_axi_intr_aresetn),
		.S_AXI_AWADDR(s_axi_intr_awaddr),
		.S_AXI_AWPROT(s_axi_intr_awprot),
		.S_AXI_AWVALID(s_axi_intr_awvalid),
		.S_AXI_AWREADY(s_axi_intr_awready),
		.S_AXI_WDATA(s_axi_intr_wdata),
		.S_AXI_WSTRB(s_axi_intr_wstrb),
		.S_AXI_WVALID(s_axi_intr_wvalid),
		.S_AXI_WREADY(s_axi_intr_wready),
		.S_AXI_BRESP(s_axi_intr_bresp),
		.S_AXI_BVALID(s_axi_intr_bvalid),
		.S_AXI_BREADY(s_axi_intr_bready),
		.S_AXI_ARADDR(s_axi_intr_araddr),
		.S_AXI_ARPROT(s_axi_intr_arprot),
		.S_AXI_ARVALID(s_axi_intr_arvalid),
		.S_AXI_ARREADY(s_axi_intr_arready),
		.S_AXI_RDATA(s_axi_intr_rdata),
		.S_AXI_RRESP(s_axi_intr_rresp),
		.S_AXI_RVALID(s_axi_intr_rvalid),
		.S_AXI_RREADY(s_axi_intr_rready),
		.irq(irq)
	);
*/
    /*--------------------------------------------------------------------------*/

    //MD 5 module
    MD5 md5 (
    .clk(aclk),
    .rstn(aresetn),
    .i_data(w_data),
    .i_length(w_length),
    .i_start(w_start_hash),
  //  .i_busy(0),
    .i_done(w_done),
    .o_start(w_start),
    .o_hash_done(w_done_hash),
    .o_hash_key(partial_hash)
    );
    
    //murmur3 module
    murmur3 mur3 (
    .clk(aclk),
    .rstn(aresetn),
    .i_start(w_start),
    .i_data(partial_hash), //Need to be held for 2 cycles?
    .o_data(hash_key),
//    output o_busy,
    .o_done(w_done)
    );
    //using done from md5 to start intr
    assign hash_key_final = hash_key[31:16] ^ hash_key[15:0];
    
endmodule
