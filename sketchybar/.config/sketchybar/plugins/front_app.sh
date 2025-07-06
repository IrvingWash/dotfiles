#!/bin/sh

if [ "$SENDER" = "front_app_switched" ]; then
    case "$INFO" in
        "Ghostty") ICON=;;
        "Arc") ICON=󰾔;;
        "Google Chrome") ICON=󰾔;;
        "Telegram") ICON=;;
        "Slack") ICON=;;
        "Finder") ICON=󰀶;;
        "IINA") ICON=󰃽;;
        "Thunderbird") ICON=;;
        "Code") ICON=;;
        "Notes") ICON=;;
        "Calendar") ICON=;;
        "Reminders") ICON=󱖫;;
        "Steam") ICON=;;
        "System Settings") ICON=;;
        "Outline") ICON=󰖂;;
        "Music") ICON=󰎄;;
        "App Store") ICON=;;
    esac

    sketchybar --set "$NAME" icon="$ICON" label="$INFO"
fi
