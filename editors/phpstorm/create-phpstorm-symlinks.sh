#!/usr/bin/env sh

# ~/.config/dotfiles/nvim/create-phpstorm-symlinks.sh


DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


#-----------------------------------------------------------------------------
#  PhpStorm Configs
#-----------------------------------------------------------------------------

# Delete ~/.ideavimrc:
rm -rf $HOME/.ideavimrc

# Create symlink to ~/.config/dotfiles/phpstorm/.ideavimrc:
ln -s ~/.config/dotfiles/phpstorm/.ideavimrc $HOME/.ideavimrc
