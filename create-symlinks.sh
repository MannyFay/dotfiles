#!/usr/bin/env sh

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


source ~/.config/dotfiles/git/create-git-symlinks.sh

#-----------------------------------------------------------
#- Karabiner

# Delete /assets if there is one in ~/.config/karabiner/:
rm -rf $HOME/.config/karabiner/assets
# Create symlink to /assets in ~/.dotfiles/karabiner/:
ln -s $DOTFILES/karabiner/assets $HOME/.config/karabiner

# Delete karabiner.json if there is one in ~/.config/karabiner/:
rm -rf $HOME/.config/karabiner/karabiner.json
# Create symlink to karabiner.json in ~/.dotfiles/karabiner/:
ln -s $DOTFILES/karabiner/karabiner.json $HOME/.config/karabiner/karabiner.json


#-----------------------------------------------------------
#- Neovim

# Delete/create new nvim directory if there is one in ~/.config:
rm -rf $HOME/.config/nvim
mkdir $HOME/.config/nvim

# Delete lua directory if there is one in ~/.config/nvim/:
rm -rf $HOME/.config/nvim/lua
# Create symlink to lua directory in ~/.config/nvim/:
ln -s $DOTFILES/nvim/lua $HOME/.config/nvim/lua

# Delete init.lua if there is one in ~/.config/nvim/:
rm -rf $HOME/.config/nvim/init.lua
# Create symlink to init.lua in ~/.config/nvim/:
ln -s $DOTFILES/nvim/init.lua $HOME/.config/nvim/init.lua


#-----------------------------------------------------------
#- PhpStorm

# Delete ~/.ideavimrc:
rm -rf $HOME/.ideavimrc
# Create symlink to ~/.dotfiles/phpstorm/.ideavimrc:
ln -s $DOTFILES/phpstorm/.ideavimrc $HOME/.ideavimrc


#-----------------------------------------------------------
#- Tmux

# Delete .tmux.conf if there is one in ~/:
rm -rf $HOME/.tmux.conf
# Create symlink to .tmux.conf in ~/.dotfiles/tmux/:
ln -s $DOTFILES/tmux/.tmux.conf $HOME/.tmux.conf


#-----------------------------------------------------------
#- Yabai

# Delete .yabairc if there is one in ~/:
rm -rf $HOME/.yabairc
# Create symlink to .yabairc in ~/.dotfiles/yabai/:
ln -s $DOTFILES/yabai/.yabairc $HOME/.yabairc

# Delete .skhdrc if there is one in ~/:
rm -rf $HOME/.skhdrc
# Create symlink to .skhdrc in ~/.dotfiles/yabai/:
ln -s $DOTFILES/yabai/.skhdrc $HOME/.skhdrc

# Restart Yabai:
yabai --restart-service
# Restart skhdrc
skhdrc --restart-service


#-----------------------------------------------------------
#- ZSH

# Delete .zshrc if there is one in ~/:
rm -rf $HOME/.zshrc
# Create symlink to .zshrc in /.dotfiles/zsh/:
ln -sf $DOTFILES/zsh/.zshrc $HOME/.zshrc

# Delete .zsh_aliases if there is one in ~/:
rm -rf $HOME/.zsh_aliases
# Create symlink to .zsh_aliases in /.dotfiles/zsh:
ln -s $DOTFILES/zsh/.zsh_aliases $HOME/.zsh_aliases

# Delete mannydark theme in oh-my-zsh directory:
rm -rf $HOME/.oh-my-zsh/themes/mannydark.zsh-theme
# Create symlink to mannydark theme in /.dotfiles/zsh:
ln -s $DOTFILES/zsh/mannydark.zsh-theme $HOME/.oh-my-zsh/themes/mannydark.zsh-theme



