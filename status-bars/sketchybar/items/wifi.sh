#!/bin/bash

wifi=(
    script="$PLUGIN_DIR/wifi.sh"
    update_freq=1
)

sketchybar --add item wifi right \
           --set wifi "${wifi[@]}"

