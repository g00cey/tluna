#!/bin/bash
sudo apt install -y xrdp
wget 
https://github.com/Hinara/linux-vm-tools/blob/ubuntu20-04/ubuntu/22.04/install.sh
sudo sed -e 's/rdp_layout_jp=jp/rdp_layout_jp=us/' -i /etc/xrdp/xrdp_keyboard.ini
sudo systemctl enable xrdp
sudo systemctl restart xrdp
