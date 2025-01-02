#!/bin/bash

# Get the currently selected input source
selected_input_source=$(defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleCurrentKeyboardLayoutInputSourceID)

# Extract the language code from the input source name
if [[ "$selected_input_source" =~ com\.apple\.keylayout\.US ]]; then
    input_source_language="US"
elif [[ "$selected_input_source" =~ com\.apple\.keylayout\.German ]]; then
    input_source_language="DE"
else
    input_source_language="$selected_input_source"
fi

# Update SketchyBar with the input source name
sketchybar --set "$NAME" label="$input_source_language"
