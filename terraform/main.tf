provider "azurerm"{
    features {}
}

resource "azurerm_resource_group" "kubernetesRG" {
    name = "demoresourcegroup"
    location = "Central India"
  
}

resource "azurerm_kubernetes_cluster" "testCluster" {
  name                = "testCluster"
  location            = azurerm_resource_group.kubernetesRG.location
  resource_group_name = azurerm_resource_group.kubernetesRG.name
  dns_prefix          = "exampleaks1"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}