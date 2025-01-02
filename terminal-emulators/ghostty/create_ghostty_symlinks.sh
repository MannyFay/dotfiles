#!/usr/bin/env sh

#-----------------------------------------------------------------------------
#  Ghostty Terminal Emulator Symlinks
#-----------------------------------------------------------------------------

# Set path to dotfiles directory:
DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Remove old Ghostty configuration:
rm -rf $HOME/.config/ghostty

# Create Ghostty configuration directory:
mkdir -p $HOME/.config/ghostty

# Link Ghostty configuration from dotfiles:
ln -s $DOTFILES/terminal-emulators/ghostty/config $HOME/.config/ghostty/config

