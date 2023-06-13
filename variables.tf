variable "resource_group_name" {
  description = "name for the resource group"
}

variable "location" {
  description = "region for aks cluster"
}

variable "cluster_name" {
  description = "default name for cluster"
}

variable "dns_prefix" {
  description = "dns prefix name"
}

variable "api_url" {
  description = "rancher api url"
}

variable "token_key" {
  description = "api key to use for tf"
}

variable "client_id" {
  description = "client id from azure"
}

variable "client_secret" {
  description = "client secret from azure"
}

variable "subscription_id" {
  description = "subscription id from azure"
}
