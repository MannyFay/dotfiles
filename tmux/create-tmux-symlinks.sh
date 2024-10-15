#!/usr/bin/env sh

# ~/.config/dotfiles/nvim/create-tmux-symlinks.sh


DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


#-----------------------------------------------------------------------------
#  Tmux Configs
#-----------------------------------------------------------------------------

# Delete ~/.tmux.conf:
rm -rf $HOME/.tmux.conf

# Create symlink to ~/.config/dotfiles/tmux/.tmux.conf:
ln -s ~/.config/dotfiles/tmux/.tmux.conf $HOME/.tmux.conf

chmod +x ./tmux-sessionizer.sh
