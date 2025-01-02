#!/usr/bin/env sh

#------------------------------------------------------------------------------
# SketchyBar Symlinks
#------------------------------------------------------------------------------

# Set path to dotfiles directory:
DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Remove old SketchyBar configuration:
rm -rf $HOME/.config/sketchybar

# Create SketchyBar directory:
mkdir -p $HOME/.config/sketchybar/

# Link SketchyBar configuration from dotfiles:
ln -s $DOTFILES/status-bars/sketchybar/sketchybarrc $HOME/.config/sketchybar/sketchybarrc
ln -s $DOTFILES/status-bars/sketchybar/plugins $HOME/.config/sketchybar/plugins
ln -s $DOTFILES/status-bars/sketchybar/color_palette.sh $HOME/.config/sketchybar/color_palette.sh
ln -s $DOTFILES/status-bars/sketchybar/items $HOME/.config/sketchybar/items

