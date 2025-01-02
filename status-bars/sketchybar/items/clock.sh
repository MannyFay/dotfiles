#!/bin/bash

clock=(
    icon=󰤃
    # icon.align=left
    # icon.width=71
    icon.padding_right=10
    icon.padding_left=5
    # label.width=100
    label.align=right
    # padding_right=0
    # padding_left=1
    script="$PLUGIN_DIR/clock.sh"
    update_freq=60
)

sketchybar --add item clock right \
           --set clock "${clock[@]}"

