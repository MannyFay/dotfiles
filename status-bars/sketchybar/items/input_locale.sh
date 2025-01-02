#!/usr/bin/env sh

#------------------------------------------------------------------------------
# SketchyBar Input Locale Item Setup
#------------------------------------------------------------------------------

input_locale=(
    icon=󰤃
    icon.padding_right=9
    icon.padding_left=5
    script="$PLUGIN_DIR/input_locale.sh"
    update_freq=1
)

sketchybar --add item input_locale right \
           --set input_locale "${input_locale[@]}" \
           --subscribe input_locale input_locale_change

