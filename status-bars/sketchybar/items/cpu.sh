#!/usr/bin/env sh

#------------------------------------------------------------------------------
# SketchyBar CPU Item Setup
#------------------------------------------------------------------------------

cpu=(
  script="$PLUGIN_DIR/cpu.sh"
  update_freq=1
)

sketchybar --add item cpu right  \
           --set cpu "${cpu[@]}"
