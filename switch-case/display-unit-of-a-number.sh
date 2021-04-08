#!/bin/bash

read -p "Enter a number like 1, 10, 100, 1000, etc. to get the unit: " number

case $number in
        	1) echo "One";;
	10) echo "Ten" ;;
	100) echo "Hundred" ;;
	1000) echo "Thousand" ;;
	10000) echo "Ten Thousand" ;;
	100000) echo "Lakh" ;;
	1000000) echo "Ten Lakh" ;;
	*) echo "Please enter numeric character like 1, 10, 100, 1000, etc only." ;;
esac