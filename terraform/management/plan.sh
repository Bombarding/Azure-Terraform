#!/bin/bash

set -e
terraform plan \
  -var-file="../shared/config/network.tfvars" \
  -out "$(basename "$(pwd)")".tfplan
