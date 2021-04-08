#!/bin/bash -x

a=$((RANDOM%7))
b=$((RANDOM%7))
result=$(($a+$b))
echo "The addition of two dice outcomes: " 
echo $result
