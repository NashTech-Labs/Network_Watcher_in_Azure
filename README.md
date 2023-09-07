## Description

Here, In this template, we will create a Network Watcher resource at a particular location within a subscription and check whether it is created or not.

---
##### Pre-Requisite

* Azure Account

---
### Steps

* Login into your Azure portal.
* You can either use a portal or use the service principal to login using your credentials.
* Clone the Repository and switch to module directory.
* Then run the terraform commands to create the resource.
* Commands :
```
-  terraform init 
-  terraform plan 
-  terraform apply 
``` 
* It will create the resource within your subscription.
* To check your subscription with the network watcher is present or not.
* Run the command :
``` 
az network watcher list --subscription <SUBSCRIPTION_ID> --query '[*].{"location":location,"provisioningState":provisioningState,"resourceGroup":resourceGroup}'

az network watcher list --out table
```
---

## Configuration

The following table lists the configurable parameters of the Network Watcher module with their default values.

| Parameter               | Description                   | Default              | Type      |
|-------------------------|-------------------------------|----------------------|-----------|
| network_watcher_name_VV | Network Watcher Name          | NetworkWatcher       | string    |
| rg_VV                   | Name of resource group        | NetworkWatcher-rg    | string    |
| location_VV             | Name of location              | WestEurope          | string    |


---