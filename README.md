# Deployment Migration Manual Testing

This repo is used for testing the migration of deployment from SPLAT-specific pipeline to tf-live and Helm charts

Contained in the repo are a number of bash scripts and YAML values files for installing the required Helm charts to a `terraform-live`-managed EKS cluster in `1up-dev2` to set up the platform gateway (i.e. core infra API, Keycloak, and gateway).
These files are meant to be used for manually applying the Helm charts to verify functionality before attempting to migrate to ArgoCD.
Once everything works, they should also work as the basis for that migration - the values files in particular will be easily translatable to `application` values files in the `helm-charts` repo.

## Order of Operations

While not all charts have dependencies, in order to avoid errors the following order of chart applications should be generally followed:

```bash
./metrics-server.sh
./external-dns.sh
./aws-load-balancer-controller.sh
./cert-manager.sh
./aws-pca-issuer.sh
./external-secrets.sh
./external-secrets-injection.sh
./fluentbit.sh # Not yet implemented - can also be done last
./1up-platform-gateway.sh
```

Note that all scripts reference external Helm chart sources with the exception of `1up-platform-gateway.sh`, which requires the chart to be present on the user's machine and needs the path to the chart as a variable in the script.
