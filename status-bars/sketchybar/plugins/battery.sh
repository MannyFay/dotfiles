#!/usr/bin/env sh

#------------------------------------------------------------------------------
# SketchyBar Battery Plugin Setup
#------------------------------------------------------------------------------

PERCENTAGE=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
CHARGING=$(pmset -g batt | grep 'AC Power')

if [ $PERCENTAGE = "" ]; then
  exit 0
fi

case ${PERCENTAGE} in
9[0-9] | 100)
  ICON=
  COLOR=$GREEN
  ;;
[6-8][0-9])
  ICON=
  COLOR=$GREEN
  ;;
[3-5][0-9])
  ICON=
  COLOR=$ORANGE
  ;;
[1-2][0-9])
  ICON=
  COLOR=$RED
  ;;
*)
  ICON=
  COLOR=$RED
  ;;
esac

if [[ $CHARGING != "" ]]; then
  ICON=
fi

sketchybar --set $NAME icon="$ICON" label.color=$COLOR
