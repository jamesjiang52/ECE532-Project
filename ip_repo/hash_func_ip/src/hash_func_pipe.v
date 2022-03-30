`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/15/2022 01:51:58 AM
// Design Name: 
// Module Name: hash_func_pipe
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


module hash_func_pipe(
    input clk,
    input rstn,
    input [415:0]i_data,
    input [31:0] i_length,
    input i_start,
    
    //TODO: ADD PIPELINE STALL SIGNAL
    input i_stall_pipe,
    
    output o_valid,
    output [15:0] hash_key
    );
    
    wire [127:0] w_partial_hash;
    wire w_start;
    wire [31:0] w_hash_key;
        
    //MODIFY TO STALL THE PIPELINE IF output BUFFER IS FULL
    md5 md5_i(
    .clk(clk),
    .rstn(rstn),
    .i_stall_pipe(i_stall_pipe),
    .i_start(i_start),
    .i_data(i_data),
    .i_length(i_length),
    .final_val(w_partial_hash),
    .o_valid(w_start)
);

mur3 mur3_i (
    .clk(clk),
    .rstn(rstn),
    .i_stall_pipe(i_stall_pipe),
    .i_data(w_partial_hash),
    .i_start(w_start),
    .o_hash_key(w_hash_key),
    .o_valid(o_valid)
    );
    
    assign hash_key = w_hash_key[31:16] ^ w_hash_key[15:0];   
endmodule
