#!/bin/bash

# Check, if there are uncommitted changes on file system:
check_git_repo() {
    local repo_dir=$1
    cd "$repo_dir"
    if ! git status | grep -q 'nothing to commit, working tree clean'; then
        printf "\033[31m----- Uncommitted changes in: ----------------------------------------\033[0m\n\033[34m%s\033[0m\n" "$repo_dir"
        git status -s
    fi
}

export -f check_git_repo

search_directories=(
    $HOME/personal/*
    $HOME/work/*
  )

# Loop through specified directories and check for Git repositories:
for dir in "${search_directories[@]}"; do
    # Find all .git directories within the current directory and subdirectories
    find "$dir" -type d -name .git 2>/dev/null | while read -r git_dir; do
        repo_dir=$(dirname "$git_dir")
        check_git_repo "$repo_dir"
    done
done

