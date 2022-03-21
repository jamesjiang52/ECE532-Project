`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2022 04:07:45 PM
// Design Name: 
// Module Name: md5
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


module md5(
    input clk,
    input rstn,
    input i_stall_pipe,
    input i_start,
    
    input [415:0] i_data,
    input [31:0] i_length,
    
    output reg [127:0] final_val,
    output o_valid
);
localparam A0 = 32'h67452301;   //CHANGE THIS ORDER DEPENDING ON ENDIANNESS
localparam B0 = 32'hefcdab89;
localparam C0 = 32'h98badcfe;
localparam D0 = 32'h10325476;

integer k;
reg propagate_done [0:66];  //maybe force this to register?
always @(posedge clk) begin
    if (rstn == 1'b0) begin
         for (k = 0; k < 67; k = k+1) begin
            propagate_done[k] <= 1'b0;
         end
    end
    else begin
    if (i_stall_pipe == 1'b0) begin
        propagate_done[0] <= i_start;
        for (k = 1; k < 67; k = k + 1)begin
            propagate_done[k] <= propagate_done[k-1];
        end        
    end
    end

end
assign o_valid = propagate_done[66];

//Stage 0 load input
reg [415:0] r_init_data;
reg [31:0] r_init_length;
reg r_start;
always @ (posedge clk) begin
    if (rstn == 1'b0) begin
        r_init_data <= 415'b0;
        r_init_length <= 32'b0; 
        r_start <= 1'b0;
    end
    else begin
    if (i_stall_pipe == 1'b0) begin
    //guard this with signal if done (from slave reg) is 0 
        r_init_data <= i_data;
        r_init_length <= i_length;
        r_start <= i_start;                 // NEED TO PIPELINE THIS FOR CERTAIN CYCLE
    end
    end
end

//stage 1 - add padding
localparam PAD_INIT = 416'hFFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF;
wire [415:0] pad;
wire [447:0] partial_data;
assign pad = PAD_INIT << (416-(r_init_length*8));
assign partial_data = {416'b0,32'h80000000} << (416 - (r_init_length*8));
reg [511:0] r_padded_data;
reg [31:0] a_data,b_data,c_data,d_data;

// maybe need to force it to register not RAM
wire [31:0] r_a_data [0:64];
wire [31:0] r_b_data [0:64];
wire [31:0] r_c_data [0:64];
wire [31:0] r_d_data [0:64];
wire [511:0] input_data [0:64];
//

always @(posedge clk) begin
    if(rstn == 1'b0) begin
        r_padded_data <= 512'b0;
        
        a_data <= A0;
        b_data <= B0;
        c_data <= C0;
        d_data <= D0;
    end
    else begin
    if (i_stall_pipe == 1'b0) begin
        r_padded_data[511:96] <= (r_init_data & pad) | partial_data[447:32];
        r_padded_data[95:64] <= partial_data[32:0];
        r_padded_data[63:0] <= {32'b0, r_init_length * 8};
        
        a_data <= A0;
        b_data <= B0;
        c_data <= C0;
        d_data <= D0;
    end
    end
end


assign input_data[0] = r_padded_data;
assign r_a_data[0] = a_data;
assign r_b_data[0] = b_data;
assign r_c_data[0] = c_data;
assign r_d_data[0] = d_data;

first_16 f_0 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[0]),.b_data(r_b_data[0]),.c_data(r_c_data[0]),.d_data(r_d_data[0]),.input_data(input_data[0]),
    .iter_index(4'd0),.sin_val(32'hd76aa478),.in_data_for_sum(input_data[0][511:480]),
    .o_a_data(r_a_data[1]),.o_b_data(r_b_data[1]),.o_c_data(r_c_data[1]),.o_d_data(r_d_data[1]),.o_data(input_data[1]));
first_16 f_1 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[1]),.b_data(r_b_data[1]),.c_data(r_c_data[1]),.d_data(r_d_data[1]),.input_data(input_data[1]),
    .iter_index(4'd1),.sin_val(32'he8c7b756),.in_data_for_sum(input_data[1][479:448]),
    .o_a_data(r_a_data[2]),.o_b_data(r_b_data[2]),.o_c_data(r_c_data[2]),.o_d_data(r_d_data[2]),.o_data(input_data[2]));
first_16 f_2 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[2]),.b_data(r_b_data[2]),.c_data(r_c_data[2]),.d_data(r_d_data[2]),.input_data(input_data[2]),
    .iter_index(4'd2),.sin_val(32'h242070db),.in_data_for_sum(input_data[2][447:416]),
    .o_a_data(r_a_data[3]),.o_b_data(r_b_data[3]),.o_c_data(r_c_data[3]),.o_d_data(r_d_data[3]),.o_data(input_data[3]));
first_16 f_3 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[3]),.b_data(r_b_data[3]),.c_data(r_c_data[3]),.d_data(r_d_data[3]),.input_data(input_data[3]),
    .iter_index(4'd3),.sin_val(32'hc1bdceee),.in_data_for_sum(input_data[3][415:384]),
    .o_a_data(r_a_data[4]),.o_b_data(r_b_data[4]),.o_c_data(r_c_data[4]),.o_d_data(r_d_data[4]),.o_data(input_data[4]));        
first_16 f_4 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[4]),.b_data(r_b_data[4]),.c_data(r_c_data[4]),.d_data(r_d_data[4]),.input_data(input_data[4]),
    .iter_index(4'd4),.sin_val(32'hf57c0faf),.in_data_for_sum(input_data[4][383:352]), //part of input data that will be used for sum
    .o_a_data(r_a_data[5]),.o_b_data(r_b_data[5]),.o_c_data(r_c_data[5]),.o_d_data(r_d_data[5]),.o_data(input_data[5]));
first_16 f_5 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[5]),.b_data(r_b_data[5]),.c_data(r_c_data[5]),.d_data(r_d_data[5]),.input_data(input_data[5]),
    .iter_index(4'd5),.sin_val(32'h4787c62a),.in_data_for_sum(input_data[5][351:320]), //part of input data that will be used for sum
    .o_a_data(r_a_data[6]),.o_b_data(r_b_data[6]),.o_c_data(r_c_data[6]),.o_d_data(r_d_data[6]),.o_data(input_data[6]));
first_16 f_6 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[6]),.b_data(r_b_data[6]),.c_data(r_c_data[6]),.d_data(r_d_data[6]),.input_data(input_data[6]),
    .iter_index(4'd6),.sin_val(32'ha8304613),.in_data_for_sum(input_data[6][319:288]), //part of input data that will be used for sum
    .o_a_data(r_a_data[7]),.o_b_data(r_b_data[7]),.o_c_data(r_c_data[7]),.o_d_data(r_d_data[7]),.o_data(input_data[7]));
first_16 f_7 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[7]),.b_data(r_b_data[7]),.c_data(r_c_data[7]),.d_data(r_d_data[7]),.input_data(input_data[7]),
    .iter_index(4'd7),.sin_val(32'hfd469501),.in_data_for_sum(input_data[7][287:256]), //part of input data that will be used for sum
    .o_a_data(r_a_data[8]),.o_b_data(r_b_data[8]),.o_c_data(r_c_data[8]),.o_d_data(r_d_data[8]),.o_data(input_data[8]));
first_16 f_8 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[8]),.b_data(r_b_data[8]),.c_data(r_c_data[8]),.d_data(r_d_data[8]),.input_data(input_data[8]),
    .iter_index(4'd8),.sin_val(32'h698098d8),.in_data_for_sum(input_data[8][255:224]), //part of input data that will be used for sum
    .o_a_data(r_a_data[9]),.o_b_data(r_b_data[9]),.o_c_data(r_c_data[9]),.o_d_data(r_d_data[9]),.o_data(input_data[9]));                
first_16 f_9 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[9]),.b_data(r_b_data[9]),.c_data(r_c_data[9]),.d_data(r_d_data[9]),.input_data(input_data[9]),
    .iter_index(4'd9),.sin_val(32'h8b44f7af),.in_data_for_sum(input_data[9][223:192]), //part of input data that will be used for sum
    .o_a_data(r_a_data[10]),.o_b_data(r_b_data[10]),.o_c_data(r_c_data[10]),.o_d_data(r_d_data[10]),.o_data(input_data[10]));
first_16 f_10 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[10]),.b_data(r_b_data[10]),.c_data(r_c_data[10]),.d_data(r_d_data[10]),.input_data(input_data[10]),
    .iter_index(4'd10),.sin_val(32'hffff5bb1),.in_data_for_sum(input_data[10][191:160]), //part of input data that will be used for sum
    .o_a_data(r_a_data[11]),.o_b_data(r_b_data[11]),.o_c_data(r_c_data[11]),.o_d_data(r_d_data[11]),.o_data(input_data[11]));    
first_16 f_11 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[11]),.b_data(r_b_data[11]),.c_data(r_c_data[11]),.d_data(r_d_data[11]),.input_data(input_data[11]),
    .iter_index(4'd11),.sin_val(32'h895cd7be),.in_data_for_sum(input_data[11][159:128]), //part of input data that will be used for sum
    .o_a_data(r_a_data[12]),.o_b_data(r_b_data[12]),.o_c_data(r_c_data[12]),.o_d_data(r_d_data[12]),.o_data(input_data[12]));
first_16 f_12 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[12]),.b_data(r_b_data[12]),.c_data(r_c_data[12]),.d_data(r_d_data[12]),.input_data(input_data[12]),
    .iter_index(4'd12),.sin_val(32'h6b901122),.in_data_for_sum(input_data[12][127:96]), //part of input data that will be used for sum
    .o_a_data(r_a_data[13]),.o_b_data(r_b_data[13]),.o_c_data(r_c_data[13]),.o_d_data(r_d_data[13]),.o_data(input_data[13]));
first_16 f_13 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[13]),.b_data(r_b_data[13]),.c_data(r_c_data[13]),.d_data(r_d_data[13]),.input_data(input_data[13]),
    .iter_index(4'd13),.sin_val(32'hfd987193),.in_data_for_sum(input_data[13][95:64]), //part of input data that will be used for sum
    .o_a_data(r_a_data[14]),.o_b_data(r_b_data[14]),.o_c_data(r_c_data[14]),.o_d_data(r_d_data[14]),.o_data(input_data[14]));
first_16 f_14 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[14]),.b_data(r_b_data[14]),.c_data(r_c_data[14]),.d_data(r_d_data[14]),.input_data(input_data[14]),
    .iter_index(4'd14),.sin_val(32'ha679438e),.in_data_for_sum(input_data[14][63:32]), //part of input data that will be used for sum
    .o_a_data(r_a_data[15]),.o_b_data(r_b_data[15]),.o_c_data(r_c_data[15]),.o_d_data(r_d_data[15]),.o_data(input_data[15]));
first_16 f_15 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[15]),.b_data(r_b_data[15]),.c_data(r_c_data[15]),.d_data(r_d_data[15]),.input_data(input_data[15]),
    .iter_index(4'd15),.sin_val(32'h49b40821),.in_data_for_sum(input_data[15][31:0]), //part of input data that will be used for sum
    .o_a_data(r_a_data[16]),.o_b_data(r_b_data[16]),.o_c_data(r_c_data[16]),.o_d_data(r_d_data[16]),.o_data(input_data[16]));            

 second_16 G_0 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[16]),.b_data(r_b_data[16]),.c_data(r_c_data[16]),.d_data(r_d_data[16]),.input_data(input_data[16]),
    .iter_index(4'd0),.sin_val(32'hf61e2562),.in_data_for_sum(input_data[16][511:480]), //part of input data that will be used for sum
    .o_a_data(r_a_data[17]),.o_b_data(r_b_data[17]),.o_c_data(r_c_data[17]),.o_d_data(r_d_data[17]),.o_data(input_data[17]));
 second_16 G_1 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[17]),.b_data(r_b_data[17]),.c_data(r_c_data[17]),.d_data(r_d_data[17]),.input_data(input_data[17]),
    .iter_index(4'd1),.sin_val(32'hc040b340),.in_data_for_sum(input_data[17][479:448]), //part of input data that will be used for sum
    .o_a_data(r_a_data[18]),.o_b_data(r_b_data[18]),.o_c_data(r_c_data[18]),.o_d_data(r_d_data[18]),.o_data(input_data[18]));
 second_16 G_2 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[18]),.b_data(r_b_data[18]),.c_data(r_c_data[18]),.d_data(r_d_data[18]),.input_data(input_data[18]),
    .iter_index(4'd2),.sin_val(32'h265e5a51),.in_data_for_sum(input_data[18][447:416]), //part of input data that will be used for sum
    .o_a_data(r_a_data[19]),.o_b_data(r_b_data[19]),.o_c_data(r_c_data[19]),.o_d_data(r_d_data[19]),.o_data(input_data[19]));
 second_16 G_3 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[19]),.b_data(r_b_data[19]),.c_data(r_c_data[19]),.d_data(r_d_data[19]),.input_data(input_data[19]),
    .iter_index(4'd3),.sin_val(32'he9b6c7aa),.in_data_for_sum(input_data[19][415:384]), //part of input data that will be used for sum
    .o_a_data(r_a_data[20]),.o_b_data(r_b_data[20]),.o_c_data(r_c_data[20]),.o_d_data(r_d_data[20]),.o_data(input_data[20]));
 second_16 G_4 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[20]),.b_data(r_b_data[20]),.c_data(r_c_data[20]),.d_data(r_d_data[20]),.input_data(input_data[20]),
    .iter_index(4'd4),.sin_val(32'hd62f105d),.in_data_for_sum(input_data[20][383:352]), //part of input data that will be used for sum
    .o_a_data(r_a_data[21]),.o_b_data(r_b_data[21]),.o_c_data(r_c_data[21]),.o_d_data(r_d_data[21]),.o_data(input_data[21]));            
 second_16 G_5 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[21]),.b_data(r_b_data[21]),.c_data(r_c_data[21]),.d_data(r_d_data[21]),.input_data(input_data[21]),
    .iter_index(4'd5),.sin_val(32'h02441453),.in_data_for_sum(input_data[21][351:320]), //part of input data that will be used for sum
    .o_a_data(r_a_data[22]),.o_b_data(r_b_data[22]),.o_c_data(r_c_data[22]),.o_d_data(r_d_data[22]),.o_data(input_data[22]));
 second_16 G_6 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[22]),.b_data(r_b_data[22]),.c_data(r_c_data[22]),.d_data(r_d_data[22]),.input_data(input_data[22]),
    .iter_index(4'd6),.sin_val(32'hd8a1e681),.in_data_for_sum(input_data[22][319:288]), //part of input data that will be used for sum
    .o_a_data(r_a_data[23]),.o_b_data(r_b_data[23]),.o_c_data(r_c_data[23]),.o_d_data(r_d_data[23]),.o_data(input_data[23]));
 second_16 G_7 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[23]),.b_data(r_b_data[23]),.c_data(r_c_data[23]),.d_data(r_d_data[23]),.input_data(input_data[23]),
    .iter_index(4'd7),.sin_val(32'he7d3fbc8),.in_data_for_sum(input_data[23][287:256]), //part of input data that will be used for sum
    .o_a_data(r_a_data[24]),.o_b_data(r_b_data[24]),.o_c_data(r_c_data[24]),.o_d_data(r_d_data[24]),.o_data(input_data[24]));
 second_16 G_8 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[24]),.b_data(r_b_data[24]),.c_data(r_c_data[24]),.d_data(r_d_data[24]),.input_data(input_data[24]),
    .iter_index(4'd8),.sin_val(32'h21e1cde6),.in_data_for_sum(input_data[24][255:224]), //part of input data that will be used for sum
    .o_a_data(r_a_data[25]),.o_b_data(r_b_data[25]),.o_c_data(r_c_data[25]),.o_d_data(r_d_data[25]),.o_data(input_data[25]));
 second_16 G_9 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[25]),.b_data(r_b_data[25]),.c_data(r_c_data[25]),.d_data(r_d_data[25]),.input_data(input_data[25]),
    .iter_index(4'd9),.sin_val(32'hc33707d6),.in_data_for_sum(input_data[25][223:192]), //part of input data that will be used for sum
    .o_a_data(r_a_data[26]),.o_b_data(r_b_data[26]),.o_c_data(r_c_data[26]),.o_d_data(r_d_data[26]),.o_data(input_data[26]));
 second_16 G_10 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[26]),.b_data(r_b_data[26]),.c_data(r_c_data[26]),.d_data(r_d_data[26]),.input_data(input_data[26]),
    .iter_index(4'd10),.sin_val(32'hf4d50d87),.in_data_for_sum(input_data[26][191:160]), //part of input data that will be used for sum
    .o_a_data(r_a_data[27]),.o_b_data(r_b_data[27]),.o_c_data(r_c_data[27]),.o_d_data(r_d_data[27]),.o_data(input_data[27]));
 second_16 G_11 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[27]),.b_data(r_b_data[27]),.c_data(r_c_data[27]),.d_data(r_d_data[27]),.input_data(input_data[27]),
    .iter_index(4'd11),.sin_val(32'h455a14ed),.in_data_for_sum(input_data[27][159:128]), //part of input data that will be used for sum
    .o_a_data(r_a_data[28]),.o_b_data(r_b_data[28]),.o_c_data(r_c_data[28]),.o_d_data(r_d_data[28]),.o_data(input_data[28]));
 second_16 G_12 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[28]),.b_data(r_b_data[28]),.c_data(r_c_data[28]),.d_data(r_d_data[28]),.input_data(input_data[28]),
    .iter_index(4'd12),.sin_val(32'ha9e3e905),.in_data_for_sum(input_data[28][127:96]), //part of input data that will be used for sum
    .o_a_data(r_a_data[29]),.o_b_data(r_b_data[29]),.o_c_data(r_c_data[29]),.o_d_data(r_d_data[29]),.o_data(input_data[29]));
 second_16 G_13 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[29]),.b_data(r_b_data[29]),.c_data(r_c_data[29]),.d_data(r_d_data[29]),.input_data(input_data[29]),
    .iter_index(4'd13),.sin_val(32'hfcefa3f8),.in_data_for_sum(input_data[29][95:64]), //part of input data that will be used for sum
    .o_a_data(r_a_data[30]),.o_b_data(r_b_data[30]),.o_c_data(r_c_data[30]),.o_d_data(r_d_data[30]),.o_data(input_data[30]));
 second_16 G_14 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[30]),.b_data(r_b_data[30]),.c_data(r_c_data[30]),.d_data(r_d_data[30]),.input_data(input_data[30]),
    .iter_index(4'd14),.sin_val(32'h676f02d9),.in_data_for_sum(input_data[30][63:32]), //part of input data that will be used for sum
    .o_a_data(r_a_data[31]),.o_b_data(r_b_data[31]),.o_c_data(r_c_data[31]),.o_d_data(r_d_data[31]),.o_data(input_data[31]));
 second_16 G_15 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[31]),.b_data(r_b_data[31]),.c_data(r_c_data[31]),.d_data(r_d_data[31]),.input_data(input_data[31]),
    .iter_index(4'd15),.sin_val(32'h8d2a4c8a),.in_data_for_sum(input_data[31][31:0]), //part of input data that will be used for sum
    .o_a_data(r_a_data[32]),.o_b_data(r_b_data[32]),.o_c_data(r_c_data[32]),.o_d_data(r_d_data[32]),.o_data(input_data[32]));                                        


 third_16 H_0 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[32]),.b_data(r_b_data[32]),.c_data(r_c_data[32]),.d_data(r_d_data[32]),.input_data(input_data[32]),
    .iter_index(4'd0),.sin_val(32'hfffa3942),.in_data_for_sum(input_data[32][511:480]), //part of input data that will be used for sum
    .o_a_data(r_a_data[33]),.o_b_data(r_b_data[33]),.o_c_data(r_c_data[33]),.o_d_data(r_d_data[33]),.o_data(input_data[33]));
 third_16 H_1 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[33]),.b_data(r_b_data[33]),.c_data(r_c_data[33]),.d_data(r_d_data[33]),.input_data(input_data[33]),
    .iter_index(4'd1),.sin_val(32'h8771f681),.in_data_for_sum(input_data[33][479:448]), //part of input data that will be used for sum
    .o_a_data(r_a_data[34]),.o_b_data(r_b_data[34]),.o_c_data(r_c_data[34]),.o_d_data(r_d_data[34]),.o_data(input_data[34]));
 third_16 H_2 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[34]),.b_data(r_b_data[34]),.c_data(r_c_data[34]),.d_data(r_d_data[34]),.input_data(input_data[34]),
    .iter_index(4'd2),.sin_val(32'h6d9d6122),.in_data_for_sum(input_data[34][447:416]), //part of input data that will be used for sum
    .o_a_data(r_a_data[35]),.o_b_data(r_b_data[35]),.o_c_data(r_c_data[35]),.o_d_data(r_d_data[35]),.o_data(input_data[35]));
 third_16 H_3 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[35]),.b_data(r_b_data[35]),.c_data(r_c_data[35]),.d_data(r_d_data[35]),.input_data(input_data[35]),
    .iter_index(4'd3),.sin_val(32'hfde5380c),.in_data_for_sum(input_data[35][415:384]), //part of input data that will be used for sum
    .o_a_data(r_a_data[36]),.o_b_data(r_b_data[36]),.o_c_data(r_c_data[36]),.o_d_data(r_d_data[36]),.o_data(input_data[36]));
 third_16 H_4 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[36]),.b_data(r_b_data[36]),.c_data(r_c_data[36]),.d_data(r_d_data[36]),.input_data(input_data[36]),
    .iter_index(4'd4),.sin_val(32'ha4beea44),.in_data_for_sum(input_data[36][383:352]), //part of input data that will be used for sum
    .o_a_data(r_a_data[37]),.o_b_data(r_b_data[37]),.o_c_data(r_c_data[37]),.o_d_data(r_d_data[37]),.o_data(input_data[37]));
 third_16 H_5 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[37]),.b_data(r_b_data[37]),.c_data(r_c_data[37]),.d_data(r_d_data[37]),.input_data(input_data[37]),
    .iter_index(4'd5),.sin_val(32'h4bdecfa9),.in_data_for_sum(input_data[37][351:320]), //part of input data that will be used for sum
    .o_a_data(r_a_data[38]),.o_b_data(r_b_data[38]),.o_c_data(r_c_data[38]),.o_d_data(r_d_data[38]),.o_data(input_data[38]));
 third_16 H_6 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[38]),.b_data(r_b_data[38]),.c_data(r_c_data[38]),.d_data(r_d_data[38]),.input_data(input_data[38]),
    .iter_index(4'd6),.sin_val(32'hf6bb4b60),.in_data_for_sum(input_data[38][319:288]), //part of input data that will be used for sum
    .o_a_data(r_a_data[39]),.o_b_data(r_b_data[39]),.o_c_data(r_c_data[39]),.o_d_data(r_d_data[39]),.o_data(input_data[39]));
 third_16 H_7 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[39]),.b_data(r_b_data[39]),.c_data(r_c_data[39]),.d_data(r_d_data[39]),.input_data(input_data[39]),
    .iter_index(4'd7),.sin_val(32'hbebfbc70),.in_data_for_sum(input_data[39][287:256]), //part of input data that will be used for sum
    .o_a_data(r_a_data[40]),.o_b_data(r_b_data[40]),.o_c_data(r_c_data[40]),.o_d_data(r_d_data[40]),.o_data(input_data[40]));
 third_16 H_8 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[40]),.b_data(r_b_data[40]),.c_data(r_c_data[40]),.d_data(r_d_data[40]),.input_data(input_data[40]),
    .iter_index(4'd8),.sin_val(32'h289b7ec6),.in_data_for_sum(input_data[40][255:224]), //part of input data that will be used for sum
    .o_a_data(r_a_data[41]),.o_b_data(r_b_data[41]),.o_c_data(r_c_data[41]),.o_d_data(r_d_data[41]),.o_data(input_data[41]));
 third_16 H_9 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[41]),.b_data(r_b_data[41]),.c_data(r_c_data[41]),.d_data(r_d_data[41]),.input_data(input_data[41]),
    .iter_index(4'd9),.sin_val(32'heaa127fa),.in_data_for_sum(input_data[41][223:192]), //part of input data that will be used for sum
    .o_a_data(r_a_data[42]),.o_b_data(r_b_data[42]),.o_c_data(r_c_data[42]),.o_d_data(r_d_data[42]),.o_data(input_data[42]));
 third_16 H_10 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[42]),.b_data(r_b_data[42]),.c_data(r_c_data[42]),.d_data(r_d_data[42]),.input_data(input_data[42]),
    .iter_index(4'd10),.sin_val(32'hd4ef3085),.in_data_for_sum(input_data[42][191:160]), //part of input data that will be used for sum
    .o_a_data(r_a_data[43]),.o_b_data(r_b_data[43]),.o_c_data(r_c_data[43]),.o_d_data(r_d_data[43]),.o_data(input_data[43]));
 third_16 H_11 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[43]),.b_data(r_b_data[43]),.c_data(r_c_data[43]),.d_data(r_d_data[43]),.input_data(input_data[43]),
    .iter_index(4'd11),.sin_val(32'h04881d05),.in_data_for_sum(input_data[43][159:128]), //part of input data that will be used for sum
    .o_a_data(r_a_data[44]),.o_b_data(r_b_data[44]),.o_c_data(r_c_data[44]),.o_d_data(r_d_data[44]),.o_data(input_data[44]));
 third_16 H_12 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[44]),.b_data(r_b_data[44]),.c_data(r_c_data[44]),.d_data(r_d_data[44]),.input_data(input_data[44]),
    .iter_index(4'd12),.sin_val(32'hd9d4d039),.in_data_for_sum(input_data[44][127:96]), //part of input data that will be used for sum
    .o_a_data(r_a_data[45]),.o_b_data(r_b_data[45]),.o_c_data(r_c_data[45]),.o_d_data(r_d_data[45]),.o_data(input_data[45]));
 third_16 H_13 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[45]),.b_data(r_b_data[45]),.c_data(r_c_data[45]),.d_data(r_d_data[45]),.input_data(input_data[45]),
    .iter_index(4'd13),.sin_val(32'he6db99e5),.in_data_for_sum(input_data[45][95:64]), //part of input data that will be used for sum
    .o_a_data(r_a_data[46]),.o_b_data(r_b_data[46]),.o_c_data(r_c_data[46]),.o_d_data(r_d_data[46]),.o_data(input_data[46]));
 third_16 H_14 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[46]),.b_data(r_b_data[46]),.c_data(r_c_data[46]),.d_data(r_d_data[46]),.input_data(input_data[46]),
    .iter_index(4'd14),.sin_val(32'h1fa27cf8),.in_data_for_sum(input_data[46][63:32]), //part of input data that will be used for sum
    .o_a_data(r_a_data[47]),.o_b_data(r_b_data[47]),.o_c_data(r_c_data[47]),.o_d_data(r_d_data[47]),.o_data(input_data[47]));
 third_16 H_15 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[47]),.b_data(r_b_data[47]),.c_data(r_c_data[47]),.d_data(r_d_data[47]),.input_data(input_data[47]),
    .iter_index(4'd15),.sin_val(32'hc4ac5665),.in_data_for_sum(input_data[47][31:0]), //part of input data that will be used for sum
    .o_a_data(r_a_data[48]),.o_b_data(r_b_data[48]),.o_c_data(r_c_data[48]),.o_d_data(r_d_data[48]),.o_data(input_data[48]));                                                    


fourth_16 I_0 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[48]),.b_data(r_b_data[48]),.c_data(r_c_data[48]),.d_data(r_d_data[48]),.input_data(input_data[48]),
    .iter_index(4'd0),.sin_val(32'hf4292244),.in_data_for_sum(input_data[48][511:480]), //part of input data that will be used for sum
    .o_a_data(r_a_data[49]),.o_b_data(r_b_data[49]),.o_c_data(r_c_data[49]),.o_d_data(r_d_data[49]),.o_data(input_data[49]));
fourth_16 I_1 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[49]),.b_data(r_b_data[49]),.c_data(r_c_data[49]),.d_data(r_d_data[49]),.input_data(input_data[49]),
    .iter_index(4'd1),.sin_val(32'h432aff97),.in_data_for_sum(input_data[49][479:448]), //part of input data that will be used for sum
    .o_a_data(r_a_data[50]),.o_b_data(r_b_data[50]),.o_c_data(r_c_data[50]),.o_d_data(r_d_data[50]),.o_data(input_data[50]));
fourth_16 I_2 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[50]),.b_data(r_b_data[50]),.c_data(r_c_data[50]),.d_data(r_d_data[50]),.input_data(input_data[50]),
    .iter_index(4'd2),.sin_val(32'hab9423a7),.in_data_for_sum(input_data[50][447:416]), //part of input data that will be used for sum
    .o_a_data(r_a_data[51]),.o_b_data(r_b_data[51]),.o_c_data(r_c_data[51]),.o_d_data(r_d_data[51]),.o_data(input_data[51]));
fourth_16 I_3 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[51]),.b_data(r_b_data[51]),.c_data(r_c_data[51]),.d_data(r_d_data[51]),.input_data(input_data[51]),
    .iter_index(4'd3),.sin_val(32'hfc93a039),.in_data_for_sum(input_data[51][415:384]), //part of input data that will be used for sum
    .o_a_data(r_a_data[52]),.o_b_data(r_b_data[52]),.o_c_data(r_c_data[52]),.o_d_data(r_d_data[52]),.o_data(input_data[52]));        
fourth_16 I_4 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[52]),.b_data(r_b_data[52]),.c_data(r_c_data[52]),.d_data(r_d_data[52]),.input_data(input_data[52]),
    .iter_index(4'd4),.sin_val(32'h655b59c3),.in_data_for_sum(input_data[52][383:352]), //part of input data that will be used for sum
    .o_a_data(r_a_data[53]),.o_b_data(r_b_data[53]),.o_c_data(r_c_data[53]),.o_d_data(r_d_data[53]),.o_data(input_data[53]));
fourth_16 I_5 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[53]),.b_data(r_b_data[53]),.c_data(r_c_data[53]),.d_data(r_d_data[53]),.input_data(input_data[53]),
    .iter_index(4'd5),.sin_val(32'h8f0ccc92),.in_data_for_sum(input_data[53][351:320]), //part of input data that will be used for sum
    .o_a_data(r_a_data[54]),.o_b_data(r_b_data[54]),.o_c_data(r_c_data[54]),.o_d_data(r_d_data[54]),.o_data(input_data[54]));
fourth_16 I_6 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[54]),.b_data(r_b_data[54]),.c_data(r_c_data[54]),.d_data(r_d_data[54]),.input_data(input_data[54]),
    .iter_index(4'd6),.sin_val(32'hffeff47d),.in_data_for_sum(input_data[54][319:288]), //part of input data that will be used for sum
    .o_a_data(r_a_data[55]),.o_b_data(r_b_data[55]),.o_c_data(r_c_data[55]),.o_d_data(r_d_data[55]),.o_data(input_data[55]));
fourth_16 I_7 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[55]),.b_data(r_b_data[55]),.c_data(r_c_data[55]),.d_data(r_d_data[55]),.input_data(input_data[55]),
    .iter_index(4'd7),.sin_val(32'h85845dd1),.in_data_for_sum(input_data[55][287:256]), //part of input data that will be used for sum
    .o_a_data(r_a_data[56]),.o_b_data(r_b_data[56]),.o_c_data(r_c_data[56]),.o_d_data(r_d_data[56]),.o_data(input_data[56]));
fourth_16 I_8 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[56]),.b_data(r_b_data[56]),.c_data(r_c_data[56]),.d_data(r_d_data[56]),.input_data(input_data[56]),
    .iter_index(4'd8),.sin_val(32'h6fa87e4f),.in_data_for_sum(input_data[56][255:224]), //part of input data that will be used for sum
    .o_a_data(r_a_data[57]),.o_b_data(r_b_data[57]),.o_c_data(r_c_data[57]),.o_d_data(r_d_data[57]),.o_data(input_data[57]));
fourth_16 I_9 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[57]),.b_data(r_b_data[57]),.c_data(r_c_data[57]),.d_data(r_d_data[57]),.input_data(input_data[57]),
    .iter_index(4'd9),.sin_val(32'hfe2ce6e0),.in_data_for_sum(input_data[57][223:192]), //part of input data that will be used for sum
    .o_a_data(r_a_data[58]),.o_b_data(r_b_data[58]),.o_c_data(r_c_data[58]),.o_d_data(r_d_data[58]),.o_data(input_data[58]));
fourth_16 I_10 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[58]),.b_data(r_b_data[58]),.c_data(r_c_data[58]),.d_data(r_d_data[58]),.input_data(input_data[58]),
    .iter_index(4'd10),.sin_val(32'ha3014314),.in_data_for_sum(input_data[58][191:160]), //part of input data that will be used for sum
    .o_a_data(r_a_data[59]),.o_b_data(r_b_data[59]),.o_c_data(r_c_data[59]),.o_d_data(r_d_data[59]),.o_data(input_data[59]));
fourth_16 I_11 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[59]),.b_data(r_b_data[59]),.c_data(r_c_data[59]),.d_data(r_d_data[59]),.input_data(input_data[59]),
    .iter_index(4'd11),.sin_val(32'h4e0811a1),.in_data_for_sum(input_data[59][159:128]), //part of input data that will be used for sum
    .o_a_data(r_a_data[60]),.o_b_data(r_b_data[60]),.o_c_data(r_c_data[60]),.o_d_data(r_d_data[60]),.o_data(input_data[60]));
fourth_16 I_12 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[60]),.b_data(r_b_data[60]),.c_data(r_c_data[60]),.d_data(r_d_data[60]),.input_data(input_data[60]),
    .iter_index(4'd12),.sin_val(32'hf7537e82),.in_data_for_sum(input_data[60][127:96]), //part of input data that will be used for sum
    .o_a_data(r_a_data[61]),.o_b_data(r_b_data[61]),.o_c_data(r_c_data[61]),.o_d_data(r_d_data[61]),.o_data(input_data[61]));
fourth_16 I_13 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[61]),.b_data(r_b_data[61]),.c_data(r_c_data[61]),.d_data(r_d_data[61]),.input_data(input_data[61]),
    .iter_index(4'd13),.sin_val(32'hbd3af235),.in_data_for_sum(input_data[61][95:64]), //part of input data that will be used for sum
    .o_a_data(r_a_data[62]),.o_b_data(r_b_data[62]),.o_c_data(r_c_data[62]),.o_d_data(r_d_data[62]),.o_data(input_data[62]));
fourth_16 I_14 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[62]),.b_data(r_b_data[62]),.c_data(r_c_data[62]),.d_data(r_d_data[62]),.input_data(input_data[62]),
    .iter_index(4'd14),.sin_val(32'h2ad7d2bb),.in_data_for_sum(input_data[62][63:32]), //part of input data that will be used for sum
    .o_a_data(r_a_data[63]),.o_b_data(r_b_data[63]),.o_c_data(r_c_data[63]),.o_d_data(r_d_data[63]),.o_data(input_data[63]));
fourth_16 I_15 (.i_stall_pipe(i_stall_pipe),.clk(clk),.rstn(rstn),.a_data(r_a_data[63]),.b_data(r_b_data[63]),.c_data(r_c_data[63]),.d_data(r_d_data[63]),.input_data(input_data[63]),
    .iter_index(4'd15),.sin_val(32'heb86d391),.in_data_for_sum(input_data[63][31:0]), //part of input data that will be used for sum
    .o_a_data(r_a_data[64]),.o_b_data(r_b_data[64]),.o_c_data(r_c_data[64]),.o_d_data(r_d_data[64]),.o_data(input_data[64]));                                            


always @ (posedge clk) begin
    if (rstn == 1'b0) begin
        final_val <= 128'b0;
    end
    else begin
    if (i_stall_pipe == 1'b0) begin
        final_val[0+:32] <= D0 + r_d_data[64];
        final_val[32+:32] <= C0 + r_c_data[64];
        final_val[64 +:32] <= B0 + r_b_data[64];
        final_val[96 +:32] <= A0 + r_a_data[64];
    end
    end
end




/*
//0 iter
reg [31:0] partial_0;
reg [31:0] a_data_0, b_data_0,c_data_0,d_data_0;
reg [511:0] input_data_0;

always @(*) begin
    partial_0 = ((B0 & C0) | ((~B0) & D0)) + A0 + r_padded_data[480 +: 32] + 32'hd76aa478;
end

always @(posedge clk) begin
    if (rstn == 1'b0) begin
        a_data_0 <= 32'b0;
        b_data_0 <= 32'b0;
        c_data_0 <= 32'b0;
        d_data_0 <= 32'b0;
        input_data_0 <= 512'b0;
    end
    else begin
        a_data_0 <= D0;
        b_data_0 <=  B0 + {partial_0[24:0],partial_0[31:25]};
        c_data_0 <= B0;
        d_data_0 <= C0;
        input_data_0 <= r_padded_data;
    end
end

// 1 iter
reg [31:0] partial_1;
reg [31:0] a_data_1, b_data_1,c_data_1,d_data_1;
reg [511:0] input_data_1;

always @(*) begin
    partial_1 = ((b_data_0 & c_data_0) | (~c_data_0) & d_data_0) + a_data_0 + r_padded_data[448 +: 32] + 32'he8c7b756;
end
always @(posedge clk) begin
    if (rstn == 1'b0) begin
        a_data_1 <= 32'b0;
        b_data_1 <= 32'b0;
        c_data_1 <= 32'b0;
        d_data_1 <= 32'b0;
        input_data_1 <= 512'b0;
    end
    else begin
        a_data_1 <= d_data_0;
        b_data_1 <=  b_data_0 + {partial_1[19:0],partial_1[31:20]};
        c_data_1 <= b_data_0;
        d_data_1 <= c_data_0;
        input_data_1 <= input_data_0;
    end
end

//2 iter
reg [31:0] partial_2;
reg [31:0] a_data_2, b_data_2,c_data_2,d_data_2;
reg [511:0] input_data_2;

always @(*) begin
    partial_2 = ((b_data_1 & c_data_1) | ((~c_data_1) & d_data_1)) + a_data_1 + r_padded_data[416 +: 32] + 32'h242070db;
end
always @(posedge clk) begin
    if (rstn == 1'b0) begin
        a_data_2 <= 32'b0;
        b_data_2 <= 32'b0;
        c_data_2 <= 32'b0;
        d_data_2 <= 32'b0;
        input_data_2 <= 512'b0;
    end
    else begin
        a_data_2 <= d_data_1;
        b_data_2 <=  b_data_1 + {partial_2[14:0],partial_2[31:15]};
        c_data_2 <= b_data_1;
        d_data_2 <= c_data_1;
        input_data_2 <= input_data_1;
    end
end
*/


endmodule

//0 ~ 15 iter F function
module first_16 (
    input clk,
    input rstn,
    input i_stall_pipe,
    input [31:0] a_data,
    input [31:0] b_data,
    input [31:0] c_data,
    input [31:0] d_data,
    input [511:0] input_data,
    
    input [3:0] iter_index,         //use for shift?
    input [31:0] sin_val,
    input [31:0] in_data_for_sum, //part of input data that will be used for sum
    
    output reg [31:0] o_a_data,
    output reg [31:0] o_b_data,
    output reg [31:0] o_c_data,
    output reg [31:0] o_d_data,
    output reg [511:0] o_data
);

//TODO: prob need to pipeline below somehow depending on timing issue
wire [31:0] partial_data;
//always @(*) begin
    assign partial_data = ((b_data & c_data) | ((~b_data)& d_data)) + a_data + in_data_for_sum + sin_val;
//end

wire [31:0] w_data;
leftrotate_first left (
    .in_data(partial_data),
    .index(iter_index),
    .o_data(w_data)
    );

always @(posedge clk) begin
    if(rstn == 1'b0) begin
        o_a_data <= 32'b0;
        o_b_data <= 32'b0;
        o_c_data <= 32'b0;
        o_d_data <= 32'b0;
        o_data <= 512'b0;
    end
    else begin
    if (i_stall_pipe == 1'b0) begin
        o_a_data <= d_data;
        o_b_data <= b_data + w_data;
        o_c_data <= b_data;
        o_d_data <= c_data;
        o_data <= input_data;
    end
    end
end


endmodule

module leftrotate_first (
    input [31:0] in_data,
    input [3:0] index,
    output reg [31:0] o_data
);
    always @(*) begin
        case (index)
        0: o_data = {in_data[24:0],in_data[31:25]};
        1: o_data = {in_data[19:0],in_data[31:20]};
        2: o_data = {in_data[14:0],in_data[31:15]};
        3: o_data = {in_data[9:0],in_data[31:10]};
        4: o_data = {in_data[24:0],in_data[31:25]};
        5: o_data = {in_data[19:0],in_data[31:20]};
        6: o_data = {in_data[14:0],in_data[31:15]};
        7: o_data = {in_data[9:0],in_data[31:10]};
        8: o_data = {in_data[24:0],in_data[31:25]};
        9: o_data = {in_data[19:0],in_data[31:20]};
        10: o_data = {in_data[14:0],in_data[31:15]};
        11: o_data = {in_data[9:0],in_data[31:10]};
        12: o_data = {in_data[24:0],in_data[31:25]};
        13: o_data = {in_data[19:0],in_data[31:20]};
        14: o_data = {in_data[14:0],in_data[31:15]};
        15: o_data = {in_data[9:0],in_data[31:10]};
        default: o_data = in_data;
        endcase
    end
endmodule

// 16 ~ 31 iter G function
module second_16 (
    input clk,
    input rstn,
    input i_stall_pipe,

    input [31:0] a_data,
    input [31:0] b_data,
    input [31:0] c_data,
    input [31:0] d_data,
    input [511:0] input_data,
    
    input [3:0] iter_index,         //use for shift?
    input [31:0] sin_val,
    input [31:0] in_data_for_sum, //part of input data that will be used for sum
    
    output reg [31:0] o_a_data,
    output reg [31:0] o_b_data,
    output reg [31:0] o_c_data,
    output reg [31:0] o_d_data,
    output reg [511:0] o_data
);


//TODO: prob need to pipeline below somehow depending on timing issue
wire [31:0] partial_data;
//always @(*) begin
    assign partial_data = ((b_data & d_data) | ((~d_data)& c_data)) + a_data + in_data_for_sum + sin_val;
//end

wire [31:0] w_data;
leftrotate_second left (
    .in_data(partial_data),
    .index(iter_index),
    .o_data(w_data)
    );

always @(posedge clk) begin
    if(rstn == 1'b0) begin
        o_a_data <= 32'b0;
        o_b_data <= 32'b0;
        o_c_data <= 32'b0;
        o_d_data <= 32'b0;
        o_data <= 512'b0;
    end
    else begin
    if (i_stall_pipe == 1'b0) begin
        o_a_data <= d_data;
        o_b_data <= b_data + w_data;
        o_c_data <= b_data;
        o_d_data <= c_data;
        o_data <= input_data;
    end
    end
end


endmodule

module leftrotate_second (
    input [31:0] in_data,
    input [3:0] index,
    output reg [31:0] o_data
);
    always @(*) begin
        case (index)
        0: o_data = {in_data[26:0],in_data[31:27]};
        1: o_data = {in_data[22:0],in_data[31:23]};
        2: o_data = {in_data[17:0],in_data[31:18]};
        3: o_data = {in_data[11:0],in_data[31:12]};
        4: o_data = {in_data[26:0],in_data[31:27]};
        5: o_data = {in_data[22:0],in_data[31:23]};
        6: o_data = {in_data[17:0],in_data[31:18]};
        7: o_data = {in_data[11:0],in_data[31:12]};
        8: o_data = {in_data[26:0],in_data[31:27]};
        9: o_data = {in_data[22:0],in_data[31:23]};
        10: o_data = {in_data[17:0],in_data[31:18]};
        11: o_data = {in_data[11:0],in_data[31:12]};
        12: o_data = {in_data[26:0],in_data[31:27]};
        13: o_data = {in_data[22:0],in_data[31:23]};
        14: o_data = {in_data[17:0],in_data[31:18]};
        15: o_data = {in_data[11:0],in_data[31:12]};
        default: o_data = in_data;
        endcase
    end
endmodule

// 32 ~ 47 iter H function
module third_16 (
    input clk,
    input rstn,
    input i_stall_pipe,
    input [31:0] a_data,
    input [31:0] b_data,
    input [31:0] c_data,
    input [31:0] d_data,
    input [511:0] input_data,
    
    input [3:0] iter_index,         //use for shift?
    input [31:0] sin_val,
    input [31:0] in_data_for_sum, //part of input data that will be used for sum
    
    output reg [31:0] o_a_data,
    output reg [31:0] o_b_data,
    output reg [31:0] o_c_data,
    output reg [31:0] o_d_data,
    output reg [511:0] o_data
);


//TODO: prob need to pipeline below somehow depending on timing issue
wire [31:0] partial_data;
//always @(*) begin
    assign partial_data = (b_data ^ c_data ^ d_data) + a_data + in_data_for_sum + sin_val;
//end

wire [31:0] w_data;
leftrotate_third left (
    .in_data(partial_data),
    .index(iter_index),
    .o_data(w_data)
    );

always @(posedge clk) begin
    if(rstn == 1'b0) begin
        o_a_data <= 32'b0;
        o_b_data <= 32'b0;
        o_c_data <= 32'b0;
        o_d_data <= 32'b0;
        o_data <= 512'b0;
    end
    else begin
    if (i_stall_pipe == 1'b0) begin
        o_a_data <= d_data;
        o_b_data <= b_data + w_data;
        o_c_data <= b_data;
        o_d_data <= c_data;
        o_data <= input_data;
    end
    end
end


endmodule

module leftrotate_third (
    input [31:0] in_data,
    input [3:0] index,
    output reg [31:0] o_data
);
    always @(*) begin
        case (index)
        0: o_data = {in_data[27:0],in_data[31:28]};
        1: o_data = {in_data[20:0],in_data[31:21]};
        2: o_data = {in_data[15:0],in_data[31:16]};
        3: o_data = {in_data[8:0],in_data[31:9]};
        4: o_data = {in_data[27:0],in_data[31:28]};
        5: o_data = {in_data[20:0],in_data[31:21]};
        6: o_data = {in_data[15:0],in_data[31:16]};
        7: o_data = {in_data[8:0],in_data[31:9]};
        8: o_data = {in_data[27:0],in_data[31:28]};
        9: o_data = {in_data[20:0],in_data[31:21]};
        10: o_data = {in_data[15:0],in_data[31:16]};
        11: o_data = {in_data[8:0],in_data[31:9]};
        12: o_data = {in_data[27:0],in_data[31:28]};
        13: o_data = {in_data[20:0],in_data[31:21]};
        14: o_data = {in_data[15:0],in_data[31:16]};
        15: o_data = {in_data[8:0],in_data[31:9]};
        default: o_data = in_data;
        endcase
    end
endmodule

// 48 ~ 63 iter I function
module fourth_16 (
    input clk,
    input rstn,
    input i_stall_pipe,
    input [31:0] a_data,
    input [31:0] b_data,
    input [31:0] c_data,
    input [31:0] d_data,
    input [511:0] input_data,
    
    input [3:0] iter_index,         //use for shift?
    input [31:0] sin_val,
    input [31:0] in_data_for_sum, //part of input data that will be used for sum
    
    output reg [31:0] o_a_data,
    output reg [31:0] o_b_data,
    output reg [31:0] o_c_data,
    output reg [31:0] o_d_data,
    output reg [511:0] o_data
);


//TODO: prob need to pipeline below somehow depending on timing issue
wire [31:0] partial_data;
//always @(*) begin
    assign partial_data = (c_data ^ ((~d_data) | b_data)) + a_data + in_data_for_sum + sin_val;
//end

wire [31:0] w_data;
leftrotate_fourth left (
    .in_data(partial_data),
    .index(iter_index),
    .o_data(w_data)
    );

always @(posedge clk) begin
    if(rstn == 1'b0) begin
        o_a_data <= 32'b0;
        o_b_data <= 32'b0;
        o_c_data <= 32'b0;
        o_d_data <= 32'b0;
        o_data <= 512'b0;
    end
    else begin
    if (i_stall_pipe == 1'b0) begin
        o_a_data <= d_data;
        o_b_data <= b_data + w_data;
        o_c_data <= b_data;
        o_d_data <= c_data;
        o_data <= input_data;
    end
    end
end


endmodule

module leftrotate_fourth (
    input [31:0] in_data,
    input [3:0] index,
    output reg [31:0] o_data
);
    always @(*) begin
        case (index)
        0: o_data = {in_data[25:0],in_data[31:26]};
        1: o_data = {in_data[21:0],in_data[31:22]};
        2: o_data = {in_data[16:0],in_data[31:17]};
        3: o_data = {in_data[10:0],in_data[31:11]};
        4: o_data = {in_data[25:0],in_data[31:26]};
        5: o_data = {in_data[21:0],in_data[31:22]};
        6: o_data = {in_data[16:0],in_data[31:17]};
        7: o_data = {in_data[10:0],in_data[31:11]};
        8: o_data = {in_data[25:0],in_data[31:26]};
        9: o_data = {in_data[21:0],in_data[31:22]};
        10: o_data = {in_data[16:0],in_data[31:17]};
        11: o_data = {in_data[10:0],in_data[31:11]};
        12: o_data = {in_data[25:0],in_data[31:26]};
        13: o_data = {in_data[21:0],in_data[31:22]};
        14: o_data = {in_data[16:0],in_data[31:17]};
        15: o_data = {in_data[10:0],in_data[31:11]};
        default: o_data = in_data;
        endcase
    end
endmodule


