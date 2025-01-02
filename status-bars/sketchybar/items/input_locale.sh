#!/bin/bash

input_locale=(
    # label.width=18
    # label.align=right
    # padding_right=0
    # padding_left=0
    script="$PLUGIN_DIR/input_locale.sh"
    icon=󰤃
    # icon.align=left
    icon.padding_right=9
    icon.padding_left=5
    update_freq=1
)

sketchybar --add item input_locale right \
           --set input_locale "${input_locale[@]}" \
           --subscribe input_locale input_locale_change

