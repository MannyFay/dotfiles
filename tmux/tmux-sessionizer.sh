#!/usr/bin/env bash

if [[ $# -eq 1 ]]; then
    selected=$1
else
    selected=$(find ~ ~/personal/github ~/personal/gitlab ~/work/fitcrew ~/work/fitcrew/gitlab ~/work/vds ~/work/vds/github /Volumes/Users/manny/Library/Mobile\ Documents/iCloud~md~obsidian/Documents -mindepth 1 -maxdepth 1 -type d | fzf)
fi

if [[ -z $selected ]]; then
    exit 0
fi

if [[ ! -d $selected ]]; then
    echo "Directory '$selected' does not exist."
    exit 1
fi

selected_name=$(basename "$selected" | tr . _)
tmux_running=$(pgrep tmux)

if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
    tmux new-session -s $selected_name -c $selected
    exit 0
fi

if ! tmux has-session -t=$selected_name 2> /dev/null; then
    tmux new-session -ds $selected_name -c $selected
fi

tmux switch-client -t $selected_name
