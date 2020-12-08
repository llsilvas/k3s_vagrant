#!/bin/bash
echo "**** Begin installing k3s"

#Install
curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION=v1.19.4+k3s2 K3S_KUBECONFIG_MODE="644" sh -

echo "**** End installing k3s"