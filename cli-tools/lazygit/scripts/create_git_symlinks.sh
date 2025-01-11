#!/usr/bin/env sh

#-----------------------------------------------------------------------------
#  Lazygit Symlinking
#-----------------------------------------------------------------------------

# Set path to dotfiles:
DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Delete old configs:
rm -rf $HOME/.config/lazygit

# Create config directory:
mkdir -p $HOME/.config/lazygit

# Create symlinks to dotfiles:
ln -s $DOTFILES/cli-tools/lazygit/config.yml $HOME/.config/lazygit/config.yml

