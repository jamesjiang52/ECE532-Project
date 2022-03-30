`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/31/2022 06:31:24 PM
// Design Name: 
// Module Name: murmur3_tb
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


module mur3_tb();
    
    reg clk, rstn, i_start,i_stall_pipe;
    reg [127:0] i_data;
    wire [31:0] o_hash_key;
    wire o_valid;

    initial clk = 0;
    always #2 clk = ~clk;


mur3 DUT (
    .clk (clk),
    .rstn(rstn),
    .i_start(i_start),
    .i_stall_pipe(i_stall_pipe),
    .i_data(i_data),
    .o_hash_key(o_hash_key),
    .o_valid(o_valid)
);

    initial begin
    rstn = 0;
    i_stall_pipe = 0;
    #10
    rstn = 1;
    #5
    i_data = 128'h1234567890abcdef0987654321abcdef;
    i_start = 1;
    #4
    i_stall_pipe = 1;
    #4
    i_stall_pipe = 0;
    i_data = 128'hffffffffffffffffffffffffffffffff;
     #4
    i_data = 128'h1234567890abcdef0987654321abcdef;
    #4
    i_data = 128'hf0c6754e02ce420b3b8bc744f1f56c67;
    #4
    i_data = 128'h8161e0913b8e5646de4a76f01d3589b8;
    #4
    i_stall_pipe = 1;
    #12
    i_stall_pipe = 0;
    i_data = 128'h630d68ea33861054da5437a05d917c34;
    #4
    i_data = 128'h7ca62316825b04445854e68ae8445b70;
    #4
    i_stall_pipe = 1;
    #4
    i_stall_pipe = 0;
    i_data = 128'h4c24f861790f6b8e5ce073d6158c2f65;
    #4
    i_data = 128'h2815f6edd5b3e1cb377fe04be7fbb17e;
    #4
    i_start = 0;
    #37
    
    #80
    
    $display("Simulation Done\n");
    $finish;
    end

endmodule
