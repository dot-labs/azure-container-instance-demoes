@ECHO OFF

call az group create --name acidemorg --location westus

ECHO --------------------------
ECHO Resource Group Created
ECHO --------------------------

call az container create --name acidemocontainer --image microsoft/aci-helloworld --cpu 1 --memory 1 --resource-group acidemorg --ip-address public

ECHO --------------------------
ECHO Container Instance Created
ECHO --------------------------

