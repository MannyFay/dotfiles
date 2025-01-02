#!/bin/bash

battery=(
    # icon.align=left
    # icon.width=60
    icon=󰤃
    icon.padding_right=10
    icon.padding_left=5
    # label.width=10
    # label.align=right
    # padding_right=0
    # padding_left=1
    script="$PLUGIN_DIR/battery.sh"
    update_freq=120
)

sketchybar --add item battery right \
           --set battery "${battery[@]}" \
           --subscribe battery system_woke power_source_change
