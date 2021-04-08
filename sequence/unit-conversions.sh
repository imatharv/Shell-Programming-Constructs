#!/bin/bash

oneFt=12
inch=48
cal=$(($inch / $oneFt));
echo "48inch = $cal ft";

conv=0.09;
sqft=$((60*40));
sqmt=$(($sqft * $conv));
echo "60ft x 40ft = $sqmt sqmt"

fivePlots=$(( (60*40)*5 ));
echo "area of 5 plots of 60ft x 40ft = $fivePlots sqft"
val=$(( $fivePlots*2.29 ));
echo "area of 5 plots of 60ft x 40ft = $val sqmt"