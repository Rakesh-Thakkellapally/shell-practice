#!/bin/bash
StartTime=$(date +"%Y-%m-%d_%H-%M-%S")
echo "script executed start time is :$StartTime"
sleep 10
endTime=$(date +"%Y-%m-%d_%H-%M-%S")
echo "script execution end time is :$endTime"
totaltime=$(($endTime-$StartTime))
echo "Total time taken for execution is :$totaltime"
