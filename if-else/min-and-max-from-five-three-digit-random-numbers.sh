#!/bin/bash -x

max=0;
min=0;

for (( i=1; i<=5; i++ ))
do 	
	num=$((RANDOM%999));
	echo "$i = $num";
  	if [ $i -eq 1 ]
  	then
      		max=$num
		min=$num
  	else
      		if [ $num -gt $max ]
      		then
        			max=$num
      		fi
		if [ $num -lt $min ]
      		then
        			min=$num
      		fi
  	fi
done

echo "maximum= $max";
echo "minimum= $min";