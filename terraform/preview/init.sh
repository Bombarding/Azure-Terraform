#!/bin/bash
# The content of this file is managed by Terraform. If you modify it, it may
# be reverted the next time Terraform runs. If you want to make changes, do it
# in ../management/bootstrap/templates.

set -e
terraform init \
  --backend-config=../shared/config/"$(basename "$(pwd)")".tfvars \
  --backend-config=key=terraform.tfstate."$(basename "$(pwd)")" \
  --backend-config=container_name="" \
  --backend-config=storage_account_name=""
