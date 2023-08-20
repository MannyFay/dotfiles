#!/usr/bin/env sh

# ~/.config/dotfiles/nvim/create-yabai-symlinks.sh


DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


#-----------------------------------------------------------------------------
#  Yabai Configs
#-----------------------------------------------------------------------------

# Delete ~/.yabairc:
rm -rf $HOME/.yabairc

# Create symlink to ~/.config/dotfiles/yabai/.yabairc:
ln -s $DOTFILES/yabai/.yabairc $HOME/.yabairc

# Delete ~/.skhdrc:
rm -rf $HOME/.skhdrc

# Create symlink to ~/.config/dotfiles/yabai/.skhdrc:
ln -s $DOTFILES/yabai/.skhdrc $HOME/.skhdrc

# Restart Yabai:
yabai --restart-service

# Restart skhdrc
skhd --restart-service
