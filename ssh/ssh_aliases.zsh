
#------------------------------------------------------------------------------
#----- SSH Aliases

alias sshe='eval "$(ssh-agent -s)"'                                      # Start SSH-Agent and set its environment variables.
alias sshpgh='eval "$(ssh-agent -s)" && ssh-add ~/.ssh/personal-github'  # Activate personal GitHub SSH.
alias sshpgl='eval "$(ssh-agent -s)" && ssh-add ~/.ssh/personal-gitlab'  # Activate personal GitLab SSH.
alias sshwgh='eval "$(ssh-agent -s)" && ssh-add ~/.ssh/vds_ubuntu'       # Activate work GitHub SSH.
