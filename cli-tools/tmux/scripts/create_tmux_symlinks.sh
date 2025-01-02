#!/usr/bin/env sh

#------------------------------------------------------------------------------
# tmux Symlinking
#------------------------------------------------------------------------------

# Set path to dotfiles directory:
DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Remove old tmux configuration:
rm -rf $HOME/.tmux.conf
rm -rf $HOME/.config/tmux

# Link tmux configuration from dotfiles:
ln -s $DOTFILES/cli-tools/tmux/tmux.conf $HOME/.tmux.conf

# Make tmux sessionizer script executable:
chmod +x $DOTFILES/cli-tools/tmux/tmux_sessionizer.sh

