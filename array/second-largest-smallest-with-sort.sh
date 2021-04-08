#!/bin/bash

max=10
count=0

while [[ $count -lt $max ]] 
do
	number[$count]=$((RANDOM%999))
	count=`expr $count + 1`;

done

echo "The 10 array values : ${number[@]}"
x=$(echo '%s\n' "${no[@]}" | sort -n | head -2 | tail -1)
echo "The 2nd small No : $x"

y=$(echo '%s\n' "${number[@]}" | sort -n | tail -2 | head -1)
echo "The 2nd large No : $y"



