#!/bin/bash

front_app_service_name=$(terraform output front_app_service_name)
ressource_groupe_name=$(terraform output azurerm_resource_group_name)

cd ../CloudFront

url=$(az webapp deployment list-publishing-credentials --name $front_app_service_name --resource-group $ressource_groupe_name --query scmUri --output tsv)

git remote remove azure

git remote add azure "${url}/${front_app_service_name}.git"

git push azure master

cd ../deployment
