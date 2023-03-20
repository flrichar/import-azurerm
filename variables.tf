variable "resource_group_name" {
  default = "default-aks-win"
}

variable "location" {
  default = "Canada Central"
}

variable "cluster_name" {
  default = "default-aks-win"
}

variable "dns_prefix" {
  default = "default-aks-win"
}

variable "api_url" {
  description = "rancher api url"
  default     = "https://fixme-rancher.fqdn.com/v3"
}

variable "token_key" {
  description = "api key to use for tf"
  default     = "some-token-name:some-token-data"
}

variable "client_id" {
  description = "client id from azure"
  default     = "some-client-id"
}

variable "client_secret" {
  description = "client secret from azure"
  default     = "some-client-secret"
}

variable "subscription_id" {
  description = "subscription id from azure"
  default     = "some-subscription-id"
}
