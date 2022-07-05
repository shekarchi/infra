export NAMESPACE="$(basename $(pwd))"
export HELM_NAMESPACE="$NAMESPACE"

helm upgrade -i --atomic --timeout 180s --cleanup-on-fail --create-namespace kubernetes-dashboard kubernetes-dashboard/kubernetes-dashboard -f kubernetes-dashboard/values.yaml