#!/usr/bin/env sh

#------------------------------------------------------------------------------
# Aerospace Symlinks
#------------------------------------------------------------------------------

# Set path to dotfiles directory:
DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Remove old Aerospace configuration:
rm -rf $HOME/.aerospace.toml
rm -rf $HOME/.config/aerospace

# Create Aerospace configuration directory:
mkdir -p $HOME/.config/aerospace

# Link Aerospace configuration from dotfiles:
ln -s $DOTFILES/window-managers/aerospace/aerospace.toml $HOME/.config/aerospace/aerospace.toml

