#------------------------------------------------------------------------------
#  Node.js ZSH Aliases
#------------------------------------------------------------------------------

# This file has to be sourced in .zsh_aliases file.
# Copy this line to do so:
# source ~/personal/github/dotfiles/nodejs/nodejs_aliases.zsh                   # Node.js

#------------------------------------------------------------------------------
#----- npm

alias nrd='npm run dev'            # Run development server.
alias ni='npm install'             # Install packages.
alias nid='npm install --save-dev' # Install packages as devDependencies.

#------------------------------------------------------------------------------
#----- Yarn

alias yi='yarn install'          # Install packages.
alias yd='yarn dev'              # Run development server.
alias yl='yarn eslint .'         # Lint the code in the current directory.
alias ylfa='yarn eslint --fix .' # Lint the code in the current directory and fix the issues.
alias ylf='yarn lint'            # Lint the code of a file by adding its name.
alias yb='yarn build'            # Build the project.
alias ytsc='yarn tsc --noEmit'   # Run TypeScript compiler.
alias ylff='yarn eslint --fix'   # Lint the code of a file by adding its name and fix the issues.
