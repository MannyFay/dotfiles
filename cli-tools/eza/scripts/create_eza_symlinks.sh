#!/usr/bin/env sh

#------------------------------------------------------------------------------
# eza Symlinking
#------------------------------------------------------------------------------

# Set path to dotfiles directory:
DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Remove old eza theme:
rm -rf $HOME/.config/eza/theme.yml

# Create new eza directory:
mkdir -p $HOME/.config/eza

# Link eza theme from dotfiles:
ln -s $DOTFILES/cli-tools/eza/themes/mannydark.yml $HOME/.config/eza/theme.yml
