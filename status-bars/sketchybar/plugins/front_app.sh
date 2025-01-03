#!/usr/bin/env sh

#------------------------------------------------------------------------------
# SketchyBar Front-App Item Setup
#------------------------------------------------------------------------------

if [ "$SENDER" = "front_app_switched" ]; then
  sketchybar --set "$NAME" label="$INFO"
fi
