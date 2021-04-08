#!/bin/bash

function monthsRandom(){
	month=$(( RANDOM%12 + 1 ))
	return $month
}

declare -A birthMonths
count=0

for (( m=1 ; m<=12 ; m++ ))
do
	birthMonths[$m]=$count
done

persons=50
for (( i=1; i<=$persons; i++ ))
do
	birthMonth=$( monthsRandom )
	case $birthMonth in
		1) (( birthMonths[$birthMonth]+=1 ))
		;;
		2) (( birthMonths[$birthMonth]+=1 ))
		;;
		3) (( birthmonths[$birthMonth]+=1 ))
		;;
		4) (( birthMonths[$birthMonth]+=1 ))
		;;
		5) (( birthMonths[$birthMonth]+=1 ))
		;;
		6) (( birthMonths[$birthMonth]+=1 ))
		;;
		7) (( birthMonths[$birthMonth]+=1 ))
		;;
		8) (( birthmonths[$birthMonth]+=1 ))
		;;
		9) (( birthMonths[$birthMonth]+=1 ))
		;;
		10) (( birthMonths[$birthMonth]+=1 ))
		;;
		11) (( birthMonths[$birthMonth]+=1 ))
		;;
		12) (( birthMonths[$birthMonth]+=1 ))
		;;
		*) echo "Something went wrong"
		;;
	esac
done

for (( j=1 ; j<=12 ; j++ ))
do
	echo "Persons born in $j month = ${birthMonths[$j]}"
done