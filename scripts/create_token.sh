cat <<EOF | oc apply -f -
apiVersion: v1
kind: Secret
metadata:
  name: openshift-console-token
  namespace: openshift-console
  annotations:
    kubernetes.io/service-account.name: openshift-console
type: kubernetes.io/service-account-token
EOF
