data "azurerm_client_config" "current" {}
data "azurerm_resource_group" "resource_group" {
  name = var.resource_group_name
}

resource "azurerm_key_vault" "azkeyvault" {
  name                        = var.keyvault_name
  location                    = data.azurerm_resource_group.resource_group.location
  resource_group_name         = data.azurerm_resource_group.resource_group.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions     = ["Get", ]
    secret_permissions  = ["Get", ]
    storage_permissions = ["Get", ]
  }
}
