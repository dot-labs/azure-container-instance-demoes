@ECHO OFF

call az provider register -n Microsoft.ContainerInstance
call az provider show -n Microsoft.ContainerInstance

ECHO --------------------------
ECHO ACI Provider registered
ECHO --------------------------

ECHO
ECHO

ECHO --------------------------
ECHO The following command might fail due to AZ CLI BUG > https://github.com/Azure/azure-cli/issues/4679
ECHO --------------------------

call az acs kubernetes get-credentials --resource-group acsdemorg --name acsk8sdemo

ECHO --------------------------
ECHO kubectl Credentials Saved
ECHO --------------------------

ECHO --------------------------
ECHO Edit 'acs-demo-k8s-aci-connector.yaml' to add SPN credentials???
ECHO --------------------------
PAUSE

call kubectl create -f acs-demo-k8s-aci-connector.yaml

ECHO --------------------------
ECHO K8S ACI provider Created
ECHO --------------------------
