#!/bin/bash
#setup-nvim
sudo snap install nvim --classic
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

directory=`dirname $0`
$directory/setup-anyenv.sh
$directory/setup-anyenv-latest-install.sh
