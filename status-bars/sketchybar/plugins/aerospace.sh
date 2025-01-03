#!/usr/bin/env sh

#------------------------------------------------------------------------------
# SketchyBar Aerospace WM Plugin Setup
#------------------------------------------------------------------------------

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set $NAME background.drawing=on
else
  sketchybar --set $NAME background.drawing=off
fi
