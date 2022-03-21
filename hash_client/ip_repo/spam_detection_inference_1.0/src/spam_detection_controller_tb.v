module spam_detection_controller_tb (
);
    reg s00_axi_aclk;
    reg s00_axi_aresetn;
    reg write_done;
    reg [31:0] fifo_din;
    reg fifo_wr_en;
    wire [31:0] prob_out;
    
    spam_detection_controller spam_detection_controller_0 (
        .clock(s00_axi_aclk),
        .resetn(s00_axi_aresetn),
        .write_done(write_done),
        .fifo_din(fifo_din),
        .fifo_wr_en(fifo_wr_en),
        .prob_out(prob_out)
    );
    
     // clock gen
    initial begin
        s00_axi_aclk = 1'b0;
        forever s00_axi_aclk = #2.5 ~s00_axi_aclk;
    end
    
    // reset logic
    initial begin
        s00_axi_aresetn = 1'b0;
        #12.5 s00_axi_aresetn = 1'b1;
    end  
    
    initial begin
        write_done = 1'b0;
        fifo_din = 32'd0;
        fifo_wr_en = 1'd0;
        #22.5
        fifo_din = 32'h08040204;
        fifo_wr_en = 1'd1;
        #5
        fifo_wr_en = 1'd0;
        #5
        fifo_din = 32'h00800201;
        fifo_wr_en = 1'd1;
        #5
        fifo_wr_en = 1'd0;
        #5
        fifo_din = 32'h04806201;
        fifo_wr_en = 1'd1;
        #5
        fifo_wr_en = 1'd0;
        #0
        write_done = 1'b1;
    end
    
endmodule