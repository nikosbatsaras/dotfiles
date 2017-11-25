#!/bin/bash

#######################################
# Shows info from media players.
#
# Dependencies:
# - mpc
#
# @return {String}: Current media info
#######################################

full=""
short=""
status=0

format=${BLOCK_INSTANCE:-'[[%artist% - ]%title%[ \[%album%\]]]|[%file%]'}

current=$(mpc current)
currentLong=$(mpc current -f "$format")
state=`mpc status | awk 'NR==2 {print $1}' | tr -d [ | tr -d ]`

if [[ "$current" ]]; then
    # Make icon mapping
    declare -A icons
    icons["playing"]=""
    icons["paused"]=""
    icons["stopped"]=""

    # Determine which icon to use
    icon=${icons[$state]}

    # full="$icon  $currentLong"
    short="Music  : $current  $icon"
fi

# echo "$full"
echo "$short"
exit "$status"
