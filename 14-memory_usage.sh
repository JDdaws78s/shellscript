#!/bin/bash

RAM_USAGE=$(top | awk -F " " '{print $11F}')
THRESHOLD_VALUE=0.01


while IFS= read -r line
do
    if [ $line -ge $THRESHOLD_VALUE ]
    then
        echo "$line is more the the $THRESHOLD_VALUE"
    else
        echo "11"
        exit 1
    fi
done <<< $RAM_USAGE
