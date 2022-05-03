#!/bin/bash
sudo apt install -y dconf-editor dconf-cli
dconf load /org/gnome/desktop/wm/keybindings/ < ~/src/git/github/tluna/dotfiles/dconf/keybindings

