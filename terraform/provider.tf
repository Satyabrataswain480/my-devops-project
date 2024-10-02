terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.1.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  subscription_id = "f3277143-169f-4471-9141-ebc4ffec644b"
  tenant_id = "c8bd14a4-e65f-472d-b301-33f9c4046e60"
  client_id = "64e6ae04-d1ee-4dc7-bfa7-3eecade33a83"
  client_secret = "czv8Q~OriqL3DHqdV5XQOeM45sL6OZKibGTTEa" 
  features {}
}