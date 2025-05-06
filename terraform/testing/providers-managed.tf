# The content of this file is managed by Terraform. If you modify it, it may
# be reverted the next time Terraform runs. If you want to make changes, do it
# in ../management/bootstrap/templates.

terraform {
  required_version = "~> 1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.27.0"
    }
  }

  backend "azurerm" {
    # The rest of the backend parameters must be supplied when you initialize:
    # access_key           = "" # Can also be set via `ARM_ACCESS_KEY` environment variable.
    # storage_account_name = "" # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"`
    # container_name       = "" # Can be passed via `-backend-config=`"container_name=<container name>"`
    # key                  = "" # Can be passed via `-backend-config=`"key=<blob key name>"`
    # For more info, see:
    # https://developer.hashicorp.com/terraform/language/backend#partial-configuration
    encrypt = "true"
  }
}

provider "azurerm" {
  resource_provider_registrations = "none"
  subscription_id                 = var.subscription_id
  tenant_id                       = var.tenant_id
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = false
    }
  }
}
