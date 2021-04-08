#!/bin/bash -x

function FtoC() {
	read -p "Enter temparature degF to convert it in degC " tempF

	if [[ $tempF -ge 32 && $tempF -le 212 ]]
	then
		degC=$(( ($tempF-32)*5/9 ))
		echo "degF=$tempF & degC=$degC";
	else
		echo "Provide degF temparature between 32-212";
	fi
}

function CtoF() {
	read -p "Enter temparature degC to convert it in degF " tempC

	if [[ $tempC -ge 0 && $tempC -le 100 ]]
	then
		degF=$(( ($tempC * 9/5)+32 ))
		echo "degC=$tempC & degF=$degF";
	else
		echo "Provide degC temparature between 0-100";
	fi
}

read -p "Enter your choice, f for degF or c for degC " choice

case $choice in
        	f) FtoC;;
	c) CtoF;;
	*) echo "Something went wrong";;
esac



