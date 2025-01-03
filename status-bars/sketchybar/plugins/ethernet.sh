#!/usr/bin/env sh

#------------------------------------------------------------------------------
# SketchyBar Ethernet Item Setup
#------------------------------------------------------------------------------

source "$CONFIG_DIR/color_palette.sh"
COLOR=$WHITE

function main() {
  STATUS=""

  ETHERNET=$(networksetup -listnetworkserviceorder | grep 'LAN, Device' | sed -E "s/.*(en[0-9]).*/\1/")
  if [[ $ETHERNET ]]; then
    # Get the traffic statistics using netstat:
    TRAFFIC=$(netstat -ib | grep -e "$ETHERNET")
    if [[ -n "$TRAFFIC" ]]; then
      DOWN=$(netstat -ib | grep -e "$ETHERNET" | awk '{print $7}')
      UP=$(netstat -ib | grep -e "$ETHERNET" | awk '{print $10}')

      # Convert bytes to megabytes:
      DOWN_Mbps=$(echo $DOWN | awk '{ printf "%03.2f", $1 / 1024 / 1024 / 1024}')
      UP_Mbps=$(echo $UP | awk '{ printf "%03.2f", $1 / 1024 / 1024 / 1024}')

      # Update the STATUS variable with the upload and download speed:
      COLOR=$GREEN
      STATUS+='E:'
      STATUS+="$(ipconfig getifaddr $ETHERNET) "
      STATUS+="($DOWN_Mbps/$UP_Mbps Mbps)"
    else
      COLOR=$RED
      STATUS+='E: down '
    fi
  fi

  sketchybar --set $NAME label="$STATUS" label.color="$COLOR"
}

main

