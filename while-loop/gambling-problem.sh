#!/bin/bash -x

amount=100
goal=200
#attempts=10

bets=0
wins=0

#for (( i=0; i<10; i++ ))
#do
	remAmount=$amount
	while [[ $remAmount -gt 0 && $remAmount -lt $goal ]]
	do
		bets=$(($bets+1))
		if [[ $(( RANDOM % 2 )) -eq 1 ]]
		then
			remAmount=$(($remAmount+1))
			wins=$(($wins+1))	
		else
			remAmount=$(($remAmount-1))
		fi
	done	
	#if [[ $remAmount -eq $goal ]]
	#then
		#wins=$(($wins+1))
	#fi
#done

echo "Wins= $wins"
echo "Bets= $bets"