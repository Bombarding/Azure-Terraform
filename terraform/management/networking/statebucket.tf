resource "azurerm_storage_account" "terraform_state_bucket" {
  name                     = var.terraform_state_bucket_name
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = azurerm_resource_group.resource_group.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    purpose   = "terraform state access"
    sensitive = "true"
    object    = "bucket"
  }

  depends_on = [azurerm_resource_group.resource_group]
}
