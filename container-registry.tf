# Creates a container registry on Azure so that we can publish our Docker images.
resource "azurerm_container_registry" "container_registry" {
  name                     = var.app_name
  location                 = var.location
  resource_group_name      = azurerm_resource_group.practicum16.name
  admin_enabled            = true
  sku                      = "Basic"

  identity {
    type                   = "SystemAssigned"
  }
}

output "registry_login_server" {
  value                   = azurerm_container_registry.container_registry.login_server
}

output "registry_admin_username" {
  value                   = azurerm_container_registry.container_registry.admin_username
}

output "registry_admin_password" {
  value                   = azurerm_container_registry.container_registry.admin_password
  sensitive               = true
}
