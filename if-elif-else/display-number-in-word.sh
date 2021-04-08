#!/bin/bash 

read -p "Enter a number " character

if [ "$character" = "1" ]; then
    echo "You entered one."
elif [ "$character" = "2" ]; then
    echo "You entered two."
elif [ "$character" = "3" ]; then
    echo "You entered three."
elif [ "$character" = "4" ]; then
    echo "You entered four."
elif [ "$character" = "5" ]; then
    echo "You entered five."
elif [ "$character" = "6" ]; then
    echo "You entered six."
elif [ "$character" = "7" ]; then
    echo "You entered seven."
elif [ "$character" = "8" ]; then
    echo "You entered eight."
elif [ "$character" = "9" ]; then
    echo "You entered nine."
elif [ "$character" = "10" ]; then
    echo "You entered ten."
else
    echo "You entered a number greater than 10."
fi