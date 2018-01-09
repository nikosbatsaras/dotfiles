#!/bin/bash

while true
do
    output=""
    output+="Battery: `cat /sys/class/power_supply/BAT0/capacity`% |"
    output+=" `date +'%A, %d %B %Y | %X'`"

    echo "$output"

    sleep 1
done
