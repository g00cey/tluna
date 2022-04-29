#!/bin/bash

#delete links
if [ ! -d ~/.config ]; then
  mkdir ~/.config
fi
unlink ~/.w3m

unlink ~/.ctags
unlink ~/bin
unlink ~/.vimrc
unlink ~/.gvimrc
unlink ~/.vim
unlink ~/.config/nvim
unlink ~/.tmux.conf
unlink ~/.my.cnf
unlink ~/.tmuxfiles
unlink ~/.zshrc
unlink ~/.zshenv
unlink ~/.config/starship.toml

#vim
ln -s ~/src/git/github/tluna/dotfiles/vim/vimrc  ~/.vimrc
ln -s ~/src/git/github/tluna/dotfiles/vim/gvimrc ~/.gvimrc
ln -s ~/src/git/github/tluna/dotfiles/vim/       ~/.vim
ln -s ~/src/git/github/tluna/dotfiles/nvim/      ~/.config/nvim

#another dot files
ln -s ~/src/git/github/tluna/dotfiles/zshrc           ~/.zshrc
ln -s ~/src/git/github/tluna/dotfiles/zshenv          ~/.zshenv
ln -s ~/src/git/github/tluna/dotfiles/w3m/            ~/.w3m
ln -s ~/src/git/github/tluna/bin/                     ~/bin
ln -s ~/src/git/github/tluna/dotfiles/tmux.conf       ~/.tmux.conf
ln -s ~/src/git/github/tluna/dotfiles/ctags           ~/.ctags
ln -s ~/src/git/github/tluna/dotfiles/my.cnf          ~/.my.cnf
ln -s ~/src/git/github/tluna/dotfiles/tmuxfiles/      ~/.tmuxfiles
ln -s ~/src/git/github/tluna/dotfiles/starship.toml   ~/.config/starship.toml

# zshenv
touch ~/.zshenv-local

#git settings
git config --global core.editor 'nvim -c "set fenc=utf-8"'
git config --global push.default matching

#submoudle
cd ~/src/git/github/tluna/
git submodule init
git submodule update

sudo apt update
sudo apt upgrade -y
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo apt install -y build-essential zsh tig fzf unzip ripgrep jq lv zsh unzip
bat_file_url=`curl https://api.github.com/repos/sharkdp/bat/releases/latest | jq '. | .assets[] | select(.name | contains("amd64.deb")) | select(.name | contains("musl")|not) | .browser_download_url'`
echo $bat_file_url
#★todo ファイル名取得 sudo apt install ./

#make dir
dir=~/.cache/shell
file=~/.cache/shell/chpwd-recent-dirs
if [ ! -d $dir ]; then
  mkdir -p $dir
fi
if [ ! -e $file ]; then
  touch $file
fi

#startship
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
