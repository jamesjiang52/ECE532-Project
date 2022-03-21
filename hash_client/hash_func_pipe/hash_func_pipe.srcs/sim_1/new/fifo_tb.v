`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2022 01:14:28 AM
// Design Name: 
// Module Name: fifo_tb
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


module fifo_tb();


reg clk,rstn;
reg [15:0]hash_key;
reg data_valid,read_next_ptr;
wire pipe_stalled;
wire o_valid;
wire [15:0] o_hash_key;

fifo #() DUT (
    .clk(clk),
    .rstn(rstn),

    .data_valid(data_valid),
    .hash_key(hash_key),
    .read_next_ptr(read_next_ptr),
    
    .pipe_stalled(pipe_stalled),
    
    .o_valid(o_valid),
    .o_hash_key(o_hash_key)
    );

integer i = 0;

initial clk = 0;
    always #2 clk = ~clk;
    
    initial begin
        rstn = 1'b0;
        #8;
        rstn = 1'b1;
        read_next_ptr = 1'b0;
         #4   
      //  for (i = 0; i<150;i=i+1)begin
     //       data_valid = 1'b1;
    //        hash_key = i;
    //        #4;        
     //   end
        read_next_ptr = 1'b0;
        data_valid = 1'b1;
        hash_key = 16'h5bdb;
        #4
        data_valid = 1'b0;
        read_next_ptr = 1'b1;
        #4
        read_next_ptr = 1'b0;
        #40
        
        data_valid = 1'b1;
        hash_key = 16'h8fca;
        #4
        data_valid = 1'b0;
        #40
        read_next_ptr = 1'b1;
        data_valid = 1'b1;
        hash_key = 16'haac6;
        #4
        data_valid = 1'b0;
        #4
      //  for(i = 0; i<151;i=i+1)begin
      //      read_next_ptr = 1'b1;
      //      #4;
     //   end
        read_next_ptr = 1'b1;
         data_valid = 1'b0;
        #4
       read_next_ptr = 1'b1;
        #20
        $finish;
    
    end
    

endmodule
