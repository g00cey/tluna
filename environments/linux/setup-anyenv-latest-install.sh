#!/bin/zsh
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
