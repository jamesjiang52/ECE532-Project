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


module murmur3_tb();
    
    reg clk, rst, i_start;
    reg [127:0] i_data;
    wire [31:0] o_data;
    wire o_done;

    initial clk = 0;
    always #2 clk = ~clk;


murmur3 DUT (
    .clk (clk),
    .rst(rst),
    .i_start(i_start),
    .i_data(i_data),
    .o_data(o_data),
    .o_done(o_done)
);

    initial begin
    rst = 1;
    #10
    rst = 0;
    #5
    i_data = 128'h1234567890abcdef0987654321abcdef;
    i_start = 1;
    #8
    i_data = 0;
    i_start = 0;
    #60
    $display("Simulation Done\n");
    $finish;
    end

endmodule
