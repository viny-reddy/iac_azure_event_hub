terraform {

  required_version = ">= 0.14.0"




  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.25.0"
    }
  }
}


terraform {
  backend "azurerm" {
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
    resource_group_name  = "terraform-state-rg"
    storage_account_name = "vinstoragetf"
  }
}


/**
* The features block is required and should be used when possible. Read more about the features
* block here: https://www.terraform.io/docs/providers/azurerm/index.html#features-1
*/
provider "azurerm" {
  features {}
}
