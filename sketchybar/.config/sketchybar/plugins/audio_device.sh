#!/bin/sh

CURRENT_DEVICE="$(SwitchAudioSource -c)"

if [[ "$CURRENT_DEVICE" == *Pods* || "$CURRENT_DEVICE" == *Buds* ]]; then
    ICON=󰋋
else
    ICON=󰟎
fi

sketchybar --set "$NAME" icon="$ICON"
