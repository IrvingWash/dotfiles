#!/bin/bash

spaces=$(yabai -m query --spaces)
space_exists=$(echo "$spaces" | jq --argjson SPACE $1'.[] | select(.index == $SPACE)')

if [ -n "$space_exists" ]; then
    yabai -m window --space $1
else
    current_space_count=$(echo "$spaces" | jq 'length')
    spaces_to_create=$(($1 - current_space_count))

    if (( spaces_to_create > 0 )); then
        for ((i = 0; i < spaces_to_create; i++)); do
            yabai -m space --create
        done
    fi

    yabai -m window --space $1
fi
