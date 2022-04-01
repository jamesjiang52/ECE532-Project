 # HASH_FUNC IP
 
 ## Directory
  * atomic : atomic version of hash function ip
  * software : software model of hash_key ip in c
  * src : contains hash_func ip hdl files
  * tb : contains testbenches for submodules

 ## Hash Function IP Block
 ### 1. Overview
 The hash_func ip utilizes MD5, murmur3 and xor to produce 16 bit hash keys from a word. The maximum size of a word is 416 bits. The details of MD5 algorithm and murmur3 algorithm are available at the reference below
 
 ### 2. Block Diagram


 ### 3. Register Map
 
| Offset | Register Name | Type | Description |
| --- | --- | --- | --- |
| 0x0 | Start Ctrl  | RW | LSb is used to indicate the data stored in reg 2 to 12 are valid and start the hash key generation process |
| 0x8 | Num Words | W | Used to store the total number of words to process |
| 0xC \- 0x2C | Data Regs | W | Registers to store a word. If the word is less than 288 bits the rest should be padded with 0s |
| 0x30 | Data length | W | Register to store the number of chars of the current word |
| 0x34 | Done Ctrl | RW | *Byte3*: 1 indicates the total num of words are processed. *Byte2*: Number of words left to process. *Byte0*: 1 indicate the result is valid and 0 indicate the data is not valid. When the result is read, this byte has to set to 0 to read the next available hash\_key from fifo |
| 0x38 | Result | R | Hash key result |

 ### 4. References
 MD5 Software Algorithm:
  * R.Rivest, The MD5 Message-Digest Algorithm, RFC 1321, MIT LCS & RSA Data Security, Inc., April 1992

Murmur3 Software Algorithm:
  * Aappleby, smhasher, (2014), Github repository, https://github.com/aappleby/smhasher

