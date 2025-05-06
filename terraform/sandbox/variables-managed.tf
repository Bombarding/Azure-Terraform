# The content of this file is managed by Terraform. If you modify it, it may
# be reverted the next time Terraform runs. If you want to make changes, do it
# in ../management/bootstrap/templates.

variable "subscription_id" {
  type        = string
  description = "The value of the Azure Subscription ID"
  sensitive   = true
}

variable "tenant_id" {
  type        = string
  sensitive   = true
  description = "The value of the Azure Tenant ID to target"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group to manage"
  default     = "AzureDevopsPersonalResourceGroup"
}

variable "keyvault_name" {
  type        = string
  description = "The name of the Keyvault"
  default     = "AzKVsandbox"
}
