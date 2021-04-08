#!/bin/bash -x

read -p "Enter a number " number
temp=$number

function checkPalindrome() {
	rem=0
   
	while [[ $number -gt 0 ]] 
	do
    		rem=$(( $number % 10 ))
		#echo $rem   
    		number=$(( $number / 10 ))
		#echo $number  
    		rev=$( echo $rev$rem )  
	done
	return $rev
}

checkPalindrome $number

if [[ $temp -eq $rev ]]
then
    echo "Number $temp is a palindrome"
else
    echo "Number $temp is not a palindrome"
fi