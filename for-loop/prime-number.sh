#!/bin/bash -x

read -p "Enter the number " n
echo

flag=0

for (( i=2; i<=$n; i++ )) 
do
	
	mod=`expr $n%$i`

	if [[ $mod -eq 0 ]]
      	then
		flag=1;
      		break;
 	else
    		echo "$i is prime number.";

	fi
done

