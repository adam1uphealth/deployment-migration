#!/usr/bin/env bash

helm repo add external-dns https://kubernetes-sigs.github.io/external-dns/
kubectl get namespaces | grep -q "external-dns" || kubectl create namespace "external-dns"
helm upgrade --install external-dns external-dns/external-dns \
  -n external-dns \
  -f external-dns.values.yaml
