#!/bin/bash

read -p "Enter a number " n

i=0;
powerOfTwo=1;

while [[ $i -le $n && $powerOfTwo -le 256 ]]
do
	echo "$i   $powerOfTwo";
	powerOfTwo=$((2 * powerOfTwo));
	i=`expr $i + 1`;
done