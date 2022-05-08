#!/bin/bash
sudo groupadd --system docker
sudo snap install docker
user=`whoami`
sudo gpasswd -a $user docker
