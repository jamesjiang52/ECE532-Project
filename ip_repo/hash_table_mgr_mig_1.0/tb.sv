`timescale 1ps / 1ps

import axi_vip_pkg::*;
import design_1_axi_vip_1_0_pkg::*;

// test module to drive the AXI VIP
module axi_lite_stimulus(input aclk);

  /*************************************************************************************************
  * <component_name>_mst_t for master agent
  * <component_name> can be easily found in vivado bd design: click on the instance, 
  * Then click CONFIG under Properties window and Component_Name will be shown
  * More details please refer PG267 section about "Useful Coding Guidelines and Examples"
  * for more details.
  *************************************************************************************************/
  design_1_axi_vip_1_0_mst_t                               agent;

  /*************************************************************************************************
  * Declare variables which will be used in API and parital randomization for transaction generation
  * and data read back from driver.
  *************************************************************************************************/
  axi_transaction                                          wr_trans;            // Write transaction
  axi_transaction                                          rd_trans;            // Read transaction
  xil_axi_uint                                             mtestWID;            // Write ID  
  xil_axi_ulong                                            mtestWADDR;          // Write ADDR  
  xil_axi_len_t                                            mtestWBurstLength;   // Write Burst Length   
  xil_axi_size_t                                           mtestWDataSize;      // Write SIZE  
  xil_axi_burst_t                                          mtestWBurstType;     // Write Burst Type  
  xil_axi_lock_t                                           mtestWLock;          // Write Lock Type  
  xil_axi_cache_t                                          mtestWCache;          // Write Cache Type  
  xil_axi_prot_t                                           mtestWProt;          // Write Prot Type  
  xil_axi_region_t                                         mtestWRegion;        // Write Region Type  
  xil_axi_qos_t                                            mtestWQos;           // Write Qos Type  
  xil_axi_uint                                             mtestRID;            // Read ID  
  xil_axi_ulong                                            mtestRADDR;          // Read ADDR  
  xil_axi_len_t                                            mtestRBurstLength;   // Read Burst Length   
  xil_axi_size_t                                           mtestRDataSize;      // Read SIZE  
  xil_axi_burst_t                                          mtestRBurstType;     // Read Burst Type  
  xil_axi_lock_t                                           mtestRLock;          // Read Lock Type  
  xil_axi_cache_t                                          mtestRCache;         // Read Cache Type  
  xil_axi_prot_t                                           mtestRProt;          // Read Prot Type  
  xil_axi_region_t                                         mtestRRegion;        // Read Region Type  
  xil_axi_qos_t                                            mtestRQos;           // Read Qos Type  

  xil_axi_data_beat                                        Rdatabeat[];       // Read data beats

  integer time_1;
  localparam wait_time_mem = 3000;
  localparam wait_time_wr = 500;

  //Constants
  localparam HASH_BASE_ADDRESS = 32'h40000000;
  localparam DDR2_BASE_ADDRESS = 32'h80000000;
  
  initial begin
    /***********************************************************************************************
    * Before agent is newed, user has to run simulation with an empty testbench to find the hierarchy
    * path of the AXI VIP's instance.Message like
    * "Xilinx AXI VIP Found at Path: my_ip_exdes_tb.DUT.ex_design.axi_vip_mst.inst" will be printed 
    * out. Pass this path to the new function. 
    ***********************************************************************************************/
    
    $monitor("Output valid: %h", DUT.design_1_i.hash_table_mgr_0.inst.hash_table_mgr_v1_0_S00_AXI_inst.slv_reg16);
    $monitor("Output addr: %h", DUT.design_1_i.hash_table_mgr_0.inst.hash_table_mgr_v1_0_S00_AXI_inst.slv_reg17);
    $monitor("Output type: %h", DUT.design_1_i.hash_table_mgr_0.inst.hash_table_mgr_v1_0_S00_AXI_inst.slv_reg18);
    $monitor("Output data: %h%h", DUT.design_1_i.hash_table_mgr_0.inst.hash_table_mgr_v1_0_S00_AXI_inst.slv_reg20,
                                    DUT.design_1_i.hash_table_mgr_0.inst.hash_table_mgr_v1_0_S00_AXI_inst.slv_reg19);
    $monitor("Output key: %h%h%h%h%h%h%h%h", DUT.design_1_i.hash_table_mgr_0.inst.hash_table_mgr_v1_0_S00_AXI_inst.slv_reg28,
                                               DUT.design_1_i.hash_table_mgr_0.inst.hash_table_mgr_v1_0_S00_AXI_inst.slv_reg27,
                                               DUT.design_1_i.hash_table_mgr_0.inst.hash_table_mgr_v1_0_S00_AXI_inst.slv_reg26,
                                               DUT.design_1_i.hash_table_mgr_0.inst.hash_table_mgr_v1_0_S00_AXI_inst.slv_reg25,
                                               DUT.design_1_i.hash_table_mgr_0.inst.hash_table_mgr_v1_0_S00_AXI_inst.slv_reg24,
                                               DUT.design_1_i.hash_table_mgr_0.inst.hash_table_mgr_v1_0_S00_AXI_inst.slv_reg23,
                                               DUT.design_1_i.hash_table_mgr_0.inst.hash_table_mgr_v1_0_S00_AXI_inst.slv_reg22,
                                               DUT.design_1_i.hash_table_mgr_0.inst.hash_table_mgr_v1_0_S00_AXI_inst.slv_reg21);
    
    agent = new("master vip agent",DUT.design_1_i.axi_vip_1.inst.IF);
    agent.start_master();               // agent start to run

    //Put test vectors here
    /*
    $write("\nStarting basic insert test...\n");
    writeRegister(HASH_BASE_ADDRESS + (5'h1 << 2), 32'h0010);      // input addr
    writeRegister(HASH_BASE_ADDRESS + (5'h2 << 2), 32'b01);        // input op
    writeRegister(HASH_BASE_ADDRESS + (5'h3 << 2), 32'h00000000);  // input data
    writeRegister(HASH_BASE_ADDRESS + (5'h4 << 2), 32'h11111111);  // input data
    writeRegister(HASH_BASE_ADDRESS + (5'h5 << 2), 32'h22222222);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h6 << 2), 32'h33333333);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h7 << 2), 32'h44444444);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h8 << 2), 32'h55555555);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h9 << 2), 32'h66666666);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'ha << 2), 32'h77777777);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'hb << 2), 32'h88888888);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'hc << 2), 32'h99999999);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h0 << 2), 32'b1);         // input valid
    agent.wait_drivers_idle();

    $write("Done basic insert, waiting for valid output...\n");
    time_1 = 0;
    while (time_1 < wait_time_wr) begin
        @(posedge aclk);
        time_1 = time_1 + 1;
    end
    $write("Done waiting, resetting output valid bit\n");
    writeRegister(HASH_BASE_ADDRESS + (5'h10 << 2), 32'b0);

    $write("\nStarting basic read test...\n");
    writeRegister(HASH_BASE_ADDRESS + (5'h1 << 2), 32'h0010);      // input addr
    writeRegister(HASH_BASE_ADDRESS + (5'h2 << 2), 32'b00);        // input op
    writeRegister(HASH_BASE_ADDRESS + (5'h3 << 2), 32'hffffffff);  // input data
    writeRegister(HASH_BASE_ADDRESS + (5'h4 << 2), 32'hffffffff);  // input data
    writeRegister(HASH_BASE_ADDRESS + (5'h5 << 2), 32'h22222222);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h6 << 2), 32'h33333333);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h7 << 2), 32'h44444444);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h8 << 2), 32'h55555555);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h9 << 2), 32'h66666666);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'ha << 2), 32'h77777777);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'hb << 2), 32'h88888888);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'hc << 2), 32'h99999999);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h0 << 2), 32'b1);         // input valid
    agent.wait_drivers_idle();

    $write("Done basic read, waiting for valid output...\n");
    time_1 = 0;
    while (time_1 < wait_time_wr) begin
        @(posedge aclk);
        time_1 = time_1 + 1;
    end
    $write("Done waiting, resetting output valid bit\n");
    writeRegister(HASH_BASE_ADDRESS + (5'h10 << 2), 32'b0);

    $write("\nStarting insert with collision test...\n");
    writeRegister(HASH_BASE_ADDRESS + (5'h1 << 2), 32'h0010);      // input addr
    writeRegister(HASH_BASE_ADDRESS + (5'h2 << 2), 32'b01);        // input op
    writeRegister(HASH_BASE_ADDRESS + (5'h3 << 2), 32'h77777777);  // input data
    writeRegister(HASH_BASE_ADDRESS + (5'h4 << 2), 32'h88888888);  // input data
    writeRegister(HASH_BASE_ADDRESS + (5'h5 << 2), 32'h00000000);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h6 << 2), 32'h33333333);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h7 << 2), 32'h44444444);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h8 << 2), 32'h55555555);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h9 << 2), 32'h66666666);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'ha << 2), 32'h77777777);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'hb << 2), 32'h88888888);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'hc << 2), 32'h99999999);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h0 << 2), 32'b1);         // input valid
    agent.wait_drivers_idle();

    $write("Done insert with collision, waiting for valid output...\n");
    time_1 = 0;
    while (time_1 < wait_time_wr) begin
        @(posedge aclk);
        time_1 = time_1 + 1;
    end
    $write("Done waiting, resetting output valid bit\n");
    writeRegister(HASH_BASE_ADDRESS + (5'h10 << 2), 32'b0);

    $write("\nStarting read with collision test...\n");
    writeRegister(HASH_BASE_ADDRESS + (5'h1 << 2), 32'h0010);      // input addr
    writeRegister(HASH_BASE_ADDRESS + (5'h2 << 2), 32'b00);        // input op
    writeRegister(HASH_BASE_ADDRESS + (5'h3 << 2), 32'hffffffff);  // input data
    writeRegister(HASH_BASE_ADDRESS + (5'h4 << 2), 32'hffffffff);  // input data
    writeRegister(HASH_BASE_ADDRESS + (5'h5 << 2), 32'h00000000);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h6 << 2), 32'h33333333);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h7 << 2), 32'h44444444);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h8 << 2), 32'h55555555);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h9 << 2), 32'h66666666);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'ha << 2), 32'h77777777);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'hb << 2), 32'h88888888);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'hc << 2), 32'h99999999);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h0 << 2), 32'b1);         // input valid
    agent.wait_drivers_idle();

    $write("Done read with collision, waiting for valid output...\n");
    time_1 = 0;
    while (time_1 < wait_time_wr) begin
        @(posedge aclk);
        time_1 = time_1 + 1;
    end
    $write("Done waiting, resetting output valid bit\n");
    writeRegister(HASH_BASE_ADDRESS + (5'h10 << 2), 32'b0);

    $write("\nStarting basic update test...\n");
    writeRegister(HASH_BASE_ADDRESS + (5'h1 << 2), 32'h0010);      // input addr
    writeRegister(HASH_BASE_ADDRESS + (5'h2 << 2), 32'b10);        // input op
    writeRegister(HASH_BASE_ADDRESS + (5'h3 << 2), 32'haaaaaaaa);  // input data
    writeRegister(HASH_BASE_ADDRESS + (5'h4 << 2), 32'hbbbbbbbb);  // input data
    writeRegister(HASH_BASE_ADDRESS + (5'h5 << 2), 32'h22222222);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h6 << 2), 32'h33333333);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h7 << 2), 32'h44444444);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h8 << 2), 32'h55555555);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h9 << 2), 32'h66666666);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'ha << 2), 32'h77777777);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'hb << 2), 32'h88888888);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'hc << 2), 32'h99999999);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h0 << 2), 32'b1);         // input valid
    agent.wait_drivers_idle();

    $write("Done basic update, waiting for valid output...\n");
    time_1 = 0;
    while (time_1 < wait_time_wr) begin
        @(posedge aclk);
        time_1 = time_1 + 1;
    end
    $write("Done waiting, resetting output valid bit\n");
    writeRegister(HASH_BASE_ADDRESS + (5'h10 << 2), 32'b0);

    $write("\nReading updated value...\n");
    writeRegister(HASH_BASE_ADDRESS + (5'h1 << 2), 32'h0010);      // input addr
    writeRegister(HASH_BASE_ADDRESS + (5'h2 << 2), 32'b00);        // input op
    writeRegister(HASH_BASE_ADDRESS + (5'h3 << 2), 32'hffffffff);  // input data
    writeRegister(HASH_BASE_ADDRESS + (5'h4 << 2), 32'hffffffff);  // input data
    writeRegister(HASH_BASE_ADDRESS + (5'h5 << 2), 32'h22222222);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h6 << 2), 32'h33333333);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h7 << 2), 32'h44444444);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h8 << 2), 32'h55555555);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h9 << 2), 32'h66666666);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'ha << 2), 32'h77777777);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'hb << 2), 32'h88888888);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'hc << 2), 32'h99999999);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h0 << 2), 32'b1);         // input valid
    agent.wait_drivers_idle();

    $write("Done reading, waiting for valid output...\n");
    time_1 = 0;
    while (time_1 < wait_time_wr) begin
        @(posedge aclk);
        time_1 = time_1 + 1;
    end
    $write("Done waiting, resetting output valid bit\n");
    writeRegister(HASH_BASE_ADDRESS + (5'h10 << 2), 32'b0);
 
     $write("\nStarting update with collision test...\n");
    writeRegister(HASH_BASE_ADDRESS + (5'h1 << 2), 32'h0010);      // input addr
    writeRegister(HASH_BASE_ADDRESS + (5'h2 << 2), 32'b10);        // input op
    writeRegister(HASH_BASE_ADDRESS + (5'h3 << 2), 32'heeeeeeee);  // input data
    writeRegister(HASH_BASE_ADDRESS + (5'h4 << 2), 32'hffffffff);  // input data
    writeRegister(HASH_BASE_ADDRESS + (5'h5 << 2), 32'h00000000);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h6 << 2), 32'h33333333);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h7 << 2), 32'h44444444);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h8 << 2), 32'h55555555);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h9 << 2), 32'h66666666);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'ha << 2), 32'h77777777);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'hb << 2), 32'h88888888);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'hc << 2), 32'h99999999);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h0 << 2), 32'b1);         // input valid
    agent.wait_drivers_idle();

    $write("Done update with collision, waiting for valid output...\n");
    time_1 = 0;
    while (time_1 < wait_time_wr) begin
        @(posedge aclk);
        time_1 = time_1 + 1;
    end
    $write("Done waiting, resetting output valid bit\n");
    writeRegister(HASH_BASE_ADDRESS + (5'h10 << 2), 32'b0);

    $write("\nReading updated value...\n");
    writeRegister(HASH_BASE_ADDRESS + (5'h1 << 2), 32'h0010);      // input addr
    writeRegister(HASH_BASE_ADDRESS + (5'h2 << 2), 32'b00);        // input op
    writeRegister(HASH_BASE_ADDRESS + (5'h3 << 2), 32'hffffffff);  // input data
    writeRegister(HASH_BASE_ADDRESS + (5'h4 << 2), 32'hffffffff);  // input data
    writeRegister(HASH_BASE_ADDRESS + (5'h5 << 2), 32'h00000000);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h6 << 2), 32'h33333333);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h7 << 2), 32'h44444444);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h8 << 2), 32'h55555555);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h9 << 2), 32'h66666666);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'ha << 2), 32'h77777777);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'hb << 2), 32'h88888888);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'hc << 2), 32'h99999999);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h0 << 2), 32'b1);         // input valid
    agent.wait_drivers_idle();

    $write("Done reading, waiting for valid output...\n");
    time_1 = 0;
    while (time_1 < wait_time_wr) begin
        @(posedge aclk);
        time_1 = time_1 + 1;
    end
    $write("Done waiting, resetting output valid bit\n");
    writeRegister(HASH_BASE_ADDRESS + (5'h10 << 2), 32'b0);
 
    $write("\nStarting basic delete test...\n");
    writeRegister(HASH_BASE_ADDRESS + (5'h1 << 2), 32'h0010);      // input addr
    writeRegister(HASH_BASE_ADDRESS + (5'h2 << 2), 32'b11);        // input op
    writeRegister(HASH_BASE_ADDRESS + (5'h3 << 2), 32'hffffffff);  // input data
    writeRegister(HASH_BASE_ADDRESS + (5'h4 << 2), 32'hffffffff);  // input data
    writeRegister(HASH_BASE_ADDRESS + (5'h5 << 2), 32'h22222222);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h6 << 2), 32'h33333333);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h7 << 2), 32'h44444444);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h8 << 2), 32'h55555555);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h9 << 2), 32'h66666666);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'ha << 2), 32'h77777777);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'hb << 2), 32'h88888888);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'hc << 2), 32'h99999999);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h0 << 2), 32'b1);         // input valid
    agent.wait_drivers_idle();

    $write("Done basic delete, waiting for valid output...\n");
    time_1 = 0;
    while (time_1 < wait_time_wr) begin
        @(posedge aclk);
        time_1 = time_1 + 1;
    end
    $write("Done waiting, resetting output valid bit\n");
    writeRegister(HASH_BASE_ADDRESS + (5'h10 << 2), 32'b0);

    $write("\nStarting delete with collision test...\n");
    writeRegister(HASH_BASE_ADDRESS + (5'h1 << 2), 32'h0010);      // input addr
    writeRegister(HASH_BASE_ADDRESS + (5'h2 << 2), 32'b11);        // input op
    writeRegister(HASH_BASE_ADDRESS + (5'h3 << 2), 32'hffffffff);  // input data
    writeRegister(HASH_BASE_ADDRESS + (5'h4 << 2), 32'hffffffff);  // input data
    writeRegister(HASH_BASE_ADDRESS + (5'h5 << 2), 32'h00000000);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h6 << 2), 32'h33333333);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h7 << 2), 32'h44444444);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h8 << 2), 32'h55555555);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h9 << 2), 32'h66666666);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'ha << 2), 32'h77777777);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'hb << 2), 32'h88888888);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'hc << 2), 32'h99999999);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h0 << 2), 32'b1);         // input valid
    agent.wait_drivers_idle();

    $write("Done delete with collision, waiting for valid output...\n");
    time_1 = 0;
    while (time_1 < wait_time_wr) begin
        @(posedge aclk);
        time_1 = time_1 + 1;
    end
    $write("Done waiting, resetting output valid bit\n");
    writeRegister(HASH_BASE_ADDRESS + (5'h10 << 2), 32'b0);
    */
 
    $write("\nStarting non-existent read test...\n");
    writeRegister(HASH_BASE_ADDRESS + (5'h1 << 2), 32'h0010);      // input addr
    writeRegister(HASH_BASE_ADDRESS + (5'h2 << 2), 32'b00);        // input op
    writeRegister(HASH_BASE_ADDRESS + (5'h3 << 2), 32'h00000000);  // input data
    writeRegister(HASH_BASE_ADDRESS + (5'h4 << 2), 32'h11111111);  // input data
    writeRegister(HASH_BASE_ADDRESS + (5'h5 << 2), 32'h22222222);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h6 << 2), 32'h33333333);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h7 << 2), 32'h44444444);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h8 << 2), 32'h55555555);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h9 << 2), 32'h66666666);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'ha << 2), 32'h77777777);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'hb << 2), 32'h88888888);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'hc << 2), 32'h99999999);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h0 << 2), 32'b1);         // input valid
    agent.wait_drivers_idle();

    $write("Done non-existent read, waiting for valid output...\n");
    time_1 = 0;
    while (time_1 < wait_time_wr) begin
        @(posedge aclk);
        time_1 = time_1 + 1;
    end
    $write("Done waiting, resetting output valid bit\n");
    writeRegister(HASH_BASE_ADDRESS + (5'h10 << 2), 32'b0);

    $write("\nStarting non-existent update test...\n");
    writeRegister(HASH_BASE_ADDRESS + (5'h1 << 2), 32'h0010);      // input addr
    writeRegister(HASH_BASE_ADDRESS + (5'h2 << 2), 32'b10);        // input op
    writeRegister(HASH_BASE_ADDRESS + (5'h3 << 2), 32'h00000000);  // input data
    writeRegister(HASH_BASE_ADDRESS + (5'h4 << 2), 32'h11111111);  // input data
    writeRegister(HASH_BASE_ADDRESS + (5'h5 << 2), 32'h22222222);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h6 << 2), 32'h33333333);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h7 << 2), 32'h44444444);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h8 << 2), 32'h55555555);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h9 << 2), 32'h66666666);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'ha << 2), 32'h77777777);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'hb << 2), 32'h88888888);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'hc << 2), 32'h99999999);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h0 << 2), 32'b1);         // input valid
    agent.wait_drivers_idle();

    $write("Done non-existent update, waiting for valid output...\n");
    time_1 = 0;
    while (time_1 < wait_time_wr) begin
        @(posedge aclk);
        time_1 = time_1 + 1;
    end
    $write("Done waiting, resetting output valid bit\n");
    writeRegister(HASH_BASE_ADDRESS + (5'h10 << 2), 32'b0);

    $write("\nStarting non-existent delete test...\n");
    writeRegister(HASH_BASE_ADDRESS + (5'h1 << 2), 32'h0010);      // input addr
    writeRegister(HASH_BASE_ADDRESS + (5'h2 << 2), 32'b11);        // input op
    writeRegister(HASH_BASE_ADDRESS + (5'h3 << 2), 32'h00000000);  // input data
    writeRegister(HASH_BASE_ADDRESS + (5'h4 << 2), 32'h11111111);  // input data
    writeRegister(HASH_BASE_ADDRESS + (5'h5 << 2), 32'h22222222);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h6 << 2), 32'h33333333);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h7 << 2), 32'h44444444);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h8 << 2), 32'h55555555);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h9 << 2), 32'h66666666);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'ha << 2), 32'h77777777);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'hb << 2), 32'h88888888);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'hc << 2), 32'h99999999);  // input key
    writeRegister(HASH_BASE_ADDRESS + (5'h0 << 2), 32'b1);         // input valid
    agent.wait_drivers_idle();

    $write("Done non-existent delete, waiting for valid output...\n");
    time_1 = 0;
    while (time_1 < wait_time_wr) begin
        @(posedge aclk);
        time_1 = time_1 + 1;
    end
    $write("Done waiting, resetting output valid bit\n");
    writeRegister(HASH_BASE_ADDRESS + (5'h10 << 2), 32'b0);

 end


task writeRegister( input xil_axi_ulong              addr =0,
                    input bit [31:0]              data =0
                );

    single_write_transaction_api("single write with api",
                                 .addr(addr),
                                 .size(xil_axi_size_t'(4)),
                                 .data(data)
                                 );
endtask : writeRegister

  /************************************************************************************************
  *  task single_write_transaction_api is to create a single write transaction, fill in transaction 
  *  by using APIs and send it to write driver.
  *   1. declare write transction
  *   2. Create the write transaction
  *   3. set addr, burst,ID,length,size by calling set_write_cmd(addr, burst,ID,length,size), 
  *   4. set prot.lock, cache,region and qos
  *   5. set beats
  *   6. set AWUSER if AWUSER_WIDH is bigger than 0
  *   7. set WUSER if WUSR_WIDTH is bigger than 0
  *************************************************************************************************/

  task automatic single_write_transaction_api ( 
                                input string                     name ="single_write",
                                input xil_axi_uint               id =0, 
                                input xil_axi_ulong              addr =0,
                                input xil_axi_len_t              len =0, 
                                input xil_axi_size_t             size =xil_axi_size_t'(xil_clog2((32)/8)),
                                input xil_axi_burst_t            burst =XIL_AXI_BURST_TYPE_INCR,
                                input xil_axi_lock_t             lock = XIL_AXI_ALOCK_NOLOCK,
                                input xil_axi_cache_t            cache =3,
                                input xil_axi_prot_t             prot =0,
                                input xil_axi_region_t           region =0,
                                input xil_axi_qos_t              qos =0,
                                input xil_axi_data_beat [255:0]  wuser =0, 
                                input xil_axi_data_beat          awuser =0,
                                input bit [32767:0]              data =0
                                                );
    axi_transaction                               wr_trans;
    wr_trans = agent.wr_driver.create_transaction(name);
    wr_trans.set_write_cmd(addr,burst,id,len,size);
    wr_trans.set_prot(prot);
    wr_trans.set_lock(lock);
    wr_trans.set_cache(cache);
    wr_trans.set_region(region);
    wr_trans.set_qos(qos);
    wr_trans.set_awuser(awuser);
    wr_trans.set_data_block(data);
    agent.wr_driver.send(wr_trans);   
  endtask  : single_write_transaction_api
  
  //task automatic readRegister (  input xil_axi_ulong addr =0 );
                                                
    //single_read_transaction_api(.addr(addr));

  //endtask  : readRegister
  task automatic readRegister ( 
                                    input xil_axi_ulong              addr =0,
                                    output xil_axi_data_beat Rdatabeat[]
                                                );
    axi_transaction                               rd_trans;
    xil_axi_uint               id =0; 
    xil_axi_len_t              len =0; 
    xil_axi_size_t             size =xil_axi_size_t'(xil_clog2((32)/8));
    xil_axi_burst_t            burst =XIL_AXI_BURST_TYPE_INCR;
    xil_axi_lock_t             lock =XIL_AXI_ALOCK_NOLOCK ;
    xil_axi_cache_t            cache =3;
    xil_axi_prot_t             prot =0;
    xil_axi_region_t           region =0;
    xil_axi_qos_t              qos =0;
    xil_axi_data_beat          aruser =0;
    rd_trans = agent.rd_driver.create_transaction("single-read");
    rd_trans.set_read_cmd(addr,burst,id,len,size);
    rd_trans.set_prot(prot);
    rd_trans.set_lock(lock);
    rd_trans.set_cache(cache);
    rd_trans.set_region(region);
    rd_trans.set_qos(qos);
    rd_trans.set_aruser(aruser);
    get_rd_data_beat_back(rd_trans,Rdatabeat);
  endtask  : readRegister
  
  /************************************************************************************************
  * Task send_wait_rd is a task which set_driver_return_item_policy of the read transaction, 
  * send the transaction to the driver and wait till it is done
  *************************************************************************************************/
  task send_wait_rd(inout axi_transaction rd_trans);
    rd_trans.set_driver_return_item_policy(XIL_AXI_PAYLOAD_RETURN);
    agent.rd_driver.send(rd_trans);
    agent.rd_driver.wait_rsp(rd_trans);
  endtask

  /************************************************************************************************
  * Task get_rd_data_beat_back is to get read data back from read driver with
  *  data beat format.
  *************************************************************************************************/
  task get_rd_data_beat_back(inout axi_transaction rd_trans, 
                                 output xil_axi_data_beat Rdatabeat[]
                            );  
    send_wait_rd(rd_trans);
    Rdatabeat = new[rd_trans.get_len()+1];
    for( xil_axi_uint beat=0; beat<rd_trans.get_len()+1; beat++) begin
      Rdatabeat[beat] = rd_trans.get_data_beat(beat);
   //   $display("Read data from Driver: beat index %d, Data beat %h ", beat, Rdatabeat[beat]);
    end  
  endtask


  /************************************************************************************************
  *  task single_read_transaction_api is to create a single read transaction, fill in command with user
  *  inputs and send it to read driver.
  *   1. declare read transction
  *   2. Create the read transaction
  *   3. set addr, burst,ID,length,size by calling set_read_cmd(addr, burst,ID,length,size), 
  *   4. set prot.lock, cache,region and qos
  *   5. set ARUSER if ARUSER_WIDH is bigger than 0
  *************************************************************************************************/
  task automatic single_read_transaction_api ( 
                                    input string                     name ="single_read",
                                    input xil_axi_uint               id =0, 
                                    input xil_axi_ulong              addr =0,
                                    input xil_axi_len_t              len =0, 
                                    input xil_axi_size_t             size =xil_axi_size_t'(xil_clog2((32)/8)),
                                    input xil_axi_burst_t            burst =XIL_AXI_BURST_TYPE_INCR,
                                    input xil_axi_lock_t             lock =XIL_AXI_ALOCK_NOLOCK ,
                                    input xil_axi_cache_t            cache =3,
                                    input xil_axi_prot_t             prot =0,
                                    input xil_axi_region_t           region =0,
                                    input xil_axi_qos_t              qos =0,
                                    input xil_axi_data_beat          aruser =0
                                                );
    axi_transaction                               rd_trans;
    rd_trans = agent.rd_driver.create_transaction(name);
    rd_trans.set_read_cmd(addr,burst,id,len,size);
    rd_trans.set_prot(prot);
    rd_trans.set_lock(lock);
    rd_trans.set_cache(cache);
    rd_trans.set_region(region);
    rd_trans.set_qos(qos);
    rd_trans.set_aruser(aruser);
    agent.rd_driver.send(rd_trans);   
  endtask  : single_read_transaction_api

endmodule 


// testbench entry point
module tb();

	reg aclk;
	reg aresetn;

	/*
	reg resetn_mig;
	wire init_calib_complete;
    wire [12:0] ddr2_addr_fpga;
    wire [2:0] ddr2_ba_fpga;
    wire ddr2_cas_n_fpga;
    wire [0:0] ddr2_ck_n_fpga;
    wire [0:0] ddr2_ck_p_fpga;
    wire [0:0] ddr2_cke_fpga;
    wire [0:0] ddr2_cs_n_fpga;
    wire [1:0] ddr2_dm_fpga;
    wire [15:0] ddr2_dq_fpga;
    wire [1:0] ddr2_dqs_n_fpga;
    wire [1:0] ddr2_dqs_p_fpga;
    wire [0:0] ddr2_odt_fpga;
    wire ddr2_ras_n_fpga;
    wire ddr2_we_n_fpga;
    */

	// instantiate the "design under test" module
	design_1_wrapper DUT(
		.clk(aclk),
		.resetn(aresetn)
		/*
		.resetn_mig(resetn_mig),
		.init_calib_complete(init_calib_complete),
		.DDR2_dq              (ddr2_dq_fpga),
        .DDR2_dqs_n           (ddr2_dqs_n_fpga),
        .DDR2_dqs_p           (ddr2_dqs_p_fpga),
        .DDR2_addr            (ddr2_addr_fpga),
        .DDR2_ba              (ddr2_ba_fpga),
        .DDR2_ras_n           (ddr2_ras_n_fpga),
        .DDR2_cas_n           (ddr2_cas_n_fpga),
        .DDR2_we_n            (ddr2_we_n_fpga),
        .DDR2_ck_p            (ddr2_ck_p_fpga),
        .DDR2_ck_n            (ddr2_ck_n_fpga),
        .DDR2_cke             (ddr2_cke_fpga),
        .DDR2_cs_n            (ddr2_cs_n_fpga),
        .DDR2_dm              (ddr2_dm_fpga),
        .DDR2_odt             (ddr2_odt_fpga)
       */
	);
	
	/*
	ddr2_model uddr(
        .ck(ddr2_ck_p_fpga),
        .ck_n(ddr2_ck_n_fpga),
        .cke(ddr2_cke_fpga),
        .cs_n(ddr2_cs_n_fpga),
        .ras_n(ddr2_ras_n_fpga),
        .cas_n(ddr2_cas_n_fpga),
        .we_n(ddr2_we_n_fpga),
        .dm_rdqs(ddr2_dm_fpga),
        .ba(ddr2_ba_fpga),
        .addr(ddr2_addr_fpga),
        .dq(ddr2_dq_fpga),
        .dqs(ddr2_dqs_p_fpga),
        .dqs_n(ddr2_dqs_p_fpga),
        .rdqs_n(),
        .odt(ddr2_odt_fpga)
    );
    */

	// clock generator (100MHz)
	initial
	begin
		aclk = 0;
		forever
			#5ns aclk = ~aclk;
	end

	// start the testbench by resetting the system for 5 cycles
	initial
	begin
        //$monitor("Mem init calib done: %h", init_calib_complete);
	
		aresetn = 0;
		//resetn_mig = 0;
		
		repeat(5) @(posedge aclk);
		
		aresetn = 1;
		
		//repeat(50) @(posedge aclk);
		//@(posedge aclk) resetn_mig = 1;
	end

	// instantiate instance of axi_lite_stimulus into the tb
	axi_lite_stimulus mst(.aclk(aclk));

endmodule
