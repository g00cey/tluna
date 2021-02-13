#!/bin/bash

echo '
# wsl2-desktop.sh added
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export DefaultIMModule=fcitx
if [ $SHLVL = 1 ] ; then
  xset -r 49  > /dev/null 2&>1
  (fcitx-autostart > /dev/null 2&>1 &)
fi

export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '\''{print $2}'\''):0.0
# wsl2-desktop.sh added
' >> ~/.profile

sudo apt-get -y install fcitx-mozc fonts-noto-cjk dbus-x11 language-pack-ja fonts-noto-color-emoji fonts-symbola
sudo sed -i -e 's/# ja_JP.UTF-8/ja_JP.UTF-8/' /etc/locale.gen
sudo locale-gen
sudo update-locale LANG=ja_JP.UTF-8

source ~/.profile
