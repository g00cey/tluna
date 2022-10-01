#!/bin/bash
curl https://api.github.com/repos/docker/compose/releases/latest  | jq '. | .assets[] | select(.name == "docker-compose-linux-x86_64") | .browser_download_url' | xargs -I {} curl -L -o ./docker-compose {}
chmod +x docker-compose
sudo mv docker-compose /usr/local/bin/
