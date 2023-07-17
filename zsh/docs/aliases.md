# ZSH Aliases
## Git
The `gs` command provides a short written status. The Meanings are:  
A  : Added (file is in index)
?? : Untracked (unwatched file)
 M : Changed, in index (there is a space before M)
M  : Unstaged (there is a space after M)

| Alias | Command | Function |
|:------|:--------|:---------|
| gs    | git status -s| Show status of the repository |
| gl    | git log| Show commit history (quit with 'q') |
| gc    | git clone | Clone remote repository (add URL) |
| gpm   | git pull origin main | Pull main branch from remote repository       |
| gpd   | git pull origin develop | Pull develop branch from remote repository |
| gbsa | git branch -a | Show remote and local branches (quit with 'q') |
| gbsl | git branch | Show local branches (quit with 'q') |
| gbcl | git checkout | Checkout local branch (add name of branch) |
| gbcr | git checkout --track | Checkout remote branch (add remote/branch) |
| gbcn | git checkout -b | Checkout new branch (add name)    |
|||
|||
