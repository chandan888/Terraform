variable "base_names" {
  description = "A list of base names for the resources"
  type        = list(string)
}

variable "resource_types" {
  description = "A list of resource types corresponding to the base names"
  type        = list(string)
}
