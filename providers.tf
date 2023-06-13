terraform {
  required_version = "~> 1.4"
  required_providers {
    azurerm = {
      source  = "azurerm"
      version = "~> 3.61"
    }
    rancher2 = {
      source  = "rancher/rancher2"
      version = "~> 3.0"
    }
  }
  backend "pg" {
    schema_name = "aks-import"
  }
}

provider "azurerm" {
  features {}
}

provider "rancher2" {
  api_url   = var.api_url
  token_key = var.token_key
}

