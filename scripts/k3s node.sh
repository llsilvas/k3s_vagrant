#!/bin/bash
echo "**** Begin installing k3s_node"

#Install
curl -sfL https://get.k3s.io | K3S_URL=https://192.168.33.15 K3S_TOKEN=K1091a1d87e207b946ad9964caac5ab3ece26e4f59030b54184c2e783dbebadbffc::server:e9c439f337d1b07a0124882aa82dbc54 sh -

echo "**** End installing k3s_node"