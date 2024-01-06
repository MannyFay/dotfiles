# This file has to be sourced in ~/dotfiles/zsh/.zsh_aliases

#-----------------------------------------------------------------------------
#  Git ZSH Aliases
#-----------------------------------------------------------------------------


#-----------------------------------------------------------
#- Working Tree

# List Git commands:
alias glc='git'

# Show status of working tree:
alias gs='git status'

# Show commit history:
alias gl="git log --graph --pretty=format:'%C(blue)%h%Creset - %C(magenta)%an%Creset - %C(yellow)%s%Creset - %C(green)%cr, %ad%Creset %C(blue)%d%Creset' --abbrev-commit --raw --date=format:'%a, %Y-%m-%d, %H:%M:%S'"

# Clone repository (add URL):
alias gc='git clone'

# Restore all changed files:
alias gra='git restore .'

# Restore a changed file (add file):
alias grf='git restore'



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
alias gbdl='git restore . && git checkout develop && git branch -D'

# Delete branch on remote repository (add remote branch-name):
alias gbdr='git push --delete'



#-----------------------------------------------------------
#- Index

# Stage file (add file or path):
alias gisf='git add'

# y (yes): Stage this hunk to be included in the next commit.
# n (no): Do not stage this hunk; leave it as is in the working directory.
# s (split): Split this hunk into smaller parts, allowing you to stage only specific lines or changes within the hunk.
# e (edit): Manually edit this hunk to remove or modify lines before staging.
# ? (help): Show the available options and their meanings.
# Stage parts of file (add file):
alias gisp='git add -p'

# Unstage file (add file or path):
alias giuf='git restore --staged'

# Unstage parts of file (add file):
alias giup='git restore -p'

# Stage all files:
alias gisa='git add .'

# Unstage all files:
alias giua='git restore --staged .'



#-----------------------------------------------------------
#- Commits

# Initial commit:
alias gci='git commit --allow-empty -m "INITIAL COMMIT"'

# Commit:
alias gcc='git commit'

# Commit with message:
alias gcm='git commit -m'

# Commit with message 'Work In Progress':
alias gcwip='git commit -m "WIP"'

# Change last commit (file/commit message) before push:
alias gccl='git commit --amend'

# Revert last commit (before push):
alias gcrl='git reset --hard HEAD~1'

# Stage all files and commit with message:
alias giacm='git add . && git commit -m'

# Stage all files and commit with WIP status:
alias giacwip='git add . && git commit -m "WIP"'



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