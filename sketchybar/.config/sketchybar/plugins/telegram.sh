#!/usr/bin/env sh

STATUS_LABEL=$(lsappinfo info -only StatusLabel "Telegram")

ICON=""

if [[ $STATUS_LABEL =~ \"label\"=\"([^\"]*)\" ]]; then
    LABEL="${BASH_REMATCH[1]}"

    if [[ $LABEL == "" ]]; then
        ICON_COLOR="0xffa6da95"
    elif [[ $LABEL == "•" ]]; then
        ICON_COLOR="0xffeed49f"
    elif [[ $LABEL =~ ^[0-9]+$ ]]; then
        ICON_COLOR="0xffed8796"
    else
        ICON_COLOR="0xff807251"
    fi
else
    ICON_COLOR="0xff807251"
fi

sketchybar --set $NAME icon=$ICON label="${LABEL}" icon.color=${ICON_COLOR}
