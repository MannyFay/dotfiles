#!/bin/bash

source "$CONFIG_DIR/color_palette.sh"
COLOR=$WHITE

function main(){
  STATUS=""

  ETHERNET=$(networksetup -listnetworkserviceorder | grep 'LAN, Device' | sed -E "s/.*(en[0-9]).*/\1/")
  if [[ $ETHERNET ]]; then
    # Get the traffic statistics using netstat
    TRAFFIC=$(netstat -ib | grep -e "$ETHERNET")
    if [[ -n "$TRAFFIC" ]]; then
      DOWN=$(netstat -ib | grep -e "$ETHERNET" | awk '{print $7}')
      UP=$(netstat -ib | grep -e "$ETHERNET" | awk '{print $10}')

      # Convert bytes to megabytes
      DOWN_Mbps=$(echo $DOWN | awk '{ printf "%03.2f", $1 / 1024 / 1024 / 1024}')
      UP_Mbps=$(echo $UP | awk '{ printf "%03.2f", $1 / 1024 / 1024 / 1024}')

      # Update the STATUS variable with the upload and download speed
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



  # if [[ $ETHERNET ]]; then
    # if [[ $(ifconfig $ETHERNET | grep -E "status: active") ]]; then
      # Get the upload and download speed using ifstat
    # if [[ $(ifstat $ETHERNET | grep -E "status: active") ]]; then
      # UPDOWN=$(ifstat)
      # DOWN=$(echo $UPDOWN | awk '{print $19}')
      # DOWN=$(ifstat | grep -e "$ETHERNET" | awk '{print $19}')
      # UP=$(echo $UPDOWN | awk '{print $20}')

      # Format the speed values
      # DOWN_FORMAT=$(echo $DOWN | awk '{ printf "%03.2f", $1 / 1024}')
      # UP_FORMAT=$(echo $UP | awk '{ printf "%03.2f", $1 / 1024}')

      # Update the STATUS variable with the upload and download speed
      # COLOR=$GREEN
      # STATUS+='E:'
      # STATUS+="$(ipconfig getifaddr $ETHERNET) "
      # STATUS+="($DOWN_FORMAT/$UP_FORMAT Mbps)"
    # else
      # COLOR=$RED
      # STATUS+='E: down '
    # fi
  # fi


# #!/bin/bash

# function main(){
#   STATUS=""

#   ETHERNET=$(networksetup -listnetworkserviceorder | grep 'LAN, Device' | sed -E "s/.*(en[0-9]).*/\1/")
#   if [[ $ETHERNET ]]; then
#     if [[ $(ifconfig $ETHERNET | grep -E "status: active") ]]; then
#       # STATUS+='󰈀 '
#       STATUS+='E: '
#       STATUS+="$(ipconfig getifaddr $ETHERNET) "
#       # STATUS+=" "
#     else
#       STATUS+='E: down '
#     fi
#   fi

#   sketchybar --set $NAME label="$STATUS"
# }

# main
