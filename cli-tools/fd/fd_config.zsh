#------------------------------------------------------------------------------
# fd Configuration File
#------------------------------------------------------------------------------

# https://github.com/sharkdp/fd
# Source this file into your .zshrc file.


#------------------------------------------------------------------------------
# Settings

export FZF_DEFAULT_COMMAND="fd --hidden --no-ignore --strip-cwd-prefix"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --no-ignore --strip-cwd-prefix"

_fzf_compgen_path() {
    # fd --hidden --exclude .git . "$1"
    fd --hidden --no-ignore . "$1"
}

# Use fd to generate the list for directory completion:
_fzf_compgen_dir() {
    # fd --type=d --hidden --exclude .git . "$1"
    fd --type=d --hidden --no-ignore . "$1"
}

