#!/bin/bash
echo "**** Begin installing k3s_node"

#Install
curl -sfL https://get.k3s.io | K3S_URL=https://192.168.3.10:6443 \
K3S_TOKEN=SECRET sh -

sudo k3s agent --server https://192.168.3.10:6443

echo "**** End installing k3s_node"