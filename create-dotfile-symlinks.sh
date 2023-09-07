#!/usr/bin/env sh

# ~/.config/dotfiles/create-dotfiles-symlinks.sh


DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


#-----------------------------------------------------------------------------
#  Set Access Rights of Scripts
#-----------------------------------------------------------------------------

echo
printf "\e[1m- - - - - !   Start to make configuration scripts executable.   ! - - - - -\e[0m\n"

#-----------------------------------------------------------
#- Git

printf "\e[34mGit:\e[0m\n"
chmod +x ~/.config/dotfiles/git/create-git-symlinks.sh
if [ $? -eq 0 ]; then
    printf "Status: \e[32mSucceeded\e[0m -> File create-git-symlinks.sh is executable!\n"
else
    printf "Status: \e[31mFailed\e[0m -> File create-git-symlinks.is is not executable!\n"
    exit 1
fi


#-----------------------------------------------------------
#- Karabiner

printf "\e[34mKarabiner:\e[0m\n"
chmod +x ~/.config/dotfiles/karabiner/create-karabiner-symlinks.sh
if [ $? -eq 0 ]; then
    printf "Status: \e[32mSucceeded\e[0m -> File create-karabiner-symlinks.sh is executable!\n"
else
    printf "Status: \e[31mFailed\e[0m -> File create-karabiner-symlinks.is is not executable!\n"
    exit 1
fi


#-----------------------------------------------------------
#- Neovim

printf "\e[34mNeovim:\e[0m\n"
chmod +x ~/.config/dotfiles/nvim/create-nvim-symlinks.sh
if [ $? -eq 0 ]; then
    printf  "Status: \e[32mSucceeded\e[0m -> File create-nvim-symlinks.sh is executable!\n"
else
    printf  "Status: \e[31mFailed\e[0m -> File create-nvim-symlinks.is is not executable!\n"
    exit 1
fi


#-----------------------------------------------------------
#- PhpStorm

printf "\e[34mPhpStorm:\e[0m\n"
chmod +x ~/.config/dotfiles/phpstorm/create-phpstorm-symlinks.sh
if [ $? -eq 0 ]; then
    printf  "Status: \e[32mSucceeded\e[0m -> File create-phpstorm-symlinks.sh is executable!\n"
else
    printf  "Status: \e[31mFailed\e[0m -> File create-phpstorm-symlinks.is is not executable!\n"
    exit 1
fi


#-----------------------------------------------------------
#- SSH

printf "\e[34mSSH:\e[0m\n"
chmod +x ~/.config/dotfiles/ssh/create-ssh-symlinks.sh
if [ $? -eq 0 ]; then
    printf  "Status: \e[32mSucceeded\e[0m -> File create-ssh-symlinks.sh is executable!\n"
else
    printf  "Status: \e[31mFailed\e[0m -> File create-ssh-symlinks.is is not executable!\n"
    exit 1
fi


#-----------------------------------------------------------
#- Tmux

printf "\e[34mTmux:\e[0m\n"
chmod +x ~/.config/dotfiles/tmux/create-tmux-symlinks.sh
if [ $? -eq 0 ]; then
    printf  "Status: \e[32mSucceeded\e[0m -> File create-tmux-symlinks.sh is executable!\n"
else
    printf  "Status: \e[31mFailed\e[0m -> File create-tmux-symlinks.is is not executable!\n"
    exit 1
fi


#-----------------------------------------------------------
#- Yabai

printf "\e[34mYabai:\e[0m\n"
chmod +x ~/.config/dotfiles/yabai/create-yabai-symlinks.sh
if [ $? -eq 0 ]; then
    printf  "Status: \e[32mSucceeded\e[0m -> File create-yabai-symlinks.sh is executable!\n"
else
    printf  "Status: \e[31mFailed\e[0m -> File create-yabai-symlinks.is is not executable!\n"
    exit 1
fi


#-----------------------------------------------------------
#- ZSH

printf "\e[34mZSH:\e[0m\n"
chmod +x ~/.config/dotfiles/zsh/create-zsh-symlinks.sh
if [ $? -eq 0 ]; then
    printf  "Status: \e[32mSucceeded\e[0m -> File create-zsh-symlinks.sh is executable!\n"
else
    printf  "Status: \e[31mFailed\e[0m -> File create-zsh-symlinks.is is not executable!\n"
    exit 1
fi

printf  "\e[1m- - - - - !   \e[32mAll scripts are executable\e[0m   ! - - - - -\e[0m\n"
echo



#-----------------------------------------------------------------------------
#  Add Service Specific Dotfiles
#-----------------------------------------------------------------------------

printf "\e[1m- - - - - !   Start to create symlinks.   ! - - - - -\e[0m\n"


#-----------------------------------------------------------
#- Git

printf "\e[34mGit:\e[0m\n"
/bin/bash ~/.config/dotfiles//git/create-git-symlinks.sh
if [ $? -eq 0 ]; then
    printf "Status: \e[32mSucceeded\e[0m -> Git symlinks created!\n"
else
    printf "Status: \e[31mFailed\e[0m -> Git symlinks not created!\n"
    exit 1
fi


#-----------------------------------------------------------
#- Karabiner

printf "\e[34mKarabiner:\e[0m\n"
/bin/bash ~/.config/dotfiles/karabiner/create-karabiner-symlinks.sh
if [ $? -eq 0 ]; then
    printf "Status: \e[32mSucceeded\e[0m -> Karabiner symlinks created!\n"
else
    printf "Status: \e[31mFailed\e[0m -> Karabiner symlinks not created!\n"
    exit 1
fi


#-----------------------------------------------------------
#- Neovim

printf "\e[34mNeovim:\e[0m\n"
/bin/bash ~/.config/dotfiles/nvim/create-nvim-symlinks.sh
if [ $? -eq 0 ]; then
    printf "Status: \e[32mSucceeded\e[0m -> Neovim symlinks created!\n"
else
    printf  "Status: \e[31mFailed\e[0m -> Neovim symlinks not created!\n"
    exit 1
fi


#-----------------------------------------------------------
#- PhpStorm

printf "\e[34mPhpStorm:\e[0m\n"
/bin/bash ~/.config/dotfiles/phpstorm/create-phpstorm-symlinks.sh
if [ $? -eq 0 ]; then
    printf "Status: \e[32mSucceeded\e[0m -> PhpStorm symlinks created!\n"
else
    printf "Status: \e[31mFailed\e[0m -> PhpStorm symlinks not created!\n"
    exit 1
fi


#-----------------------------------------------------------
#- SSH

printf "\e[34mSSH:\e[0m\n"
/bin/bash ~/.config/dotfiles/ssh/create-ssh-symlinks.sh
if [ $? -eq 0 ]; then
    printf "Status: \e[32mSucceeded\e[0m -> SSH symlinks created!\n"
else
    printf "Status: \e[31mFailed\e[0m -> SSH symlinks not created!\n"
    exit 1
fi


#-----------------------------------------------------------
#- Tmux

printf "\e[34mTmux:\e[0m\n"
/bin/bash ~/.config/dotfiles/tmux/create-tmux-symlinks.sh
if [ $? -eq 0 ]; then
    printf "Status: \e[32mSucceeded\e[0m -> Tmux symlinks created!\n"
else
    printf "Status: \e[31mFailed\e[0m -> Tmux symlinks not created!\n"
    exit 1
fi


#-----------------------------------------------------------
#- Yabai

printf "\e[34mYabai:\e[0m\n"
/bin/bash ~/.config/dotfiles/yabai/create-yabai-symlinks.sh
if [ $? -eq 0 ]; then
    printf "Status: \e[32mSucceeded\e[0m -> Yabai symlinks created!\n"
else
    printf "Status: \e[31mFailed\e[0m -> Yabai symlinks not created!\n"
    exit 1
fi


#-----------------------------------------------------------
#- ZSH

printf "\e[34mZSH:\e[0m\n"
/bin/bash ~/.config/dotfiles/zsh/create-zsh-symlinks.sh
if [ $? -eq 0 ]; then
    printf "Status: \e[32mSucceeded\e[0m -> ZSH symlinks created!\n"
else
    printf "Status: \e[31mFailed\e[0m -> ZSH symlinks not created!\n"
    exit 1
fi

printf "\e[1m- - - - - !   \e[32mAll symlinks created\e[0m   ! - - - - -\e[0m\n"
echo
printf "\e[1m- - - - - !   Process finished   ! - - - - -\e[0m\n"




