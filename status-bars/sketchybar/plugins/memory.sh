#!/bin/sh

source "$CONFIG_DIR/color_palette.sh"
COLOR=$WHITE

# Set the threshold for high memory usage
THRESHOLD=80

# Get the memory usage percentage
MEMORY=$(memory_pressure | grep "System-wide memory free percentage:" | awk '{ printf("%d\n", 100-$5) }')

# Check if memory usage is over the threshold
if [ $MEMORY -gt $THRESHOLD ]; then
    COLOR=$RED  # Set color to red if memory usage is high
else
    COLOR=$WHITE  # Set color to white if memory usage is normal
fi

# Update Sketchybar with the memory usage label and color
sketchybar --set "$NAME" label="Mem:$MEMORY%" label.color="$COLOR"



# MEMORY=$(memory_pressure | grep "System-wide memory free percentage:" | awk '{ printf("%02.0f\n", 100-$5"%") }')

# sketchybar --set "$NAME" label="Mem:$MEMORY%"
