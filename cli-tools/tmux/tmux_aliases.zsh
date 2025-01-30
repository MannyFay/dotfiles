#-----------------------------------------------------------------------------
#  tmux ZSH Aliases
#-----------------------------------------------------------------------------

#------------------------------------------------------------------------------
#----- General

alias ts='tmux'                           # Start Tmux.
alias tq='tmux detach'                    # Quit Tmux.
alias tsc='tmux source-file ~/.tmux.conf' # Source .tmux.conf file.
alias tlk='tmux list-keys'                # List keys.

#------------------------------------------------------------------------------
#----- Sessions

alias tls='tmux ls'        # List all sessions.
alias tas='tmux attach -t' # Load session <session-name>.
alias tns='tmux new -s'    # Create new session <session-name>.
