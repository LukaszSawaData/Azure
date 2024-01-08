#parameteres

app_id =
password = 
tenant_id = 



az login --service-principal -u ${app_id} -p ${password} --tenant ${tenant_id}





#create resource group
az group create --name GroupName --location "Central US"


