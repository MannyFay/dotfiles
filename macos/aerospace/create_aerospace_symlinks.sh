#!/usr/bin/env sh

# ~/personal/dotfiles/macos/aerospace/create_aerospace_symlinks.sh



DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


#-----------------------------------------------------------------------------
#--- Aerospace Symlinks
#-----------------------------------------------------------------------------

# Delete ~/.aerospace.toml:
rm -rf $HOME/.aerospace.toml

# Delete ~/.aerospace.toml:
rm -rf $HOME/.config/aerospace

# Create symlink to ~/.config/aerospace/aerospace.toml
ln -s $HOME/personal/github/dotfiles/macos/aerospace/aerospace.toml $HOME/.config/aerospace/aerospace.toml

