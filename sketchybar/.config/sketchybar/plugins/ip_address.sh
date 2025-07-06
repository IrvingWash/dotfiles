#!/bin/sh

IP_ADDRESS=$(scutil --nwi | grep address | sed 's/.*://' | tr -d ' ' | head -1)
IS_VPN=$(scutil --nwi | grep -m1 'utun' | awk '{ print $1 }')

if [[ $IS_VPN != "" ]]; then
    ICON=󰒄
elif [[ $IP_ADDRESS != "" ]]; then
    ICON=󰛳
else
    ICON=󰲛
fi

sketchybar --set $NAME \
    icon=$ICON         \
    label="$LABEL"
