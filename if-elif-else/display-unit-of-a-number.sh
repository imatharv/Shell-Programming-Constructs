#!/bin/bash 

read -p "Enter a number " character

if [ "$character" = "1" ]; then
    echo "Unit is one."
elif [ "$character" = "10" ]; then
    echo "Unit is ten."
elif [ "$character" = "100" ]; then
    echo "Unit is hundred."
elif [ "$character" = "1000" ]; then
    echo "Unit is thousand."
elif [ "$character" = "10000" ]; then
    echo "Unit is ten thousand."
elif [ "$character" = "100000" ]; then
    echo "Unit is one lakh."
elif [ "$character" = "1000000" ]; then
    echo "Unit is ten lakh."
else
    echo "You entered a wrong number."
fi