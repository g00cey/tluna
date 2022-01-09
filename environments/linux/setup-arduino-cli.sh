#!/bin/bash
curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | BINDIR=~/bin sh
sudo mv ~/bin/arduino-cli /usr/local/bin/
sudo chmod u+x /usr/local/bin/arduino-cli
