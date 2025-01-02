#!/bin/bash

PACKAGE_LIST='package-list.txt'

sudo apt-get update && sudo apt-get full-upgrade -y && sudo apt autoremove -y && sudo apt -f install -y && sudo apt clean

while read -r package; do
    sudo apt install -y "$package"
done < "$PACKAGE_LIST"