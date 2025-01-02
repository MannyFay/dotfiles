#!/usr/bin/env sh

#------------------------------------------------------------------------------
# SketchyBar Plugin Setup
#------------------------------------------------------------------------------

DIRECTORY="$HOME/.config/sketchybar/plugins"

# Check if the directory exists:
if [ ! -d "$DIRECTORY" ]; then
    echo "Error: $DIRECTORY does not exist."
    exit 1
fi

# Iterate through all files in the directory and make them an executable:
for FILE in "$DIRECTORY"/*; do
    if [ -f "$FILE" ]; then
        chmod +x "$FILE"
        echo "Made executable: $FILE"
    fi
done
