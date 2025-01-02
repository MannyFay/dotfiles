#!/usr/bin/env sh

#------------------------------------------------------------------------------
# SketchyBar Date/Time Plugin Setup
#------------------------------------------------------------------------------

# The $NAME variable is passed from sketchybar and holds the name of
# the item invoking this script:
# https://felixkratz.github.io/SketchyBar/config/events#events-and-scripting

sketchybar --set "$NAME" label="$(date +'%a %d/%m/%Y W:%V %I:%M %p')"

