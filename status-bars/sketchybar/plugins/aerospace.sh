#!/usr/bin/env sh

#------------------------------------------------------------------------------
# SketchyBar Aerospace WM Plugin Setup
#------------------------------------------------------------------------------

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set $NAME background.drawing=on \
    label.color=0xff252525
else
  sketchybar --set $NAME background.drawing=off \
    label.color=0xffABABAB
fi
