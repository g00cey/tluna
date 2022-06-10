#!/bin/bash
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 -o /tmp/get
chmod u+x /tmp/get
sudo /tmp/get
curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" -o /tmp/kubectl
chmod au+x /tmp/kubectl
sudo mv /tmp/kubectl /usr/local/bin/

