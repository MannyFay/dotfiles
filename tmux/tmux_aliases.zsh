#-----------------------------------------------------------------------------
#  Tmux ZSH Aliases
#-----------------------------------------------------------------------------

# This file has to be sourced in .zsh_aliases file.
# Copy this line to do so:
# source ~/personal/github/dotfiles/nodejs/tmux_aliases.zsh                   # tmux



#------------------------------------------------------------------------------
#----- General

alias ts='tmux'                                # Start Tmux.
alias tq='tmux detach'                         # Quit Tmux.
alias tsc='tmux source-file $HOME/.tmux.conf'  # Source .tmux.conf file.
alias tlk='tmux list-keys'                     # List keys.



#------------------------------------------------------------------------------
#----- Sessions

alias tls='tmux ls'         # List all sessions.
alias tas='tmux attach -t'  # Load session <session-name>.
alias tns='tmux new -s'     # Create new session <session-name>.

