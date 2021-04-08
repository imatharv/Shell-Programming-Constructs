#!/bin/bash

#To declare/make a variable an indexed array
declare -a repeatedDigitsNumbers

countArray=0

for ((i=10 ; i<100 ; i++ ))
do
	if [ $((i%10)) -eq $(((i/10)%10)) ]
    	then
        		repeatedDigitsNumbers[((countArray++))]=$i
    	fi
done

echo "Number(s) with repeated digits= ${repeatedDigitsNumbers[@]} "