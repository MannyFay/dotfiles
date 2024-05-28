#!/bin/bash

public_ip=(
    icon=󰤃
    icon.padding_right=10
    icon.padding_left=5
    script="$PLUGIN_DIR/public_ip.sh"
    update_freq=900
)

sketchybar --add item public_ip right \
           --set public_ip "${public_ip[@]}"

