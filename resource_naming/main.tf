locals {
  truncated_base_name = substr(var.base_name, 0, 15)

  resource_name = (
    var.resource_type == "virtual_machine" ? format("vm-%s-00", substr(var.base_name, 0, 15 - 5)) :
    var.resource_type == "key_vault" ? format("kv-%s", lower(var.base_name)) :
    var.resource_type == "storage_account" ? format("sa%s", replace(lower(var.base_name), "-", "")) :
    ""
  )
}
