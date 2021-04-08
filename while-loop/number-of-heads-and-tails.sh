#!/bin/bash 

flip=0
heads=0
tails=0

while [[ $flip -lt 100 ]]
do	
	if [[ $(( RANDOM % 2 )) -eq 1 ]]
	then
		#echo "heads"
		heads=$(($heads+1))
	else
		#echo "tails"
		tails=$(($tails+1))
	fi
	flip=$(($flip+1))
done

echo "Heads= $heads  &  Tails= $tails"

