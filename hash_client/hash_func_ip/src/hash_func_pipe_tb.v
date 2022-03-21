`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2022 01:43:19 PM
// Design Name: 
// Module Name: hash_func_pipe_tb
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


module hash_func_pipe_tb();
    reg clk, rstn, i_start,i_stall_pipe;
    reg [415:0]i_data;
    reg [31:0]i_length;
    
   // wire o_hash_done;
    wire [15:0] o_hash_key;
    wire o_valid;
    
    initial clk = 0;
    always #2 clk = ~clk;


hash_func_pipe DUT (
    .clk(clk),
    .rstn(rstn),
    .i_data(i_data),
    .i_length(i_length),
    .i_start(i_start),
    .i_stall_pipe(i_stall_pipe),
    //input i_busy,
    .hash_key(o_hash_key),
    .o_valid(o_valid)
    );

  initial begin
        rstn = 0;
        i_start = 0;
        i_stall_pipe = 0;
        #11
        rstn = 1;
        #5
        i_data = 416'h476f6f64_2074696d_65000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000;
        i_length = 31'd9;
        i_start = 1;
        #4
        i_data = 416'h0;
        i_length = 31'd0;
        i_start = 0;
        #4
        i_data = 416'h96504889_2074696d_68686868_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000;
        i_length = 31'd12;
        i_start = 1;
        #4
        i_data = 416'h476f6f64_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000;
        i_length = 31'd4;
        i_start = 1;
        #4 
        i_data = 416'h476f6f64_2074696d_65000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000;
        i_length = 31'd9;
        i_start = 0;
        i_stall_pipe = 1;
        #4
        #24
        i_stall_pipe = 0;
        i_data = 416'h896700FF_34233901_ffdcac21_12345678_90ffceda_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000;
        i_length = 31'd20;
        i_start = 1;
        #4
       i_stall_pipe = 1;
        #4
        i_stall_pipe = 0;
        i_start = 0;
        #4
        i_data = 416'h896700FF_34233901_ffdcac21_12345678_90ffceda_65650000_00000000_00000000_00000000_00000000_00000000_00000000_00000000;
        i_length = 31'd22;
        i_start = 1;
        
        #4
       i_stall_pipe = 1;
        #4
        i_stall_pipe = 0;
        i_start = 0;
        #4
        i_data = 416'h476f6f64_2074696d_65000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000;
        i_length = 31'd9;
        i_start = 1;
        #4
        
        i_stall_pipe = 1;
        #8
        i_stall_pipe = 0;
        i_start = 0;
        #900;
        $finish;
    end



endmodule
