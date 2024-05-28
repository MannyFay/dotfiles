#!/bin/bash

memory=(
    # icon.align=left
    # icon.width=20
    icon=󰤃
    icon.padding_right=10
    icon.padding_left=5
    # label.width=50
    # label.align=right
    # padding_right=0
    # padding_left=1
    script="$PLUGIN_DIR/memory.sh"
    update_freq=1
)

sketchybar --add item memory right \
           --set memory "${memory[@]}"

