#!/usr/bin/env sh

# ~/.config/dotfiles/karabiner/create-karabiner-symlinks.sh


DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


#-----------------------------------------------------------------------------
#  Karabiner Configs
#-----------------------------------------------------------------------------

# Delete ~/.config/karabiner/karabiner.json:
rm -rf $HOME/.config/karabiner/karabiner.json

# Create symlink to ~/.config/dotfiles/karabiner/karabiner.json:
ln -s $DOTFILES/karabiner/karabiner.json $HOME/.config/karabiner/karabiner.json



#-----------------------------------------------------------------------------
#  Karabiner Assets
#-----------------------------------------------------------------------------

# Delete ~/.config/karabiner/assets:
rm -rf $HOME/.config/karabiner/assets

# Create symlink to ~/.config/dotfiles/karabiner/assets:
ln -s $DOTFILES/karabiner/assets $HOME/.config/karabiner

