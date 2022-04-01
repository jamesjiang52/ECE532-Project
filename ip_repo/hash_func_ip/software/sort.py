#! /usr/bin/python


import csv


if __name__ == "__main__":
	with open ('updated2.csv','r') as csvfile:
		rdr = csv.reader(csvfile)
		l = sorted(rdr,key=lambda x:x[0], reverse=False)
	with open ('output2.csv','w')as csvout:
		wrt = csv.writer(csvout)
		wrt.writerows(l)	
