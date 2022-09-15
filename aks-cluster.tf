provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "default" {
  name     = "${var.naming_prefix}-rg"
  location = "Central US"

  tags = {
    environment = var.naming_prefix
  }
}

resource "azurerm_kubernetes_cluster" "default" {
  name                = "${var.naming_prefix}"
  location            = azurerm_resource_group.default.location
  resource_group_name = azurerm_resource_group.default.name
  dns_prefix          = "${var.naming_prefix}-dns"

  default_node_pool {
    name            = "default"
    node_count      = 2
    vm_size         = "Standard_D2_v2"
    //os_disk_size_gb = 30
  }

  service_principal {
    client_id     = var.appId
    client_secret = var.password
  }

  role_based_access_control {
    enabled = true
  }

  tags = {
    environment = var.naming_prefix
  }
}
