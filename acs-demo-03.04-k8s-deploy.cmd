@ECHO OFF

call kubectl create -f acs-demo-k8s-aci-pod.yaml

ECHO --------------------------
ECHO Deploy nginx container to k8s ACI
ECHO --------------------------

call kubectl get pods -o wide

ECHO --------------------------
ECHO List of k8s containers
ECHO --------------------------