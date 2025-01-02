#!/bin/bash

source "$CONFIG_DIR/color_palette.sh"
COLOR=$WHITE

function main(){
  STATUS=""

  WIFI=$(networksetup -listnetworkserviceorder | grep 'Wi-Fi, Device' | sed -E "s/.*(en[0-9]).*/\1/")
  if [[ $WIFI ]]; then
    if [[ $(ifconfig $WIFI | grep -E "status: active") ]]; then
      # Get the upload and download speed using netstat
      DOWN=$(netstat -ib | grep -e "$WIFI" | awk '{print $7}')
      UP=$(netstat -ib | grep -e "$WIFI" | awk '{print $10}')

      # Format the speed values
      DOWN_FORMAT=$(echo $DOWN | awk '{ printf "%03.2f", $1 / 1024 / 1024}')
      UP_FORMAT=$(echo $UP | awk '{ printf "%03.2f", $1 / 1024 / 1024}')

      # Update the STATUS variable with the upload and download speed
      COLOR=$GREEN
      STATUS+='W:'
      STATUS+="$(ipconfig getifaddr $WIFI) "
      STATUS+="($DOWN_FORMAT/$UP_FORMAT Mbps)"
    else
      COLOR=$RED
      STATUS+='W: down '
    fi
  fi

  sketchybar --set $NAME label="$STATUS" label.color="$COLOR"
}

main

