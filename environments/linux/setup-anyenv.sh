#!/usr/bin/zsh

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

anyenv install --init
anyenv install phpenv
anyenv install pyenv
anyenv install goenv
anyenv install nodenv

source ~/.zshrc

pyversion=`pyenv install --list | egrep ' [0-9]+.*' | egrep -v '[a-z]' | tail -1`
echo $pyversion
goversion=`goenv install --list | egrep ' [0-9]+.*' | egrep -v '[a-z]' | tail -1`
echo $goversion
phpversion=`phpenv install --list | egrep ' [0-9]+.*' | egrep -v '[a-z]' | tail -1`
echo $phpversion
nodeversion=`nodenv install --list | egrep '[1-9]+.*' | egrep -v '[a-z]' | tail -1`
echo $nodeversion

(exec $SHELL -l)
