#!/usr/bin/env sh

#------------------------------------------------------------------------------
# SketchyBar Public IP Item Setup
#------------------------------------------------------------------------------

public_ip=(
  script="$PLUGIN_DIR/public_ip.sh"
  update_freq=900
)

sketchybar --add item public_ip right        \
           --set public_ip "${public_ip[@]}"
