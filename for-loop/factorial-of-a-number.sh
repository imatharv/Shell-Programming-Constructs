#!/bin/bash

read -p "Enter the number " n
echo

fact=1 

num=$n
for (( i=1; i<=$n; i++ ))
do
	fact=$(( fact*i ))
done
echo "Factorial for $num is $fact"

