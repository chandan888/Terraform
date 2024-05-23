module "resource_naming_parent" {
  source = "./resource_naming_parent"

  base_names     = var.base_names
  resource_types = var.resource_types
}

output "named_resources" {
  value = module.resource_naming_parent.resources
}
