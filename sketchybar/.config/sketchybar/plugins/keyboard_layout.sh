#!/bin/bash

# this is jank and ugly, I know
LAYOUT="$(defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleSelectedInputSources | grep "KeyboardLayout Name" | cut -c 33- | rev | cut -c 2- | rev)"

case "$LAYOUT" in
    "\"Colemak DH Matrix\"") SHORT_LAYOUT="CMDH";;
    "Russian") SHORT_LAYOUT="RU";;
    "\"U.S.\"") SHORT_LAYOUT="US";;
    "\"Georgian-QWERTY\"") SHORT_LAYOUT="GE";;
    *) SHORT_LAYOUT=$LAYOUT;;
esac

sketchybar --set keyboard label="$SHORT_LAYOUT"
