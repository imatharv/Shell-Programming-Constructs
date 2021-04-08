#!/bin/bash 

cat access.log | awk {'print $1'} | uniq -c | sort | tail -10;
