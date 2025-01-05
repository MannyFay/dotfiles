#!/usr/bin/env sh

#------------------------------------------------------------------------------
# fzf Symlinking
#------------------------------------------------------------------------------

# Set path to dotfiles directory:
DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Remove old fzf setup:
rm -rf $HOME/.config/fzf

# Create new fzf directory:
mkdir -p $HOME/.config/fzf
