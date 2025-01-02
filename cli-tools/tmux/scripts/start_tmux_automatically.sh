#!/usr/bin/env sh

#------------------------------------------------------------------------------
# Start tmux on Shell Startup
#------------------------------------------------------------------------------

# Make this script an executable:
# chmod +x $DOTFILES/cli-tools/tmux/scripts/start_tmux_automatically.sh
# Add this to your .zshrc:
# $DOTFILES/cli-tools/tmux/scripts/start_tmux_automatically.sh

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

