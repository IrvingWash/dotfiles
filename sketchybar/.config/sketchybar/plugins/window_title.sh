WINDOW_TITLE=$(/opt/homebrew/bin/yabai -m query --windows --window | jq -r '.title')

if [[ $WINDOW_TITLE = "" ]]; then
  WINDOW_TITLE=$(/opt/homebrew/bin/yabai -m query --windows --window | jq -r '.app')
fi

shopt -s nocasematch
case $WINDOW_TITLE in
    *nvim*) ICON=;;
    *lazy*) ICON=󰊢;;
    *git*) ICON=󰊢;;
    *bat*) ICON=;;
    *btm*) ICON=;;
    *yazi*) ICON=;;
    *karakuri*) ICON=;;
    *projects*) ICON=󰅨;;
    *ppg*) ICON=󰅨;;
    *dot*) ICON=󱗿;;
esac

if [[ ${#WINDOW_TITLE} -gt 50 ]]; then
  WINDOW_TITLE=$(echo "$WINDOW_TITLE" | cut -c 1-50)
  sketchybar -m --set title label="│ $WINDOW_TITLE" icon="$ICON"
  exit 0
fi

sketchybar -m --set $NAME label="$WINDOW_TITLE" icon="$ICON"
