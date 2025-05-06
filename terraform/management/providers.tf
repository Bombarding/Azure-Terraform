terraform {
  required_version = "~> 1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.27.0"
    }
  }

  # backend "azurerm" {
  #   # The rest of the backend parameters must be supplied when you initialize:
  #   #   terraform init --backend-config=../shared/config/backend.tfvars \
  #   #    --backend-config=key=terraform.tfstate.$(basename $(pwd))
  #   # access_key           = "abcdefghijklmnopqrstuvwxyz0123456789..."  # Can also be set via `ARM_ACCESS_KEY` environment variable.
  #   # storage_account_name = "abcd1234"                                 # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
  #   # container_name       = "tfstate"                                  # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
  #   # key                  = "prod.terraform.tfstate"                   # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  #   #
  #   # For more info, see:
  #   # https://developer.hashicorp.com/terraform/language/backend#partial-configuration
  #   encrypt = "true"
  # }
}

provider "azurerm" {
  resource_provider_registrations = "none" # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  subscription_id = var.subscription_id
  tenant_id = var.tenant_id
  features {}
}
