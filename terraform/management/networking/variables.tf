variable "resource_group_name" {
  type        = string
  description = "The name of the resource group to manage"
}

variable "terraform_state_bucket_name" {
  type        = string
  sensitive   = true
  description = "The name of the bucket to hold the terraform states"
}
