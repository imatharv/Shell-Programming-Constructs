#!/bin/bash 

cat access.log | awk {'print $9 " " $10 '} | sort | uniq -c;
