# SD Card Controller IP Block

## 1. Overview

The SD Card Controller IP is responsible for data transfer directly from the SD card to the DDR memory on the FPGA. The IP block bypasses the Microblaze during data transfer to achieve better performance. The SD card controller references the open-source module ([https://github.com/jono-m/mariokart/blob/master/v1/v1.srcs/sources\_1/new/sd\_controller.v](https://github.com/jono-m/mariokart/blob/master/v1/v1.srcs/sources_1/new/sd_controller.v)) as a skeleton and modified for specific functionalities and applications based on it. Note that depending on the SD card used, the initialization sequence might be different. This IP core uses Gigastone Camera Plus 32GB MicroSD card.

## 2. Block Diagram 

![Alt text](SD_Card_Controller.jpg?raw=true "Title")

## 3. Parameters

| Parameter Name | Description |
| --- | --- |
| SD\_START\_ADDR | Start address of SD card to read from |
| SD\_DATA\_SIZE | Size of the data transfer from the SD card to the DDR |
| SD\_DDR\_BASE\_ADDR | Start address of DDR memory to write to |

## 4. Interface Signals

| Signal Name | Direction | Width | Description |
| --- | --- | --- | --- |
| clk | Input | 1 | 100 MHz Clock |
| resetn | Input | 1 | Active-low synchronous reset. |
| SD\_CD | Input | 1 | External pin |
| SD\_RESET | Output | 1 | External pin |
| SD\_SCK | Output | 1 | External pin, SPI SCLK |
| SD\_CMD | Output | 1 | External pin, SPI DI |
| SD\_DAT | Inout | 4 | External pin, SPI DO, SPI CS |
| load | Input | 1 | When load signal is high, the SD card controller will start the data transfer |
| loaded | Output | 1 | When data transfer (load) is finished, the SD card controller will be set high |

## 5. Software Application

Once the reset signal is deserted and the load signal is high, the SD controller data transfer from SD card to DDR will start. Once the loaded signal output is set high by the SD controller, the data transfer is finished.

Pseudocode for SD card controller.

	resetn = 0;
	resetn = 1;
	load = 1;

	// Polling mode until SD card data transfer finishes
	while (loaded == 0) {

	}

	// SD card data is loaded onto the DDR (done)
