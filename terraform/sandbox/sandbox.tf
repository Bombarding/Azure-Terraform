module "sandbox" {
  source              = "../shared/modules/env"
  resource_group_name = var.resource_group_name
  keyvault_name       = var.keyvault_name
}
