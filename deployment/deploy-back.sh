#!/bin/bash

back_app_service_name=$(terraform output back_app_service_name)
ressource_groupe_name=$(terraform output azurerm_resource_group_name)

cd ../CloudNode

url=$(az webapp deployment list-publishing-credentials --name $back_app_service_name \
                          --resource-group $ressource_groupe_name --query scmUri --output tsv)

git remote remove azure

git remote add azure "${url}/${back_app_service_name}.git"

git push azure master

cd ../deployment

