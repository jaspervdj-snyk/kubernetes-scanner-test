#/bin/sh
set -o errexit
echo "Testing connectivity to Snyk..."
curl -i "https://api.snyk.io/rest/openapi"
echo

echo "Testing connectivity to Kubernetes API (no SSL verification)..."
curl -ki "https://kubernetes.default.svc.cluster.local"
echo

echo "Testing connectivity to Kubernetes API..."
curl -i "https://kubernetes.default.svc.cluster.local"
echo
