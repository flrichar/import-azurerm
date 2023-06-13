###resource "rancher2_cloud_credential" "aks-creds" {
###  name = "aks-cloud-credential"
###  azure_credential_config {
###    client_id       = var.clientid
###    client_secret   = var.clientsecret
###    subscription_id = var.subscriptionid
###  }
###}

### above is for a new cloud-credential, below is for existing
### remember to change data.rancher2_cloud_credential in the next block
data "rancher2_cloud_credential" "aks-creds" {
  name = "aks-fredr"
}


## TODO fix contributor role for appid/tenant and new rg

##  setup terraform_data resource with local-exec
## appId = "${azurerm_kubernetes_cluster.k8s.identity.0.principal_id}"

#resource "null_resource" "role_assignment" {
#  depends_on = [azurerm_kubernetes_cluster.k8s]
#  provisioner "local-exec" {
#    command = "az role assignment create --assignee ${var.app_id} --scope /subscriptions/${var.subscription_id}/resourceGroups/${azurerm_resource_group.rg.name} --role Contributor"
#  }
#}

resource "rancher2_cluster" "aks-import" {
  name        = var.cluster_name
  description = "Terraform AKS imported cluster"
  aks_config_v2 {
    name                = azurerm_kubernetes_cluster.k8s.name
    cloud_credential_id = data.rancher2_cloud_credential.aks-creds.id
    resource_group      = azurerm_resource_group.rg.name
    resource_location   = azurerm_resource_group.rg.location
    imported            = true
  }
}
