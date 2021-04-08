#!/bin/bash

read -p "Enter number of terms of fobonacci series you want " terms

firstNumber=0
secondNumber=1

echo -e "Fibonacci series till first $terms terms is= "

for((i=0;i<=terms;i++))
do
	echo -n "$firstNumber "
	temp=$((firstNumber+secondNumber))
	firstNumber=$secondNumber
	secondNumber=$temp
done
