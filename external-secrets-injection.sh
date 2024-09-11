#!/usr/bin/env bash

helm upgrade --install 1up-external-secrets oci://676488440346.dkr.ecr.us-east-1.amazonaws.com/1up-external-secrets \
  -n external-secrets \
  -f external-secrets-injection.values.yaml
