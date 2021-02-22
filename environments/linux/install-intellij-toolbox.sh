#!/bin/bash
wget https://download-cf.jetbrains.com/toolbox/jetbrains-toolbox-1.20.7940.tar.gz
tar xvzf jetbrains-toolbox-1.20.7940.tar.gz
sudo mv jetbrains-toolbox-1.20.7940/jetbrains-toolbox /usr/local/bin/
sudo rm -rf jetbrains-toolbox-1.20.7940
rm jetbrains-toolbox-1.20.7940.tar.gz
