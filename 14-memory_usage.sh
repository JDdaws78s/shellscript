#!/bin/bash

TOP=$(top)
THRESHOLD_VALUE=0.01


while IFS= read -r line
do
    RAM_USAGE=$(echo "$line | awk -F " " '{print $11F}'")
    if [ $RAM_USAGE -ge $THRESHOLD_VALUE ]
    then
        echo "$line is more the the $THRESHOLD_VALUE"
    fi
done <<< $TOP
