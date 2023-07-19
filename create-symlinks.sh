#!/usr/bin/env sh

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


#-----------------------------------------------------------
#- Git

# Delete .gitconfig if there is one in ~/:
rm -rf $HOME/.gitconfig

# Create symlink to ~/.dotfiles/git/.gitconfig:
ln -s $DOTFILES/git/.gitconfig $HOME/.gitconfig

# Delete ~/.gitignore_global:
rm -rf $HOME/.gitignore_global

# Create symlink to ~/.dotfiles/git/.gitignore_global:
ln -s $DOTFILES/git/.gitignore_global $HOME/.gitignore_global


#-----------------------------------------------------------
#- Neovim

# Delete nvim directory if there is one in ~/.config:
rm -rf $HOME/.config/nvim
# Create symlink to nvim directory in /.dotfiles:
ln -s $DOTFILES/nvim $HOME/.config/nvim


#-----------------------------------------------------------
#- PhpStorm

# Delete ~/.ideavimrc:
rm -rf $HOME/.ideavimrc

# Create symlink to ~/.dotfiles/phpstorm/.ideavimrc:
ln -s $DOTFILES/phpstorm/.ideavimrc $HOME/.ideavimrc


#-----------------------------------------------------------
#- tmux

# Delete ~/.tmux.conf:
rm -rf $HOME/.tmux.conf
# Create symlink to ~/.dotfiles/tmux/.tmux.conf:
ln -s $DOTFILES/tmux/.tmux.conf $HOME/.tmux.conf


#-----------------------------------------------------------
#- Yabai

# Delete ~/.yabairc
rm -rf $HOME/.yabairc
# Create symlink to ~/.dotfiles/yabai/.yabairc:
ln -s $DOTFILES/yabai/.yabairc $HOME/.yabairc

# Delete ~/.skhdrc:
rm -rf $HOME/.skhdrc
# Create symlink to ~/.dotfiles/yabai/.skhdrc:
ln -s $DOTFILES/yabai/.skhdrc $HOME/.skhdrc

yabai --restart-service
skhdrc --restart-service


#-----------------------------------------------------------
#- ZSH

# Delete .zshrc if there is one in ~/:
rm -rf $HOME/.zshrc
# Create symlink to .zshrc in /.dotfiles:
ln -sf $DOTFILES/zsh/.zshrc $HOME/.zshrc

# Delete .zsh_aliases if there is one in ~/:
rm -rf $HOME/.zsh_aliases
# Create symlink to .zsh_aliases in /.dotfiles:
ln -s $DOTFILES/zsh/.zsh_aliases $HOME/.zsh_aliases

# Delete mannydark theme in oh-my-zsh directory:
rm -rf $HOME/.oh-my-zsh/themes/mannydark.zsh-theme
# Create symlink to mannydark theme in /.dotfiles/zsh:
ln -s $DOTFILES/zsh/mannydark.zsh-theme $HOME/.oh-my-zsh/themes/mannydark.zsh-theme


