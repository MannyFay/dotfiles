#!/usr/bin/env sh

#------------------------------------------------------------------------------
# SketchyBar Separator Item Setup
#------------------------------------------------------------------------------

ITEM_NAME=${1:-separator}

separator=(
    icon.align=center
    icon=󰤃
    icon.padding_right=8
    icon.padding_left=6
    script="$PLUGIN_DIR/separator.sh"
)

sketchybar --add item "$ITEM_NAME" right        \
           --set "$ITEM_NAME" "${separator[@]}"
