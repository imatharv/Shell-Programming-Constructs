#!/bin/bash

flag=0

function checkPalindrome() {
	rem=0
   	temp=$number

	while [[ $number -gt 0 ]] 
	do
    		rem=$(( $number % 10 ))
		#echo $rem   
    		number=$(( $number / 10 ))
		#echo $number  
    		rev=$( echo $rev$rem )  
	done
	
	if [[ $temp -eq $rev ]]
	then
   	 	echo "Number $temp is a palindrome"
	else
    		echo "Number $temp is not a palindrome"
	fi
}

function checkPrime() {
	for (( i=2; i<=$number/2; i++ ))
	do
		if [[ $(( $number%$i )) -eq 0 ]]
		then
			flag=1 
		fi
	done
	if [[ $flag -eq 1 ]]  
	then
		echo "Number $number is not a prime"
	else
		echo "Number $number is a prime"
		checkPalindrome $number
	fi
}


read -p "Enter a number " number

checkPrime $number

