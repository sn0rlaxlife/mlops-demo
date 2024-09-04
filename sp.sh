#!/bin/bash

## Placeholder ## you'll need to replace values with sub id/rg these are dynamic so keeping blank for security reasons
echo "Creating SP related to RG housing ML Workspace"

az ad sp create-for-rbac --name "<service-principal-name>" --role contributor \
  --scopes /subscriptions/<subscription-id>/resourceGroups/<your-resource-group-name> \
  --sdk-auth
