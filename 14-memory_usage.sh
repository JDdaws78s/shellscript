#!/bin/bash

RAM_USAGE=$(top | awk -F " " '{print $11F}')



while IFS= read -r line
do
    THRESHOLD_VALUE=0.01
    if [ $line -ge $THRESHOLD_VALUE ]
    then
        echo "$line is more the the $THRESHOLD_VALUE"
    fi
done <<< $RAM_USAGE
