variable "resource_group_name" {
  type        = string
  description = "The name of the resource group to manage"
}

variable "region" {
  type        = string
  default     = "East US"
  description = "The region of the Azure Resource Group"
}

variable "security_group_name" {
  type        = string
  sensitive   = true
  description = "The name of the Azure Security Group"
}

variable "virtual_network_name" {
  type        = string
  sensitive   = true
  description = "The name of the Azure Virtual Network"
}

variable "subnet_one_name" {
  type        = string
  sensitive   = true
  description = "The name of the Azure Subnet (1)"
}

variable "subnet_two_name" {
  type        = string
  sensitive   = true
  description = "The name of the Azure Subnet (2)"
}

variable "address_space" {
  type        = list(string)
  sensitive   = true
  description = "The address space of the Azure Virtual network"
}

variable "dns_servers" {
  type        = list(string)
  sensitive   = true
  description = "The DNS Servers for the Azure Virtual network"
}

variable "subnet_one_address_prefixes" {
  type        = list(string)
  sensitive   = true
  description = "The address prefixes for the Azure Subnet (1)"
}

variable "subnet_two_address_prefixes" {
  type        = list(string)
  sensitive   = true
  description = "The address prefixes for the Azure Subnet (2)"
}

variable "terraform_state_bucket_name" {
  type        = string
  sensitive   = true
  description = "The name of the bucket to hold the terraform states"
}

variable "subscription_id" {
  type        = string
  sensitive   = true
  description = "The value of the Azure Subcription ID to target"
}

variable "tenant_id" {
  type        = string
  sensitive   = true
  description = "The value of the Azure Tenant ID to target"
}
