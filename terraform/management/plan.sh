#!/bin/bash

set -e
terraform plan \
  -var-file="../shared/config/"$(basename "$(pwd)")".tfvars" \
  -out "$(basename "$(pwd)")".tfplan
