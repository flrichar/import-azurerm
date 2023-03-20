# Imported AKS 
Provision AKS cluster with azure-rm terraform provider, then import with rancher2 terraform provider, for comparison and contrast.

## Purpose
Creating a new Resource Group with vnet subnet information -- or perhaps existing -- for import into Rancher.

## Exising Resources
 * Azure Credentials 
 * Cloud-credentials in Rancher
 
Needed to add a [role assignment for the new resource group](https://ranchermanager.docs.rancher.com/v2.6/how-to-guides/new-user-guides/kubernetes-clusters-in-rancher-setup/set-up-clusters-from-hosted-kubernetes-providers/aks#setting-up-the-service-principal-with-the-azure-command-line-tool) for Azure, this can be automated with `local-exec` or something similar.

Inspired by [this dev.to post](https://dev.to/cmendibl3/aks-windows-node-pool-with-spot-virtual-machines-and-ephemeral-disks-4807).
