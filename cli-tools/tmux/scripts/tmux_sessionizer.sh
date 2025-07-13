#!/usr/bin/env bash

if [[ $# -eq 1 ]]; then
  selected=$1
else
  selected=$(find ~ ~/personal/github ~/personal/github/contributions ~/personal/gitlab ~/personal/gitlab/Ansible ~/personal/gitlab/Ansible/Server-Setups ~/work/vds ~/work/vds/github -mindepth 1 -maxdepth 1 -type d | fzf)
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

# Check if tmux is not running or if $TMUX is not set
if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
  # Start a new tmux session with the selected directory
  tmux new-session -s "$selected_name" -c "$selected"
  exit 0
fi

# Check if the session exists
if ! tmux has-session -t="$selected_name" 2>/dev/null; then
  # If session doesn't exist, start a detached tmux session
  tmux new-session -ds "$selected_name" -c "$selected"
fi

# Switch to the tmux session
tmux switch-client -t "$selected_name"
