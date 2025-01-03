#!/usr/bin/env sh

#------------------------------------------------------------------------------
# SketchyBar Memory Item Setup
#------------------------------------------------------------------------------

source "$CONFIG_DIR/color_palette.sh"
COLOR=$WHITE

# Set the threshold for high memory usage:
THRESHOLD=80

# Get the memory usage percentage:
MEMORY=$(memory_pressure | grep "System-wide memory free percentage:" | awk '{ printf("%d\n", 100-$5) }')

# Check if memory usage is over the threshold:
if [ $MEMORY -gt $THRESHOLD ]; then
  COLOR=$RED
else
  COLOR=$WHITE
fi

sketchybar --set "$NAME" label="Mem:$MEMORY%" label.color="$COLOR"
