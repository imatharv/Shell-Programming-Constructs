#!/bin/bash -x

read -p "Think of a number between 1 to 100 " number
echo

i=1

while [[ i -le $number ]]
do
	read -p"Is the number less then $(($number/2)) or greater [y/n]" choice

	case $choice in
        		y) number=$(($number/2));;
		n) number=$number;;
		*) echo "Something went wrong" ;;
	esac
	i=$(($i+1))
done