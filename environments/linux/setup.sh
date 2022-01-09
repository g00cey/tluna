#!/bin/bash

#delete links
if [ ! -d ~/.config ]; then
  mkdir ~/.config
fi
unlink ~/.w3m
unlink ~/.gitconfig

unlink ~/.ctags
unlink ~/bin
unlink ~/.vimrc
unlink ~/.gvimrc
unlink ~/.vim
unlink ~/.config/nvim
unlink ~/.tmux.conf
unlink ~/.my.cnf
unlink ~/.anyenv
unlink ~/.tmuxfiles
unlink ~/.zshrc
unlink ~/.zshenv

#vim
ln -s ~/src/git/github/tluna/dotfiles/vim/vimrc  ~/.vimrc
ln -s ~/src/git/github/tluna/dotfiles/vim/gvimrc ~/.gvimrc
ln -s ~/src/git/github/tluna/dotfiles/vim/       ~/.vim
ln -s ~/src/git/github/tluna/dotfiles/nvim/      ~/.config/nvim

#another dot files
ln -s ~/src/git/github/tluna/dotfiles/zshrc      ~/.zshrc
ln -s ~/src/git/github/tluna/dotfiles/zshenv     ~/.zshenv
ln -s ~/src/git/github/tluna/dotfiles/w3m/       ~/.w3m
ln -s ~/src/git/github/tluna/bin/                ~/bin
ln -s ~/src/git/github/tluna/dotfiles/gitconfig  ~/.gitconfig
ln -s ~/src/git/github/tluna/dotfiles/tmux.conf  ~/.tmux.conf
ln -s ~/src/git/github/tluna/dotfiles/ctags      ~/.ctags
ln -s ~/src/git/github/tluna/dotfiles/my.cnf     ~/.my.cnf
ln -s ~/src/git/github/tluna/dotfiles/tmuxfiles/ ~/.tmuxfiles

#git settings
#git config --global user.name "g00chy"
#git config --global user.email "totugekiluna@gmail.com"
#git config --global core.editor 'vim -c "set fenc=utf-8"'
#git config --global push.default matching

#submoudle
cd ~/src/git/github/tluna/
git submodule init
git submodule update
#anyenv
ln -s ~/src/git/github/tluna/dotfiles/anyenv  ~/.anyenv

sudo apt update
sudo apt upgrade -y
sudo apt install -y build-essential zsh tig fzf

#make dir
dir='/home/luna/.cache/shell/'
if [ ! -d $dir ]; then
  mkdir $dir
fi
result_starship=`whereis starship | wc -l`
if [ $result_starship -lt 0 ]; then
  sh -c "$(curl -fsSL https://starship.rs/install.sh)"
fi
