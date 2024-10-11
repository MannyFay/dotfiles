#!/usr/bin/env sh

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


#-----------------------------------------------------------------------------
#  Tmate Configs
#-----------------------------------------------------------------------------

# Delete ~/.tmate.conf:
rm -rf $HOME/.tmate.conf

# Create symlink to ~/.tmux.conf:
ln -s ~/.config/dotfiles/tmate/.tmate.conf $HOME/.tmate.conf

