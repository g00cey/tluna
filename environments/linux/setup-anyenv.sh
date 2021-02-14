#!/bin/bash

sudo apt install -y \
   autoconf \
   automake \
   bison \
   git \
   lemon \
   libbz2-dev \
   libcurl4-openssl-dev \
   libffi-dev \
   libjpeg-dev \
   libltdl-dev \
   liblzma-dev \
   libmcrypt-dev \
   libonig-dev \
   libpng-dev \
   libreadline-dev \
   libsqlite-dev \
   libssl-dev \
   libtidy-dev \
   libxml2-dev \
   libxslt-dev \
   libzip-dev \
   libsqlite3-dev \
   build-essential \
   make \
   pkg-config \
   re2c \
   zlib1g-dev

source ~/.profile

anyenv install phpenv
anyenv install pyenv
anyenv install goenv
anyenv install nodenv

source ~/.profile

pyversion=`pyenv install --list | egrep ' [0-9]+.*' | egrep -v '[a-z]' | tail -1`
echo $pyversion
goversion=`goenv install --list | egrep ' [0-9]+.*' | egrep -v '[a-z]' | tail -1`
echo $goversion
phpversion=`phpenv install --list | egrep ' [0-9]+.*' | egrep -v '[a-z]' | tail -1`
echo $phpversion
nodeversion=`nodenv install --list | egrep '[1-9]+.*' | egrep -v '[a-z]' | tail -1`
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
