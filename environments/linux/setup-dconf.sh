#!/bin/bash
sudo apt install -y dconf-editor
dconf load /org/gnome/desktop/wm/keybindings/ < dotfiles/key
