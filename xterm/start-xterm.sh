#!/usr/bin/env bash

if [ ! -f ~/dotfiles/xterm/.xterm-start-marker ]; then
    xterm &
    touch ~/dofiles/xterm/.xterm-start-marker
    exit
fi