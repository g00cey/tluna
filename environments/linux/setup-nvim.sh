#!/bin/bash
path=`curl -s https://api.github.com/repos/neovim/neovim/releases/latest | jq -r '.assets[] | select( .name | contains("linux64.tar.gz")) | select( .name | contains("sha") | not) | .browser_download_url'`
wget $path -O /tmp/nvim.tgz
sudo tar xvzf /tmp/nvim.tgz -C /opt/
sudo chmod uag+x /opt/nvim-linux64/bin/nvim
sudo apt install ripgrep

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
