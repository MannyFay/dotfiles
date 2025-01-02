#!/usr/bin/env sh

#------------------------------------------------------------------------------
# SketchyBar Aerospace WM Plugin Setup
#------------------------------------------------------------------------------

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set $NAME background.drawing=on
else
    sketchybar --set $NAME background.drawing=off
fi

# source "$CONFIG_DIR/color_palette.sh"

# if [ "$1" = $(aerospace list-monitors --focused | awk '{print $1}') ]; then
#     sketchybar --set $NAME background.drawing=on
#     sketchybar --set $NAME label=$FOCUSED_WORKSPACE
#     sketchybar --set $NAME icon.highlight_color=$BLACK
# else
#     sketchybar --set $NAME background.drawing=off
# fi
