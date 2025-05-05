#!/bin/bash
# The content of this file is managed by Terraform. If you modify it, it may
# be reverted the next time Terraform runs. If you want to make changes, do it
# in ../management/bootstrap/templates.

set -e
terraform plan \
  -var-file="../shared/config/"$(basename "$(pwd)")".tfvars" \
  -out "$(basename "$(pwd)")".tfplan
