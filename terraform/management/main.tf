module "environments" {
  for_each = local.spaces
  source   = "./bootstrap"
  name     = each.key
}
