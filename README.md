# Terraform Azure Resource Naming Module

This Terraform module generates resource names based on predefined rules for Azure resources. It takes a base_name and resource_type as input and generates a resource_name according to the specified rules.

# Implementation Details

The module consists of two sub-modules:

1. Resource Naming Module (resource_naming):
   - This module takes base_name and resource_type as input and generates a resource_name based on the rules specified below.
   - Rules:
     - If the resource_type is virtual_machine, it appends vm- to the front of the base_name and -00 to the end. If the combined length is greater than 15 characters, it truncates the base_name to 15 characters.
     - If the resource_type is key_vault, it appends kv- to the front of the base_name and converts all characters to lowercase.
     - If the resource_type is storage_account, it appends sa to the front of the base_name, removes all dashes (-), and converts all characters to lowercase.

2. Resource Naming Parent Module (resource_naming_parent):
   - This module allows users to input a list of base_names and corresponding resource_types as a map.
   - It iterates over each base_name and resource_type pair and calls the resource_naming module to generate the resource_name for each pair.
   - The outputs of the resource_naming module are collected and presented as a map of base_name to resource_name.

# Usage

# Prerequisites

1. Terraform Installed :
    Ensure that Terraform is installed on your machine. You can download it from the official Terraform website or install it via a package manager.
2. Git Installed :
    Git is optional but recommended for version control and managing your Terraform configurations. You can download Git from the Git website or install it via a package manager.
3. Access to a Cloud Provider:
    You'll need access to a cloud provider such as AWS, Azure, or Google Cloud Platform where you plan to deploy your infrastructure.
4. Configuration File :
    Prepare a Terraform configuration file (usually named main.tf) where you'll define the infrastructure resources and include the modules.
5. Inputs Defined :
    Ensure that you have defined the necessary input variables for the modules in your Terraform configuration file. This includes base_name, resource_type, and resource_map depending on the module being used.
6. Understanding of Terraform Modules :
   Familiarize yourself with Terraform modules and how to use them within your Terraform configurations. You should understand how to define module blocks, input variables, and outputs.
7. Internet Access :
    Ensure that your machine has internet access so that Terraform can download the necessary modules from their source repositories (e.g., GitHub) during execution.
8. Permissions :
    Ensure that you have the necessary permissions to create and manage resources on your chosen cloud provider.
9. Best Practices :
    Familiarize yourself with Terraform best practices for managing infrastructure as code, including version control, code review processes, and environment management.

# Inputs

# Resource Naming Module (resource_naming)

| Name          | Description                                         | Type   | Default | Required |
|-------------- |-----------------------------------------------------|--------|---------|----------|
| base_name     | The base name for the resource                      | string | n/a     | yes      |
| resource_type | The type of the resource                            | string | n/a     | yes      |

#### Resource Naming Parent Module (resource_naming_parent)

| Name           | Description                                             | Type          | Default | Required |
|----------------|---------------------------------------------------------|---------------|---------|----------|
| base_names     | A list of base names for the resources                  | list(string)  | n/a     | yes      |
| resource_types | A list of resource types corresponding to the base names| list(string)  | n/a     | yes      |

# Outputs

# Resource Naming Module (resource_naming)

| Name          | Description                                 |
|---------------|---------------------------------------------|
| resource_name | The generated name for the Azure resource   |

#### Resource Naming Parent Module (resource_naming_parent)

| Name          | Description                                          |
|---------------|------------------------------------------------------|
| resources     | A map of base names to their corresponding resource names |

Please visite this site to get full code (" https://github.com/chandan888/Terraform ")

