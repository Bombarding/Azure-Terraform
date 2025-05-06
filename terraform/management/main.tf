module "environments" {
  for_each            = local.spaces
  source              = "./bootstrap"
  name                = each.key
  resource_group_name = var.resource_group_name
}

module "network" {
  source                      = "./networking"
  resource_group_name         = var.resource_group_name
  terraform_state_bucket_name = var.terraform_state_bucket_name
  region                      = var.region
  security_group_name         = var.security_group_name
  virtual_network_name        = var.virtual_network_name
  subnet_one_name             = var.subnet_one_name
  subnet_two_name             = var.subnet_two_name
  address_space               = var.address_space
  dns_servers                 = var.dns_servers
  subnet_one_address_prefixes = var.subnet_one_address_prefixes
  subnet_two_address_prefixes = var.subnet_two_address_prefixes
}
