#!/bin/bash
sudo apt install -y xrdp
sudo systemctl enable xrdp
sudo cp /etc/xrdp/km-00000409.ini /etc/xrdp/back-km-00000409.ini
sudo cp /etc/xrdp/km-00000411.ini /etc/xrdp/km-00000409.ini
sudo systemctl restart xrdp
