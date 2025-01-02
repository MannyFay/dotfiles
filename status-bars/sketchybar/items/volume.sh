#!/usr/bin/env sh

#------------------------------------------------------------------------------
# SketchyBar Volume Item Setup
#------------------------------------------------------------------------------

volume=(
    icon.align=left
    # icon.width=40
    # icon.height=40
    # icon.font=14.0
    icon.font="MesloLGMDZ Nerd Font Mono:Bold:22.0"
    y_offset=-1
    icon.padding_left=10
    icon.padding_right=10
    script="$PLUGIN_DIR/volume.sh"
)

sketchybar --add item volume right          \
           --set volume "${volume[@]}"      \
           --subscribe volume volume_change

