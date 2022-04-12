# Overview

The Client FPGA is responsible for the hashing algorithm and spam detection inference. The
Hashing Algorithm IP generates hash keys for each word in the email and generates a list of hash
keys to be sent to the Server FPGA through the EthernetLite IP (TCP protocol). After receiving
the requested probabilistic data from the Server FPGA, the Client FPGA uses the Spam
Detection Inference IP to store the data in a FIFO and run spam detection algorithm to compute
if an email is spam or non-spam.

![Alt text](Client_FPGA_Block_Diagram.jpg?raw=true "Title")

# Directory Contents

 * client_proj : Xilinx Vivado client project (ver 2018.3) with hash_func ip and spam_email_detection_inference ip
