#!/bin/bash

helm repo add argo https://argoproj.github.io/argo-helm

helm upgrade --install argocd argo/argo-cd \
  --namespace=argocd \
  --create-namespace \
  -f values-override.yaml \
  --version 4.10.4
