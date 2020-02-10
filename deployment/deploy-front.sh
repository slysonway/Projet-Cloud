#!/bin/bash

front_app_service_name=$(terraform output front_app_service_name)
ressource_groupe_name=$(terraform output azurerm_resource_group_name)
github_address_front_app=https://github.com/slysonway/CloudFront

cd ../CloudFront

url=$(az webapp deployment list-publishing-credentials --name $front_app_service_name --resource-group $ressource_groupe_name --query scmUri --output tsv)

git remote remove azure

git remote add azure "${url}/${front_app_service_name}.git"

git push azure master

cd ../deployment

#az webapp deployment source config --branch master --manual-integration --name $front_app_service_name --resource-group $ressource_groupe_name --repo-url $github_address_front_app 
