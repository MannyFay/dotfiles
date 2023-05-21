# ~/.dotfiles/zsh/.zshrc



# Path to your dotfiles:
export DOTFILES=$HOME/.dotfiles

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation:
export ZSH="$HOME/.oh-my-zsh"

# Set ZSH theme:
ZSH_THEME="mannydark"

# Set the path to use GNU version of command line tools:
PATH="/opt/homebrew/opt/grep/libexec/gnubin:$PATH"

# Use case-sensitive completion.
# CASE_SENSITIVE="true"

# Activate hyphen insensitive tab completion:
HYPHEN_INSENSITIVE="true"

# Automatically set cursor at start if switching from insert to normal mode:
VI_MODE_SET_CURSOR=true

# Set clear visual distinction between insert and normal mode:
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Enable dot indicator for tab compleations that take longer:
# There is maybe an issue with multiline commands:
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Set time stamp format of history output:
# Three possible formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# Set custom format with the strftime function format. See 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Directory of ZSH:
ZSH_CUSTOM="$DOTFILES/zsh"

# Plugins (too many plugins slow down shell startup):
plugins=(
  zsh-autosuggestions
  zsh-syntax-highlighting
  web-search
  laravel5
  artisan
  npm
  vi-mode
  composer
  docker
  docker-compose
  git
)

# Load oh-my-zsh on ZSH start up:
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# Set language environment:
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
