#!/usr/bin/env sh


DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


#-----------------------------------------------------------------------------
#  Ghostty Terminal Emulator Symlinks
#-----------------------------------------------------------------------------

# Delete ~/.yabairc:
# rm -rf $HOME/.yabairc

# Create symlink to ~/.config/dotfiles/yabai/.yabairc:
ln -s ~/personal/github/dotfiles/ghostty/config $HOME/.config/ghostty/config

