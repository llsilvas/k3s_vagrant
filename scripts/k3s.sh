#!/bin/bash
echo "**** Begin installing k3s"

#Install
curl -sfL https://get.k3s.io | K3S_KUBECONFIG_MODE="644" K3S_TOKEN=SECRET sh -

sudo k3s server --cluster-init

echo "**** End K3s"
