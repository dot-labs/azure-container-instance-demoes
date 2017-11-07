@ECHO OFF

call az acs kubernetes install-cli

ECHO --------------------------
ECHO K8S CLI Installed
ECHO --------------------------

ECHO OR you can use > choco install kubernetes-cli