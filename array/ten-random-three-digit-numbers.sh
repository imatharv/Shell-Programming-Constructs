#!/bin/bash -x

myArray=();
for (( i=0; i<=10; i++ ))
do
random=$(( RANDOM%1000));
	myArray[$i]=$random;
done
echo ${myArray[@]}
