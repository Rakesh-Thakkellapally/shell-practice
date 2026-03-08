#!/bin/bash
StartTime=$(date +"%S")
echo "script executed start time is :$StartTime"
sleep 10
endTime=$(date +"%S")
echo "script execution end time is :$endTime"
totaltime=$(($endTime-$StartTime))
echo "Total time taken for execution is :$totaltime"
