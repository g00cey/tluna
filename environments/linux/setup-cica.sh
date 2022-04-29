#!/bin/bash
wget https://github.com/miiton/Cica/releases/download/v5.0.3/Cica_v5.0.3.zip -P /tmp
unzip /tmp/Cica_v5.0.3.zip -d /tmp
rm /tmp/Cica_v5.0.3.zip
sudo mkdir -p /usr/share/fonts/truetype/cica
sudo cp /tmp/*.ttf /usr/share/fonts/truetype/cica/
sudo fc-cache -vf
fc-list | grep -i cica

