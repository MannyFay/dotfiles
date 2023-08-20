#!/usr/bin/env sh

# ~/.config/dotfiles/git/create-git-symlinks.sh


DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


#-----------------------------------------------------------------------------
#  Git Configs
#-----------------------------------------------------------------------------

# Delete ~/.gitconfig:
rm -rf $HOME/.gitconfig

# Create symlink to ~/.config/dotfiles/git/config-files/global:
ln -s $DOTFILES/git/config-files/global $HOME/.gitconfig



#-----------------------------------------------------------------------------
#  Git Ignores
#-----------------------------------------------------------------------------

# Delete ~/.gitignore:
rm -rf $HOME/.gitignore

# Create symlink to ~/.config/dotfiles/git/gitignore:
ln -s $DOTFILES/git/gitignore $HOME/.gitignore

