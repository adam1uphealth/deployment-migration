#!/usr/bin/env bash

helm repo add aws-eks https://aws.github.io/eks-charts
helm repo update aws-eks
helm install aws-load-balancer-controller aws-eks/aws-load-balancer-controller \
  -n kube-system \
  -f aws-load-balancer-controller.values.yaml
