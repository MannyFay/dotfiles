# ~/.config/dotfiles/tmux/tmux_aliases.zsh


#-----------------------------------------------------------------------------
#  Tmux ZSH Aliases
#-----------------------------------------------------------------------------

# Start Tmux:
alias tms='tmux'

# Quit Tmux:
alias tmq='tmux detach'

# List all sessions:
alias tml='tmux ls'

# Load session <session-name>:
alias tmls='tmux attach -t'

# Create new session <session-name>:
alias tmns='tmux new -s'

# Source .tmux.conf file:
alias tmsc='tmux source-file ~/.tmux.conf'

# List keys:
alias tmlk='tmux list-keys'
