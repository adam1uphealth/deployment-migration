# Absolute path to the 1up-platform-gateway Helm chart
PATH_TO_CHART=""

[[ -z "$PATH_TO_CHART" ]] \
  && echo "Edit '1up-platform-gateway.sh' to add the absolute path to the helm chart" \
  && exit 1;

helm upgrade --install platform-gateway $PATH_TO_CHART \
  -n core-infra \
  --create-namespace \
  -f 1up-platform-gateway.values.yaml
