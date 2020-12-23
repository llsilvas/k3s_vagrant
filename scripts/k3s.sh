#!/bin/bash
echo "**** Begin installing k3s"

#Install
curl -sfL https://get.k3s.io | K3S_KUBECONFIG_MODE="644" sh -

echo "**** End K3s"
