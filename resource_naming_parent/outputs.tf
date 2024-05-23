output "resources" {
  value = { for k, v in local.resource_map : k => module.resource_naming[k].resource_name }
}
