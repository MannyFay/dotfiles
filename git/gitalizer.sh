#!/bin/bash

# Check, if there are uncommitted changes on file system:
check_git_repo() {
    local repo_dir=$1
    cd "$repo_dir" || return
    if ! git status | grep -q 'nothing to commit, working tree clean'; then
        printf "\n\033[31m----- Uncommitted changes in: ----------------------------------------\033[0m\n\033[34m%s\033[0m\n" "$repo_dir"
        git status -s
        dirty_repos+=("$repo_dir")
    fi
}


dirty_repos=()

search_directories=(
    $HOME/personal/*
    $HOME/work/*
)


# Loop through specified directories and check for Git repositories
for dir in "${search_directories[@]}"; do
    # Find all .git directories within the current directory and subdirectories
    while IFS= read -r -d '' git_dir; do
        repo_dir=$(dirname "$git_dir")
        check_git_repo "$repo_dir"
    done < <(find "$dir" -type d -name .git -print0 2>/dev/null)
done



# # Prompt user to make a 'WIP' commit if there are dirty repositories
# if [ ${#dirty_repos[@]} -gt 0 ]; then
#     printf "\nDo you want to make a 'WIP' commit in these repositories and push them? (y/n)\n"
#     printf "(Make sure you have set the correct Git/SSH credentials!)\n"
#     read answer
#     echo "You answered: $answer"
# fi

# If there are dirty repositories, present options to the user
if [ ${#dirty_repos[@]} -gt 0 ]; then
    printf "\nWhat should I do?\n"

    # Option for WIP commit and push all repositories
    printf "   0 -> WIP commit and push all repositories\n"

    # Display options for each dirty repository
    for (( i=0; i<${#dirty_repos[@]}; i++ )); do
        repo_name=$(basename "${dirty_repos[i]}")
        printf "   %d -> Set WIP-commit, then push on repo '%s'\n" "$(( i+1 ))" "$repo_name"
    done
    printf "   q -> Do nothing\n"

    # Prompt user for their choice
    printf "\n"
    read -p "Choose an option: " choice

    case "$choice" in
        0)
            printf "Committing 'WIP' in all repositories and pushing...\n"
            # for repo_dir in "${dirty_repos[@]}"; do
                #(cd "$repo_dir" && git add . && git commit -m "WIP" && git push)
            # done
            ;;
        [1-${#dirty_repos[@]}])
            index=$(( choice - 1 ))
            echo "Committing 'WIP' and push in repo '${dirty_repos[index]}'..."
            (cd "${dirty_repos[index]}" && git add . && git commit -m "WIP" && git push)
            ;;
        q)
            echo "Exiting without doing anything."
            ;;
        *)
            echo "Invalid option. Exiting."
            ;;
    esac
fi
