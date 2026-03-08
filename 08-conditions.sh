#!/bin/bash
number=$1
if [ $number -gt 50 ]; then
    echo "given number:$number is greater than 50"
elif [ $number -lt 50 ]; then
    echo "given number $number is less than 50"
else
    echo "given number $number is equal to 50"
fi
