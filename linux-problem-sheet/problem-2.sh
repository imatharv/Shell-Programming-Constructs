#!/bin/bash 

touch file1.txt file2.txt file3.txt file4.txt;

for file in `ls *.txt`; 
	do fileName=`echo $file | awk -F. '{print $1}'`; 
	mkdir $fileName; 
	mv $file $fileName; 
done