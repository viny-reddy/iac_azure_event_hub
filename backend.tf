terraform {

  required_version = ">= 0.14.0"

  backend "azurerm" {}

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.25.0"
    }
  }
}

/**
* The features block is required and should be used when possible. Read more about the features
* block here: https://www.terraform.io/docs/providers/azurerm/index.html#features-1
*/
provider "azurerm" {
  features {}
}
