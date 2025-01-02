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

# sketchybar --add event aerospace_workspace_change

# for monitor in $(aerospace list-monitors | awk '{print $1}'); do
#   sketchybar --add item space.$monitor left \
#     --subscribe space.$monitor aerospace_workspace_change \
#     --set space.$monitor \
#     background.color=0x35ffffff \
#     background.corner_radius=4 \
#     background.height=20 \
#     background.drawing=off \
#     icon.font.size=10 \
#     label.font.size=14 \
#     icon.padding_right=2 \
#     label.padding_left=2 \
#     icon=$monitor \
#     label=$(aerospace list-workspaces --monitor $monitor --visible) \
#     script="$PLUGIN_DIR/aerospace.sh $monitor"
# done

# for mid in $(aerospace list-monitors | awk '{print $1}'); do
#   for sid in $(aerospace list-workspaces --monitor $mid); do
#     sketchybar --add item space.$sid left \
#         --subscribe space.$sid aerospace_workspace_change \
#         --set space.$sid \
#         display=$(( mid == 1 ? mid + 2 : mid - 1 )) \
#         background.color=0x35ffffff \
#         background.corner_radius=4 \
#         icon.padding_left=5 \
#         icon.padding_right=5 \
#         background.height=20 \
#         background.drawing=off \
#         label="$sid" \
#         click_script="aerospace workspace $sid" \
#         script="$CONFIG_DIR/plugins/aerospace.sh $sid"
#     done
# done
