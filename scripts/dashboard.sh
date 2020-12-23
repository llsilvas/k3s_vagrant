#!/bin/bash

echo "**** Install Kubernetes Dashboard"

kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.1.0/aio/deploy/recommended.yaml


echo "**** Create User"

sudo k3s kubectl create -f dashboard.admin-user.yml -f dashboard.admin-user-role.yml

echo "**** Show Bearer Token"

sudo k3s kubectl -n kubernetes-dashboard describe secret admin-user-token | grep ^token

echo "**** End preparing dashboard"