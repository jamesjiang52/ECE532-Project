`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/15/2022 01:59:38 AM
// Design Name: 
// Module Name: hash_func_top
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


module hash_func_top#(
// Width of ID for for write address, write data, read address and read data
		parameter integer C_S_AXI_ID_WIDTH	= 1,
		// Width of S_AXI data bus
		//parameter integer C_S_AXI_DATA_WIDTH	= 32,
		// Width of S_AXI address bus
		parameter integer C_S_AXI_ADDR_WIDTH	= 8,
		// Width of optional user defined signal in write address channel
		parameter integer C_S_AXI_AWUSER_WIDTH	= 0,
		// Width of optional user defined signal in read address channel
		parameter integer C_S_AXI_ARUSER_WIDTH	= 0,
		// Width of optional user defined signal in write data channel
		parameter integer C_S_AXI_WUSER_WIDTH	= 0,
		// Width of optional user defined signal in read data channel
		parameter integer C_S_AXI_RUSER_WIDTH	= 0,
		// Width of optional user defined signal in write response channel
		parameter integer C_S_AXI_BUSER_WIDTH	= 0

)(
       // input aclk,     //same as slave interface aclk and aresetn
       // input aresetn,
        input wire  s_axi_aclk,
		input wire  s_axi_aresetn,
		input wire [C_S_AXI_ID_WIDTH-1 : 0] s_axi_awid,
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] s_axi_awaddr,
		input wire [7 : 0] s_axi_awlen,
		input wire [2 : 0] s_axi_awsize,
		input wire [1 : 0] s_axi_awburst,
		input wire  s_axi_awlock,
		input wire [3 : 0] s_axi_awcache,
		input wire [2 : 0] s_axi_awprot,
		input wire [3 : 0] s_axi_awqos,
		input wire [3 : 0] s_axi_awregion,
	//	input wire [C_S_AXI_AWUSER_WIDTH-1 : 0] s01_axi_awuser,
		input wire  s_axi_awvalid,
		output wire  s_axi_awready,
		input wire [31 : 0] s_axi_wdata,
		input wire [(32/8)-1 : 0] s_axi_wstrb,
		input wire  s_axi_wlast,
	//	input wire [C_S_AXI_WUSER_WIDTH-1 : 0] s01_axi_wuser,
		input wire  s_axi_wvalid,
		output wire  s_axi_wready,
		output wire [C_S_AXI_ID_WIDTH-1 : 0] s_axi_bid,
		output wire [1 : 0] s_axi_bresp,
		//output wire [C_S_AXI_BUSER_WIDTH-1 : 0] s01_axi_buser,
		output wire  s_axi_bvalid,
		input wire  s_axi_bready,
		input wire [C_S_AXI_ID_WIDTH-1 : 0] s_axi_arid,
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] s_axi_araddr,
		input wire [7 : 0] s_axi_arlen,
		input wire [2 : 0] s_axi_arsize,
		input wire [1 : 0] s_axi_arburst,
		input wire  s_axi_arlock,
		input wire [3 : 0] s_axi_arcache,
		input wire [2 : 0] s_axi_arprot,
		input wire [3 : 0] s_axi_arqos,
		input wire [3 : 0] s_axi_arregion,
		//input wire [C_S_AXI_ARUSER_WIDTH-1 : 0] s01_axi_aruser,
		input wire  s_axi_arvalid,
		output wire  s_axi_arready,
		output wire [C_S_AXI_ID_WIDTH-1 : 0] s_axi_rid,
		output wire [31 : 0] s_axi_rdata,
		output wire [1 : 0] s_axi_rresp,
		output wire  s_axi_rlast,
		//output wire [C_S_AXI_RUSER_WIDTH-1 : 0] s01_axi_ruser,
		output wire  s_axi_rvalid,
		input wire  s_axi_rready


    );
    localparam integer C_S_AXI_DATA_WIDTH	= 32;
    wire [C_S_AXI_RUSER_WIDTH-1 : 0] s_axi_ruser;
    wire [C_S_AXI_BUSER_WIDTH-1 : 0] s_axi_buser;
    
     wire [415:0] input_data;
        wire [31:0] i_length;
        wire start_hash_func;
        wire fetch_from_fifo;
        
        wire hash_key_valid;
        wire [15:0] hash_key, hash_key_to_fifo;
        wire i_stall_pipe;
        wire hash_func_valid;
        
    hash_func_S_AXI # ( 
		.C_S_AXI_ID_WIDTH(C_S_AXI_ID_WIDTH),
		.C_S_AXI_DATA_WIDTH(C_S_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S_AXI_ADDR_WIDTH),
		.C_S_AXI_AWUSER_WIDTH(C_S_AXI_AWUSER_WIDTH),
		.C_S_AXI_ARUSER_WIDTH(C_S_AXI_ARUSER_WIDTH),
		.C_S_AXI_WUSER_WIDTH(C_S_AXI_WUSER_WIDTH),
		.C_S_AXI_RUSER_WIDTH(C_S_AXI_RUSER_WIDTH),
		.C_S_AXI_BUSER_WIDTH(C_S_AXI_BUSER_WIDTH)
	) hash_func_S_AXI_inst (
	
        .input_data(input_data),
        .i_length(i_length),
        .start_hash_func(start_hash_func),
        .fetch_from_fifo(fetch_from_fifo),
        
        .hash_key_valid(hash_key_valid),
        .hash_key({16'b0,hash_key}),
        .i_stall_pipe(i_stall_pipe),

		.S_AXI_ACLK(s_axi_aclk),
		.S_AXI_ARESETN(s_axi_aresetn),
		.S_AXI_AWID(s_axi_awid),
		.S_AXI_AWADDR(s_axi_awaddr),
		.S_AXI_AWLEN(s_axi_awlen),
		.S_AXI_AWSIZE(s_axi_awsize),
		.S_AXI_AWBURST(s_axi_awburst),
		.S_AXI_AWLOCK(s_axi_awlock),
		.S_AXI_AWCACHE(s_axi_awcache),
		.S_AXI_AWPROT(s_axi_awprot),
		.S_AXI_AWQOS(s_axi_awqos),
		.S_AXI_AWREGION(s_axi_awregion),
		.S_AXI_AWUSER(0),
		.S_AXI_AWVALID(s_axi_awvalid),
		.S_AXI_AWREADY(s_axi_awready),
		.S_AXI_WDATA(s_axi_wdata),
		.S_AXI_WSTRB(s_axi_wstrb),
		.S_AXI_WLAST(s_axi_wlast),
		.S_AXI_WUSER(0),
		.S_AXI_WVALID(s_axi_wvalid),
		.S_AXI_WREADY(s_axi_wready),
		.S_AXI_BID(s_axi_bid),
		.S_AXI_BRESP(s_axi_bresp),
		.S_AXI_BUSER(s_axi_buser),
		.S_AXI_BVALID(s_axi_bvalid),
		.S_AXI_BREADY(s_axi_bready),
		.S_AXI_ARID(s_axi_arid),
		.S_AXI_ARADDR(s_axi_araddr),
		.S_AXI_ARLEN(s_axi_arlen),
		.S_AXI_ARSIZE(s_axi_arsize),
		.S_AXI_ARBURST(s_axi_arburst),
		.S_AXI_ARLOCK(s_axi_arlock),
		.S_AXI_ARCACHE(s_axi_arcache),
		.S_AXI_ARPROT(s_axi_arprot),
		.S_AXI_ARQOS(s_axi_arqos),
		.S_AXI_ARREGION(s_axi_arregion),
		.S_AXI_ARUSER(0),
		.S_AXI_ARVALID(s_axi_arvalid),
		.S_AXI_ARREADY(s_axi_arready),
		.S_AXI_RID(s_axi_rid),
		.S_AXI_RDATA(s_axi_rdata),
		.S_AXI_RRESP(s_axi_rresp),
		.S_AXI_RLAST(s_axi_rlast),
		.S_AXI_RUSER(s_axi_ruser),
		.S_AXI_RVALID(s_axi_rvalid),
		.S_AXI_RREADY(s_axi_rready)
	);
    
    
    hash_func_pipe hash (
        .clk(s_axi_aclk),
        .rstn(s_axi_aresetn),
        .i_data(input_data),
        .i_length(i_length),
        .i_stall_pipe(i_stall_pipe),
        .i_start(start_hash_func),
        .o_valid(hash_func_valid),
        .hash_key(hash_key_to_fifo)
    );
    
    fifo #() fifo_inst (
    .clk(s_axi_aclk),
    .rstn(s_axi_aresetn),

    .data_valid(hash_func_valid),
    .hash_key(hash_key_to_fifo),
    .read_next_ptr(fetch_from_fifo),
    
    .pipe_stalled(i_stall_pipe),
    
    .o_valid(hash_key_valid),
    .o_hash_key(hash_key)
    );
    
    
endmodule
