#!/usr/bin/env sh

#------------------------------------------------------------------------------
# SketchyBar Input Locale Plugin Setup
#------------------------------------------------------------------------------

# Get the currently selected input source:
selected_input_source=$(defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleCurrentKeyboardLayoutInputSourceID)

# Extract the language code from the input source name:
if [[ "$selected_input_source" =~ com\.apple\.keylayout\.US ]]; then
    input_source_language="US"
elif [[ "$selected_input_source" =~ com\.apple\.keylayout\.ABC ]]; then
    input_source_language="DE"
else
    input_source_language="$selected_input_source"
fi

sketchybar --set "$NAME" label="$input_source_language" $ICON
