# ECE532-Project

**SPAM EMAIL DETECTION SYSTEM**
This project utilizes parallel hash table to implement a spam email detection system.

The system uses one Server FPGA and two Client FPGAs for parallel access. 
The Server FPGA contains the pre-trained probabilistic model in the hash table and is responsible for different operations of the hash table. 
The Client FPGAs first receive emails to be filtered and run the hashing algorithm to generate access keys to fetch probabilistic data from the Server FPGA. 
After receiving back the data from the Server FPGA, the Client FPGA will process the data and run the spam detection inference algorithm.
All FPGAs have been connected over the network to a computer for performance monitoring and analysis.

![Alt text](System_Diagram.jpg?raw=true "Title")

## Directory Contents
  * gui - contains gui scripts
      *  gui/perf_gui.py: Python performance GUI
  * hash_client - contains the client system files including software components
      * [hash_client/client_proj](hash_client)
      * [client_proj.sdk/client_w_spam/src/main.c](client_proj.sdk/client_w_spam/src/main.c): MicroBlaze code for hash client
      * [client_proj.srcs/sources_1/bd/design_1/design_1.bd](client_proj.srcs/sources_1/bd/design_1): block design for hash client
  * hash_server - contains the server system files including software components
      * [server_3/src/main.c](hash_server/server_3/src/main.c): MicroBlaze code for hash server
      * [hash_server.srcs/sources_1/bd/design_1/design_1.bd](hash_server/hash_server.srcs/sources_1/bd/design_1): block design for hash server
  * ip_repo - contains custom IPs (including hash_function, hash_table, SD card and spam_email_detection_inference IP)
      * hash_func_ip/src/hash_func_S_AXI.v: main module for hashing algorithm IP
      * hash_table_mgr_1.0/hdl/hash_table_mgr_v1_0_S00_AXI.v: main module for hash table IP interface with MicroBlaze
      * hash_table_mgr_mig_1.0/hdl/hash_table_mgr_mig_v1_0_M00_AXI.v: main module for hash table IP interface with MIG
      * sd_card_controller_1.0/hdl/sd_card_controller_v1_0_M00_AXI.v: main module for SD card controller IP 
      * spam_detection_inference_1.0/hdl/spam_detection_inference_v1_0_S00_AXI.v: main module for spam detection inference IP
