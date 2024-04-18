# This file has to be sourced in .zsh_aliases file:
# source ~/dotfiles/git/git_aliases.zsh                   # Git


#------------------------------------------------------------------------------
#  Git ZSH Aliases
#------------------------------------------------------------------------------


#------------------------------------------------------------------------------
#----- Working Tree

alias glc='git'            # List Git commands.
alias gs='git status'      # Show status of working tree.
alias gc='git clone'       # Clone repository (add URL).
alias gra='git restore .'  # Restore all changed files.
alias grf='git restore'    # Restore a changed file (add file).
# Show commit history:
alias gl="git log --graph --pretty=format:'%C(blue)%h%Creset - %C(magenta)%an%Creset - %C(yellow)%s%Creset - %C(green)%cr, %ad%Creset %C(blue)%d%Creset' --abbrev-commit --raw --date=format:'%a, %Y-%m-%d, %H:%M:%S'"


#-----------------------------------------------------------
#- Branches

# Pull from origin/main:
alias gpm='git pull origin main'

# Pull from origin/develop:
alias gpd='git pull origin develop'

# 'Show All' branches inclusively remote repository branches (quit with q):
alias gbsa='git branch -a'

# 'Show Local' branches (quit with q):
alias gbsl='git branch'

# 'Checkout Local' branch (add a branch name):
alias gbcl='git checkout'

# 'Checkout Remote' branch (add remoteName/branchName):
alias gbcr='git checkout --track'

# Check out new branch (add name):
alias gbcn='git checkout -b'

# Delete branch locally (add a branch name):
alias gbdl='git checkout main && git branch -D'

# Delete branch on remote repository (add remote branch-name):
alias gbdr='git push --delete origin'



#------------------------------------------------------------------------------
#----- Index

alias gisf='git add'                 # Stage file (add file or path).
alias gisp='git add -p'              # Stage parts of file (add file):
# y (yes): Stage this hunk to be included in the next commit.
# n (no): Do not stage this hunk; leave it as is in the working directory.
# s (split): Split this hunk into smaller parts, allowing you to stage only specific lines or changes within the hunk.
# e (edit): Manually edit this hunk to remove or modify lines before staging.
# ? (help): Show the available options and their meanings.
alias gisa='git add .'               # Stage all files.
alias giuf='git restore --staged'    # Unstage file (add file or path).
alias giup='git restore -p'          # Unstage parts of file (add file).
alias giua='git restore --staged .'  # Unstage all files.



#------------------------------------------------------------------------------
#----- Commits

alias gci='git commit --allow-empty -m "Initial commit"'  # Initial commit.
alias gcc='git commit'                                    # Commit.
alias gcm='git commit -m'                                 # Commit with message.
alias gcwip='git commit -m "WIP"'                         # Commit with message 'Work In Progress'.
alias gccl='git commit --amend'                           # Change last commit (file/commit message) before push.
alias gcrl='git reset --hard HEAD~1'                      # Revert last commit (before push).
alias gisacm='git add . && git commit -m'                 # Stage all files and commit with message.
alias gisacwip='git add . && git commit -m "WIP"'         # Stage all files and commit with 'WIP'.
alias gisacupdate='git add . && git commit -m "Update"'   # Stage all files and commit with 'Update'.



#-----------------------------------------------------------
#- Comparing

# Compare files (add file):
alias gdf='git diff'



#-----------------------------------------------------------
#- Pushing/Pulling

# Pull actual branch from remote repository:
alias gpl='git pull'

# Fetch actual branch from remote repository:
alias gpf='git fetch'

# Pull actual branch from remote repository, than push:
alias gpp='git pull && git push'

# Push actual branch to remote repository:
alias gps='git push'

# Revert last push (add commit hash):
alias gpr='git revert'

# Stage all files, commit with 'WIP' status and push:
# alias ggo='git add . && git commit -m "WIP" && git pull && git push'
alias ggo='git add . && git commit -m "WIP" && git push'



#-----------------------------------------------------------
#- Stashing

# Stash changes:
alias gsc='git stash'

# Pop stashed changes:
alias gsp='git stash pop'
