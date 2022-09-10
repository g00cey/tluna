#!/bin/bash
sudo apt install -y dconf-editor dconf-cli
dconf dump /org/gnome/desktop/wm/keybindings/ > ~/src/git/github/tluna/dotfiles/dconf/keybindings-dump

