#!/bin/bash
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 -o /tmp/get
chmod u+x /tmp/get
sudo /tmp/get
curl -L "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" -o /tmp/kubectl
chmod au+x /tmp/kubectl
sudo mv /tmp/kubectl /usr/local/bin/

path=`curl -s https://api.github.com/repos/helmfile/helmfile/releases/latest | jq -r '.assets[] | select( .name | contains("linux_amd")) | .browser_download_url'`
wget -O /tmp/helmfile.tar.gz $path
tar xvzf /tmp/helmfile.tar.gz helmfile
chmod +x helmfile
sudo mv helmfile /usr/local/bin/
helm plugin install https://github.com/databus23/helm-diff
