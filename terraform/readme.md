## Setup Instructions
* Install Terraform CLI: `https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli`
* Install Azure CLU: `https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-windows?pivots=msi`
* Create a storage account with a bucket to store the terraform state [Bucket](./management/networking/statebucket.tf)
  * Upload the local state to the bucket
* Configure the backend
```tf
  backend "azurerm" {
    # https://developer.hashicorp.com/terraform/language/backend#partial-configuration
    encrypt = "true"
  }
}
```
* Initialize management module, plan and apply
```tf
terraform init \
  --backend-config=../shared/config/"$(basename "$(pwd)")".tfvars \
  --backend-config=key=terraform.tfstate."$(basename "$(pwd)")" \
  --backend-config=container_name="" \
  --backend-config=storage_account_name=""
```
* Initialize target environment, plan and apply
```tf
terraform init \
  --backend-config=../shared/config/"$(basename "$(pwd)")".tfvars \
  --backend-config=key=terraform.tfstate."$(basename "$(pwd)")" \
  --backend-config=container_name="" \
  --backend-config=storage_account_name="" \
  --backend-config=resource_group_name=""
```
