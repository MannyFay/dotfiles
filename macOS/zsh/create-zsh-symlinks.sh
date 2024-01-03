#!/usr/bin/env sh

# ~/.config/dotfiles/nvim/create-zsh-symlinks.sh


DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


#-----------------------------------------------------------------------------
#  ZSH Configs
#-----------------------------------------------------------------------------


#-----------------------------------------------------------
#- ZSH

# Delete ~/.zshrc:
rm -rf $HOME/.zshrc

# Create symlink to ~/.config/dotfiles/zsh/.zshrc:
ln -sf ~/.config/dotfiles/zsh/.zshrc $HOME/.zshrc


#-----------------------------------------------------------
#- ZSH Aliases

# Delete ~/.zsh_aliases:
rm -rf $HOME/.zsh_aliases

# Create symlink to ~/.config/dotfiles/zsh.zsh_aliases:
ln -s ~/.config/dotfiles/zsh/.zsh_aliases $HOME/.zsh_aliases


#-----------------------------------------------------------
#- Theme

# Delete ~/.oh-my-zsh/themes/mannydark.zsh-theme:
rm -rf $HOME/.oh-my-zsh/themes/mannydark.zsh-theme

# Create symlink to ~/.config/dotfiles/zsh/mannydark.zsh-theme:
ln -s ~/.config/dotfiles/zsh/mannydark.zsh-theme $HOME/.oh-my-zsh/themes/mannydark.zsh-theme
