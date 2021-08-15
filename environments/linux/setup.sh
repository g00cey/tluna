#!/bin/bash

#delete links
unlink ~/.w3m
unlink ~/.gitconfig
unlink ~/.irbrc

unlink ~/.ctags
unlink ~/bin
unlink ~/.vimrc
unlink ~/.gvimrc
unlink ~/.vim
unlink ~/.tmux.conf
unlink ~/.my.cnf
unlink ~/.anyenv
unlink ~/.tmuxfiles

#vim
ln -s ~/src/git/github/tluna/vim/vimrc        ~/.vimrc
ln -s ~/src/git/github/tluna/vim/gvimrc       ~/.gvimrc
ln -s ~/src/git/github/tluna/vim/             ~/.vim

#another dot files and w3m
ln -s ~/src/git/github/tluna/w3m/             ~/.w3m
ln -s ~/src/git/github/tluna/gitconfig        ~/.gitconfig
ln -s ~/src/git/github/tluna/irbrc            ~/.irbrc
ln -s ~/src/git/github/tluna/tmux.conf        ~/.tmux.conf
ln -s ~/src/git/github/tluna/ctags            ~/.ctags
ln -s ~/src/git/github/tluna/bin/             ~/bin
ln -s ~/src/git/github/tluna/dotfiles/my.cnf  ~/.my.cnf
ln -s ~/src/git/github/tluna/dotfiles/tmuxfiles/ ~/.tmuxfiles

#git settings
git config --global user.name "g00chy"
git config --global user.email "totugekiluna@gmail.com"
git config --global core.editor 'vim -c "set fenc=utf-8"'
git config --global push.default matching

#submoudle
cd ~/src/git/github/tluna/
git submodule init
git submodule update
#anyenv
ln -s ~/src/git/github/tluna/dotfiles/anyenv  ~/.anyenv

sudo apt install build-essential
