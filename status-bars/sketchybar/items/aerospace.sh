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
    y_offset=1 \
    icon.padding_left=0 \
    icon.padding_right=0 \
    icon.align=center \
    background.color=0xff569CD6 \
    background.corner_radius=0 \
    background.height=20 \
    background.width=2 \
    background.drawing=off \
    label="$sid" \
    label.align=left \
    label.padding_left=4 \
    label.padding_right=5 \
    label.color=0xffABABAB \
    click_script="aerospace workspace $sid" \
    script="$PLUGIN_DIR/aerospace.sh $sid"
done
