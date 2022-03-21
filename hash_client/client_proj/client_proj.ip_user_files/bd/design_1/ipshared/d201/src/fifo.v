`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2022 07:14:52 PM
// Design Name: 
// Module Name: fifo
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


module fifo #(
    parameter FIFO_DEPTH = 150,//150,
    parameter FIFO_WIDTH = 17,
    parameter FIFO_ADDR_WIDTH = 8
) (
    input clk,
    input rstn,

    input data_valid,
    input [15:0]hash_key,
    input read_next_ptr,
    
    output pipe_stalled,
    
    output o_valid,
    output [15:0] o_hash_key
    );
    
    reg [7:0] head_ptr; //read
    reg [7:0] tail_ptr; //write
    reg fifo_stall;
    reg [FIFO_WIDTH-1:0] FIFO [0:FIFO_DEPTH-1];
    
    integer k;
    
    always @(posedge clk) begin
        if (rstn == 1'b0) begin
            head_ptr <= 8'b0;
            tail_ptr <= 8'b0;
            fifo_stall <= 1'b0;
            
            for (k = 0; k < FIFO_DEPTH; k= k+1) begin
                FIFO[k] <= 0;
            end
        end
               
        
        if (data_valid) begin
            if (fifo_stall != 1'b1) begin
                FIFO[tail_ptr] <= {data_valid,hash_key};
            end
            if (tail_ptr >= FIFO_DEPTH-1) begin
                if (head_ptr == 8'b0) begin
                    fifo_stall <= 1'b1;
                end
                else begin
                    tail_ptr <= 8'b0;
                end
            end
            else begin
                if (tail_ptr + 1'b1 != head_ptr) begin
                    tail_ptr <= tail_ptr + 1'b1;
                end
                else begin
                    fifo_stall <= 1'b1;
                end
            end
        end
        
        if (read_next_ptr) begin
            if (head_ptr >= FIFO_DEPTH-1) begin
                if (head_ptr != tail_ptr) begin
                    head_ptr <= 8'b0;
                end
            end
            else begin
                if (head_ptr != tail_ptr) begin
                    head_ptr <= head_ptr + 1'b1;
                end
            end
                FIFO[head_ptr] <= 16'b0;
                        
        end
        
        if (tail_ptr == FIFO_DEPTH-1) begin
            if (head_ptr != 8'b0) begin
                fifo_stall <= 1'b0;
            end
        end
        else begin
            if (tail_ptr + 1'b1 != head_ptr) begin
                fifo_stall <= 1'b0;
            end
        end
    end
    
    assign o_valid = FIFO[head_ptr][16];//data_out[16];
    assign o_hash_key = FIFO[head_ptr][15:0];//data_out[15:0];
    assign pipe_stalled = fifo_stall;
    
endmodule
