#!/bin/bash

# Check, if there are uncommitted changes on file system:
check_git_repo() {
    local repo_dir=$1
    cd "$repo_dir"
    if ! git status | grep -q 'nothing to commit, working tree clean'; then
        echo "Uncommittete Änderungen in $repo_dir:"
        git status -s
    fi
}

export -f check_git_repo

# Search for all .git directories and check all of them:
find / -type d -name .git 2>/dev/null | while read -r git_dir; do
    repo_dir=$(dirname "$git_dir")
    check_git_repo "$repo_dir"
done
