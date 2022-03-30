`timescale 1ns / 1ps

//Maybe if update to pipeline version to allow streaming of data, maybe use instr and send it in?
//instead of having FSM. 

module MD5(
    input clk,
    input rstn,
    input [415:0]i_data,
    input [31:0]i_length,
    input i_start,
    
    //input i_busy,
    input i_done,
    output o_hash_done,
    
    output o_start,
    output [127:0]o_hash_key
    
    );
//Maybe sends out busy signals if the hash function module is being used?    
    
    wire w_sel_init, ld_init_data, ld_pad_input, ld_buffer, ld_init_buffer;
    wire ld_final,ld_partial_sum;
    wire [1:0] sel_func;
    wire [5:0]iter_num;
    wire [3:0]word_index;
     
     MD5_data md5_datapath (
    .clk(clk),
    .rstn(rstn),
    
    .sel_init(w_sel_init),
    .sel_func(sel_func),
    .iter_num(iter_num),
    .ld_init_data(ld_init_data),
    .ld_pad_input(ld_pad_input),
    .ld_buffer(ld_buffer),
    .ld_init_buffer(ld_init_buffer),  //TODO: delete this port since not begin used
    .ld_final(ld_final),
    .ld_partial_sum(ld_partial_sum),
    .word_index(word_index),
    .data(i_data),
    .length(i_length),
    .final_val(o_hash_key)
);
    
    MD5_FSM md5_fsm (
    .clk(clk),
    .rstn(rstn),
    .start(i_start),
    .i_done(i_done),
    
    //input i_busy //maybe from murmur3
    //output o_busy //to let them know its busy
    .sel_init(w_sel_init),
    .sel_func(sel_func),
    .iter_num(iter_num),
    .ld_partial_sum(ld_partial_sum),
    .ld_init_data(ld_init_data),
    .ld_pad_input(ld_pad_input),
    .ld_buffer(ld_buffer),
    .ld_init_buffer(ld_init_buffer),   
    .ld_final(ld_final),
    .word_index(word_index),
    .o_start(o_start),
    .o_hash_done(o_hash_done)
);
    
endmodule

// restricted the MD5 to work upto 52 characters only
module MD5_data (
    input clk,
    input rstn,
    
    input sel_init,
    input [1:0]sel_func,
    input [5:0]iter_num,
    input ld_init_data,
    input ld_pad_input,
    input ld_buffer,
    input ld_init_buffer,
    input ld_final,
    input ld_partial_sum,
    
    
    input [3:0] word_index,
    input [415:0] data,
    input [31:0] length,
    output reg [127:0] final_val    
);
localparam A0 = 32'h67452301;   //CHANGE THIS ORDER DEPENDING ON ENDIANNESS
localparam B0 = 32'hefcdab89;
localparam C0 = 32'h98badcfe;
localparam D0 = 32'h10325476;

reg [415:0] r_init_data;
reg [31:0] r_data_length;
always @(posedge clk) begin
    if (rstn == 1'b0) begin
        r_init_data <= 0;
        r_data_length <=0;
    end
    else if (ld_init_data) begin
        r_init_data <= data;
        r_data_length <= length;
    end
end

wire [511:0] padded_input;
wire [31:0] input_word;
input_pad pad_module (
    .clk(clk),
    .rstn(rstn),
    .ld_pad_input(ld_pad_input),
    .data(r_init_data),
    .length(r_data_length),
    .index(word_index),
    .input_word(input_word),
    .o_padded_data(padded_input)
);

wire [31:0] leftrotated_val;

reg [31:0] a_data, b_data, c_data, d_data;
always @(posedge clk) begin
    if (rstn==1'b0) begin
        a_data <= A0;
        b_data <= B0;
        c_data <= C0;
        d_data <= D0;
    end
    else if (ld_buffer) begin
        if (sel_init)begin
            a_data <= A0;
            b_data <= B0;
            c_data <= C0;
            d_data <= D0;
        end
        else begin
        a_data <= d_data;
        b_data <= b_data + leftrotated_val;
        c_data <= b_data;
        d_data <= c_data;
        end
    end
end

wire [31:0] out_func_sel;
function_operation func_sel (
    .input_b(b_data),
    .input_c(c_data),
    .input_d(d_data),
    //control signals
     .sel_func(sel_func),
    //data
    .out_data(out_func_sel)
);

wire [31:0] func_modified;

wire [31:0] t_value;
wire [4:0] shift_value;

T_LUT tlut (
    .index(iter_num),
    .t_value(t_value)
);



 shift_value_LUT slut (
    .index(iter_num),
    .shift_value(shift_value)
);

reg [4:0] r_shift_value;
reg [31:0] r_func_modified;
always @(posedge clk) begin
    if (rstn == 1'b0) begin
        r_shift_value <= 0;
        r_func_modified <=0;
    end
    else begin
        if (ld_partial_sum) begin
            r_shift_value <= shift_value;
            r_func_modified <= a_data + out_func_sel + t_value + input_word;
        end
    end
end

left_rotate leftrotate (
    .input_data(r_func_modified),
    .shift_value(r_shift_value),
    .shifted_data(leftrotated_val)
);

always @(posedge clk) begin
    if (rstn == 1'b0) begin
        final_val <= 128'b0;
    end
    else if (ld_final) begin
        final_val[0+:32] <= D0 + d_data;
        final_val[32+:32] <= C0 + c_data;
        final_val[64 +:32] <= B0 + b_data;
        final_val[96 +:32] <= A0 + a_data;
    end
end


endmodule


module MD5_FSM (
    input clk,
    input rstn,
    
    input start,
    
//    input i_busy,   //or i_done signal from murmur3
    input i_done,
    
    //input i_busy //maybe from murmur3
    //output o_busy //to let them know its busy
    output reg sel_init,
    output reg [1:0]sel_func,
    output reg [5:0]iter_num,
    output reg ld_init_data,
    output reg ld_pad_input,
    output reg ld_buffer,
    output reg ld_init_buffer,
    output reg ld_final,
    output reg ld_partial_sum,
    
    output reg [3:0]word_index,
    output reg o_start,
    
    output reg o_hash_done
    
);
localparam S_IDLE = 8'd0, S_INIT = 8'd1, S_PAD_INIT = 8'd2;
localparam S_0 = 8'd3, S_1 = 8'd4, S_2 = 8'd5, S_3 = 8'd6, S_4 = 8'd7, S_5 = 8'd8, S_6 = 8'd9, S_7 = 8'd10;
localparam S_8 = 8'd11, S_9 = 8'd12, S_10 = 8'd13, S_11 = 8'd14, S_12 = 8'd15, S_13 = 8'd16, S_14 = 8'd17, S_15 = 8'd18;
localparam S_16 = 8'd19, S_17 = 8'd20, S_18 = 8'd21, S_19 = 8'd22, S_20 = 8'd23, S_21 = 8'd24, S_22 = 8'd25, S_23 = 8'd26;
localparam S_24 = 8'd27, S_25 = 8'd28, S_26 = 8'd29, S_27 = 8'd30, S_28 = 8'd31, S_29 = 8'd32, S_30 = 8'd33, S_31 = 8'd34;
localparam S_32 = 8'd35, S_33 = 8'd36, S_34 = 8'd37, S_35 = 8'd38, S_36 = 8'd39, S_37 = 8'd40, S_38 = 8'd41, S_39 = 8'd42;
localparam S_40 = 8'd43, S_41 = 8'd44, S_42 = 8'd45, S_43 = 8'd46, S_44 = 8'd47, S_45 = 8'd48, S_46 = 8'd49, S_47 = 8'd50;
localparam S_48 = 8'd51, S_49 = 8'd52, S_50 = 8'd53, S_51 = 8'd54, S_52 = 8'd55, S_53 = 8'd56, S_54 = 8'd57, S_55 = 8'd58;
localparam S_56 = 8'd59, S_57 = 8'd60, S_58 = 8'd61, S_59 = 8'd62, S_60 = 8'd63, S_61 = 8'd64, S_62 = 8'd65, S_63 = 8'd66;
localparam S_LAST = 8'd67, S_FINAL = 8'd68, S_WAIT = 8'd69, S_END = 8'd70;
localparam S_0_SUB = 8'd71, S_1_SUB = 8'd72, S_2_SUB = 8'd73, S_3_SUB = 8'd74, S_4_SUB = 8'd75, S_5_SUB = 8'd76, S_6_SUB = 8'd77, S_7_SUB = 8'd78;
localparam S_8_SUB = 8'd79, S_9_SUB = 8'd80, S_10_SUB = 8'd81, S_11_SUB = 8'd82, S_12_SUB = 8'd83, S_13_SUB = 8'd84, S_14_SUB = 8'd85, S_15_SUB = 8'd86;
localparam S_16_SUB = 8'd87, S_17_SUB = 8'd88, S_18_SUB = 8'd89, S_19_SUB = 8'd90, S_20_SUB = 8'd91, S_21_SUB = 8'd92, S_22_SUB = 8'd93, S_23_SUB = 8'd94;
localparam S_24_SUB = 8'd95, S_25_SUB = 8'd96, S_26_SUB = 8'd97, S_27_SUB = 8'd98, S_28_SUB = 8'd99, S_29_SUB = 8'd100, S_30_SUB = 8'd101, S_31_SUB = 8'd102;
localparam S_32_SUB = 8'd103, S_33_SUB = 8'd104, S_34_SUB = 8'd105, S_35_SUB = 8'd106, S_36_SUB = 8'd107, S_37_SUB = 8'd108, S_38_SUB = 8'd109, S_39_SUB = 8'd110;
localparam S_40_SUB = 8'd111, S_41_SUB = 8'd112, S_42_SUB = 8'd113, S_43_SUB = 8'd114, S_44_SUB = 8'd115, S_45_SUB = 8'd116, S_46_SUB = 8'd117, S_47_SUB = 8'd118;
localparam S_48_SUB = 8'd119, S_49_SUB = 8'd120, S_50_SUB = 8'd121, S_51_SUB = 8'd122, S_52_SUB = 8'd123, S_53_SUB = 8'd124, S_54_SUB = 8'd125, S_55_SUB = 8'd126;
localparam S_56_SUB = 8'd127, S_57_SUB = 8'd128, S_58_SUB = 8'd129, S_59_SUB = 8'd130, S_60_SUB = 8'd131, S_61_SUB = 8'd132, S_62_SUB = 8'd133, S_63_SUB = 8'd134;



reg [7:0]current_state, next_state;

always @(*)begin

    case (current_state)
    S_IDLE: begin
        if (start) next_state = S_INIT;
        else next_state = S_IDLE;
    end
    S_INIT: next_state = S_PAD_INIT;            //TODO: can use counter = 15 and if it hits 15, move to next stage
    S_PAD_INIT: next_state = S_0_SUB;
    S_0_SUB: next_state = S_0;
    S_0: next_state = S_1_SUB;
    S_1_SUB: next_state = S_1;
    S_1: next_state = S_2_SUB;
    S_2_SUB: next_state = S_2;
    S_2: next_state = S_3_SUB;
    S_3_SUB: next_state = S_3;
    S_3: next_state = S_4_SUB;
    S_4_SUB: next_state = S_4;
    S_4: next_state = S_5_SUB;
    S_5_SUB: next_state = S_5;
    S_5: next_state = S_6_SUB;
    S_6_SUB: next_state = S_6;
    S_6: next_state = S_7_SUB;
    S_7_SUB: next_state = S_7;
    S_7: next_state = S_8_SUB;
    S_8_SUB: next_state = S_8;
    S_8: next_state = S_9_SUB;
    S_9_SUB: next_state = S_9;
    S_9: next_state = S_10_SUB;
    S_10_SUB: next_state = S_10;
    S_10: next_state = S_11_SUB;
    S_11_SUB: next_state = S_11;
    S_11: next_state = S_12_SUB;
    S_12_SUB: next_state = S_12;
    S_12: next_state = S_13_SUB;
    S_13_SUB: next_state = S_13;
    S_13: next_state = S_14_SUB;
    S_14_SUB: next_state = S_14;
    S_14: next_state = S_15_SUB;
    S_15_SUB: next_state = S_15;
    S_15: next_state = S_16_SUB;
    S_16_SUB: next_state = S_16;
    S_16: next_state = S_17_SUB;
    S_17_SUB: next_state = S_17;
    S_17: next_state = S_18_SUB;
    S_18_SUB: next_state = S_18;
    S_18: next_state = S_19_SUB;
    S_19_SUB: next_state = S_19;
    S_19: next_state = S_20_SUB;
    S_20_SUB: next_state = S_20;
    S_20: next_state = S_21_SUB;
    S_21_SUB: next_state = S_21;
    S_21: next_state = S_22_SUB;
    S_22_SUB: next_state = S_22;
    S_22: next_state = S_23_SUB;
    S_23_SUB: next_state = S_23;
    S_23: next_state = S_24_SUB;
    S_24_SUB: next_state = S_24;
    S_24: next_state = S_25_SUB;
    S_25_SUB: next_state = S_25;
    S_25: next_state = S_26_SUB;
    S_26_SUB: next_state = S_26;
    S_26: next_state = S_27_SUB;
    S_27_SUB: next_state = S_27;
    S_27: next_state = S_28_SUB;
    S_28_SUB: next_state = S_28;
    S_28: next_state = S_29_SUB;
    S_29_SUB: next_state = S_29;
    S_29: next_state = S_30_SUB;
    S_30_SUB: next_state = S_30;
    S_30: next_state = S_31_SUB;
    S_31_SUB: next_state = S_31;
    S_31: next_state = S_32_SUB;
    S_32_SUB: next_state = S_32;
    S_32: next_state = S_33_SUB;
    S_33_SUB: next_state = S_33;
    S_33: next_state = S_34_SUB;
    S_34_SUB: next_state = S_34;
    S_34: next_state = S_35_SUB;
    S_35_SUB: next_state = S_35;
    S_35: next_state = S_36_SUB;
    S_36_SUB: next_state = S_36;
    S_36: next_state = S_37_SUB;
    S_37_SUB: next_state = S_37;
    S_37: next_state = S_38_SUB;
    S_38_SUB: next_state = S_38;
    S_38: next_state = S_39_SUB;
    S_39_SUB: next_state = S_39;
    S_39: next_state = S_40_SUB;
    S_40_SUB: next_state = S_40;
    S_40: next_state = S_41_SUB;
    S_41_SUB: next_state = S_41;
    S_41: next_state = S_42_SUB;
    S_42_SUB: next_state = S_42;
    S_42: next_state = S_43_SUB;
    S_43_SUB: next_state = S_43;
    S_43: next_state = S_44_SUB;
    S_44_SUB: next_state = S_44;
    S_44: next_state = S_45_SUB;
    S_45_SUB: next_state = S_45;
    S_45: next_state = S_46_SUB;
    S_46_SUB: next_state = S_46;
    S_46: next_state = S_47_SUB;
    S_47_SUB: next_state = S_47;
    S_47: next_state = S_48_SUB;
    S_48_SUB: next_state = S_48;
    S_48: next_state = S_49_SUB;
    S_49_SUB: next_state = S_49;
    S_49: next_state = S_50_SUB;
    S_50_SUB: next_state = S_50;
    S_50: next_state = S_51_SUB;
    S_51_SUB: next_state = S_51;
    S_51: next_state = S_52_SUB;
    S_52_SUB: next_state = S_52;
    S_52: next_state = S_53_SUB;
    S_53_SUB: next_state = S_53;
    S_53: next_state = S_54_SUB;
    S_54_SUB: next_state = S_54;
    S_54: next_state = S_55_SUB;
    S_55_SUB: next_state = S_55;
    S_55: next_state = S_56_SUB;
    S_56_SUB: next_state = S_56;
    S_56: next_state = S_57_SUB;
    S_57_SUB: next_state = S_57;
    S_57: next_state = S_58_SUB;
    S_58_SUB: next_state = S_58;
    S_58: next_state = S_59_SUB;
    S_59_SUB: next_state = S_59;
    S_59: next_state = S_60_SUB;
    S_60_SUB: next_state = S_60;
    S_60: next_state = S_61_SUB;
    S_61_SUB: next_state = S_61;
    S_61: next_state = S_62_SUB;
    S_62_SUB: next_state = S_62;
    S_62: next_state = S_63_SUB;
    S_63_SUB: next_state = S_63;
    S_63: next_state = S_LAST;
    S_LAST: next_state = S_FINAL;
    S_FINAL:next_state = S_WAIT;
    S_WAIT: begin
    if (i_done) begin
        next_state = S_END;    
    end
    else begin
        next_state = S_WAIT;    
    end
    end
    S_END: next_state = S_IDLE;
    default: next_state = S_IDLE;
    endcase
    
end

always @(posedge clk) begin
    if (rstn == 1'b0) begin
        current_state <= S_IDLE;
    end
    else begin
        current_state <= next_state;
    end
end


always @(*)begin
    sel_func = 0;
    iter_num = 0;
    ld_init_data = 0;
    ld_pad_input = 0;
    ld_buffer = 0;
    ld_init_buffer = 0;
    ld_final = 0;
    sel_init = 0;
    o_start = 0;
    o_hash_done = 0;
    word_index = 0;
    
    ld_partial_sum = 0;
    
    case (current_state)
    S_IDLE: begin
    //NOTHING TO DO
    end
    S_INIT:begin
    ld_init_data = 1;
    sel_init = 1;
    ld_buffer = 1;
    end
    S_PAD_INIT:begin
    ld_pad_input = 1;
    end
    S_0_SUB:begin
    sel_func = 0;
    iter_num = 0;
    ld_partial_sum = 1;
    word_index = 4'd0;
    end
    S_0:begin
    ld_buffer = 1;
    end
    S_1_SUB:begin
    sel_func = 0;
    iter_num = 1;
    ld_partial_sum = 1;
    word_index = 4'd1;
    end
    S_1: ld_buffer = 1;
    S_2_SUB:begin
    sel_init = 0;
    sel_func = 0;
    iter_num = 2;
    ld_partial_sum = 1;
    word_index = 4'd2;
    end
    S_2: ld_buffer = 1;
    S_3_SUB:begin
    sel_init = 0;
    sel_func = 0;
    iter_num = 3;
    ld_partial_sum = 1;
    word_index = 4'd3;
    end
    S_3: ld_buffer = 1;
    S_4_SUB:begin
    sel_init = 0;
    sel_func = 0;
    iter_num = 4;
    ld_partial_sum = 1;
    word_index = 4'd4;
    end
    S_4: ld_buffer = 1;
    S_5_SUB:begin
    sel_init = 0;
    sel_func = 0;
    iter_num = 5;
    ld_partial_sum = 1;
    word_index = 4'd5;
    end
    S_5:ld_buffer = 1;
    S_6_SUB:begin
    sel_init = 0;
    sel_func = 0;
    iter_num = 6;
    ld_partial_sum = 1;
    word_index = 4'd6;
    end
    S_6: ld_buffer = 1;
    S_7_SUB:begin
    sel_init = 0;
    sel_func = 0;
    iter_num = 7;
    ld_partial_sum = 1;
    word_index = 4'd7;
    end
    S_7:ld_buffer = 1;
    S_8_SUB:begin
    sel_init = 0;
    sel_func = 0;
    iter_num = 8;
    ld_partial_sum = 1;
    word_index = 4'd8;
    end
    S_8: ld_buffer = 1;
    S_9_SUB:begin
    sel_init = 0;
    sel_func = 0;
    iter_num = 9;
    ld_partial_sum = 1;
    word_index = 4'd9;
    end
    S_9:ld_buffer = 1;
    S_10_SUB:begin
    sel_init = 0;
    sel_func = 0;
    iter_num = 10;
    ld_partial_sum = 1;
    word_index = 4'd10;
    end
    S_10: ld_buffer = 1;
    S_11_SUB:begin
    sel_init = 0;
    sel_func = 0;
    iter_num = 11;
    ld_partial_sum = 1;
    word_index = 4'd11;
    end
    S_11:ld_buffer = 1;
    S_12_SUB:begin
    sel_init = 0;
    sel_func = 0;
    iter_num = 12;
    ld_partial_sum = 1;
    word_index = 4'd12;
    end
    S_12:ld_buffer = 1;
    S_13_SUB:begin
    sel_init = 0;
    sel_func = 0;
    iter_num = 13;
    ld_partial_sum = 1;
    word_index = 4'd13;
    end
    S_13:ld_buffer = 1;
    S_14_SUB:begin
    sel_init = 0;
    sel_func = 0;
    iter_num = 14;
    ld_partial_sum = 1;
    word_index = 4'd14;
    end
    S_14:ld_buffer = 1;
    S_15_SUB:begin
    sel_init = 0;
    sel_func = 0;
    iter_num = 15;
    ld_partial_sum = 1;
    word_index = 4'd15;
    end
    S_15:ld_buffer = 1;
    S_16_SUB:begin
    sel_init = 0;
    sel_func = 1;
    iter_num = 16;
    ld_partial_sum = 1;
    word_index = 4'd0;
    end
    S_16:ld_buffer = 1;
    S_17_SUB:begin
    sel_init = 0;
    sel_func = 1;
    iter_num = 17;
    ld_partial_sum = 1;
    word_index = 4'd1;
    end
    S_17:ld_buffer = 1;
    S_18_SUB:begin
    sel_init = 0;
    sel_func = 1;
    iter_num = 18;
    ld_partial_sum = 1;
    word_index = 4'd2;
    end
    S_18:ld_buffer = 1;
    S_19_SUB:begin
    sel_init = 0;
    sel_func = 1;
    iter_num = 19;
    ld_partial_sum = 1;
    word_index = 4'd3;
    end
    S_19:ld_buffer = 1;
    S_20_SUB:begin
    sel_init = 0;
    sel_func = 1;
    iter_num = 20;
    ld_partial_sum = 1;
    word_index = 4'd4;
    end
    S_20:ld_buffer = 1;
    S_21_SUB:begin
    sel_init = 0;
    sel_func = 1;
    iter_num = 21;
    ld_partial_sum = 1;
    word_index = 4'd5;
    end
    S_21:ld_buffer = 1;
    S_22_SUB:begin
    sel_init = 0;
    sel_func = 1;
    iter_num = 22;
    ld_partial_sum = 1;
    word_index = 4'd6;
    end
    S_22:ld_buffer = 1;
    S_23_SUB:begin
    sel_init = 0;
    sel_func = 1;
    iter_num = 23;
    ld_partial_sum = 1;
    word_index = 4'd7;
    end
    S_23:ld_buffer = 1;
    S_24_SUB:begin
    sel_init = 0;
    sel_func = 1;
    iter_num = 24;
    ld_partial_sum = 1;
    word_index = 4'd8;
    end
    S_24:ld_buffer = 1;
    S_25_SUB:begin
    sel_init = 0;
    sel_func = 1;
    iter_num = 25;
    ld_partial_sum = 1;
    word_index = 4'd9;
    end
    S_25:ld_buffer = 1;
    S_26_SUB:begin
    sel_init = 0;
    sel_func = 1;
    iter_num = 26;
    ld_partial_sum = 1;
    word_index = 4'd10;
    end
    S_26:ld_buffer = 1;
    S_27_SUB:begin
    sel_init = 0;
    sel_func = 1;
    iter_num = 27;
    ld_partial_sum = 1;
    word_index = 4'd11;
    end
    S_27:ld_buffer = 1;
    S_28_SUB:begin
    sel_init = 0;
    sel_func = 1;
    iter_num = 28;
    ld_partial_sum = 1;
    word_index = 4'd12;
    end
    S_28:ld_buffer = 1;
    S_29_SUB:begin
    sel_init = 0;
    sel_func = 1;
    iter_num = 29;
    ld_partial_sum = 1;
    word_index = 4'd13;
    end
    S_29:ld_buffer = 1;
    S_30_SUB:begin
    sel_init = 0;
    sel_func = 1;
    iter_num = 30;
    ld_partial_sum = 1;
    word_index = 4'd14;
    end
    S_30:ld_buffer = 1;
    S_31_SUB:begin
    sel_init = 0;
    sel_func = 1;
    iter_num = 31;
    ld_partial_sum = 1;
    word_index = 4'd15;
    end
    S_31:ld_buffer = 1;
    S_32_SUB:begin
    sel_init = 0;
    sel_func = 2;
    iter_num = 32;
    ld_partial_sum = 1;
    word_index = 4'd0;
    end
    S_32:ld_buffer = 1;
    S_33_SUB:begin
    sel_init = 0;
    sel_func = 2;
    iter_num = 33;
    ld_partial_sum = 1;
    word_index = 4'd1;
    end
    S_33:ld_buffer = 1;
    S_34_SUB:begin
    sel_init = 0;
    sel_func = 2;
    iter_num = 34;
    ld_partial_sum = 1;
    word_index = 4'd2;
    end
    S_34:ld_buffer = 1;
    S_35_SUB:begin
    sel_init = 0;
    sel_func = 2;
    iter_num = 35;
    ld_partial_sum = 1;
    word_index = 4'd3;
    end
    S_35:ld_buffer = 1;
    S_36_SUB:begin
    sel_init = 0;
    sel_func = 2;
    iter_num = 36;
    ld_partial_sum = 1;
    word_index = 4'd4;
    end
    S_36:ld_buffer = 1;
    S_37_SUB:begin
    sel_init = 0;
    sel_func = 2;
    iter_num = 37;
    ld_partial_sum = 1;
    word_index = 4'd5;
    end
    S_37:ld_buffer = 1;
    S_38_SUB:begin
    sel_init = 0;
    sel_func = 2;
    iter_num = 38;
    ld_partial_sum = 1;
    word_index = 4'd6;
    end
    S_38:ld_buffer = 1;
    S_39_SUB:begin
    sel_init = 0;
    sel_func = 2;
    iter_num = 39;
    ld_partial_sum = 1;
    word_index = 4'd7;
    end
    S_39:ld_buffer = 1;
    S_40_SUB:begin
    sel_init = 0;
    sel_func = 2;
    iter_num = 40;
    ld_partial_sum = 1;
    word_index = 4'd8;
    end
    S_40:ld_buffer = 1;
    S_41_SUB:begin
    sel_init = 0;
    sel_func = 2;
    iter_num = 41;
    ld_partial_sum = 1;
    word_index = 4'd9;
    end
    S_41:ld_buffer = 1;
    S_42_SUB:begin
    sel_init = 0;
    sel_func = 2;
    iter_num = 42;
    ld_partial_sum = 1;
    word_index = 4'd10;
    end
    S_42:ld_buffer = 1;
    S_43_SUB:begin
    sel_init = 0;
    sel_func = 2;
    iter_num = 43;
    ld_partial_sum = 1;
    word_index = 4'd11;
    end
    S_43:ld_buffer = 1;
    S_44_SUB:begin
    sel_init = 0;
    sel_func = 2;
    iter_num = 44;
    ld_partial_sum = 1;
    word_index = 4'd12;
    end
    S_44:ld_buffer = 1;
    S_45_SUB:begin
    sel_init = 0;
    sel_func = 2;
    iter_num = 45;
    ld_partial_sum = 1;
    word_index = 4'd13;
    end
    S_45:ld_buffer = 1;
    S_46_SUB:begin
    sel_init = 0;
    sel_func = 2;
    iter_num = 46;
    ld_partial_sum = 1;
    word_index = 4'd14;
    end
    S_46:ld_buffer = 1;
    S_47_SUB:begin
    sel_init = 0;
    sel_func = 2;
    iter_num = 47;
    ld_partial_sum = 1;
    word_index = 4'd15;
    end
    S_47:ld_buffer = 1;
    S_48_SUB:begin
    sel_init = 0;
    sel_func = 3;
    iter_num = 48;
    ld_partial_sum = 1;
    word_index = 4'd0;
    end
    S_48:ld_buffer = 1;
    S_49_SUB:begin
    sel_init = 0;
    sel_func = 3;
    iter_num = 49;
    ld_partial_sum = 1;
    word_index = 4'd1;
    end
    S_49:ld_buffer = 1;
    S_50_SUB:begin
    sel_init = 0;
    sel_func = 3;
    iter_num = 50;
    ld_partial_sum = 1;
    word_index = 4'd2;
    end
    S_50:ld_buffer = 1;
    S_51_SUB:begin
    sel_init = 0;
    sel_func = 3;
    iter_num = 51;
    ld_partial_sum = 1;
    word_index = 4'd3;
    end
    S_51:ld_buffer = 1;
    S_52_SUB:begin
    sel_init = 0;
    sel_func = 3;
    iter_num = 52;
    ld_partial_sum = 1;
    word_index = 4'd4;
    end
    S_52:ld_buffer = 1;
    S_53_SUB:begin
    sel_init = 0;
    sel_func = 3;
    iter_num = 53;
    ld_partial_sum = 1;
    word_index = 4'd5;
    end
    S_53:ld_buffer = 1;
    S_54_SUB:begin
    sel_init = 0;
    sel_func = 3;
    iter_num = 54;
    ld_partial_sum = 1;
    word_index = 4'd6;
    end
    S_54:ld_buffer = 1;
    S_55_SUB:begin
    sel_init = 0;
    sel_func = 3;
    iter_num = 55;
    ld_partial_sum = 1;
    word_index = 4'd7;
    end
    S_55:ld_buffer = 1;
    S_56_SUB:begin
    sel_init = 0;
    sel_func = 3;
    iter_num = 56;
    ld_partial_sum = 1;
    word_index = 4'd8;
    end
    S_56:ld_buffer = 1;
    S_57_SUB:begin
    sel_init = 0;
    sel_func = 3;
    iter_num = 57;
    ld_partial_sum = 1;
    word_index = 4'd9;
    end
    S_57:ld_buffer = 1;
    S_58_SUB:begin
    sel_init = 0;
    sel_func = 3;
    iter_num = 58;
    ld_partial_sum = 1;
    word_index = 4'd10;
    end
    S_58:ld_buffer = 1;
    S_59_SUB:begin
    sel_init = 0;
    sel_func = 3;
    iter_num = 59;
    ld_partial_sum = 1;
    word_index = 4'd11;
    end
    S_59:ld_buffer = 1;
    S_60_SUB:begin
    sel_init = 0;
    sel_func = 3;
    iter_num = 60;
    ld_partial_sum = 1;
    word_index = 4'd12;
    end
    S_60:ld_buffer = 1;
    S_61_SUB:begin
    sel_init = 0;
    sel_func = 3;
    iter_num = 61;
    ld_partial_sum = 1;
    word_index = 4'd13;
    end
    S_61:ld_buffer = 1;
    S_62_SUB:begin
    sel_init = 0;
    sel_func = 3;
    iter_num = 62;
    ld_partial_sum = 1;
    word_index = 4'd14;
    end
    S_62:ld_buffer = 1;
    S_63_SUB:begin
    sel_init = 0;
    sel_func = 3;
    iter_num = 63;
    ld_partial_sum = 1;
    word_index = 4'd15;
    end
    S_63:ld_buffer = 1;
    S_LAST:begin
    ld_final = 1;
    end
    S_FINAL:begin
        o_start = 1;
    end
    S_WAIT: begin
    
    end
    S_END:begin
    o_hash_done = 1;
    end    
    default:begin
    
    end
    endcase
end

endmodule

module input_pad (
    input clk,
    input rstn,
    input ld_pad_input,
    input [415:0] data,
    input [31:0] length,
    input [3:0] index,
    output [31:0] input_word,
    output  [511:0] o_padded_data  //delete this port later
);
 reg [511:0] padded_data;
//reg [31:0] leng_to_bits;

//TODO: if length*8 doesn't work change it to leng_to_bits above
localparam PAD_INIT = 416'hFFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF;
wire [415:0] pad;
wire [447:0] partial_data;
assign pad = PAD_INIT << (416-(length*8));
assign partial_data = {416'b0,32'h80000000} << (416 - (length*8));
//(data | pad ) & ({416*{0},32'h80000000} << (416 - (length*8)))

always @(posedge clk) begin
    if (rstn == 1'b0) begin
        padded_data <= 0;
    end
    else if (ld_pad_input) begin
    padded_data[511:96] <= (data & pad) | partial_data[447:32];
    padded_data[95:64] <= partial_data[32:0];
   // padded_data <= ({data,32'h80000000} << (448-(length*8)));
    padded_data[63:0] <= {32'b0, length * 8};
    end
end
assign o_padded_data = padded_data;

//localparam INIT_MASK = 512'h0000FFFFFFFF;
//wire [511:0]masked_input;         //TODO: CHECK THIS IS CORRECT
//assign masked_input = padded_data >> (index*32);
//assign input_word = padded_data >> (index*32);  //taking least significant bits
assign input_word = padded_data >> ((15-index)*32); //taking MSBs first

endmodule


module left_rotate (
    input [31:0] input_data,
    input [4:0] shift_value,
    
    output reg [31:0] shifted_data
);   
 //   reg [31:0] r_shift_data;
    always @(*) begin
        case (shift_value)
        4: shifted_data = {input_data[27:0],input_data[31:28]};
        5: shifted_data = {input_data[26:0],input_data[31:27]};
        6: shifted_data = {input_data[25:0],input_data[31:26]};
        7: shifted_data = {input_data[24:0],input_data[31:25]};
        9: shifted_data = {input_data[22:0],input_data[31:23]};
        10: shifted_data = {input_data[21:0],input_data[31:22]};
        11: shifted_data = {input_data[20:0],input_data[31:21]};
        12: shifted_data = {input_data[19:0],input_data[31:20]};
        14: shifted_data = {input_data[17:0],input_data[31:18]};
        15: shifted_data = {input_data[16:0],input_data[31:17]};
        16: shifted_data = {input_data[15:0],input_data[31:16]};
        17: shifted_data = {input_data[14:0],input_data[31:15]};
        20: shifted_data = {input_data[11:0],input_data[31:12]};
        21: shifted_data = {input_data[10:0],input_data[31:11]};
        22: shifted_data = {input_data[9:0],input_data[31:10]};
        23: shifted_data = {input_data[8:0],input_data[31:9]};
        default: shifted_data = input_data;
        endcase
    end
endmodule



//2^32 * abs(sin(i+1)) ; 0<i<63 in radians
module T_LUT (
    input [5:0] index,
    output reg [31:0] t_value
);

always @(*) begin
    case (index)
        0: t_value = 32'hd76aa478;
        1: t_value = 32'he8c7b756;
        2: t_value = 32'h242070db;
        3: t_value = 32'hc1bdceee;
        4: t_value = 32'hf57c0faf;
        5: t_value = 32'h4787c62a;
        6: t_value = 32'ha8304613;
        7: t_value = 32'hfd469501;
        8: t_value = 32'h698098d8;
        9: t_value = 32'h8b44f7af;
        10: t_value = 32'hffff5bb1;
        11: t_value = 32'h895cd7be;
        12: t_value = 32'h6b901122;
        13: t_value = 32'hfd987193;
        14: t_value = 32'ha679438e;
        15: t_value = 32'h49b40821;
        16: t_value = 32'hf61e2562;
        17: t_value = 32'hc040b340;
        18: t_value = 32'h265e5a51;
        19: t_value = 32'he9b6c7aa;
        20: t_value = 32'hd62f105d;
        21: t_value = 32'h02441453;
        22: t_value = 32'hd8a1e681;
        23: t_value = 32'he7d3fbc8;
        24: t_value = 32'h21e1cde6;
        25: t_value = 32'hc33707d6;
        26: t_value = 32'hf4d50d87;
        27: t_value = 32'h455a14ed;
        28: t_value = 32'ha9e3e905;
        29: t_value = 32'hfcefa3f8;
        30: t_value = 32'h676f02d9;
        31: t_value = 32'h8d2a4c8a;
        32: t_value = 32'hfffa3942;
        33: t_value = 32'h8771f681;
        34: t_value = 32'h6d9d6122;
        35: t_value = 32'hfde5380c;
        36: t_value = 32'ha4beea44;
        37: t_value = 32'h4bdecfa9;
        38: t_value = 32'hf6bb4b60;
        39: t_value = 32'hbebfbc70;
        40: t_value = 32'h289b7ec6;
        41: t_value = 32'heaa127fa;
        42: t_value = 32'hd4ef3085;
        43: t_value = 32'h04881d05;
        44: t_value = 32'hd9d4d039;
        45: t_value = 32'he6db99e5;
        46: t_value = 32'h1fa27cf8;
        47: t_value = 32'hc4ac5665;
        48: t_value = 32'hf4292244;
        49: t_value = 32'h432aff97;
        50: t_value = 32'hab9423a7;
        51: t_value = 32'hfc93a039;
        52: t_value = 32'h655b59c3;
        53: t_value = 32'h8f0ccc92;
        54: t_value = 32'hffeff47d;
        55: t_value = 32'h85845dd1;
        56: t_value = 32'h6fa87e4f;
        57: t_value = 32'hfe2ce6e0;
        58: t_value = 32'ha3014314;
        59: t_value = 32'h4e0811a1;
        60: t_value = 32'hf7537e82;
        61: t_value = 32'hbd3af235;
        62: t_value = 32'h2ad7d2bb;
        63: t_value = 32'heb86d391;
        default: t_value = 32'h0;
    endcase
end


endmodule

module shift_value_LUT (
    input [5:0] index,
    output reg [4:0] shift_value
);

always @(*) begin
    case (index)
        0: shift_value = 5'd7;
        1: shift_value = 5'd12;
        2: shift_value = 5'd17;
        3: shift_value = 5'd22;
        4: shift_value = 5'd7;
        5: shift_value = 5'd12;
        6: shift_value = 5'd17;
        7: shift_value = 5'd22;
        8: shift_value = 5'd7;
        9: shift_value = 5'd12;
        10: shift_value = 5'd17;
        11: shift_value = 5'd22;
        12: shift_value = 5'd7;
        13: shift_value = 5'd12;
        14: shift_value = 5'd17;
        15: shift_value = 5'd22;
        16: shift_value = 5'd5;
        17: shift_value = 5'd9;
        18: shift_value = 5'd14;
        19: shift_value = 5'd20;
        20: shift_value = 5'd5;
        21: shift_value = 5'd9;
        22: shift_value = 5'd14;
        23: shift_value = 5'd20;
        24: shift_value = 5'd5;
        25: shift_value = 5'd9;
        26: shift_value = 5'd14;
        27: shift_value = 5'd20;
        28: shift_value = 5'd5;
        29: shift_value = 5'd9;
        30: shift_value = 5'd14;
        31: shift_value = 5'd20;
        32: shift_value = 5'd4;
        33: shift_value = 5'd11;
        34: shift_value = 5'd16;
        35: shift_value = 5'd23;
        36: shift_value = 5'd4;
        37: shift_value = 5'd11;
        38: shift_value = 5'd16;
        39: shift_value = 5'd23;
        40: shift_value = 5'd4;
        41: shift_value = 5'd11;
        42: shift_value = 5'd16;
        43: shift_value = 5'd23;
        44: shift_value = 5'd4;
        45: shift_value = 5'd11;
        46: shift_value = 5'd16;
        47: shift_value = 5'd23;
        48: shift_value = 5'd6;
        49: shift_value = 5'd10;
        50: shift_value = 5'd15;
        51: shift_value = 5'd21;
        52: shift_value = 5'd6;
        53: shift_value = 5'd10;
        54: shift_value = 5'd15;
        55: shift_value = 5'd21;
        56: shift_value = 5'd6;
        57: shift_value = 5'd10;
        58: shift_value = 5'd15;
        59: shift_value = 5'd21;
        60: shift_value = 5'd6;
        61: shift_value = 5'd10;
        62: shift_value = 5'd15;
        63: shift_value = 5'd21;
        default: shift_value = 5'd0;
    endcase
end



endmodule

module function_operation (
    //data
    input [31:0] input_b,
    input [31:0] input_c,
    input [31:0] input_d,
    //control signals
    input [1:0] sel_func,
    //data
    output [31:0] out_data
);
reg [31:0] r_out;
    always @(*) begin
        case (sel_func)
        0:begin
            r_out = (input_b & input_c) | ((~input_b) & input_d);
        end
        1:begin
            r_out = (input_b & input_d)|(input_c & (~input_d));
        end        
        2:begin
            r_out = input_b ^ input_c ^ input_d;
        end
        3:begin
            r_out = input_c ^ (input_b | (~input_d));
        end
        default: r_out = 0;
        endcase
    end

    assign out_data = r_out;

endmodule


