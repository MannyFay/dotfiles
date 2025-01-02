#------------------------------------------------------------------------------
# fzf Configuration File
#------------------------------------------------------------------------------

# https://github.com/junegunn/fzf
# Theme Generator: https://vitormv.github.io/fzf-themes/
# Source this file into your .zshrc file.


#------------------------------------------------------------------------------
# Settings

# Source fzf:
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

# Advanced customization of fzf options via _fzf_comprun function
# - The first argument to the function is the name of the command.
# - You should make sure to pass the rest of the arguments to fzf.
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo $'{}"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview "bat -n --color=always --line-range :500 {}" "$@" ;;
  esac
}


#------------------------------------------------------------------------------
# Color Theme


fg="#ABABAB"
bg="#191B1C"
bg_highlight="#191B1C"
purple="#B388FF"
blue="#569CD6"
gray_dark="#252525"
green="#4FA544"
cyan="#2CF9ED"

export FZF_DEFAULT_OPTS="--color=fg:${fg},bg:${bg},hl:${blue},fg+:${fg},bg+:${gray_dark},hl+:${blue},info:${blue},prompt:${green},pointer:${blue},marker:${cyan},spinner:${blue},header:${blue}"
# export FZF_DEFAULT_OPTS="--color=fg:${fg},bg:${bg},hl:${purple},fg+:${fg},bg+:${bg_highlight},hl+:${purple},info:${blue},prompt:${cyan},pointer:${cyan},marker:${cyan},spinner:${cyan},header:${cyan}"
