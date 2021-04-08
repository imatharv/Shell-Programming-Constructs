#!/bin/bash

read -p "Enter a number between 0 and 7 " weekday

case $weekday in
	1) echo "Sunday";;
	2) echo "Monday";;
	3) echo "Tuesday";;
	4) echo "Wednesday";;
	5) echo "Thursday";;
	6) echo "Friday";;
	7) echo "Saturday";;
	*) echo "Please enter nubers between 1 and 7";;
esac