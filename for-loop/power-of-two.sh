#!/bin/bash

read -p "Enter a number " n

powerOfTwo=1;

for (( i=0; i<=$n; i++ ))
do
	echo "$i   $powerOfTwo";
	powerOfTwo=$((2 * powerOfTwo));
done