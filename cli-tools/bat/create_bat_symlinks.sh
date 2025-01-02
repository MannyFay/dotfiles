#!/usr/bin/env sh

#-----------------------------------------------------------------------------
# bat Symlinking
#-----------------------------------------------------------------------------

# Set path to dotfiles:
DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Remove old bat configuration:
rm -rf $HOME/.config/bat

# Create bat configuration directory:
mkdir -p $HOME/.config/bat/themes/

# Link bat configuration from dotfiles:
ln -s $DOTFILES/cli-tools/bat/themes/manny_dark.tmTheme $HOME/.config/bat/themes/manny_dark.tmTheme

