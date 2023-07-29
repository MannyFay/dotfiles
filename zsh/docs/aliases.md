# ZSH Aliases
## Git
### Working Tree
The `gs` command provides a short written status. The Meanings are:  
`A`  : Added (file is in index)  
`??` : Untracked (unwatched file)  
`_M` : Changed, in index (there is a space before M)  
`M_` : Unstaged (there is a space after M)

| Function                                        | Alias | Command       |
|:------------------------------------------------|:------|:--------------|
| Show status of the repository:                  | `gs`  | git status -s |
| Show commit history (quit with 'q'):            | `gl`  | git log       |
| Clone remote repository (add URL):              | `gc`  | git clone     |

### Branches
| Function                                        | Alias  | Command                               |
|:------------------------------------------------|:-------|:--------------------------------------|
| Pull main branch from remote repository:        | `gpm`  | git pull origin main                  |
| Pull develop branch from remote repository:     | `gpd`  | git pull origin develop               |
| Show remote and local branches (quit with 'q'): | `gbsa` | git branch -a                         |
| Show local branches (quit with 'q'):            | `gbsl` | git branch                            |
| Checkout local branch (add name of branch):     | `gbcl` | git checkout                          |
| Checkout remote branch (add remote/branch):     | `gbcr` | git checkout --track                  |
| Checkout new branch (add name):                 | `gbcn` | git checkout -b                       |
| Delete branch locally:                          | `gbdl` | git checkout develop && git branch -D |
| Delete branch in remote repository:             | `gbdr` | git push --delete                     |

### Index (Staging)
Explanation by adding parts of a file to the index:  
`y` (yes): Stage this hunk to be included in the next commit.  
`n` (no): Do not stage this hunk; leave it as is in the working directory.  
`s` (split): Split this hunk into smaller parts, allowing you to stage only specific lines or changes within the hunk.  
`e` (edit): Manually edit this hunk to remove or modify lines before staging.  
`?` (help): Show the available options and their meanings.  

| Function                                    | Alias  | Command              |
|:--------------------------------------------|:-------|:---------------------|
| Stage file (add name of file):              | `gisf` | git add              |
| Stage parts of a file (add name of file):   | `gisp` | git add -p           |
| Stage all changes in working tree:          | `gisa` | git add .            |
| Unstage file (add name of file):            | `giuf` | git restore --staged |
| Unstage parts of a file (add name of file): | `giup` | git restore -p       |
| Unstage all files in index:                 | `giua` | git restore -p       |

### Commits
| Function                                                 | Alias   | Command                                      |
|:---------------------------------------------------------|:--------|:---------------------------------------------|
| Set empty, initial commit:                               | `gci`   | git commit --allow-empty -m "INITIAL COMMIT" |
| Commit changes:                                          | `gcc`   | git commit                                   |
| Commit with short message:                               | `gcm`   | git commit -m                                |
| Commit with 'Work In Progress' message:                  | `gcwip` | git commit -m "WIP"                          |
| Change last commit (file(s)/commit message) before push: | `gccl`  | git commit --amend                           |
| Revert last commit (before push):                        | `gcrl`  | git commit --hard HEAD~1                     |

### Comparing
| Function                  | Alias | Command  |
|:--------------------------|:------|:---------|
| Show differences in file: | `gdf` | git diff |

### Pushing/Pulling
| Function                                              | Alias | Command              |
|:------------------------------------------------------|:------|:---------------------|
| Pull actual branch from remote repository:            | `gpl` | git pull             |
| Fetch actual branch from remote repository:           | `gpf` | git fetch            |
| Pull actual branch from remote repository, then push: | `gpp` | git pull && git push |
| Revert last push (add commit hash):                   | `gpr` | git revert           |

### Stashing
| Function             | Alias | Command       |
|:---------------------|:------|:--------------|
| Stash changes:       | `gsc` | git stash     |
| Pop stashed changes: | `gsp` | git stash pop |

<br>

## Tmux
| Function                                     | Alias  | Command                       |
|:---------------------------------------------|:------:|:------------------------------|
| Start Tmux:                                  | `tms`  | tmux                          |
| Quit Tmux:                                   | `tmq`  | tmux detach                   |
| List all Seesion (Tmux has to been started): | `tml`  | tmux ls                       |
| Load existing session (add \<session-name>): | `tmls` | tmux attach -t                |
| Create new session (add \<session-name>):    | `tmns` | tmux new -s                   |
| Source .tmux.conf file:                      | `tmsc` | tmux source-file ~/.tmux.conf |
| List Tmux keys:                              | `tmlk` | tmux list-keys                |
