@ECHO OFF

call az group create --name acidemo02rg --location westus

ECHO --------------------------
ECHO Resource Group Created
ECHO --------------------------

call az container create --name acidemocontainergroup --resource-group acidemo02rg --template-file aci-demo-02-arm-template.json --ip-address public

ECHO --------------------------
ECHO Container Group Created
ECHO --------------------------

