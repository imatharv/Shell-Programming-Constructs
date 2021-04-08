#!/bin/bash 

cat access.log | awk {'print $11'} | uniq -c | sort | tail -4;
