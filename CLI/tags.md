Create a new tag

az tag create -n Owner -v Accounting
Tag a vm with the new tag

az vm set -g MYRG -n MYVM --set-tag Owner=Accounting
Update a tag with a new value

az vm set -g MyRG -n MYVM --set-tag Owner=R/&D
Tag a vm with multiple tags in a single operation

az vm set -g MyRG -n MyVM --set-tag Display="Home Office" Owner=Accounting
List all resource with the new tag and value

az resource list --tag Owner=Accounting
List all VMs with the new tag and value

az vm list --tag Owner=Accounting
List all resource with the new tag

az resource list --tag Owner
List all VMs with the new tag

az vm list --tag Owner
Set a tag to an empty string

az vm set -g MYRG -n MYVM --set-tag Owner
Remove the tag from the vm

az vm set -g MYRG -n MYVM --remove-tag Owner
Clear all tags from a VM

az vm set -g MYRG -n MYVM --remove-tag *
List all tags in a subscription

az tag list
Remove all instances of a tag

az tag delete -n Owner
Create a new generic resource with a tag

az resource create [...] --set-tag Owner=Accounting
Update a generic resource with a tag

az resource set [...] --set-tag Owner=Accounting
