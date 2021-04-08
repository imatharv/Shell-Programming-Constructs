#!/bin/bash 

touch file1.txt file2.txt file3.txt file4.txt;

$ for file in `ls *.txt`; 
	do fileName=`echo $file | awk -F. '{print $1}'`; 
	fileExt=`echo $file | awk -F. '{print $2}'`;
	DATE=`date +%d-%m-%y`;
	newName=$fileName.$DATE.$fileExt; 
	mv $file $newName; 
done
