#!/usr/bin/env sh

#------------------------------------------------------------------------------
# SketchyBar Aerospace WM Item Setup
#------------------------------------------------------------------------------

source "$CONFIG_DIR/color_palette.sh"

sketchybar --add event aerospace_workspace_change

for sid in $(aerospace list-workspaces --all); do
  sketchybar --add item space.$sid left \
    --subscribe space.$sid aerospace_workspace_change \
    --set space.$sid \
    icon.padding_left=2 \
    icon.padding_right=2 \
    icon.highlight_color=$BLACK \
    background.color=0xff569CD6 \
    background.corner_radius=0 \
    background.height=20 \
    background.drawing=off \
    label="$sid" \
    click_script="aerospace workspace $sid" \
    script="$PLUGIN_DIR/aerospace.sh $sid"
done
