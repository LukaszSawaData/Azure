
az group create -l westus -n MyRG

az resource delete -g MyRG --resource-type "Microsoft.Network/virtualNetworks" -n MyExampleVnet

az group list


az group export -n MyRG > ~/MyTemplate.json


az group deployment create --template-file-path ~/MyTemplate.json -g oDemo

az group list --query "[?name=='oDemo']"

Update a tag with a new value: 
