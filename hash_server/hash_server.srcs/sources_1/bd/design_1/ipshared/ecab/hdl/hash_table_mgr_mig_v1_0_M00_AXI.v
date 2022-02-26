
`timescale 1 ns / 1 ps

	module hash_table_mgr_mig_v1_0_M00_AXI #
	(
		// Users to add parameters here
        parameter integer HASH_TABLE_ADDR_WIDTH = 16,  // hash table key
        parameter integer HASH_TABLE_DATA_WIDTH = 64,  // data in hash table
        parameter integer HASH_TABLE_KEY_WIDTH = 256,
        parameter integer HASH_TABLE_OP_WIDTH   = 2,   // hash table operation
        parameter integer HASH_TABLE_OTYPE_WIDTH= 1,   // hash table output type (data/ack)
        parameter integer BUFFER_SIZE = 32,  // size of input and output queues
        parameter integer NUM_LOCKS = 32,  // number of locks for hash table; each lock provides mutual exclusion for num_elements/num_locks elements of the hash table
		// User parameters ends
		// Do not modify the parameters beyond this line

		// The master will start generating data from the C_M_START_DATA_VALUE value
		//parameter  C_M_START_DATA_VALUE	= 32'hAA000000,
		// The master requires a target slave base address.
    // The master will initiate read and write transactions on the slave with base address specified here as a parameter.
		parameter  C_M_TARGET_SLAVE_BASE_ADDR	= 32'h80000000,
		// Width of M_AXI address bus.
    // The master generates the read and write addresses of width specified as C_M_AXI_ADDR_WIDTH.
		parameter integer C_M_AXI_ADDR_WIDTH	= 32,
		// Width of M_AXI data bus.
    // The master issues write data and accept read data where the width of the data bus is C_M_AXI_DATA_WIDTH
		parameter integer C_M_AXI_DATA_WIDTH	= 32
		// Transaction number is the number of write
    // and read transactions the master will perform as a part of this example memory test.
		//parameter integer C_M_TRANSACTIONS_NUM	= 4
	)
	(
		// Users to add ports here
        output reg [HASH_TABLE_ADDR_WIDTH-1:0]  ht_output_addr,
        output reg [HASH_TABLE_DATA_WIDTH-1:0]  ht_output_data,
        output reg [HASH_TABLE_KEY_WIDTH-1:0]   ht_output_key,
        output reg [HASH_TABLE_OTYPE_WIDTH-1:0] ht_output_type,
        output reg                              ht_output_valid,
        input                             ht_output_ready,
        input [HASH_TABLE_ADDR_WIDTH-1:0] ht_input_addr,
        input [HASH_TABLE_DATA_WIDTH-1:0] ht_input_data,
        input [HASH_TABLE_KEY_WIDTH-1:0]  ht_input_key,
        input [HASH_TABLE_OP_WIDTH-1:0]   ht_input_op,
        input                             ht_input_valid,
		// User ports ends
		// Do not modify the ports beyond this line

		// Initiate AXI transactions
		//input wire  INIT_AXI_TXN,
		// Asserts when ERROR is detected
		//output reg  ERROR,
		// Asserts when AXI transactions is complete
		//output wire  TXN_DONE,
		// AXI clock signal
		input wire  M_AXI_ACLK,
		// AXI active low reset signal
		input wire  M_AXI_ARESETN,
		// Master Interface Write Address Channel ports. Write address (issued by master)
		output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_AWADDR,
		// Write channel Protection type.
    // This signal indicates the privilege and security level of the transaction,
    // and whether the transaction is a data access or an instruction access.
		output wire [2 : 0] M_AXI_AWPROT,
		// Write address valid.
    // This signal indicates that the master signaling valid write address and control information.
		output wire  M_AXI_AWVALID,
		// Write address ready.
    // This signal indicates that the slave is ready to accept an address and associated control signals.
		input wire  M_AXI_AWREADY,
		// Master Interface Write Data Channel ports. Write data (issued by master)
		output wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_WDATA,
		// Write strobes.
    // This signal indicates which byte lanes hold valid data.
    // There is one write strobe bit for each eight bits of the write data bus.
		output wire [C_M_AXI_DATA_WIDTH/8-1 : 0] M_AXI_WSTRB,
		// Write valid. This signal indicates that valid write data and strobes are available.
		output wire  M_AXI_WVALID,
		// Write ready. This signal indicates that the slave can accept the write data.
		input wire  M_AXI_WREADY,
		// Master Interface Write Response Channel ports.
    // This signal indicates the status of the write transaction.
		input wire [1 : 0] M_AXI_BRESP,
		// Write response valid.
    // This signal indicates that the channel is signaling a valid write response
		input wire  M_AXI_BVALID,
		// Response ready. This signal indicates that the master can accept a write response.
		output wire  M_AXI_BREADY,
		// Master Interface Read Address Channel ports. Read address (issued by master)
		output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_ARADDR,
		// Protection type.
    // This signal indicates the privilege and security level of the transaction,
    // and whether the transaction is a data access or an instruction access.
		output wire [2 : 0] M_AXI_ARPROT,
		// Read address valid.
    // This signal indicates that the channel is signaling valid read address and control information.
		output wire  M_AXI_ARVALID,
		// Read address ready.
    // This signal indicates that the slave is ready to accept an address and associated control signals.
		input wire  M_AXI_ARREADY,
		// Master Interface Read Data Channel ports. Read data (issued by slave)
		input wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_RDATA,
		// Read response. This signal indicates the status of the read transfer.
		input wire [1 : 0] M_AXI_RRESP,
		// Read valid. This signal indicates that the channel is signaling the required read data.
		input wire  M_AXI_RVALID,
		// Read ready. This signal indicates that the master can accept the read data and response information.
		output wire  M_AXI_RREADY
	);

	// function called clogb2 that returns an integer which has the
	// value of the ceiling of the log base 2

	 function integer clogb2 (input integer bit_depth);
		 begin
		 for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
			 bit_depth = bit_depth >> 1;
		 end
	 endfunction

	// TRANS_NUM_BITS is the width of the index counter for
	// number of write or read transaction.
	//localparam integer TRANS_NUM_BITS = clogb2(C_M_TRANSACTIONS_NUM-1);

	// Example State machine to initialize counter, initialize write transactions,
	// initialize read transactions and comparison of read data with the
	// written data words.
	localparam [2:0] IDLE  = 3'b000,
                     FIND  = 3'b001,
		             WRITE = 3'b010,
		             READ  = 3'b011;

	 reg [2:0] mst_exec_state_wr;
	 reg [2:0] mst_exec_state_rd;

	// AXI4LITE signals
	//write address valid
	reg  	axi_awvalid;
	//write data valid
	reg  	axi_wvalid;
	//read address valid
	reg  	axi_arvalid;
	//read data acceptance
	reg  	axi_rready;
	//write response acceptance
	reg  	axi_bready;
	//write address
	reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	//write data
	reg [C_M_AXI_DATA_WIDTH-1 : 0] 	axi_wdata;
	//read addresss
	reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	//Asserts when there is a write response error
	wire  	write_resp_error;
	//Asserts when there is a read response error
	wire  	read_resp_error;
	//A pulse to initiate a write transaction
	reg  	start_single_write;
	//A pulse to initiate a read transaction
	reg  	start_single_read;
	//Asserts when a single beat write transaction is issued and remains asserted till the completion of write trasaction.
	reg  	write_issued;
	//Asserts when a single beat read transaction is issued and remains asserted till the completion of read trasaction.
	reg  	read_issued;
	//flag that marks the completion of write trasactions. The number of write transaction is user selected by the parameter C_M_TRANSACTIONS_NUM.
	reg  	writes_done;
	//flag that marks the completion of read trasactions. The number of read transaction is user selected by the parameter C_M_TRANSACTIONS_NUM
	reg  	reads_done;
	//The error register is asserted when any of the write response error, read response error or the data mismatch flags are asserted.
	//reg  	error_reg;
	//index counter to track the number of write transaction issued
	reg [3 : 0] 	write_index;
	//index counter to track the number of read transaction issued
	reg [3 : 0] 	read_index;
	reg [HASH_TABLE_ADDR_WIDTH-1:0] write_addr_offset;
	reg [HASH_TABLE_ADDR_WIDTH-1:0] read_addr_offset;
	//Expected read data used to compare with the read data.
	//reg [C_M_AXI_DATA_WIDTH-1 : 0] 	expected_rdata;
	//Flag marks the completion of comparison of the read data with the expected read data
	//reg  	compare_done;
	//This flag is asserted when there is a mismatch of the read data with the expected read data.
	//reg  	read_mismatch;
	//Flag is asserted when the write index reaches the last write transction number
	reg  	last_write;
	//Flag is asserted when the read index reaches the last read transction number
	reg  	last_read;
	//reg  	init_wr_txn_ff;
	//reg  	init_wr_txn_ff2;
	//wire  	init_wr_txn_pulse;
	//reg  	init_rd_txn_ff;
	//reg  	init_rd_txn_ff2;
	//wire  	init_rd_txn_pulse;
	
	reg ht_init_wr;
	reg ht_init_rd;

	// I/O Connections assignments

	//Adding the offset address to the base addr of the slave
	assign M_AXI_AWADDR	= axi_awaddr + C_M_TARGET_SLAVE_BASE_ADDR;
	//AXI 4 write data
	assign M_AXI_WDATA	= axi_wdata;
	assign M_AXI_AWPROT	= 3'b000;
	assign M_AXI_AWVALID	= axi_awvalid;
	//Write Data(W)
	assign M_AXI_WVALID	= axi_wvalid;
	//Set all byte strobes in this example
	assign M_AXI_WSTRB	= 4'b1111;
	//Write Response (B)
	assign M_AXI_BREADY	= axi_bready;
	//Read Address (AR)
	assign M_AXI_ARADDR	= axi_araddr + C_M_TARGET_SLAVE_BASE_ADDR;
	assign M_AXI_ARVALID	= axi_arvalid;
	assign M_AXI_ARPROT	= 3'b001;
	//Read and Read Response (R)
	assign M_AXI_RREADY	= axi_rready;
	//Example design I/O
	//assign TXN_DONE	= compare_done;
	//assign init_wr_txn_pulse	= (!init_wr_txn_ff2) && init_wr_txn_ff;
	//assign init_rd_txn_pulse	= (!init_rd_txn_ff2) && init_rd_txn_ff;

    /*
	//Generate a pulse to initiate AXI transaction.
	always @(posedge M_AXI_ACLK) begin
	    // Initiates AXI transaction delay
	    if (M_AXI_ARESETN == 0) begin
	        init_wr_txn_ff <= 1'b0;
	        init_wr_txn_ff2 <= 1'b0;
	        init_rd_txn_ff <= 1'b0;
	        init_rd_txn_ff2 <= 1'b0;
	    end
	    else begin
	        init_wr_txn_ff <= ht_init_wr;
	        init_wr_txn_ff2 <= init_wr_txn_ff;
	        init_rd_txn_ff <= ht_init_rd;
	        init_rd_txn_ff2 <= init_rd_txn_ff;
	    end
	end
    */

	//--------------------
	//Write Address Channel
	//--------------------

	// The purpose of the write address channel is to request the address and
	// command information for the entire transaction.  It is a single beat
	// of information.

	// Note for this example the axi_awvalid/axi_wvalid are asserted at the same
	// time, and then each is deasserted independent from each other.
	// This is a lower-performance, but simplier control scheme.

	// AXI VALID signals must be held active until accepted by the partner.

	// A data transfer is accepted by the slave when a master has
	// VALID data and the slave acknoledges it is also READY. While the master
	// is allowed to generated multiple, back-to-back requests by not
	// deasserting VALID, this design will add rest cycle for
	// simplicity.

	// Since only one outstanding transaction is issued by the user design,
	// there will not be a collision between a new request and an accepted
	// request on the same clock cycle.

	  always @(posedge M_AXI_ACLK) begin
	    //Only VALID signals must be deasserted during reset per AXI spec
	    //Consider inverting then registering active-low reset for higher fmax
	    if (M_AXI_ARESETN == 0 || ht_init_wr)
	      begin
	        axi_awvalid <= 1'b0;
	      end
	      //Signal a new address/data command is available by user logic
	    else
	      begin
	        if (start_single_write)
	          begin
	            axi_awvalid <= 1'b1;
	          end
	     //Address accepted by interconnect/slave (issue of M_AXI_AWREADY by slave)
	        else if (M_AXI_AWREADY && axi_awvalid)
	          begin
	            axi_awvalid <= 1'b0;
	          end
	      end
	  end

      /*
	  // start_single_write triggers a new write
	  // transaction. write_index is a counter to
	  // keep track with number of write transaction
	  // issued/initiated
	  always @(posedge M_AXI_ACLK)
	  begin
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)
	      begin
	        write_index <= 0;
	      end
	      // Signals a new write address/ write data is
	      // available by user logic
	    else if (start_single_write)
	      begin
	        write_index <= write_index + 1;
	      end
	  end
	  */


	//--------------------
	//Write Data Channel
	//--------------------

	//The write data channel is for transfering the actual data.
	//The data generation is speific to the example design, and
	//so only the WVALID/WREADY handshake is shown here

	   always @(posedge M_AXI_ACLK)
	   begin
	     if (M_AXI_ARESETN == 0 || ht_init_wr)
	       begin
	         axi_wvalid <= 1'b0;
	       end
	     //Signal a new address/data command is available by user logic
	     else if (start_single_write)
	       begin
	         axi_wvalid <= 1'b1;
	       end
	     //Data accepted by interconnect/slave (issue of M_AXI_WREADY by slave)
	     else if (M_AXI_WREADY && axi_wvalid)
	       begin
	        axi_wvalid <= 1'b0;
	       end
	   end


	//----------------------------
	//Write Response (B) Channel
	//----------------------------

	//The write response channel provides feedback that the write has committed
	//to memory. BREADY will occur after both the data and the write address
	//has arrived and been accepted by the slave, and can guarantee that no
	//other accesses launched afterwards will be able to be reordered before it.

	//The BRESP bit [1] is used indicate any errors from the interconnect or
	//slave for the entire write burst. This example will capture the error.

	//While not necessary per spec, it is advisable to reset READY signals in
	//case of differing reset latencies between master/slave.

	  always @(posedge M_AXI_ACLK)
	  begin
	    if (M_AXI_ARESETN == 0 || ht_init_wr)
	      begin
	        axi_bready <= 1'b0;
	      end
	    // accept/acknowledge bresp with axi_bready by the master
	    // when M_AXI_BVALID is asserted by slave
	    else if (M_AXI_BVALID && ~axi_bready)
	      begin
	        axi_bready <= 1'b1;
	      end
	    // deassert after one clock cycle
	    else if (axi_bready)
	      begin
	        axi_bready <= 1'b0;
	      end
	    // retain the previous value
	    else
	      axi_bready <= axi_bready;
	  end

	//Flag write errors
	assign write_resp_error = (axi_bready & M_AXI_BVALID & M_AXI_BRESP[1]);


	//----------------------------
	//Read Address Channel
	//----------------------------

	//start_single_read triggers a new read transaction. read_index is a counter to
	//keep track with number of read transaction issued/initiated

      /*
	  always @(posedge M_AXI_ACLK)
	  begin
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)
	      begin
	        read_index <= 0;
	      end
	    // Signals a new read address is
	    // available by user logic
	    else if (start_single_read)
	      begin
	        read_index <= read_index + 1;
	      end
	  end
	  */

	  // A new axi_arvalid is asserted when there is a valid read address
	  // available by the master. start_single_read triggers a new read
	  // transaction
	  always @(posedge M_AXI_ACLK)
	  begin
	    if (M_AXI_ARESETN == 0 || ht_init_rd || ht_init_wr)
	      begin
	        axi_arvalid <= 1'b0;
	      end
	    //Signal a new read address command is available by user logic
	    else if (start_single_read)
	      begin
	        axi_arvalid <= 1'b1;
	      end
	    //RAddress accepted by interconnect/slave (issue of M_AXI_ARREADY by slave)
	    else if (M_AXI_ARREADY && axi_arvalid)
	      begin
	        axi_arvalid <= 1'b0;
	      end
	    // retain the previous value
	  end


	//--------------------------------
	//Read Data (and Response) Channel
	//--------------------------------

	//The Read Data channel returns the results of the read request
	//The master will accept the read data by asserting axi_rready
	//when there is a valid read data available.
	//While not necessary per spec, it is advisable to reset READY signals in
	//case of differing reset latencies between master/slave.

	  always @(posedge M_AXI_ACLK)
	  begin
	    if (M_AXI_ARESETN == 0 || ht_init_rd || ht_init_wr)
	      begin
	        axi_rready <= 1'b0;
	      end
	    // accept/acknowledge rdata/rresp with axi_rready by the master
	    // when M_AXI_RVALID is asserted by slave
	    else if (M_AXI_RVALID && ~axi_rready)
	      begin
	        axi_rready <= 1'b1;
	      end
	    // deassert after one clock cycle
	    else if (axi_rready)
	      begin
	        axi_rready <= 1'b0;
	      end
	    
	    // retain the previous value
	  end

	//Flag write errors
	assign read_resp_error = (axi_rready & M_AXI_RVALID & M_AXI_RRESP[1]);


	//--------------------------------
	//User Logic
	//--------------------------------

	localparam [1:0] READ_OP   = 2'b00,
	                 INSERT_OP = 2'b01,
	                 UPDATE_OP = 2'b10,
	                 DELETE_OP = 2'b11;

	reg [HASH_TABLE_DATA_WIDTH+HASH_TABLE_KEY_WIDTH-1:0] ht_wr_data;
	reg [HASH_TABLE_ADDR_WIDTH+3:0] ht_wr_addr;
	reg [HASH_TABLE_OP_WIDTH-1:0] ht_wr_op;
	reg [HASH_TABLE_ADDR_WIDTH+3:0] ht_rd_addr;
	reg [HASH_TABLE_KEY_WIDTH-1:0] ht_rd_key;
	
	reg correct_key_rd;
	reg correct_key_wr;
	reg empty_key_wr;

	localparam integer MEMORY_ROW_SIZE = 9;

	//Address/Data Stimulus

	//Address/data pairs for this example. The read and write values should
	//match.
	//Modify these as desired for different address patterns.

	  //Write Addresses
	  always @(posedge M_AXI_ACLK)
	      begin
	        if (M_AXI_ARESETN == 0)
	          begin
	            axi_awaddr <= 0;
	          end
	          // Signals a new write address/ write data is
	          // available by user logic
	        else  // if (M_AXI_AWREADY && axi_awvalid)
	          begin
	            axi_awaddr <= (ht_wr_addr + write_index + (write_addr_offset << 4)) << 2;
	          end
	      end

	  // Write data generation
	  always @(posedge M_AXI_ACLK)
	      begin
	        if (M_AXI_ARESETN == 0)
	          begin
	            axi_wdata <= 0;
	          end
	        // Signals a new write address/ write data is
	        // available by user logic
	        else  // if (M_AXI_WREADY && axi_wvalid)
	          begin
	            axi_wdata <= (ht_wr_op == DELETE_OP) ? 0 : ht_wr_data[({5'b0, write_index} << 5)+:C_M_AXI_DATA_WIDTH];
	          end
	      end

	  //Read Addresses
	  always @(posedge M_AXI_ACLK)
	      begin
	        if (M_AXI_ARESETN == 0)
	          begin
	            axi_araddr <= 0;
	          end
	          // Signals a new write address/ write data is
	          // available by user logic
	        else  // if (M_AXI_ARREADY && axi_arvalid)
	          begin
	            axi_araddr <= (ht_rd_addr + read_index + (read_addr_offset << 4)) << 2;
	          end
	      end


/*
	  always @(posedge M_AXI_ACLK)
	      begin
	        if (M_AXI_ARESETN == 0  || init_txn_pulse == 1'b1)
	          begin
	            expected_rdata <= C_M_START_DATA_VALUE;
	          end
	          // Signals a new write address/ write data is
	          // available by user logic
	        else if (M_AXI_RVALID && axi_rready)
	          begin
	            expected_rdata <= C_M_START_DATA_VALUE + read_index;
	          end
	      end
*/

	  //implement master command interface state machine (write)
	  always @(posedge M_AXI_ACLK) begin
	    if (M_AXI_ARESETN == 1'b0)
	      begin
	      // reset condition
	      // All the signals are assigned default values under reset condition
	        mst_exec_state_wr <= IDLE;
	        start_single_read <= 1'b0;
	        start_single_write <= 1'b0;
	        read_issued <= 1'b0;
	        write_issued <= 1'b0;
	        write_index <= 4'b0;
	        read_index <= 4'b0;
	        read_addr_offset <= 0;
	        write_addr_offset <= 0;
	        //ERROR <= 1'b0;
	      end
	    else
	      begin
	       // state transition
	        case (mst_exec_state_wr)
	          IDLE: begin
	          // This state is responsible to initiate
	          // AXI transaction when init_txn_pulse is asserted
	            if (ht_init_wr == 1'b1) begin
	                mst_exec_state_wr <= FIND;
	                start_single_read <= 1'b0;
	                start_single_write <= 1'b0;
	                read_issued <= 1'b0;
	                write_issued <= 1'b0;
	                write_index <= 4'b0;
	                read_index <= 4'b0;
	                read_addr_offset <= 0;
                    write_addr_offset <= 0;
	                //ERROR <= 1'b0;
                end else begin
	                mst_exec_state_wr <= IDLE;
	            end
	          end
	          FIND: begin
	             if (axi_rready && ((correct_key_wr && ((ht_wr_op == UPDATE_OP) || (ht_wr_op == DELETE_OP)) && (read_index == MEMORY_ROW_SIZE - 2)) ||
	                   (empty_key_wr && (ht_wr_op == INSERT_OP) && (read_index == MEMORY_ROW_SIZE - 2)))) begin
	                 mst_exec_state_wr <= WRITE;
	                 //read_index <= 4'b0;
	             end else if ((!correct_key_wr && ((ht_wr_op == UPDATE_OP) || (ht_wr_op == DELETE_OP))) || 
	                   (!empty_key_wr && (ht_wr_op == INSERT_OP))) begin
	                 mst_exec_state_wr <= FIND;
	                 read_index <= 4'b0;
	                 read_addr_offset <= read_addr_offset + 1'b1;
	                 write_addr_offset <= write_addr_offset + 1'b1;
	             end else begin
	                 mst_exec_state_wr <= FIND;

	                 if (~axi_arvalid && ~M_AXI_RVALID && ~start_single_read && ~read_issued)
	                   begin
	                     start_single_read <= 1'b1;
	                     read_issued <= 1'b1;
	                   end
	                 else if (axi_rready)
	                   begin
	                     read_issued <= 1'b0;
	                     read_index <= read_index + 1'b1;
	                   end
	                 else
	                   begin
	                     start_single_read <= 1'b0; //Negate to generate a pulse
	                   end
	             end
	          end
	          WRITE: begin
	            // This state is responsible to issue start_single_write pulse to
	            // initiate a write transaction. Write transactions will be
	            // issued until last_write signal is asserted.
	            // write controller
	            if (writes_done) begin
	                mst_exec_state_wr <= IDLE;
	            end else begin
	                mst_exec_state_wr <= WRITE;

	                  if (~axi_awvalid && ~axi_wvalid && ~M_AXI_BVALID && ~last_write && ~start_single_write && ~write_issued)
	                    begin
	                      start_single_write <= 1'b1;
	                      write_issued <= 1'b1;
	                    end
	                  else if (axi_bready)
	                    begin
	                      write_issued <= 1'b0;
	                      write_index <= write_index + 1'b1;
	                    end
	                  else
	                    begin
	                      start_single_write <= 1'b0; //Negate to generate a pulse
	                    end
	            end
              end
	          default:
	               mst_exec_state_wr <= IDLE;
	        endcase
	    end
	  end //MASTER_EXECUTION_PROC

	  //implement master command interface state machine (read)
	  always @(posedge M_AXI_ACLK) begin
	    if (M_AXI_ARESETN == 1'b0)
	      begin
	      // reset condition
	      // All the signals are assigned default values under reset condition
	        mst_exec_state_rd <= IDLE;
	        start_single_read <= 1'b0;
	        read_issued <= 1'b0;
	        read_index <= 4'b0;
	        read_addr_offset <= 0;
	        //ERROR <= 1'b0;
	      end
	    else
	      begin
	       // state transition
	        case (mst_exec_state_rd)
	          IDLE: begin
	          // This state is responsible to initiate
	          // AXI transaction when init_txn_pulse is asserted
	            if (ht_init_rd == 1'b1) begin
	                mst_exec_state_rd <= FIND;
	                start_single_read <= 1'b0;
	                read_issued <= 1'b0;
	                read_index <= 4'b0;
	                read_addr_offset <= 0;
	                //ERROR <= 1'b0;
                end else begin
	                mst_exec_state_rd <= IDLE;
	            end
	          end
	          FIND: begin
	             if (axi_rready && correct_key_rd && (read_index == MEMORY_ROW_SIZE - 2)) begin
	                 mst_exec_state_rd <= READ;
	                 read_issued <= 1'b0;
	                 read_index <= 4'b0;
	             end else if (!correct_key_rd) begin
	                 mst_exec_state_rd <= FIND;
	                 read_index <= 4'b0;
	                 read_addr_offset <= read_addr_offset + 1'b1;
	             end else begin
	                 mst_exec_state_rd <= FIND;

	                 if (~axi_arvalid && ~M_AXI_RVALID && ~start_single_read && ~read_issued)
	                   begin
	                     start_single_read <= 1'b1;
	                     read_issued <= 1'b1;
	                   end
	                 else if (axi_rready)
	                   begin
	                     read_issued <= 1'b0;
	                     read_index <= read_index + 1'b1;
	                   end
	                 else
	                   begin
	                     start_single_read <= 1'b0; //Negate to generate a pulse
	                   end
	             end
              end
	          READ: begin
	            // This state is responsible to issue start_single_read pulse to
	            // initiate a read transaction. Read transactions will be
	            // issued until last_read signal is asserted.
	             // read controller
	             if (reads_done) begin
	                 mst_exec_state_rd <= IDLE;
	             end else begin
	                 mst_exec_state_rd <= READ;

	                 if (~axi_arvalid && ~M_AXI_RVALID && ~last_read && ~start_single_read && ~read_issued)
	                   begin
	                     start_single_read <= 1'b1;
	                     read_issued <= 1'b1;
	                   end
	                 else if (axi_rready)
	                   begin
	                     read_issued <= 1'b0;
	                     read_index <= read_index + 1'b1;
	                   end
	                 else
	                   begin
	                     start_single_read <= 1'b0; //Negate to generate a pulse
	                   end
	             end
               end
	           default:
	               mst_exec_state_rd <= IDLE;
	        endcase
	    end
	  end //MASTER_EXECUTION_PROC

	  //Terminal write count

	  always @(posedge M_AXI_ACLK)
	  begin
	    if (M_AXI_ARESETN == 0 || ht_init_wr)
	      last_write <= 1'b0;

	    //The last write should be associated with a write address ready response
	    else if (M_AXI_AWREADY && (write_index == MEMORY_ROW_SIZE))
	      last_write <= 1'b1;
	    else
	      last_write <= last_write;
	  end

	  //Check for last write completion.

	  //This logic is to qualify the last write count with the final write
	  //response. This demonstrates how to confirm that a write has been
	  //committed.

	  always @(posedge M_AXI_ACLK)
	  begin
	    if (M_AXI_ARESETN == 0 || ht_init_wr)
	      writes_done <= 1'b0;

	    //The writes_done should be associated with a bready response
	    else if (last_write && M_AXI_BVALID && axi_bready)
	      writes_done <= 1'b1;
	    else
	      writes_done <= writes_done;
	  end

	//------------------
	//Read example
	//------------------

	//Terminal Read Count

	  always @(posedge M_AXI_ACLK)
	  begin
	    if (M_AXI_ARESETN == 0 || ht_init_rd)
	      last_read <= 1'b0;

	    //The last read should be associated with a read address ready response
	    else if (M_AXI_ARREADY && (read_index == MEMORY_ROW_SIZE))
	      last_read <= 1'b1;
	    else
	      last_read <= last_read;
	  end

	/*
	 Check for last read completion.

	 This logic is to qualify the last read count with the final read
	 response/data.
	 */
	  always @(posedge M_AXI_ACLK)
	  begin
	    if (M_AXI_ARESETN == 0 || ht_init_rd)
	      reads_done <= 1'b0;

	    //The reads_done should be associated with a read ready response
	    else if (last_read && M_AXI_RVALID && axi_rready)
	      reads_done <= 1'b1;
	    else
	      reads_done <= reads_done;
	    end

	//-----------------------------
	//Example design error register
	//-----------------------------

	//Data Comparison
	  always @(posedge M_AXI_ACLK)
	  begin
	    if (M_AXI_ARESETN == 0)
	       correct_key_rd <= 1'b1;
	    else if (correct_key_rd == 1'b0)
	       correct_key_rd <= 1'b1;
	    //The read data when available (on axi_rready) is compared with the expected data
	    else if ((M_AXI_RVALID && axi_rready) && (M_AXI_RDATA != ht_rd_key[({5'b0, read_index} << 5)+:C_M_AXI_DATA_WIDTH]))
	       correct_key_rd <= 1'b0;

	    if (M_AXI_ARESETN == 0)
	       correct_key_wr <= 1'b1;
	    else if (correct_key_wr == 1'b0)
	       correct_key_wr <= 1'b1;
	    //The read data when available (on axi_rready) is compared with the expected data
	    else if ((M_AXI_RVALID && axi_rready) && (M_AXI_RDATA != ht_wr_data[({5'b0, read_index} << 5)+:C_M_AXI_DATA_WIDTH]))
	       correct_key_wr <= 1'b0;

	    if (M_AXI_ARESETN == 0)
	       empty_key_wr <= 1'b1;
	    else if (empty_key_wr == 1'b0)
	       empty_key_wr <= 1'b1;
	    else if ((M_AXI_RVALID && axi_rready) && (M_AXI_RDATA != 0))
	       empty_key_wr <= 1'b0;
	  end

    /*
	// Register and hold any data mismatches, or read/write interface errors
	  always @(posedge M_AXI_ACLK)
	  begin
	    if (M_AXI_ARESETN == 0  || init_txn_pulse == 1'b1)
	      error_reg <= 1'b0;

	    //Capture any error types
	    else if (read_mismatch || write_resp_error || read_resp_error)
	      error_reg <= 1'b1;
	    else
	      error_reg <= error_reg;
	  end
	*/

	// Add user logic here

    localparam [2:0] EMPTY   = 3'b000,  // slot is empty
                     ISSUE   = 3'b001,  // slot is filled, waiting to be issued
                     EXEC_RD = 3'b010,  // slot is filled and issued to memory, waiting for txn to finish
                     EXEC_WR = 3'b011,  // slot is filled and issued to memory, waiting for txn to finish
                     RET_RD  = 3'b100,  // slot is filled and finished executing read, waiting to be output
                     RET_WR  = 3'b101;  // slot is filled and finished executing write, waiting to be output
	
	localparam [0:0] DATA_OUT = 1'b0,
	                 ACK_OUT  = 1'b1;

	reg [HASH_TABLE_DATA_WIDTH-1:0] data_buffer [0:BUFFER_SIZE-1];
	reg [HASH_TABLE_ADDR_WIDTH-1:0] addr_buffer [0:BUFFER_SIZE-1];
	reg [HASH_TABLE_KEY_WIDTH-1:0]  key_buffer  [0:BUFFER_SIZE-1];
	reg [HASH_TABLE_OP_WIDTH-1:0]   op_buffer   [0:BUFFER_SIZE-1];
	reg [2:0]                       buffer_status [0:BUFFER_SIZE-1];
	
	reg [clogb2(BUFFER_SIZE)-1:0] buffer_free;
	
	reg [clogb2(BUFFER_SIZE)-1:0] curr_i_rd;
	reg [clogb2(BUFFER_SIZE)-1:0] curr_i_wr;
	
	reg [NUM_LOCKS-1:0] locks;
	
	integer i;
	
    //reg ht_init_wr;
	//reg ht_init_rd;
	//reg [HASH_TABLE_DATA_WIDTH-1:0] ht_wr_data;
	//reg [HASH_TABLE_ADDR_WIDTH-1:0] ht_wr_addr;
	//reg [HASH_TABLE_ADDR_WIDTH-1:0] ht_rd_addr;

	// fill input buffer
	always @(posedge M_AXI_ACLK) begin
	   if (M_AXI_ARESETN == 0) begin
	       for (i = 0; i < BUFFER_SIZE; i = i + 1) begin
               //data_buffer[i] <= 0;
               //addr_buffer[i] <= 0;
               //key_buffer[i] <= 0;
               //op_buffer[i] <= 0;
	           buffer_status[i] <= EMPTY;
	       end
           buffer_free <= 0;
           for (i = 0; i < NUM_LOCKS; i = i + 1) begin
               locks[i] <= 0;
           end
	   end else if (ht_input_valid == 1) begin
	       data_buffer[buffer_free] <= ht_input_data;
	       addr_buffer[buffer_free] <= ht_input_addr;
	       key_buffer[buffer_free]  <= ht_input_key;
	       op_buffer[buffer_free]   <= ht_input_op;
	       buffer_status[buffer_free] <= ISSUE;

	       for (i = 0; i < BUFFER_SIZE; i = i + 1) begin
	           if (buffer_status[i] == EMPTY) begin
	               buffer_free <= i;
	           end
	       end
	   end
	end
	
	// issue operations
	always @(posedge M_AXI_ACLK) begin
	   ht_init_wr <= 0;
       // FIXME: structural hazard
	   //if (writes_done == 1) begin  // can issue write
	       for (i = 0; i < BUFFER_SIZE; i = i + 1) begin
	           if ((buffer_status[i] == ISSUE) && (op_buffer[i] != READ_OP) && (locks[addr_buffer[i][clogb2(NUM_LOCKS)-1:0]] == 0)) begin
	               ht_wr_data <= {data_buffer[i], key_buffer[i]};
	               ht_wr_addr <= addr_buffer[i] << 4;
	               ht_rd_addr <= addr_buffer[i] << 4;
	               ht_wr_op <= op_buffer[i];
	               locks[addr_buffer[i] >> clogb2(NUM_LOCKS)] <= 1;
	               curr_i_wr <= i;
	               buffer_status[i] <= EXEC_WR;
	               ht_init_wr <= 1;
	           end
	       end
	   //end

	   ht_init_rd <= 0;
       // FIXME: structural hazard
	   //if (reads_done == 1) begin  // can issue read
	       for (i = 0; i < BUFFER_SIZE; i = i + 1) begin
	           if ((buffer_status[i] == ISSUE) && (op_buffer[i] == READ_OP)) begin  // just reading, so no need for locks
	               // ht_rd_data <= data_buffer[i];
	               ht_rd_addr <= addr_buffer[i] << 4;
	               ht_rd_key <= key_buffer[i];
	               curr_i_rd <= i;
	               buffer_status[i] <= EXEC_RD;
	               ht_init_rd <= 1;
	           end
	       end
	   //end
	end
	
	// read from memory
	always @(posedge M_AXI_ACLK) begin
	    if (M_AXI_RVALID && axi_rready) begin
	       for (i = 0; i < BUFFER_SIZE; i = i + 1) begin
	           if (buffer_status[i] == EXEC_RD) begin
	               if (read_index >= clogb2(HASH_TABLE_KEY_WIDTH) - 1)
	                   data_buffer[i][({5'b0, read_index - clogb2(HASH_TABLE_KEY_WIDTH) + 1} << 5)+:C_M_AXI_DATA_WIDTH] <= M_AXI_RDATA;
	               if (read_index == MEMORY_ROW_SIZE)
	                   buffer_status[i] <= RET_RD;
	           end
	       end
	    end

        if (M_AXI_BVALID && axi_bready) begin
	       for (i = 0; i < BUFFER_SIZE; i = i + 1) begin
	           if (buffer_status[i] == EXEC_WR) begin
	               if (write_index == MEMORY_ROW_SIZE)
	                   buffer_status[i] <= RET_WR;
	           end
	       end
	    end
	end
	
	// output buffer
    always @(posedge M_AXI_ACLK) begin
        ht_output_valid <= 0;
        if (ht_output_ready) begin
            for (i = 0; i < BUFFER_SIZE; i = i + 1) begin
                if (buffer_status[i] == RET_RD) begin
                    ht_output_data <= data_buffer[i];
                    ht_output_addr <= addr_buffer[i];
                    ht_output_key  <= key_buffer[i];
                    ht_output_type <= DATA_OUT;
                    ht_output_valid <= 1;
                    buffer_status[i] <= EMPTY;
	            end else if (buffer_status[i] == RET_WR) begin
                    ht_output_data <= (op_buffer[i] == DELETE_OP) ? 0 : data_buffer[i];
                    ht_output_addr <= addr_buffer[i];
                    ht_output_key  <= key_buffer[i];
	                locks[addr_buffer[i] >> clogb2(NUM_LOCKS)] <= 0;
                    ht_output_type <= ACK_OUT;
                    ht_output_valid <= 1;
                    buffer_status[i] <= EMPTY;
	            end
            end
	    end
	end

	// User logic ends

endmodule
