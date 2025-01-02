#!/bin/bash

source "$CONFIG_DIR/color_palette.sh"
COLOR=$WHITE

function main(){
  STATUS=""

  WAN=$(curl -s ifconfig.me)
  if [[ $WAN ]]; then
    # Measure download and upload speeds using speedtest-cli
    WAN_STATS=$(speedtest-cli --simple)
    echo "WAN_STATS: $WAN_STATS"  # Debugging output

    DOWNLOAD_SPEED=$(echo "$WAN_STATS" | awk '/Download/ {print $2}')
    UPLOAD_SPEED=$(echo "$WAN_STATS" | awk '/Upload/ {print $2}')

    # Format the speed values
    DOWNLOAD_FORMAT=$(awk -v down="$DOWNLOAD_SPEED" 'BEGIN {printf "%.2f", down}')
    UPLOAD_FORMAT=$(awk -v up="$UPLOAD_SPEED" 'BEGIN {printf "%.2f", up}')

    # Update the STATUS variable with the download and upload speeds
    COLOR=$GREEN
    STATUS+='P:'
    STATUS+="$(echo $WAN) "
    STATUS+="($DOWNLOAD_FORMAT/$UPLOAD_FORMAT Mbps)"
  else
    COLOR=$RED
    STATUS+='P: down '
  fi

  sketchybar --set $NAME label="$STATUS" label.color="$COLOR"
}

main

#HOMEBREW_AUTO_UPDATE_SECS or disable with
#HOMEBREW_NO_AUTO_UPDATE



# #!/bin/bash

# function main(){
#   STATUS=""

#   WAN=$(curl -s ifconfig.me)
#   if [[ $WAN ]]; then
#     # STATUS+='󰖈 '
#     STATUS+='P: '
#     STATUS+="$(echo $WAN)"
#   else
#     STATUS+='P: down '
#   fi

#   sketchybar --set $NAME label="$STATUS"
# }

# main
