#!/bin/bash

RESOURCE_GROUP="fredr-aks-win"
CLUSTER_NAME="fredr-aks-win"
 az aks get-credentials --resource-group $RESOURCE_GROUP --name $CLUSTER_NAME
