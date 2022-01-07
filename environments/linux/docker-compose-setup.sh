#!/bin/bash
curl https://api.github.com/repos/docker/compose/releases/latest  | jq '. | .assets[] | select(.name == "docker-compose-linux-x86_64") | .browser_download_url' | xargs -I {} curl {} -OL ./docker-compose
chmod +x docker-compose-linux-x86_64
mv docker-compose-linux-x86_64 docker-compose
sudo mv docker-compose /usr/local/bin/