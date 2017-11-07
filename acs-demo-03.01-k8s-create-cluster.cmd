@ECHO OFF

call az group create --name acsdemorg --location westus

ECHO --------------------------
ECHO Resource Group Created
ECHO --------------------------

call az acs create --orchestrator-type kubernetes --resource-group acsdemorg --name acsk8sdemo --generate-ssh-keys

ECHO --------------------------
ECHO K8S cluster created
ECHO --------------------------

call az ad sp create-for-rbac --role=Contributor --scopes /subscriptions/xxxxxx-xxxx-xxxx-xxxx-xxxxxxxxx

ECHO --------------------------
ECHO AD SPN created
ECHO --------------------------