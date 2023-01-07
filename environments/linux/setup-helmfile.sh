#!/bin/bash
path=`curl -s https://api.github.com/repos/helmfile/helmfile/releases/latest | jq -r '.assets[] | select( .name | contains("linux_amd")) | .browser_download_url'`
wget -O /tmp/helmfile.tar.gz $path
tar xvzf /tmp/helmfile.tar.gz helmfile
chmod +x helmfile
sudo mv helmfile /usr/local/bin/
rehash
