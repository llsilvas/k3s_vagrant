#!/bin/bash
echo "**** Begin installing k3sup"

# Criando chaves

echo "**** Criando chaves"
ssh-keygen -b 4096 

#Install
curl -sLS https://get.k3sup.dev | sh

sudo install k3sup /usr/local/bin/

k3sup install --local-path ~/.kube/config --ssh-key="/home/vagrant/.ssh/" --user=root

k3sup --help