#!/bin/zsh
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

mkdir -p "$(nodenv root)/plugins"
git clone https://github.com/pine/nodenv-yarn-install.git "$(nodenv root)/plugins/nodenv-yarn-install"

pyenv global $pyversion
goenv global $goversion
phpenv global $phpversion
nodenv global $nodeversion
