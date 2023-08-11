#!/usr/bin/env sh

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


#-----------------------------------------------------------
#- Neovim

# Delete nvim directory if there is one in ~/.config:
rm -rf $HOME/.config/nvim
# Create symlink to nvim directory in /.dotfiles:
ln -s $DOTFILES/nvim $HOME/.config/nvim

