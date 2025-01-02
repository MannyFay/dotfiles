#!/usr/bin/env sh

PLUGIN_DIR="$HOME/.oh-my-zsh/custom/plugins/artisan"

if [ ! -d "$PLUGIN_DIR" ]; then
  git clone https://github.com/jessarcher/zsh-artisan.git "$PLUGIN_DIR"
else
  echo "Plugin already exists. Skipping cloning."
fi

chmod +x "$0"
