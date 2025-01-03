#!/usr/bin/env sh

#------------------------------------------------------------------------------
# SketchyBar Battery Item Setup
#------------------------------------------------------------------------------

battery=(
    icon.align=left
    icon.font="MesloLGMDZ Nerd Font Mono:Bold:10.0"
    script="$PLUGIN_DIR/battery.sh"
    update_freq=120
)

sketchybar --add item battery right                            \
           --set battery "${battery[@]}"                       \
           --subscribe battery system_woke power_source_change
