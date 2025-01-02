#!/usr/bin/env sh

#------------------------------------------------------------------------------
# SketchyBar Date/Time Item Setup
#------------------------------------------------------------------------------

clock=(
    icon=󰤃
    icon.padding_right=10
    icon.padding_left=5
    label.align=right
    script="$PLUGIN_DIR/clock.sh"
    update_freq=60
)

sketchybar --add item clock right \
           --set clock "${clock[@]}"

