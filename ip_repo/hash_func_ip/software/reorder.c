
#include <stdio.h>
#include <stdlib.h>
#include <string.h>



int main (){

	FILE *fp;
	FILE *out;
	FILE *out2;
	FILE *binout;

	char read_line[1024];
	char insert_line[1024];
	char insert_line2[1024];

	fp = fopen ("output2.csv","rb");
	if (fp == NULL) {
		perror("Error opening file");
		return(-1);
	}

	out = fopen("final3.csv","wb");
	out2 = fopen("final_wo_index2.csv","wb");
	binout = fopen("mem2.bin","wb");
	
	char * line_iter;
	unsigned int num_line_wrote = 0;
	unsigned int line_index;
	char index[6];
	char word[33];
	char first_num[33];
	char second_num[33];
	float num_one_float_form;
	float num_two_float_form;
	char * char_location;
	unsigned char bin_row[64];
	char * iter;
	char zero_fill[64];
	
	for (int i = 0; i< 64; i++){
		zero_fill[i] = 0x00;
	}
	zero_fill[63]='\n';

	while(fgets(read_line,1024,fp)!= NULL){
		line_iter = read_line;
		strncpy(index,read_line,5);
		index[5] = '\0';
		
		line_index = atoi(index);

		
		while (num_line_wrote < line_index){
			fputs("\n",out);
			fputs("\n",out2);
			fwrite(zero_fill,64,1,binout);
			num_line_wrote++;
		}	
		
		strcpy (insert_line, read_line);
		line_iter = line_iter+6;
		strcpy (insert_line2, line_iter);
		
		insert_line[strlen(insert_line)-2] = '\n';
		insert_line[strlen(insert_line)-1] = '\0';
		fputs(insert_line,out);

		insert_line2[strlen(insert_line2)-2] = '\n';
		insert_line2[strlen(insert_line2)-1] = '\0';
		fputs(insert_line2,out2);
		
		num_line_wrote++;

		char_location = strchr(insert_line2,',');
		
		strncpy (word,insert_line2, char_location-insert_line2);
		word[char_location-insert_line2] = '\0';
		
		*char_location = '/';
		char_location++;
		line_iter = char_location;

		char_location = strchr(insert_line2,',');
		strncpy(first_num,line_iter,char_location-line_iter);
		first_num[char_location-line_iter] = '\0';
	
		char_location++;	
		line_iter = char_location;

		strncpy(second_num,line_iter, strlen(insert_line2)-(line_iter-insert_line2)-1);
		second_num[strlen(insert_line2)-(line_iter-insert_line2)-1] = '\0';
		for (int i = 0; i<strlen(word);i++){
			bin_row[i] = word[i];
		}

		for (int i = strlen(word);i < 32; i++){
			word[i] = 0x00;
			bin_row[i] = 0x00;
		}
		num_one_float_form = strtof(first_num,NULL);
		iter = bin_row+32;
		memcpy (iter,&num_one_float_form, sizeof(float));
		num_two_float_form = strtof(second_num,NULL);
		iter = iter + 4;
		memcpy (iter,&num_two_float_form, sizeof(float));
		for (int i = 40; i < 63; i++){
			bin_row[i] = 0x00;
		}	
		bin_row[63] = '\n';
		
		fwrite(bin_row,64,1,binout);
	}

	fclose(fp);
	fclose(out);
	fclose(out2);
	fclose(binout);

	return 0;
}


