`timescale 1 ns / 1 ps

module spam_detection_controller (
    input clock,
    input resetn,
    input wire write_done,
    input wire [31:0] fifo_din,
    input wire fifo_wr_en,
    output wire [31:0] prob_out,
    output reg data_valid
);

    reg [31:0] spam_opa = 32'b0;
	reg [31:0] spam_opb = 32'b0;
	wire [31:0] spam_out;
	
    reg spam_fifo_rd_en;
    wire [31:0] spam_fifo_dout;    
    wire spam_fifo_full;
    wire spam_fifo_empty;
    wire spam_fifo_almost_empty;
    wire [8:0] spam_fifo_count;

    reg [2:0] spam_cnt = 3'b000;
    reg spam_fpu_out_valid_pre = 1'b0;
    reg spam_fpu_out_valid = 1'b0;
    reg [31:0] spam_result;
    reg [2:0] spam_cnt_1 = 3'b000;
    reg spam_fpu_done;
      
    //wire fpu_out_valid_fall_edge;
    
    assign prob_out = spam_result;

    fpu fpu_0 ( 
        .clk(clock), 
        .rmode(2'b0), // Round to nearest even
        .fpu_op(3'b0), //Add
        .opa(spam_opa), 
        .opb(spam_opb), 
        .out(spam_out), 
        .inf(), 
        .snan(), 
        .qnan(), 
        .ine(), 
        .overflow(), 
        .underflow(), 
        .zero(), 
        .div_by_zero()
    );
    
    fifo_generator_0 prob_buffer(.clk(clock), .srst(~resetn), .din(fifo_din), .wr_en(fifo_wr_en),
        .rd_en(spam_fifo_rd_en), .dout(spam_fifo_dout), .full(spam_fifo_full), .empty(spam_fifo_empty), .data_count(spam_fifo_count));

    always @ (posedge clock) begin
        if(!resetn) begin
            spam_fifo_rd_en <= 0;
            spam_cnt <= 0;
        end
        else if (write_done == 0) begin
            spam_fifo_rd_en <= 0;
            spam_cnt <= 0;
        end
        else begin
            if (spam_cnt == 3) begin
                if (spam_fifo_empty == 0) begin 
                    spam_fifo_rd_en <= 1; // will output a new sample on fifo_dout in the next cycle
                    spam_fpu_out_valid_pre <= 1;
                    spam_cnt <= spam_cnt + 1;
                end
                else begin
                    spam_cnt <= spam_cnt + 1;
                end
            end
            else if (spam_cnt == 4) begin
                spam_fpu_out_valid_pre <= 0;
                spam_fifo_rd_en <= 0;
                spam_cnt <= 0;
            end
            else begin
                spam_fpu_out_valid_pre <= 0;
                spam_fifo_rd_en <= 0;
                spam_cnt <= spam_cnt + 1;
            end
        end
    end
    
    always @(posedge clock) begin
         if(!resetn) begin
            spam_opa <= 0;
         end
         else begin
            spam_opa <= spam_fifo_dout;
         end
    end
    
    always @(posedge clock) begin
      if(!resetn)
        spam_fpu_out_valid <= 1'b0;
      else
        spam_fpu_out_valid <= spam_fpu_out_valid_pre;
    end
    
    // falling edge detect
    //assign fpu_out_valid_fall_edge = (~spam_fpu_out_valid) & spam_fpu_out_valid_pre;
    
    always @ (posedge clock) begin
        if (!resetn) begin
            spam_opb <= 0;
        end
        else if (spam_fpu_out_valid == 1) begin
            spam_opb <= spam_out;
        end 
        else begin
            spam_opb <= spam_opb;
        end
    end
    
    always @ (posedge clock) begin
        if (!resetn) begin
           spam_cnt_1 <= 0;
           spam_fpu_done <= 0;
        end
        else if (spam_fpu_done == 1) begin
            spam_cnt_1 <= spam_cnt_1;
        end
        else if (write_done == 1 && spam_fifo_empty == 1) begin
            if (spam_cnt_1 == 4) begin
                spam_fpu_done <= 1;
            end
            spam_cnt_1 <= spam_cnt_1 + 1;
        end
        else begin
            spam_cnt_1 <= spam_cnt_1;
        end
    end
    
    reg spam_op_end;
    
    always @ (posedge clock) begin
        if (!resetn) begin
            spam_result <= 0;
            spam_op_end <= 0;
            data_valid <= 0;
        end
        else if (spam_op_end == 1) begin 
            spam_result <= spam_result;
            spam_op_end <= 1;
        end
        else if (spam_fpu_done == 1) begin
            spam_result <= spam_out;
            data_valid <= 1;
            spam_op_end <= 1;
        end
        else begin
            spam_result <= spam_result;
        end
    end
	
endmodule