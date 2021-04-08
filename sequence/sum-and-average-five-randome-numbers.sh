#!/bin/bash  -x

a=$((RANDOM%99))
b=$((RANDOM%99))
c=$((RANDOM%99))
d=$((RANDOM%99))
e=$((RANDOM%99))

add=$(($a+$b+$c+$d+$e))
avg=$(($add / 5))
echo "The addition of five random numbers: "
echo $add
echo "The average of five random numbers: "
echo $avg
