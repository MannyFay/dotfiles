#!/usr/bin/env sh

#------------------------------------------------------------------------------
# SketchyBar Workspaces Item Setup (Yabai WM)
#------------------------------------------------------------------------------

source "$CONFIG_DIR/color_palette.sh"

SPACE_ICONS=("1" "2" "3" "4" "5" "6" "7" "8" "9" "10" "11" "12" "13" "14" "15" "16" "17" "18" "19" "20" "21" "22" "23" )
sid=0
# spaces=()

for i in "${!SPACE_ICONS[@]}"
do
  sid=$(($i+1))
  space=(
    associated_display=active
    associated_space="$sid"
    icon="${SPACE_ICONS[i]}"
    icon.padding_left=5
    icon.padding_right=5
    padding_left=0
    padding_right=0
    icon.highlight_color=$BLACK
    script="$PLUGIN_DIR/space.sh"
    # click_script="yabai -m space --focus $sid"
    # click_script='sketchybar --trigger space_change'
  )
  sketchybar --add space space."$sid" left        \
             --set space."$sid" "${space[@]}"     \
             --subscribe space.$sid mouse.clicked

done

