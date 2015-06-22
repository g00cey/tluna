#!/bin/bash
docker ps -a
echo 'puts container name'
read container
#sudo nsenter -t $(sudo docker inspect --format '{{.State.Pid}}' $container) -m -u -i -n
sudo nsenter -t $(sudo docker inspect --format '{{.State.Pid}}' $container) -u -i -n
