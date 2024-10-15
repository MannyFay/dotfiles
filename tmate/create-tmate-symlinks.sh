#!/usr/bin/env sh

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


#-----------------------------------------------------------------------------
#  Tmate Configs
#-----------------------------------------------------------------------------

# Delete ~/.tmate.conf:
rm -rf $HOME/.tmate.conf

# Create symlink to ~/.tmate.conf:
ln -s $HOME/personal/github/dotfiles/tmate/.tmate.conf

