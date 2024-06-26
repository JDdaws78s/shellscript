#!/bin/bash

TOP=$(top)
THRESHOLD_VALUE=0.1


while IFS= read -r line
do
    RAM_USAGE=$(echo $line | awk -F " " '{print $11F}')
    if [ $RAM_USAGE -ge $THRESHOLD_VALUE ]
    then
        Message+="$RAM_USAGE is more than the $THRESHOLD_VALUE"
    fi
done <<< $TOP

echo "$Message"
