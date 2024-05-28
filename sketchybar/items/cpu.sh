#!/bin/bash

cpu=(
    icon=󰤃
    icon.padding_right=10
    icon.padding_left=5
    script="$PLUGIN_DIR/cpu.sh"
    update_freq=1
)

sketchybar --add item cpu right \
           --set cpu "${cpu[@]}"
