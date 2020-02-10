#!/bin/bash

function_app_service_name=$(terraform output function_app_service_name)
ressource_groupe_name=$(terraform output azurerm_function_ressource_groupe)
github_address_fonction_app=https://github.com/slysonway/Serverless

az login

az functionapp deployment source config --branch master --manual-integration --name $function_app_service_name --repo-url $github_address_fonction_app --resource-group $ressource_groupe_name

# url=$(az webapp deployment list-publishing-credentials --name $function_app_service_name \
#                           --resource-group $ressource_groupe_name --query scmUri --output tsv)

# git remote remove azure

# git remote add azure "${url}/${back_app_service_name}.git"

# git push azure master

# cd ../deployment

