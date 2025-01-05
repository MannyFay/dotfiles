#!/usr/bin/env sh

#-----------------------------------------------------------------------------
#  Git Symlinking
#-----------------------------------------------------------------------------

# Set path to dotfiles:
DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Delete old configs:
rm -rf $HOME/.gitconfig
rm -rf $HOME/.gitignore

# Create symlinks to dotfiles:
ln -s $DOTFILES/cli-tools/git/account-config/global $HOME/.gitconfig
ln -s $DOTFILES/cli-tools/git/gitignore $HOME/.gitignore

