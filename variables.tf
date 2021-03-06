#Required Variables
variable "resource_group_name" {
  type        = string
  description = "The Resource Group in which to put the Azure Firewall resources"
}

variable "virtual_network" {
  type = object({
    name                = string
    resource_group_name = string
  })
  description = "The Virtual Network in which the AzureFirewallSubnet exists within."
}

#Optional Variables
variable "prefix" {
  type        = list(string)
  description = "A naming prefix to be used in the creation of unique names for Azure resources."
  default     = []
}

variable "suffix" {
  type        = list(string)
  description = "A naming suffix to be used in the creation of unique names for Azure resources."
  default     = []
}

variable "public_ip_sku" {
  type        = string
  description = "The pricing and performance sku to create the Azure Firewalls public IP address to."
  default     = "Standard"
}


