#------------------------------------------------------------------------------
# eza ZSH Aliases
#------------------------------------------------------------------------------

# This file has to be sourced in .zshrc file.

# alias l='eza -alHiUm'                                                                # list all files in current directory.
# alias l='eza --all --long --links --inode --created --modified'


# Command results ordered by type (directories first):
alias l='eza --color=always --icons=always --header --group-directories-first --sort=type --sort=name --all --long --links --inode --group --created --modified --git --git-repos --time-style="+%a, %Y-%m-%d @ %H:%M "'

# Short output:
alias ls='eza --color=always --icons=always --header --group-directories-first --sort=type --sort=name --all --long --no-filesize --no-user --modified --git --git-repos --time-style="+%a, %Y-%m-%d @ %H:%M "'

# Command results listed in columns:
alias lc='eza --color=always --icons=always --header --grid --all --long --links --inode --created --modified --git --git-repos --time-style="+%Y/%m/%d %H:%M"'

