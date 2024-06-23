#!/bin/bash

extensions=(
  "formulahendry.auto-close-tag"
  "formulahendry.auto-rename-tag"
  "ms-vscode.azure-account"
  "ms-azuretools.vscode-azurefunctions"
  "ms-vscode.azure-repos"
  "ms-azuretools.vscode-azureresourcegroups"
  "biati.ddev-manager"
  "ms-vscode-remote.remote-containers"
  "ms-azuretools.vscode-docker"
  "rlivings39.fzf-quick-open"
  "github.vscode-github-actions"
  "github.copilot"
  "github.copilot-chat"
  "github.remotehub"
  "graphql.vscode-graphql"
  "graphql.vscode-graphql-syntax"
  "shufo.vscode-blade-formatter"
  "onecentlin.laravel-blade"
  "amiralizadeh9480.laravel-extra-intellisense"
  "onecentlin.laravel5-snippets"
  "ms-vsliveshare.vsliveshare"
  "ms-vscode-remote.remote-ssh"
  "ms-vscode-remote.remote-ssh-edit"
  "ms-vscode.remote-server"
  "ms-vscode-remote.vscode-remote-extensionpack"
  "ms-vscode.remote-explorer"
  "ms-vscode.remote-repositories"
  "bradlc.vscode-tailwindcss"
  "tobias-z.vscode-harpoon"
  "ms-vscode-remote.remote-wsl"
  "gamunu.vscode-yarn"
  "atommaterial.a-file-icon-vscode"
  "alefragnani.project-manager"
  "vscodevim.vim"
)

for extension in "${extensions[@]}"
do
  code --install-extension $extension
done

