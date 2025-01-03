#!/usr/bin/env sh

#------------------------------------------------------------------------------
# SketchyBar CPU Plugin Setup
#------------------------------------------------------------------------------

source "$CONFIG_DIR/color_palette.sh"
COLOR=$WHITE

# Set the threshold for high CPU usage:
THRESHOLD=80

# Get the CPU usage percentage:
CORE_COUNT=$(sysctl -n machdep.cpu.thread_count)
CPU_INFO=$(ps -eo pcpu,user)
CPU_SYS=$(echo "$CPU_INFO" | grep -v $(whoami) | sed "s/[^ 0-9\.]//g" | awk "{sum+=\$1} END {print sum/(100.0 * $CORE_COUNT)}")
CPU_USER=$(echo "$CPU_INFO" | grep $(whoami) | sed "s/[^ 0-9\.]//g" | awk "{sum+=\$1} END {print sum/(100.0 * $CORE_COUNT)}")
CPU=$(echo "$CPU_SYS $CPU_USER" | awk '{ printf("%d\n", ($1 + $2)*100) }')

# Check if CPU usage is over the threshold:
if [ $CPU -gt $THRESHOLD ]; then
  COLOR=$RED
else
  COLOR=$WHITE
fi

sketchybar --set "$NAME" label="CPU:$CPU%" label.color="$COLOR"
