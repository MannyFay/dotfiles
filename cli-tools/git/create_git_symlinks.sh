#!/usr/bin/env sh

#-----------------------------------------------------------------------------
#  Git Configs
#-----------------------------------------------------------------------------

# Set path to dotfiles:
DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"



# Delete ~/.gitconfig:
rm -rf $HOME/.gitconfig
# Delete ~/.gitignore:
rm -rf $HOME/.gitignore

# Create symlink to ~/.config/dotfiles/git/config-files/global:
ln -s $DOTFILES/cli-tools/git/config-files/global $HOME/.gitconfig

# Create symlink to ~/.config/dotfiles/git/gitignore:
ln -s $DOTFILES/cli-tools/git/gitignore $HOME/.gitignore

