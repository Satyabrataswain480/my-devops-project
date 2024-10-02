provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "myDevOpsResourceGroup"
  location = "East US"
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "myAKSCluster"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "myaks"

  agent_pool_profile {
    name       = "agentpool"
    count      = 1
    vm_size    = "Standard_B2s"
    os_type    = "Linux"
  }

  identity {
    type = "SystemAssigned"
  }

  role_based_access_control {
    enabled = true
  }
}