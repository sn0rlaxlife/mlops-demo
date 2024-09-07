#!/bin/bash

# Fetch subscription ID
SUBSCRIPTION_ID=$(az account show --query id --output tsv)

# Define the resource group (update this with your actual resource group name or method to fetch it)
RESOURCE_GROUP="your-resource-group-name"  # Replace this with the actual resource group or a method to fetch it

# Define the service principal name (hardcoded or fetch as needed)
SERVICE_PRINCIPAL_NAME="<service-principal-name>"  # Replace with the actual service principal name

## Placeholder ## you'll need to replace values with sub id/rg these are dynamic so keeping blank for security reasons
echo "Creating SP related to RG housing ML Workspace"

az ad sp create-for-rbac --name $SERVICE_PRINCIPAL_NAME --role contributor \
  --scopes /subscriptions/$SUBSCRIPTION_ID/resourceGroups/$RESOURCE_GROUP
