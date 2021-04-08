#!/bin/bash

winCount=0
count=0
declare -A result

for (( i=1; i<=6; i++ ))
do
	result[$i]=$count
done
 
while (( $winCount!=1 ))
do
	dice=$(( RANDOM%6 + 1 ))
	case $dice in
		1) (( result[$dice]+=1))
		;;
		2) (( result[$dice]+=1 ))
		;;
		3) (( result[$dice]+=1 ))
		;;
		4) (( result[$dice]+=1 ))
		;;
		5) (( result[$dice]+=1 ))
		;;
		6) (( result[$dice]+=1 ))
		;;
		*) echo"Something went wrong"
		;;
	esac
	if (( result[1]==10 )) || (( result[2]==10 )) || (( result[3]==10 )) || (( result[4]==10 )) || (( result[5]==10 )) || (( result[6]==10 ))
	then
		winCount=1
	else
		continue
	fi
done

minimum=10
maximum=0
for (( j=1; j<=6; j++ ))
do
	if (( minimum>result[$j] ))
	then
		minimum=result[$j]
		minIndex=$j
	fi
	if (( maximum<result[$j] ))
	then
		maximum=result[$j]
		maxIndex=$j
	fi
done

echo -e "Number $maxIndex occured maximum number of times\nNumber $minIndex occured minimum number of times"