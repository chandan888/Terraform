locals {
  resource_map = { for i, base_name in var.base_names : base_name => var.resource_types[i] }
}

module "resource_naming" {
  source = "../resource_naming"

  for_each = local.resource_map

  base_name     = each.key
  resource_type = each.value
}
