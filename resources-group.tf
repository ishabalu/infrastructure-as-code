#
# Creates a resource group in out Azure account.
#
resource "azurerm_resource_group" "practicum16" {
    name     = var.app_name
    location = var.location
}