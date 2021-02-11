#!/bin/bash

docker buildx create --use --name builder
docker buildx inspect --bootstrap builder
BUILDER=$(docker ps | grep buildkitd | cut -f1 -d' ')
docker cp ~/.ssh/intermediate.crt $BUILDER:/usr/local/share/ca-certificates/
docker exec $BUILDER update-ca-certificates
docker restart $BUILDER
