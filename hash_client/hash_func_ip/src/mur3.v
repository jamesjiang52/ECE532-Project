`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/15/2022 12:43:47 AM
// Design Name: 
// Module Name: mur3
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


module mur3(
    input clk,
    input rstn,
    input i_stall_pipe,
    input [127:0] i_data,
    input i_start,
    
    output [31:0] o_hash_key,
    output o_valid
    );
    integer k;
    
    reg valid_propagate[0:9];
    always @(posedge clk) begin
        if (rstn == 1'b0) begin
            for (k = 0; k < 10 ; k = k + 1) begin
                valid_propagate[k] <= 1'b0;
            end
        end
        else begin
        if (i_stall_pipe == 1'b0) begin
            valid_propagate[0] <= i_start;
            for (k = 1; k < 10 ; k = k + 1) begin
                valid_propagate[k] <= valid_propagate[k-1];
            end
        end
        end    
    end
    assign o_valid = valid_propagate[9];
    
    //stage 0 - load the data
    reg [127:0] r_init_data;
    reg r_start;
    always @(posedge clk) begin
        if (rstn == 1'b0) begin
            r_init_data <= 128'b0;
        end
        else begin
        if (i_stall_pipe == 1'b0) begin
            r_init_data <= i_data;
        end
        end    
    end
    
    reg [31:0] partial_a;
    reg [31:0] partial_b;
    reg [31:0] partial_c;
    reg [31:0] partial_d;
    reg [31:0] partial_hash_a;
    reg [31:0] partial_hash_b;
    reg [31:0] partial_hash_c;
    reg [31:0] partial_hash_d;
    
    always @(*)begin
        partial_a = r_init_data[31:0] * 32'hcc9e2d51;
        partial_a = {partial_a[16:0],partial_a[31:17]};
        partial_b = r_init_data[63:32] * 32'hcc9e2d51;
        partial_b = {partial_b[16:0],partial_b[31:17]};
        partial_c = r_init_data[95:64] * 32'hcc9e2d51;
        partial_c = {partial_c[16:0],partial_c[31:17]};
        partial_d = r_init_data[127:96] * 32'hcc9e2d51;
        partial_d = {partial_d[16:0],partial_d[31:17]};
    end
    
    always @(posedge clk) begin
        if (rstn == 1'b0) begin
            partial_hash_a <= 32'b0;
            partial_hash_b <= 32'b0;
            partial_hash_c <= 32'b0;
            partial_hash_d <= 32'b0;
        end
        else begin
        if (i_stall_pipe == 1'b0) begin
            partial_hash_a <= partial_a;
            partial_hash_b <= partial_b;
            partial_hash_c <= partial_c;
            partial_hash_d <= partial_d;
        end
        end    
    end
    
    reg [31:0] partial_hash_a_1;
    reg [31:0] partial_hash_b_1;
    reg [31:0] partial_hash_c_1;
    reg [31:0] partial_hash_d_1;
    
    always @(posedge clk) begin
        if (rstn == 1'b0) begin
            partial_hash_a_1 <= 32'b0;
            partial_hash_b_1 <= 32'b0;
            partial_hash_c_1 <= 32'b0;
            partial_hash_d_1 <= 32'b0;
        end
        else begin
        if (i_stall_pipe == 1'b0) begin
            partial_hash_a_1 <= partial_hash_a*32'h1B873593;
            partial_hash_b_1 <= partial_hash_b*32'h1B873593;
            partial_hash_c_1 <= partial_hash_c*32'h1B873593;
            partial_hash_d_1 <= partial_hash_d*32'h1B873593;
        end    
        end
    end
    reg [31:0] hash_a[0:2];
    reg [31:0] hash_b[0:2];
    reg [31:0] hash_c[0:2];
    reg [31:0] hash_d[0:2];
    
    always @(posedge clk) begin
        if (rstn == 1'b0) begin
            for (k = 0; k < 3; k = k+1) begin
                hash_a[k] <= 32'b0;
                hash_b[k] <= 32'b0;
                hash_c[k] <= 32'b0;
                hash_d[k] <= 32'b0;
            end
        end
        else begin
        if (i_stall_pipe == 1'b0) begin
            hash_a[0] <= partial_hash_a_1;
            hash_b[0] <= partial_hash_b_1;
            hash_c[0] <= partial_hash_c_1;
            hash_d[0] <= partial_hash_d_1;
            
            for (k = 1; k < 3; k = k+1) begin
                hash_a[k] <= hash_a[k-1];
                hash_b[k] <= hash_b[k-1];
                hash_c[k] <= hash_c[k-1];
                hash_d[k] <= hash_d[k-1];
            end
        end
        end    
    end
    
    wire [31:0] w_seed [0:3];
    
    mur3_pipe a1 (.clk(clk),.rstn(rstn),.i_stall_pipe(i_stall_pipe),.seed(32'b0),.partial_key(partial_hash_a_1),.o_seed(w_seed[0]));
    mur3_pipe a2 (.clk(clk),.rstn(rstn),.i_stall_pipe(i_stall_pipe),.seed(w_seed[0]),.partial_key(hash_b[0]),.o_seed(w_seed[1]));
    mur3_pipe a3 (.clk(clk),.rstn(rstn),.i_stall_pipe(i_stall_pipe),.seed(w_seed[1]),.partial_key(hash_c[1]),.o_seed(w_seed[2]));
    mur3_pipe a4 (.clk(clk),.rstn(rstn),.i_stall_pipe(i_stall_pipe),.seed(w_seed[2]),.partial_key(hash_d[2]),.o_seed(w_seed[3]));
    
    reg [31:0] partial_key_0;
    reg [31:0] partial_key_1;
    reg [31:0] partial_key_2;
    reg [31:0] partial_key_sub;
    always @(*) begin
        partial_key_sub = w_seed[3] ^ 32'h00000080;
        partial_key_sub = partial_key_sub ^ {16'b0,partial_key_sub[31:16]};
    end
    always @(posedge clk) begin
        if (rstn == 1'b0) begin
            partial_key_0<= 32'b0;
        end
        else begin
        if (i_stall_pipe == 1'b0) begin
            partial_key_0 <= partial_key_sub;
        end    
        end
    end
    
    reg [31:0] partial_key_sub_1;
    always @(*) begin
        partial_key_sub_1 = partial_key_0 * 32'h85EBCA6B;
        partial_key_sub_1 = partial_key_sub_1 ^ {13'b0,partial_key_sub_1[31:13]};
    end
    always @(posedge clk) begin
        if (rstn == 1'b0) begin
            partial_key_1 <= 32'b0;
        end
        else begin
        if (i_stall_pipe == 1'b0) begin
            partial_key_1 <= partial_key_sub_1;
        end 
        end
    end
    
    reg [31:0] partial_key_sub_2;
     always @(*)begin
        partial_key_sub_2 = partial_key_1 * 32'hc2b2ae35;
        partial_key_sub_2 = partial_key_sub_2 ^ {16'b0,partial_key_sub_2[31:16]};//(r_partial_hash >> 16);
    end
    always @(posedge clk) begin
        if (rstn == 1'b0) begin
            partial_key_2 <= 32'b0;
        end
        else begin
        if (i_stall_pipe == 1'b0) begin
            partial_key_2 <= partial_key_sub_2;
        end 
        end
    end
    
    assign o_hash_key = partial_key_2;
    
endmodule

module mur3_pipe (
        input clk,
        input rstn,
        input i_stall_pipe,
        input [31:0] seed,
        input [31:0] partial_key,
        
        output reg [31:0] o_seed
    );
    
    reg [31:0] r_hash_data;
    always @(*) begin
        r_hash_data = seed ^ partial_key;
        r_hash_data = {r_hash_data[18:0],r_hash_data[31:19]}; //ROL 13
        r_hash_data = r_hash_data * 5 + 32'hE6546B64;
    end   
    
    always @(posedge clk) begin
        if (rstn == 1'b0) begin
            o_seed <= 32'b0;
        end
        else begin
        if (i_stall_pipe == 1'b0) begin
            o_seed <= r_hash_data;
        end    
        end
    end   
endmodule
