terraform {
  required_version = ">= 1.4.2"
  required_providers {
    azurerm = {
      source  = "azurerm"
      version = "~> 3.48"
    }
    rancher2 = {
      source  = "rancher/rancher2"
      version = "~> 1.25"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "rancher2" {
  api_url   = var.api_url
  token_key = var.token_key
}

