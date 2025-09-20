provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "acr_rg" {
  name = var.resourcegroup
  location = var.location
}

resource "azurerm_container_registry" "acr" {
  name = var.acrname
  resource_group_name = azurerm_resource_group.acr_rg.name
  location = azurerm_resource_group.acr_rg.location
  sku = "Standard"
  admin_enabled = false
}
