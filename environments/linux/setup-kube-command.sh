#!/bin/bash
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 -o /tmp/get
chmod u+x /tmp/get
sudo /tmp/get
curl -L "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" -o /tmp/kubectl
chmod au+x /tmp/kubectl
sudo mv /tmp/kubectl /usr/local/bin/

helmfileUrl=`curl https://api.github.com/repos/helmfile/helmfile/releases | jq ".[].assets[].browser_download_url" | grep linux_amd64 | head -n 1 | tr -d '"'`
curl -L $helmfileUrl -o /tmp/helmfile.tgz
tar xvzf /tmp/helmfile.tgz -C /tmp
sudo chmod au+x /tmp/helmfile
sudo mv /tmp/helmfile /usr/local/bin/
rehash
helm plugin install https://github.com/databus23/helm-diff
