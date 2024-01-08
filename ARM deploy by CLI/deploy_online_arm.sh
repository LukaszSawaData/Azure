resourceGroup="armtest"
location="westeurope"
az group create -l $location -n $resourceGroup



templateUri="https://github.com/Azure/azure-quickstart-templates/tree/master/quickstarts/microsoft.storage/storage-account-create"

az group deployment create \
    --name TestDeployment \
    --resource-group $resourceGroup \
    --template-uri $templateUri
    