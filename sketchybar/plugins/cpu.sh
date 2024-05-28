#!/bin/sh

source "$CONFIG_DIR/color_palette.sh"
COLOR=$WHITE

# Set the threshold for high CPU usage
THRESHOLD=80

# Get the CPU usage percentage
CORE_COUNT=$(sysctl -n machdep.cpu.thread_count)
CPU_INFO=$(ps -eo pcpu,user)
CPU_SYS=$(echo "$CPU_INFO" | grep -v $(whoami) | sed "s/[^ 0-9\.]//g" | awk "{sum+=\$1} END {print sum/(100.0 * $CORE_COUNT)}")
CPU_USER=$(echo "$CPU_INFO" | grep $(whoami) | sed "s/[^ 0-9\.]//g" | awk "{sum+=\$1} END {print sum/(100.0 * $CORE_COUNT)}")
CPU=$(echo "$CPU_SYS $CPU_USER" | awk '{ printf("%d\n", ($1 + $2)*100) }')

# Check if CPU usage is over the threshold
if [ $CPU -gt $THRESHOLD ]; then
    COLOR=$RED  # Set color to red if CPU usage is high
else
    COLOR=$WHITE  # Set color to white if CPU usage is normal
fi

# Update Sketchybar with the CPU usage label and color
sketchybar --set "$NAME" label="CPU:$CPU%" label.color="$COLOR"
















# CORE_COUNT=$(sysctl -n machdep.cpu.thread_count)
# CPU_INFO=$(ps -eo pcpu,user)
# CPU_SYS=$(echo "$CPU_INFO" | grep -v $(whoami) | sed "s/[^ 0-9\.]//g" | awk "{sum+=\$1} END {print sum/(100.0 * $CORE_COUNT)}")
# CPU_USER=$(echo "$CPU_INFO" | grep $(whoami) | sed "s/[^ 0-9\.]//g" | awk "{sum+=\$1} END {print sum/(100.0 * $CORE_COUNT)}")

# CPU=$(echo "$CPU_SYS $CPU_USER" | awk '{ printf("%02.0f\n", ($1 + $2)*100) }')

# sketchybar --set "$NAME" label="CPU:$CPU%"
