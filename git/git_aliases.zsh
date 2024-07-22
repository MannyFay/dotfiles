#------------------------------------------------------------------------------
#  Git ZSH Aliases
#------------------------------------------------------------------------------

# This file has to be sourced in .zsh_aliases file.
# Copy this line to do so:
# source ~/dotfiles/git/git_aliases.zsh                   # Git



#------------------------------------------------------------------------------
#----- Working Tree

alias glc='git'            # List Git commands.
alias gs='git status'      # Show status of working tree.
alias gc='git clone'       # Clone repository (add URL).
alias gra='git restore .'  # Restore all changed files.
alias grf='git restore'    # Restore a changed file (add file).
# Show commit history:
alias gl="git log --graph --pretty=format:'%C(blue)%h%Creset - %C(magenta)%an%Creset - %C(yellow)%s%Creset - %C(green)%cr, %ad%Creset %C(blue)%d%Creset' --abbrev-commit --raw --date=format:'%a, %Y-%m-%d, %H:%M:%S'"



#------------------------------------------------------------------------------
#----- Branches

alias gbsa='git branch -a'                       # 'Show All' branches inclusively remote repository branches (quit with q).
alias gbsl='git branch'                          # 'Show Local' branches (quit with q).
alias gbcl='git checkout'                        # 'Checkout Local' branch (add a branch name).
alias gbcr='git checkout --track'                # 'Checkout Remote' branch (add remoteName/branchName).
alias gbcn='git checkout -b'                     # Check out new branch (add name).
alias gbdl='git checkout main && git branch -D'  # Delete branch locally (add a branch name).
alias gbdr='git push --delete origin'            # Delete branch on remote repository (add remote branch-name).



#------------------------------------------------------------------------------
#----- Index

alias gisf='git add'                 # Stage file (add file or path).
alias gisp='git add -p'              # Stage parts of file (add file):
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



#------------------------------------------------------------------------------
#----- Comparing

alias gdf='git diff'  # Compare files (add file).



#------------------------------------------------------------------------------
#----- Fetching

alias gf='git fetch'          # Fetch actual branch from remote repository.
alias gfo='git fetch origin'  # Fetch origin.



#------------------------------------------------------------------------------
#----- Pulling

alias gpm='git pull origin main'     # Pull from origin/main.
alias gpd='git pull origin develop'  # Pull from origin/develop.
alias gpull='git pull && git fetch'  # Pull actual branch from remote repository.



#------------------------------------------------------------------------------
#----- Pushing

alias gpp='git pull && git push'                          # Pull actual branch from remote repository, than push.
alias gpush='git push'                                    # Push actual branch to remote repository.
alias gpr='git revert'                                    # Revert last push (add commit hash).
alias ggo='git add . && git commit -m "WIP" && git push'  # Stage all files, commit with 'WIP' status and push.



#------------------------------------------------------------------------------
#----- Stashing

alias gsc='git stash'      # Stash changes.
alias gsp='git stash pop'  # Pop stashed changes.

