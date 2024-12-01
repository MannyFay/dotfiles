#------------------------------------------------------------------------------
#  macOS Homebrew Aliases
#------------------------------------------------------------------------------

# This file has to be sourced in .zsh_aliases file.
# Copy this line to do so:
# source $HOME/personal/github/dotfiles/macos/homebrew/homebrew_aliases.zsh # Homebrew

#------------------------------------------------------------------------------
#----- Upgrades

alias brewupgradeall="brew update && brew upgrade && brew upgrade --cask && mas upgrade && brew cleanup"
