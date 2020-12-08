#!/bin/bash

echo "**** Begin preparing dashboard"

echo "**** Install Kubernetes Dashboard"
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.5/aio/deploy/recommended.yaml

# "download" the secret/token, for logging into the Dashboard
kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep admin-user | awk '{print $1}') > .ksekret

echo "**** End preparing dashboard"