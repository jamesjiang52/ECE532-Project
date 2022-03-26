
#include <stdio.h>
#include <stdlib.h>
#include <string.h>


unsigned int s[64] = {7,12,17,22, 7,12,17,22, 7,12,17,22, 7,12,17,22,
 5,9,14,20, 5,9,14,20, 5,9,14,20, 5,9,14,20,
4,11,16,23, 4,11,16,23, 4,11,16,23, 4,11,16,23,
 6,10,15,21, 6,10,15,21, 6,10,15,21, 6,10,15,21};

unsigned int T[64] = {0xd76aa478, 0xe8c7b756, 0x242070db, 0xc1bdceee,
0xf57c0faf, 0x4787c62a, 0xa8304613, 0xfd469501,
0x698098d8, 0x8b44f7af, 0xffff5bb1, 0x895cd7be,
0x6b901122, 0xfd987193, 0xa679438e, 0x49b40821,
0xf61e2562, 0xc040b340, 0x265e5a51, 0xe9b6c7aa,
0xd62f105d, 0x02441453, 0xd8a1e681, 0xe7d3fbc8,
0x21e1cde6, 0xc33707d6, 0xf4d50d87, 0x455a14ed,
0xa9e3e905, 0xfcefa3f8, 0x676f02d9, 0x8d2a4c8a,
0xfffa3942, 0x8771f681, 0x6d9d6122, 0xfde5380c,
0xa4beea44, 0x4bdecfa9, 0xf6bb4b60, 0xbebfbc70,
0x289b7ec6, 0xeaa127fa, 0xd4ef3085, 0x04881d05,
0xd9d4d039, 0xe6db99e5, 0x1fa27cf8, 0xc4ac5665,
0xf4292244, 0x432aff97, 0xab9423a7, 0xfc93a039,
0x655b59c3, 0x8f0ccc92, 0xffeff47d, 0x85845dd1,
0x6fa87e4f, 0xfe2ce6e0, 0xa3014314, 0x4e0811a1,
0xf7537e82, 0xbd3af235, 0x2ad7d2bb, 0xeb86d391};

unsigned int leftrotate (unsigned int val, int shift){
	unsigned int res;

	res = val << shift | val >> (32-shift);
	
	return res;
}


//unsigned int * md5 (char* in_word) {	
void md5 (char* in_word, unsigned int * result) {

	unsigned int a,b,c,d;

	unsigned int word[16];
	for (int i = 0; i< 16; i++){
		word[i] = 0;
	}
	
	char * iter_char = in_word;
	unsigned int * iter_array = word;

	int length = strlen(in_word);
	int word_len = length;
	unsigned int data = 0;
	short left_num = 0;	

	while ((word_len -4 ) > 0) {
		for (int i = 0;i<4;i++){
			data = data << 8;
			data = data ^ (int) *iter_char;
			iter_char++;
		}
		
		word_len -= 4;
		*iter_array = data;
		iter_array += 1;
		data = 0;
	}

	if (word_len > 0) {
		for (int i = 0; i<word_len;i++){
			data = data <<8;
			data = data ^ (int) *iter_char;
			iter_char++;
			left_num++;
			//printf ("tt %x  %d\n",data,left_num);
		}
		if (left_num <4){
			data = data <<8;
			data = data ^ 0x00000080;
			left_num++;	
			
		//	printf ("t %x\n",data);
			for (int i = left_num; i < 4;i++){
				data = data << 8;
			}
			*iter_array = data;
		}
		else {
			*iter_array = data;
			iter_array++;
			*iter_array = 0x80000000;
		}
	}
	word[15] = length*8;


	//INPUT DATA saved-----------------

	//START HASHING PROCESS
	
	a = 0x67452301;
	b = 0xefcdab89;
	c = 0x98badcfe;
	d = 0x10325476;
	unsigned int aa,bb,cc,dd;
	unsigned int func_res, index;

	for (int i = 0; i < 64; i++){
		aa = a;
		bb = b;
		cc = c;
		dd = d;


		if (i>= 0 && i <= 15){
			func_res = (b & c)|((~b) & d);
			index = i;
		}else if (i>= 16 && i <= 31){
			func_res = (d & b) | ((~d) & c);
			index = i % 16;
//			index = (5*i+1)%16;			
		}else if (i>= 32 && i <= 47){ 
			func_res = b ^ c ^ d;
			index = i % 16;
//			index = (3*1 + 5) % 16;
		}else if (i>= 48 && i <= 63){
			func_res = c ^ (b |(~d));
			index = i % 16;
//			index = 7*i%16;
		}
		
		func_res = a + T[i] + func_res + word[index];
				
		a = dd;
		c = bb;
		d = cc;
		b = bb + leftrotate(func_res, s[i]);
	}
	
	a = a + 0x67452301;
	b = b + 0xefcdab89;
	c = c + 0x98badcfe;
	d = d + 0x10325476;

	
	result[0] = a;
	result[1] = b;
	result[2] = c;
	result[3] = d;
}

unsigned int mur3 (unsigned int * in_key){
	
	unsigned int temp, shifted;
	unsigned int hash = 0;


	for (int i = 3; i >= 0; i--){
		temp = in_key[i];
		temp = temp * 0xcc9e2d51;
		shifted = leftrotate(temp,15);
		shifted = shifted * 0x1b873593;
		
		hash = hash ^ shifted;
		hash = leftrotate(hash, 13);
		hash = hash * 5 + 0xe6546b64;
	}
	
	hash = hash ^ 0x00000080;
	hash = hash ^ (hash >> 16);
	hash = hash * 0x85ebca6b;
	hash = hash ^ (hash >> 13);
	hash = hash * 0xc2b2ae35;
	hash = hash ^ (hash >> 16);

	return hash;
};

unsigned short hash (char * input_word) {

	unsigned int partial_hash[4];
	unsigned int hashed_key;
	unsigned short final_key;

	md5(input_word,partial_hash);
	hashed_key = mur3 (partial_hash);
	final_key = (hashed_key & 0xFFFF) ^ ((hashed_key >> 16) & 0xFFFF);

	return final_key;
}



int main (){

	FILE *fp;
	FILE *wfp;
	FILE *wbp;
	char read_line[1024];
	char insert_line[1024];
	size_t len = 0;
	ssize_t read;

	char word[256];
	
	fp = fopen ("spam_ham.csv","rb");
	if (fp == NULL){
		perror("ERROR opening file");
		return(-1);
	}
	wfp = fopen ("updated2.csv","wb");
	

	char *split_loc;
	char *iter;
	char *insert_iter;

	unsigned short hash_key;

	//change below if to WHILE
	while (fgets(read_line, 1024, fp) != NULL){
		printf ("%s",read_line);
		
		split_loc = strchr(read_line,',');
		iter = split_loc;
		iter++;		//iter points to the location of first value

		printf("%s\n",read_line);
		printf ("%d\n",split_loc - read_line);
		
		strncpy(word,read_line,split_loc-read_line);
		word[split_loc-read_line] = '\0';
		printf ("word: %s\n",word);
		printf("key: %05d %04x\n",hash (word),hash(word));
		hash_key = hash(word);

		sprintf(insert_line,"%05d",hash_key);
		insert_line[5] = ',';//'\0'; //temp delete later	
		
		insert_iter = insert_line+6;
		
		strncpy(insert_iter,read_line, strlen(read_line));

		insert_iter = insert_iter + strlen(read_line);

		*insert_iter='\0';
		printf("%s",insert_line);
		printf("%d, %d\n",strlen(insert_line),strlen(read_line));
		
		fputs(insert_line,wfp);
	}



	fclose(fp);
	fclose(wfp);

	return 0;
}

