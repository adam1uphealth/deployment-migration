helm repo add external-secrets https://charts.external-secrets.io

helm upgrade --install external-secrets external-secrets/external-secrets \
  -n external-secrets \
  --create-namespace \
  -f external-secrets.values.yaml

