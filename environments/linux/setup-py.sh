#!/bin/bash

directory=`dirname $0`
$directory/setup-anyenv.sh
$directory/setup-anyenv-latest-install.sh

pip3 install python-language-server
pip3 install pyls-isort
pip3 install pyls-black
