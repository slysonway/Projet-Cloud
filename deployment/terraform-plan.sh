#!/bin/bash


#####################################################
###   Set the AZURE AUTHENTICATION Variables      ###
#
#     AZURE_SUBSCRIPTION_ID
#     AZURE_CLIENT_ID
#     AZURE_CLIENT_SECRET
#     AZURE_TENANT_ID

terraform init

terraform plan -var azure-subscription_id=$AZURE_SUBSCRIPTION_ID\
               -var azure-client_id=$AZURE_CLIENT_ID\
               -var azure-client_secret=$AZURE_CLIENT_SECRET\
               -var azure-tenant_id=$AZURE_TENANT_ID
