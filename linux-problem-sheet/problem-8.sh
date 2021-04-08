#!/bin/bash 

for file in 'ls *.txt';
do
	folderName= echo $file | awk -F. '{print $1}';
	#echo "checking for already existing directory started"; 
	if [ -d folderName ];
		rm -R $folderName;
	fi
	#echo creating foler ${folderName); 
	mkdir $folderName;
done
