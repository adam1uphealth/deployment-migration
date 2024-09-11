#!/usr/bin/env bash

helm repo add awspca https://cert-manager.github.io/aws-privateca-issuer
helm install aws-privateca-issuer awspca/aws-privateca-issuer -n aws-privateca-issuer --create-namespace
