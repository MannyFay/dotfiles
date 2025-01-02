#!/bin/bash

ethernet=(
    icon=󰤃
    icon.padding_right=10
    icon.padding_left=5
    script="$PLUGIN_DIR/ethernet.sh"
    update_freq=1
)

sketchybar --add item ethernet right \
           --set ethernet "${ethernet[@]}"

