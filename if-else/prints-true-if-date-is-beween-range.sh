#!/bin/bash -x

currentDate=$(date -d 2020-03-19 +%s)
condition1=$(date -d 2020-03-20 +%s)
condition2=$(date -d 2020-06-20 +%s)

if [[ $currentDate -gt $condition1 && $currentDate -lt $condition2 ]]
then
	echo "Yes"
else
	echo "No"
fi