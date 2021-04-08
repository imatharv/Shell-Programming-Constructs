#!/bin/bash

read -p "Enter a number for nth harmonic " n

for (( i=1; i<=$n; i++ ))
do
	sum+=`expr 1 / $i`;
	harmonics=$harmonics+"1/$i";
	echo "Harmonics= 1/$i";
done

echo "Harmonic number upto $n= $harmonics ";
echo "Harmonic number upto $n= $sum";
