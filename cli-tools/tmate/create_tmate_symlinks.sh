#!/usr/bin/env sh

#------------------------------------------------------------------------------
# tmate Symlinking
#------------------------------------------------------------------------------

# Set path to dotfiles directory:
DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Remove old tmate configuration:
rm -rf $HOME/.tmate.conf
rm -rf $HOME/.config/tmate

# Symlink tmate configuration from dotfiles:
ln -s $DOTFILES/cli-tools/tmate/tmate.conf $HOME/.tmate.conf

