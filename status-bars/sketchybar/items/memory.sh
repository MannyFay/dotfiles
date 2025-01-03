#!/usr/bin/env sh

#------------------------------------------------------------------------------
# SketchyBar Memory Item Setup
#------------------------------------------------------------------------------

memory=(
  script="$PLUGIN_DIR/memory.sh"
  update_freq=1
)

sketchybar --add item memory right     \
           --set memory "${memory[@]}"
