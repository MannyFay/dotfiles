
#------------------------------------------------------------------------------
#----- SSH Aliases
#------------------------------------------------------------------------------

alias sshe='eval "$(ssh-agent -s)"'                                      # Start SSH-Agent and set its environment variables.
alias sshpk='eval "$(ssh-agent -s)" && ssh-add ~/.ssh/personal-ssh-key'  # Activate personal SSH key.
