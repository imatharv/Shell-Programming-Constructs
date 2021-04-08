#!/bin/bash 

read -p "Enter 3 numbers " a b c

echo "a=$a , b=$b , c=$c"

AO1=$((a + b * c))
AO2=$((a % b + c))
AO3=$((c + a / c))
AO4=$((a * b + c))

echo "a + b * c  =  $AO1"
echo "a % b + c  =  $AO2"
echo "c + a / c  =  $AO3"
echo "a * b + c  =  $AO4"
