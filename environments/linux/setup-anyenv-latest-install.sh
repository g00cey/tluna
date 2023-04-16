#!/bin/zsh
source ~/.zshrc

pyversion=`pyenv install --list | egrep ' [0-9]+.*' | egrep -v '[a-z]' | tail -1 | sed 's/ //g'`
echo $pyversion
goversion=`goenv install --list | egrep ' [0-9]+.*' | egrep -v '[a-z]' | tail -1 | sed 's/ //g'`
echo $goversion
phpversion=`phpenv install --list | egrep ' [0-9]+.*' | egrep -v '[a-z]' | tail -1 | sed 's/ //g'`
echo $phpversion
nodeversion=`nodenv install --list | egrep '[1-9]+.*' | egrep -v '[a-z]' | tail -1 | sed 's/ //g'`
echo $nodeversion

pyenv install $pyversion
goenv install $goversion
phpenv install $phpversion
nodenv install $nodeversion

pyenv global $pyversion
goenv global $goversion
phpenv global $phpversion
nodenv global $nodeversion

git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
