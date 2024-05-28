#!/bin/bash

volume=(
    icon.align=left
    icon.width=24
    icon.padding_left=7
    script="$PLUGIN_DIR/volume.sh"
)

sketchybar --add item volume right \
           --set volume "${volume[@]}" \
           --subscribe volume volume_change

