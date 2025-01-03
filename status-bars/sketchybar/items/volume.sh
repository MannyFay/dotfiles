#!/usr/bin/env sh

#------------------------------------------------------------------------------
# SketchyBar Volume Item Setup
#------------------------------------------------------------------------------

volume=(
    icon.align=left
    icon.padding_right=4
    icon.font="MesloLGMDZ Nerd Font Mono:Bold:22.0"
    y_offset=-1
    script="$PLUGIN_DIR/volume.sh"
)

sketchybar --add item volume right          \
           --set volume "${volume[@]}"      \
           --subscribe volume volume_change

