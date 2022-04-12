# Overview

The Server FPGA stores the pre-trained spam detection model for multiple clients to access in
parallel. The Hash Table Processing & Synchronization IP takes commands (query, insert, delete,
and update) from Client FPGAs, executes commands in the DDR3 memory, and returns the
result to Client FPGAs through the Ethernet block (TCP protocol). The SD Card Controller IP
loads the pre-trained spam detection model binary file from the SD card to the DDR memory
(direct access, bypassing the Microblaze) during FPGA startup.

![Alt text](Server_FPGA_Block_Diagram.jpg?raw=true "Title")

# Directory Contents

 * hash_server : Xilinx Vivado server project (ver 2018.3)
