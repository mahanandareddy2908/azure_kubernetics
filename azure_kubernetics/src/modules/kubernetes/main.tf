resource "azurerm_kubernetes_cluster" "kubernetes_cluster" {
  location            = "East US"
  name                = "test_aks1"
  resource_group_name = "TEST-DE-RG-001"
  dns_prefix = "testaks"

  default_node_pool {
    name    = "default"
    node_count = 1
    vm_size = "Standard_D2s_v3"
    zones = ["Zone 1"]
    max_count = 20
    min_count = 1
    enable_auto_scaling = true
    max_pods = 10
  }
#  identity {
#    type = "SystemAssigned"
#  }
  service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
  }
}