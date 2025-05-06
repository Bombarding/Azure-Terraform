resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.region
}

resource "azurerm_network_security_group" "aznsg" {
  name                = var.security_group_name
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
}

resource "azurerm_virtual_network" "azvn" {
  name                = var.virtual_network_name
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
  address_space       = var.address_space
  dns_servers         = var.dns_servers

  subnet {
    name             = var.subnet_one_name
    address_prefixes = var.subnet_one_address_prefixes
  }

  subnet {
    name             = var.subnet_two_name
    address_prefixes = var.subnet_two_address_prefixes
    security_group   = azurerm_network_security_group.aznsg.id
  }

  tags = {
    environment = "Testing"
  }
}
