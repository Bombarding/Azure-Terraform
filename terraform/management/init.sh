#!/bin/bash

set -e
terraform init \
  --backend-config=../shared/config/network.tfvars \
  --backend-config=key=terraform.tfstate."$(basename "$(pwd)")"
