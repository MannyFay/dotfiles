#!/usr/bin/env sh

echo "Running environment installation script."

source ./zsh/install-artisan-plugin.sh
source ./create-symlinks.sh

mkdir -p ~/.config/nvim/undo
