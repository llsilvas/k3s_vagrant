#!/bin/bash
echo "**** Begin installing k3sup"

#Install
curl -sLS https://get.k3sup.dev | sh

sudo install k3sup /usr/local/bin/

k3sup install --ip 192.168.3.10 --local-path ~/.kube/config

k3sup --help