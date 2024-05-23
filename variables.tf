variable "base_names" {
  description = "A list of base names for the resources, Enter list format only eg: ['base_name']"
  type        = list(string)
}

variable "resource_types" {
  description = "A list of resource types corresponding to the base names, enter only from 3 values('virtual_machine','key_vault','storage_account'), Enter list format only eg: ['resource_name']"
  type        = list(string)
}
