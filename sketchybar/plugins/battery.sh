#!/bin/sh

source "$CONFIG_DIR/color_palette.sh"
COLOR=$WHITE

PERCENTAGE="$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)"
CHARGING="$(pmset -g batt | grep 'AC Power')"

if [ "$PERCENTAGE" = "" ]; then
  exit 0
fi

case "${PERCENTAGE}" in
  [1-2][0-9]) COLOR=$RED
esac

# case "${PERCENTAGE}" in
#   9[0-9]|100) ICON=""
#   COLOR=$GREEN
#   # label.color=$COLOR_GREEN
#   ;;
#   [6-8][0-9]) ICON=""
#   COLOR=$GREEN
#   # label.color=$COLOR_GREEN
#   ;;
#   [3-5][0-9]) ICON=""
#   COLOR=$GREEN
#   # label.color=$COLOR_GREEN
#   ;;
#   [1-2][0-9]) ICON=""
#   COLOR=$GREEN
#   # label.color=$COLOR_GREEN
#   ;;
#   *) ICON=""
# esac

# if [[ "$CHARGING" != "" ]]; then
#   ICON=""
# fi

if [[ "$CHARGING" != "" ]]; then
  COLOR=$GREEN
  # label.color=$COLOR_GREEN
  # battery=(
  #   label.highlight=on
  #   label.highlight_color=0xff4FA544
  # )
fi

# The item invoking this script (name $NAME) will get its icon and label
# updated with the current battery status
# sketchybar --set "$NAME" icon="$ICON" label="Bat: ${PERCENTAGE}%" label.color="$COLOR"
sketchybar --set "$NAME" label="Bat:${PERCENTAGE}%" label.color="$COLOR"
