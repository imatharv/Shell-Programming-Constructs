#!/bin/bash -x

leap=2024
echo "taking year as $leap"
if [ `expr $leap % 4` -eq 0 ]
then
echo "leap year"
else
echo "not leap year"
fi