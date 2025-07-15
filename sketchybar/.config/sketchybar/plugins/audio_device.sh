#!/bin/sh

CURRENT_DEVICE="$(SwitchAudioSource -c)"

if [[ "$CURRENT_DEVICE" == *AirPods* || "$CURRENT_DEVICE" == *Buds* ]]; then
    ICON=󰋋
else
    ICON=󰟎
fi

sketchybar --set "$NAME" icon="$ICON"
