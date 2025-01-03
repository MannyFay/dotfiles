#!/usr/bin/env sh

#------------------------------------------------------------------------------
# SketchyBar Workspaces Item Setup (Yabai WM)
#------------------------------------------------------------------------------

update() {
  source "$CONFIG_DIR/color_palette.sh"
  COLOR=$BLACK
  if [ "$SELECTED" = "true" ]; then
    COLOR=$BLUE
  fi
  sketchybar --set $NAME icon.highlight=$SELECTED \
    label.highlight=$SELECTED \
    background.color=$COLOR
}

mouse_clicked() {
  # if [ "$BUTTON" = "right" ]; then
  #   yabai -m space --destroy $SID
  #   sketchybar --trigger windows_on_spaces --trigger space_change
  # else
  yabai -m space --focus $id
  # fi
}

case "$SENDER" in
"mouse.clicked")
  mouse_clicked
  ;;
*)
  update
  ;;
esac
