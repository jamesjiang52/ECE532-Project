# Spam Detection Inference IP Block

## 1. Overview
The Spam Detection Inference IP block is designed to receive probabilistic data from the bag of word model and compute the spam detection result on whether the email is spam or non-spam.
This IP instantiates Xilinx FIFO Generator IP and FPU module from Opencore (https://opencores.org/projects/fpu) for floating point addition and comparison.  

## 2. Block Diagram

![Alt text](Spam_Detection_Inference_IP.jpg?raw=true "Title")

## 3. Interface Signals

| Signal Name | Direction | Width | Description |
| --- | --- | --- | --- |
| S00\_AXI | - | - | AXI slave that receives probabilistic data and return the result of inference |
| s00\_axi\_aclk | Input | 1 | 50MHz clock |
| S00\_axi\_aresetn | Input | 1 | Active-low synchronous reset |
| result | Output | 1 | Spam detection result.   0: non-spam email   1: spam email |

## 4. Register Map

| Offset | Register Name | Type | Description |
| --- | --- | --- | --- |
| 0x0 | spam\_fifo\_din | RW | Connects to the data input of the spam FIFO. |
| 0x4 | spam\_fifo\_wr\_en | WO | Connects to the write enable of the spam FIFO. Once set high, data on spam\_fifo\_din will be store to the spam FIFO. Self clear in one cycle. |
| 0x8 | spam\_prob | RO | Output the spam probability after spam detection inference. |
| 0xC | ham\_fifo\_din | RW | Connects to the data input of the ham FIFO. |
| 0x10 | ham\_fifo\_wr\_en | WO | Connects to the write enable of the ham FIFO. Once set high, data on ham\_fifo\_din will be store to the ham FIFO. Self clear in one cycle. |
| 0x14 | ham\_prob | RO | Output the ham probability after ham detection inference. |
| 0x18 | spam\_write\_done | RW | Set high after all input probabilistic data are feed to the spam FIFO through spam\_fifo\_din and spam\_fifo\_wr\_en. |
| 0x1C | ham\_write\_done | RW | Set high after all input probabilistic data are feed to the ham FIFO through ham\_fifo\_din and ham\_fifo\_wr\_en. |
| 0x20 | spam\_data\_valid | RO | 0: spam inference computation not done.   1: spam inference computation done and spam\_prob is valid. |
| 0x24 | ham\_data\_valid | RO | 0: ham inference computation not done.   1: ham inference computation done and ham\_prob is valid. |
| 0x28 | result | RO | Spam detection result. Result is valid when both spam\_data\_valid and ham\_data\_valid are 1. 0: non-spam email 1: spam email |

## 5. Software Application

Pseudo code for spam dectection inference.

	spam_list = list of probabilistic data from the spam bag of words from the pretrained model (already taken log)
	ham_list = list of probabilistic data from the non-spam bag of words from the pretrained model (already taken log)

	// Send in spam probabilistic data
	for data in spam_list {
		spam_fifo_din = data
		spam_fifo_wr_en = 1
	}
	spam_write_done = 1

	// Send in non-spam probabilistic data
	for data in ham_list {
		ham_fifo_din = data
		ham_fifo_wr_en = 1
	}
	ham_write_done = 1

	// Wait until inference computation finished
	while (spam_data_valid == 0 && ham_data_valid == 0) {
		;
	}

	// return spam detection inference result: 0 - non-spam; 1 - spam
	return result
