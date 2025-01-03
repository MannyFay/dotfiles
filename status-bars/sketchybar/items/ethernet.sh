#!/usr/bin/env sh

#------------------------------------------------------------------------------
# SketchyBar Ethernet Item Setup
#------------------------------------------------------------------------------

ethernet=(
  script="$PLUGIN_DIR/ethernet.sh"
  update_freq=1
)

sketchybar --add item ethernet right       \
           --set ethernet "${ethernet[@]}"
