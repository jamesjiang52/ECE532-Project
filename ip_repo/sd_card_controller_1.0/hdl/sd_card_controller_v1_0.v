
`timescale 1 ns / 1 ps

    module sd_card_controller_v1_0 #
    (
        // Users to add parameters here
    
        // User parameters ends
        // Do not modify the parameters beyond this line
    
    
        // Parameters of Axi Master Bus Interface M00_AXI
        // Start address of SD card to read from
        parameter SD_START_ADDR = 32'h00000000,
        // Size of the data transfer
        parameter SD_DATA_SIZE = 32'h00000600,
        // Start address of DDR memory to write to
        parameter SD_DDR_BASE_ADDR = 32'h80000000,
        //parameter  C_M00_AXI_START_DATA_VALUE	= 32'hAA000000,
        //parameter  C_M00_AXI_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
        parameter integer C_M00_AXI_ADDR_WIDTH = 32,
        parameter integer C_M00_AXI_DATA_WIDTH = 32,
        parameter integer C_M00_AXI_TRANSACTIONS_NUM = 1
    )
    (
        // Users to add ports here
        input wire clk, // 100MHz
        input wire resetn, // active high
        input wire SD_CD, 
        output wire SD_RESET, 
        output wire SD_SCK, 
        output wire SD_CMD, 
        inout wire [3:0] SD_DAT, 
        input wire load,
        output wire loaded,
        // User ports ends
        // Do not modify the ports beyond this line
    
    
        // Ports of Axi Master Bus Interface M00_AXI
        //input wire  m00_axi_init_axi_txn,
        //output wire  m00_axi_error,
        //output wire  m00_axi_txn_done,
        input wire  m00_axi_aclk,
        input wire  m00_axi_aresetn,
        output wire [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_awaddr,
        output wire [2 : 0] m00_axi_awprot,
        output wire  m00_axi_awvalid,
        input wire  m00_axi_awready,
        output wire [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_wdata,
        output wire [C_M00_AXI_DATA_WIDTH/8-1 : 0] m00_axi_wstrb,
        output wire  m00_axi_wvalid,
        input wire  m00_axi_wready,
        input wire [1 : 0] m00_axi_bresp,
        input wire  m00_axi_bvalid,
        output wire  m00_axi_bready,
        output wire [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_araddr,
        output wire [2 : 0] m00_axi_arprot,
        output wire  m00_axi_arvalid,
        input wire  m00_axi_arready,
        input wire [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_rdata,
        input wire [1 : 0] m00_axi_rresp,
        input wire  m00_axi_rvalid,
        output wire  m00_axi_rready
    );
    
    reg  m00_axi_init_axi_txn = 0;
    
    // Add user logic here
    wire rst = ~resetn;
    wire spiClk;
    wire spiMiso;
    wire spiMosi;
    wire spiCS;
     
    // Clock the SD card at 25 MHz.
	wire clk_100mhz = clk;
    wire clk_50mhz;
    wire clk_25mhz;
    clock_divider div1(clk_100mhz, clk_50mhz);
    clock_divider div2(clk_50mhz, clk_25mhz);

    // MicroSD SPI/SD Mode/Nexys 4
    // 1: Unused / DAT2 / SD_DAT[2]
    // 2: CS / DAT3 / SD_DAT[3]
    // 3: MOSI / CMD / SD_CMD
    // 4: VDD / VDD / ~SD_RESET
    // 5: SCLK / SCLK / SD_SCK
    // 6: GND / GND / - 
    // 7: MISO / DAT0 / SD_DAT[0]
    // 8: UNUSED / DAT1 / SD_DAT[1]
    assign SD_DAT[2] = 1;
    assign SD_DAT[3] = spiCS;
    assign SD_CMD = spiMosi;
    assign SD_RESET = 0;
    assign SD_SCK = spiClk;
    assign spiMiso = SD_DAT[0];
    assign SD_DAT[1] = 1;
    
    reg rd = 0;
    reg wr = 0;
    reg [7:0] din = 0;
    wire [7:0] dout;
    wire byte_available;
    wire ready;
    wire ready_for_next_byte;
    reg [31:0] address;
    
    wire [4:0] state;
    
    reg [31:0] addr_ptr = 0;  
    reg byte_available_1;
    reg [1:0] counter = 0;
    reg [31:0] data;
    reg signal = 0;
    reg signal_1 = 0;

    assign loaded = (addr_ptr >= SD_DATA_SIZE);

    
    // Instantiation of Axi Bus Interface M00_AXI
    sd_card_controller_v1_0_M00_AXI # ( 
        //.C_M_START_DATA_VALUE(C_M00_AXI_START_DATA_VALUE),
        //.C_M_TARGET_SLAVE_BASE_ADDR(C_M00_AXI_TARGET_SLAVE_BASE_ADDR),
        .C_M_AXI_ADDR_WIDTH(C_M00_AXI_ADDR_WIDTH),
        .C_M_AXI_DATA_WIDTH(C_M00_AXI_DATA_WIDTH),
        .C_M_TRANSACTIONS_NUM(C_M00_AXI_TRANSACTIONS_NUM)
    ) sd_card_controller_v1_0_M00_AXI_inst (
        .data(data),
        .address(SD_DDR_BASE_ADDR + addr_ptr - 3'd4),
        .INIT_AXI_TXN(m00_axi_init_axi_txn),
        .ERROR(),
        //.TXN_DONE(),
        .M_AXI_ACLK(m00_axi_aclk),
        .M_AXI_ARESETN(m00_axi_aresetn),
        .M_AXI_AWADDR(m00_axi_awaddr),
        .M_AXI_AWPROT(m00_axi_awprot),
        .M_AXI_AWVALID(m00_axi_awvalid),
        .M_AXI_AWREADY(m00_axi_awready),
        .M_AXI_WDATA(m00_axi_wdata),
        .M_AXI_WSTRB(m00_axi_wstrb),
        .M_AXI_WVALID(m00_axi_wvalid),
        .M_AXI_WREADY(m00_axi_wready),
        .M_AXI_BRESP(m00_axi_bresp),
        .M_AXI_BVALID(m00_axi_bvalid),
        .M_AXI_BREADY(m00_axi_bready),
        .M_AXI_ARADDR(m00_axi_araddr),
        .M_AXI_ARPROT(m00_axi_arprot),
        .M_AXI_ARVALID(m00_axi_arvalid),
        .M_AXI_ARREADY(m00_axi_arready),
        .M_AXI_RDATA(m00_axi_rdata),
        .M_AXI_RRESP(m00_axi_rresp),
        .M_AXI_RVALID(m00_axi_rvalid),
        .M_AXI_RREADY(m00_axi_rready)
    );
        
    sd_controller sdcont(.cs(spiCS), .mosi(spiMosi), .miso(spiMiso),
            .sclk(spiClk), .rd(rd), .wr(wr), .reset(rst),
            .din(din), .dout(dout), .byte_available(byte_available),
            .ready(ready), .address(address), 
            .ready_for_next_byte(ready_for_next_byte), .clk(clk_25mhz), 
            .status(state));
          
    always @(posedge clk) begin
        if (~resetn) begin
            din <= 0;
            wr <= 0;
            rd <= 0;
            addr_ptr <=0;
            byte_available_1 <= 0;
        end
        else begin
            if (load == 1'b1 && loaded == 1'b0) begin
                if (ready) begin
                    rd <= 1'b1;
                    address <= SD_START_ADDR + (addr_ptr >> 9);
                end
                else if (rd == 1'b1) begin
                    byte_available_1 <= byte_available;
                    signal_1 <= signal;
                    if (byte_available == 1'b1 && byte_available_1 == 1'b0) begin // new data (1 byte) 
                        addr_ptr <= addr_ptr + 1'b1;
                        data <= {data[23:0], dout};
                        {signal, counter} <= counter + 1'b1; 
                    end
                end
            end
            else begin
                rd <= 1'b0;
            end
        end
    end
    
    always @(posedge clk) begin // write data (32b) to the DDR controller through AXI master
        if (~resetn) begin
            m00_axi_init_axi_txn <= 1'b0;
        end
        else if (signal == 1'b1 && signal_1 == 1'b0) begin
            m00_axi_init_axi_txn <= 1'b1;
        end
        else begin
            m00_axi_init_axi_txn <= 1'b0;
        end
    end
    // User logic ends
    
    endmodule
