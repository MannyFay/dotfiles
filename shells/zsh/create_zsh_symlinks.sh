#!/usr/bin/env sh

#------------------------------------------------------------------------------
# ZSH Shell Symlinks
#------------------------------------------------------------------------------

# Set path to dotfiles directory:
DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Remove old ZSH configuration:
rm $HOME/.zshrc
rm $HOME/.zprofile
rm $HOME/.oh-my-zsh/themes/mannydark.zsh-theme
rm $HOME/.oh-my-zsh/themes/mannydark-oneline.zsh-theme
rm $HOME/.oh-my-zsh/themes/mannydark-downunder.zsh-theme
rm $HOME/.oh-my-zsh/custom/themes/mannydark.zsh-theme
rm $HOME/.oh-my-zsh/custom/themes/mannydark-oneline.zsh-theme
rm $HOME/.oh-my-zsh/custom/themes/mannydark-downunder.zsh-theme

# Link ZSH configuration from dotfiles:
ln -s $DOTFILES/shells/zsh/.zshrc-macos $HOME/.zshrc
ln -s $DOTFILES/shells/zsh/.zprofile $HOME/.zprofile
ln -s $DOTFILES/shells/zsh/themes/mannydark.zsh-theme $HOME/.oh-my-zsh/custom/themes/mannydark.zsh-theme
ln -s $DOTFILES/shells/zsh/themes/mannydark-downunder.zsh-theme $HOME/.oh-my-zsh/custom/themes/mannydark-downunder.zsh-theme
ln -s $DOTFILES/shells/zsh/themes/mannydark-oneline.zsh-theme $HOME/.oh-my-zsh/custom/themes/mannydark-oneline.zsh-theme

