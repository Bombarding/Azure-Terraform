module "environments" {
  for_each = local.spaces
  source   = "./bootstrap"
  name     = each.key
}

module "network" {
  source                      = "./networking"
  resource_group_name         = var.resource_group_name
  terraform_state_bucket_name = var.terraform_state_bucket_name
}
