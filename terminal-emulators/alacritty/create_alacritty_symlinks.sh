#!/usr/bin/env sh

#------------------------------------------------------------------------------
# Alacritty Terminal Emulator Symlinks
#------------------------------------------------------------------------------

# Set path to dotfiles directory:
DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Remove old Alacritty configuration:
rm -rf $HOME/.alacritty.toml
rm -rf $HOME/.config/alacritty

# Create Alacritty configuration directory:
mkdir -p $HOME/.config/alacritty

# Link Alacritty configuration from dotfiles:
ln -s $DOTFILES/terminal-emulators/alacritty/alacritty.toml $HOME/.config/alacritty/alacritty.toml

