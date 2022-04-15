# Hash Table IP

## Overview

The hash table IP is an AXI4Lite IP that interacts with the MIG and DDR3 memory to implement a parallel hash table. Note that two separate IP blocks are used to implement this functionality, and both must be instantiated in the design:
* [hash_table_mgr_1.0](../hash_table_mgr_1.0) - implements the slave interface to MicroBlaze
* [hash_table_mgr_mig_1.0](../hash_table_mgr_mig_1.0) - implements the master interface to MIG

The entire hash table is partitioned into 32 sections, with a lock associated with each section to enforce mutual exclusion. Both the hash key (the word) and data (the probabilities associated with the word being spam or ham) are stored in the hash table to enable hash collision detection. Hash collisions are resolved linearly (i.e. by checking the memory addresses immediately above the given hash table address).

## Block Diagram

![bd](hash_table_block.png?raw=true "Title")

## Register Map

| Offset | Register Name | Type | Description |
| --- | --- | --- | --- |
| 0x0 | input valid | W | Used to indicate that registers 0x4-0x30 are valid. |
| 0x4 | input address | W | Base address of hash table operation to perform. |
| 0x8 | opcode | W | Hash table operation: 0 - read, 1 - insert, 2 - update, 3 - delete. |
| 0xC-0x10 | input data | W | Input data to hash table. Used only for opcodes 1 and 2. |
| 0x14-0x30 | input key | W | Input hash key. Used for collision detection. |
| 0x40 | output valid | R/W | Used to indicate that registers 0x44-0x70 are valid. |
| 0x44 | output address | R | Base address of hash table operation performed. |
| 0x48 | output type | R | Output type: 0 - data, 1 - acknowledgement. |
| 0x4C-50 | output data | R | Output data from hash table. Used only for output type 0. |
| 0x54-70 | output key | R | Output hash key. |
