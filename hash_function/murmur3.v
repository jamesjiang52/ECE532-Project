`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2022 08:44:07 PM
// Design Name: 
// Module Name: murmur3
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description:        the module takes in input data 128 bit length with start signal
//                      it goes through bit manipulation to produce 32 bit hash key
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//      Below murmur3 hash function is built using the algorithms from references below
//
//      REFERNCE USED:
//          Aappleby, smhasher, (2014), Github repository,
//          https://github.com/aappleby/smhasher
//
//          "MurmurHash," Wikipedia,
//          https://en.wikipedia.org/wiki/MurmurHash (accessed Jan 31st, 2022).
// 
//////////////////////////////////////////////////////////////////////////////////


module murmur3(
    input clk,
    input rst,
    
    input i_start,
    input [127:0] i_data, //Need to be held for 2 cycles?
    
    output [31:0] o_data,
    output o_done
    );
    
    wire w_init, w_partial, w_seed, w_result, w_final, sel_seed;
    wire w_res_sub_1, w_res_sub_2;
    wire [1:0] w_sel_mux;
    
    murmur3_data dataPath (   //TODO: Add a seperate reset signal from FSM
    .clk(clk),
    .rst(rst),
    
    .i_data(i_data),
    
    .ld_init(w_init),
    .ld_partial(w_partial),
    .sel_mux(w_sel_mux),
    .ld_seed(w_seed),
    .sel_init_seed(sel_seed),
    .ld_result(w_result),
    .ld_res_sub_1(w_res_sub_1),
    .ld_res_sub_2(w_res_sub_2),
    .ld_final(w_final),
    
    .o_hash_key(o_data)  
    );
    
    
    murmur3_FSM fsm (
    .clk(clk),
    .rst(rst),
    .i_start(i_start),

    .ld_init(w_init),
    .ld_partial(w_partial),
    .sel_mux(w_sel_mux),
    .ld_seed(w_seed),
    .sel_init_seed(sel_seed),
    .ld_result(w_result),
    .ld_res_sub_1(w_res_sub_1),
    .ld_res_sub_2(w_res_sub_2),
    .ld_final(w_final), 
    .o_done(o_done)
);
    
    
    
endmodule

module murmur3_data(
    input clk,
    input rst,
    
    input [127:0] i_data,
    
    input ld_init,
    input ld_partial,
    input [1:0]sel_mux,
    input ld_seed,
    input sel_init_seed,
    input ld_result,
    
    input ld_res_sub_1,
    input ld_res_sub_2,
    
    input ld_final,
    
    output [31:0] o_hash_key   
    );
    
    integer i;
    reg [31:0] init_data [0:3];
    
    always @(posedge clk)begin
        if (rst) begin
            for (i = 0; i < 4; i= i+1)begin
                init_data[i] <= 0;
            end
            end
        else if (ld_init) begin
            init_data[0] <= i_data[31:0];
            init_data[1] <= i_data[63:32];
            init_data[2] <= i_data[95:64];
            init_data[3] <= i_data[127:96];
        end
    end
    
    reg [31:0] partial_hash [0:3];
    always @ (*) begin
        for (i = 0; i< 4; i= i+1)begin
            partial_hash[i] = init_data[i] * 32'hCC9E2D51;
            partial_hash[i] = {partial_hash[i][16:0],partial_hash[i][31:17]}; //ROL 15
            partial_hash[i] = partial_hash[i] * 32'h1B873593;
        end
    end
    
    reg [31:0] partial_data0;
    reg [31:0] partial_data1;
    reg [31:0] partial_data2;
    reg [31:0] partial_data3;    
    always @(posedge clk)begin
        if (rst) begin
            partial_data0 <= 0;
            partial_data1 <= 0;
            partial_data2 <= 0;
            partial_data3 <= 0;
        end
        else if (ld_partial) begin
            partial_data0 <= partial_hash[0];
            partial_data1 <= partial_hash[1];
            partial_data2 <= partial_hash[2];
            partial_data3 <= partial_hash[3];
        end
    end

    wire [31:0]w_partial_hash;
    
    assign w_partial_hash = (sel_mux[1])? ((sel_mux[0])? partial_data3: partial_data2):
                                          ((sel_mux[0])? partial_data1: partial_data0);
    
    reg [31:0] r_seed;
    reg [31:0] r_hash_data;
    always @(*) begin
        r_hash_data = r_seed ^ w_partial_hash;
        r_hash_data = {r_hash_data[18:0],r_hash_data[31:19]}; //ROL 13
        r_hash_data = r_hash_data * 5 + 32'hE6546B64;
    end   
    
    always @(posedge clk) begin
        if (rst) begin
            r_seed <= 0;
        end
        else if (ld_seed) begin
            r_seed <= (sel_init_seed)? 32'h00000000: r_hash_data;
        end
    end
    
    reg [31:0] r_result;
    always @(posedge clk) begin
        if (rst) begin
            r_result <= 0;
        end
        else if (ld_result) begin
            r_result <= r_hash_data;
        end
    end
    
    reg [31:0] r_partial_hash;  //CUT into multiple stages if timing violation occur
    always @(*) begin
        r_partial_hash = r_result ^ 32'h00000080;
        r_partial_hash = r_partial_hash ^ {16'b0,r_partial_hash[31:16]}; //(r_partial_hash >> 16);
    end
    
    reg [31:0] r_partial_hash_1;
    reg [31:0] r_partial_hash_2;
    
    always @(posedge clk) begin
        if (rst) begin
            r_partial_hash_1 <= 0;
        end
        else if (ld_res_sub_1) begin
            r_partial_hash_1 <= r_partial_hash;
        end
    end
    
    reg [31:0]r_partial_hash_1_process;
    always @(*)begin
        r_partial_hash_1_process = r_partial_hash_1 * 32'h85EBCA6B;
        r_partial_hash_1_process = r_partial_hash_1_process ^ {13'b0,r_partial_hash_1_process[31:13]};//(r_partial_hash >> 13);
    end
    
    always @(posedge clk) begin
        if (rst) begin
            r_partial_hash_2 <= 0;
        end
        else if (ld_res_sub_2) begin
            r_partial_hash_2 <= r_partial_hash_1_process;
        end
    end
    
    reg [31:0] r_partial_hash_2_process;
    always @(*)begin
        r_partial_hash_2_process = r_partial_hash_2 * 32'hc2b2ae35;
        r_partial_hash_2_process = r_partial_hash_2_process ^ {16'b0,r_partial_hash_2_process[31:16]};//(r_partial_hash >> 16);
    end
    
    reg [31:0]r_final;
    always @(posedge clk) begin
        if (rst) begin
            r_final <= 0;
        end
        else if (ld_final) begin
            r_final <= r_partial_hash_2_process;
        end
    end

    assign o_hash_key = r_final;

endmodule

module murmur3_FSM(
    input clk,
    input rst,
    
    input i_start,
    
    output reg ld_init,
    output reg ld_partial,
    output reg [1:0]sel_mux,
    output reg ld_seed,
    output reg sel_init_seed,
    output reg ld_result,
    
    output reg ld_res_sub_1,
    output reg ld_res_sub_2,
    
    output reg ld_final, 
    
    
    
    output reg o_done
);
// 9 states
    localparam S_IDLE = 4'd0;
    localparam S_INIT = 4'd1;
    localparam S_INIT_2 = 4'd2;
    localparam S_1 = 4'd3;
    localparam S_2 = 4'd4;
    localparam S_3 = 4'd5;
    localparam S_4 = 4'd6;
    localparam S_LAST = 4'd7;
    localparam S_LAST_1 = 4'd8;
    localparam S_LAST_2 = 4'd9;
    localparam S_FINAL = 4'd10;

    reg [3:0] next_state, current_state;
    
    //Assigne next state
    always @(*) begin
        case (current_state)
            S_IDLE: begin
                    if (i_start) next_state = S_INIT;
                    else next_state = next_state; 
                    end    
            S_INIT: next_state = S_INIT_2;
            
            S_INIT_2: next_state = S_1;
            
            S_1: next_state = S_2;
            
            S_2: next_state = S_3;
            
            S_3: next_state = S_4;
            
            S_4: next_state = S_LAST;
            
            S_LAST: next_state = S_LAST_1;
            
            S_LAST_1: next_state = S_LAST_2;
            
            S_LAST_2: next_state = S_FINAL;
            
            S_FINAL: next_state = S_IDLE;
            
            default: next_state = S_IDLE; 
        endcase
    end
    
    //FSM state reg update
    always @(posedge clk) begin
        if (rst) begin
            current_state <= S_IDLE;
        end
        else begin
            current_state <= next_state;
        end
    end
    
    //CTRL output
    always @(*) begin   //TODO: Add a reset signal during idle stage
        ld_init = 0;
        ld_partial = 0;
        sel_mux = 0;
        ld_seed = 0;
        sel_init_seed = 0;
        ld_result = 0;
        ld_res_sub_1 = 0;
        ld_res_sub_2 = 0;
        ld_final = 0;
        o_done = 0;
        case (current_state)
            S_IDLE: ;// Nothing to do
            
            S_INIT: begin
                ld_init = 1;
                sel_init_seed = 1;
                ld_seed = 1;
            end
            S_INIT_2: ld_partial = 1;
            
            S_1: begin
                sel_mux = 0;
                ld_seed = 1; //sel_init_seed = 0;
            end
            S_2: begin
                sel_mux = 2'b1;
                ld_seed = 1; //sel_init_seed = 0;
            end
            S_3: begin
                sel_mux = 2'd2;
                ld_seed = 1; //sel_init_seed = 0;
            end
            S_4: begin
                sel_mux = 2'd3;
                ld_seed = 1; //sel_init_seed = 0;
                ld_result = 1;
            end    
            S_LAST: begin
                ld_res_sub_1 = 1;
            end
            S_LAST_1: begin
                ld_res_sub_2 = 1;
            end
            S_LAST_2: begin
                ld_final = 1;
            end
            S_FINAL:begin
                o_done = 1;
            end
            default: ;    
        endcase
    end

endmodule
