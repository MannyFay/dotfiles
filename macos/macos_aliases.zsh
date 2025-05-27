#------------------------------------------------------------------------------
#  macOS ZSH Aliases
#------------------------------------------------------------------------------

# This file has to be sourced in .zsh_aliases file.
# Copy this line to do so:
# source ~/personal/github/dotfiles/macos/macos_aliases.zsh                  # macOS

alias removedownloads="find . -type f -exec brctl evict '{}' \;"
alias gowork='osascript ~/personal/github/dotfiles/macos/scripts/gowork.applescript'
alias goprivate='osascript ~/personal/github/dotfiles/macos/scripts/goprivate.applescript'
