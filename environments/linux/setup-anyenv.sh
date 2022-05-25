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

git clone https://github.com/anyenv/anyenv ~/.anyenv

anyenv install --init
anyenv install phpenv
anyenv install pyenv
anyenv install goenv
anyenv install nodenv
# nodenv yarn
mkdir -p "$(nodenv root)/plugins"
git clone https://github.com/pine/nodenv-yarn-install.git "$(nodenv root)/plugins/nodenv-yarn-install"
nodenv hooks install

