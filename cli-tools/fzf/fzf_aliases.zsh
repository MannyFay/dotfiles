#------------------------------------------------------------------------------
# fzf ZSH Aliases
# https://github.com/junegunn/fzf
#------------------------------------------------------------------------------

# Source this file into your .zshrc file.

alias f="fzf --preview 'batcat --style=numbers --color=always --line-range :500 {}'" # FZF with preview.
alias o='nvim -o `fzf`'                                                              # FZF and open in nvim.
