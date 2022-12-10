#!/bin/bash
curl -fsSL https://get.k3s.io/ | K3S_NODE_NAME="local-k3s" sh -s - --disable=traefik --disable=local-storage --disable=coredns --write-kubeconfig-mode 644
