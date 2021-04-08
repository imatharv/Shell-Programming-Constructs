#!/bin/bash -x

myArray=( -5 -4 -3 -2 -1 0 1 2 3 4 5 )

echo -e "\nThe array elements are: ${myArray[@]} \n"
length=${#myArray[@]}

for (( i=0 ; i<$length ; i++ ))
do
	for (( j=i+1; j<$length ; j++ ))
	do
		for (( k=j+1 ; k<$length ; k++ ))
		do
			if [ $(( myArray[$i]+myArray[$j]+myArray[$k] )) == 0 ]
			then
				echo -e "${myArray[i]} \c"
				echo -e "${myArray[j]} \c"	
				echo -e "${myArray[k]}"
			fi
		done
	done	
done
