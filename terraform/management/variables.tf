variable "resource_group_name" {
  type        = string
  description = "The name of the resource group to manage"
}

variable "terraform_state_bucket_name" {
  type        = string
  sensitive   = true
  description = "The name of the bucket to hold the terraform states"
}

variable "subscription_id" {
  type = string
  sensitive = true
  description = "The value of the Azure Subcription ID to target"
}

variable "tenant_id" {
  type = string
  sensitive = true
  description = "The value of the Azure Tenant ID to target"
}
